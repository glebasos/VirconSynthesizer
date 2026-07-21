// =============================================================================
//  demo.c  --  Vircon32 synthesizer showcase
// -----------------------------------------------------------------------------
//  A self-playing chiptune driving synth.h (built entirely from the preset
//  bank), with a live display reconstructed from voice state (oscilloscope, 16
//  voice meters, a lit piano), plus a playable gamepad synth that can step
//  through all 35 presets.
//
//    START            play / stop the backing song
//    A B X Y L R      play a pentatonic scale with the selected preset
//    D-pad Up/Down    previous / next preset (all 35)
//    D-pad Left/Right slower / faster tempo
// =============================================================================

#include "video.h"
#include "input.h"
#include "time.h"
#include "math.h"
#include "draw_primitives.h"
#include "synth.h"

// -----------------------------------------------------------------------------
//  Song data (32 rows, filled procedurally in setup_song)
// -----------------------------------------------------------------------------
#define ROWS 32
int[ ROWS ] t_lead;
int[ ROWS ] t_bass;
int[ ROWS ] t_arp;
int[ ROWS ] t_kick;
int[ ROWS ] t_hat;
Song song;

// chord roots for the 4 eight-row blocks: Am  F  C  G
int[ 4 ] chord_root = { A2, F2, C3, G2 };
int[ 4 ] arp0 = { A3, F3, C4, G3 };
int[ 4 ] arp1 = { C4, A3, E4, B3 };
int[ 4 ] arp2 = { E4, C4, G4, D4 };
// a simple lead line over the progression (one note per 2 rows)
int[ 16 ] lead_line = { A4, C5, E5, D5,  C5, A4, F4, G4,
                        E4, G4, C5, B4,  G4, D4, G4, D5 };

// -----------------------------------------------------------------------------
//  Manual (gamepad) synth state
// -----------------------------------------------------------------------------
int[ 6 ] scale_notes = { C4, E4, G4, A4, C5, E5 };   // A-minor pentatonic-ish
int[ 6 ] btn_prev;                                   // previous button ages
int[ 6 ] btn_voice;                                  // voice held by each button
int      manual_preset;                              // selected preset id

int frame_count;

// forward decls
float wave_shape( int wave, float phase );

// =============================================================================
//   SONG CONSTRUCTION  (all instruments come from the preset bank)
// =============================================================================

void fill_rest( int* rows )
{
    for( int r = 0; r < ROWS; ++r ) rows[ r ] = SEQ_REST;
}

void setup_song()
{
    fill_rest( t_lead );
    fill_rest( t_bass );
    fill_rest( t_arp );
    fill_rest( t_kick );
    fill_rest( t_hat );

    for( int block = 0; block < 4; ++block )
    {
        int base = block * 8;

        // bass: mono/glide line -> a note every 2 rows, hold between
        for( int r = 0; r < 8; ++r )
        {
            if( (r & 1) == 0 ) t_bass[ base + r ] = chord_root[ block ];
            else               t_bass[ base + r ] = SEQ_HOLD;
        }

        // arpeggio: cycle root/third/fifth across the 8 rows
        for( int r = 0; r < 8; ++r )
        {
            int which = r % 3;
            if( which == 0 )      t_arp[ base + r ] = arp0[ block ];
            else if( which == 1 ) t_arp[ base + r ] = arp1[ block ];
            else                  t_arp[ base + r ] = arp2[ block ];
        }

        // drums: 4-on-the-floor kick, offbeat hats
        t_kick[ base + 0 ] = C2;
        t_kick[ base + 4 ] = C2;
        t_hat[ base + 2 ]  = C5;
        t_hat[ base + 6 ]  = C5;
    }

    // lead: one note every 2 rows from lead_line
    for( int i = 0; i < 16; ++i )
      t_lead[ i * 2 ] = lead_line[ i ];

    song.num_tracks     = 5;
    song.length         = ROWS;
    song.frames_per_row = 8;      // ~112 BPM sixteenths
    song.loop           = 1;
    song.transpose      = 0;
    song.swing          = 1;      // a touch of shuffle

    // track 0: lead (pulse), staccato gate
    song.tracks[ 0 ].inst = synth_preset( PRESET_LEAD_PULSE );
    song.tracks[ 0 ].rows = t_lead;  song.tracks[ 0 ].velocity = 0.9;
    song.tracks[ 0 ].mono = 0;       song.tracks[ 0 ].gate = 7;

    // track 1: bass (saw) as a mono, gliding line
    song.tracks[ 1 ].inst = synth_preset( PRESET_BASS_SAW );
    song.tracks[ 1 ].rows = t_bass;  song.tracks[ 1 ].velocity = 1.0;
    song.tracks[ 1 ].mono = 1;       song.tracks[ 1 ].gate = 0;

    // track 2: arp (square pluck)
    song.tracks[ 2 ].inst = synth_preset( PRESET_PLUCK_SQUARE );
    song.tracks[ 2 ].rows = t_arp;   song.tracks[ 2 ].velocity = 0.6;
    song.tracks[ 2 ].mono = 0;       song.tracks[ 2 ].gate = 0;

    // track 3: kick
    song.tracks[ 3 ].inst = synth_preset( PRESET_KICK );
    song.tracks[ 3 ].rows = t_kick;  song.tracks[ 3 ].velocity = 1.0;
    song.tracks[ 3 ].mono = 0;       song.tracks[ 3 ].gate = 0;

    // track 4: closed hat
    song.tracks[ 4 ].inst = synth_preset( PRESET_HAT_CLOSED );
    song.tracks[ 4 ].rows = t_hat;   song.tracks[ 4 ].velocity = 0.5;
    song.tracks[ 4 ].mono = 0;       song.tracks[ 4 ].gate = 0;

    // give the bass a short glide so the mono line slurs between notes
    synth_set_glide( synth_preset( PRESET_BASS_SAW ), 3 );
}

// =============================================================================
//   OSCILLATOR SHAPE (for the reconstructed scope only)
// =============================================================================

float wave_shape( int wave, float phase )
{
    float p = phase - floor( phase );          // fractional part 0..1

    if( wave == WAVE_SINE )
      return sin( p * 6.2831853 );

    if( wave == WAVE_TRIANGLE )
      return 4.0 * fabs( p - 0.5 ) - 1.0;

    if( wave == WAVE_SAW )
      return 2.0 * p - 1.0;

    if( wave == WAVE_SQUARE )
    {
        if( p < 0.5 ) return 1.0;
        return -1.0;
    }

    if( wave == WAVE_PULSE25 )
    {
        if( p < 0.25 ) return 1.0;
        return -1.0;
    }

    if( wave == WAVE_PULSE12 )
    {
        if( p < 0.125 ) return 1.0;
        return -1.0;
    }

    // noise: cheap deterministic hash
    float h = sin( p * 127.1 + phase * 13.0 ) * 43758.5;
    return (h - floor( h )) * 2.0 - 1.0;
}

// =============================================================================
//   DISPLAY
// =============================================================================

#define SCOPE_X0   24
#define SCOPE_X1   616
#define SCOPE_Y    100
#define SCOPE_H    64
#define SCOPE_N    148          // sample points across the scope

void draw_scope()
{
    set_multiply_color( 0xFF303840 );
    draw_filled_rectangle( SCOPE_X0-4, SCOPE_Y-SCOPE_H-6, SCOPE_X1+4, SCOPE_Y+SCOPE_H+6 );
    set_multiply_color( 0xFF204028 );
    draw_horizontal_line( SCOPE_X0, SCOPE_Y, SCOPE_X1 );

    float window = 0.020;                       // seconds shown across the screen
    float scroll = frame_count * window;        // free-running scope
    float step   = (float)(SCOPE_X1 - SCOPE_X0) / SCOPE_N;

    int prev_x = SCOPE_X0;
    int prev_y = SCOPE_Y;
    int have_prev = 0;

    set_multiply_color( color_green );

    for( int i = 0; i <= SCOPE_N; ++i )
    {
        float frac = (float)i / SCOPE_N;
        float t    = scroll + frac * window;

        float sum = 0.0;
        for( int v = 0; v < SYNTH_VOICES; ++v )
        {
            if( !synth_v_active[ v ] ) continue;
            if( synth_v_amp[ v ] <= 0.0 ) continue;

            float phase = synth_v_freq[ v ] * t;
            sum += synth_v_amp[ v ] * wave_shape( synth_v_inst[ v ]->waveform, phase );
        }

        int y = SCOPE_Y - (int)( sum * SCOPE_H * 1.6 );
        if( y < SCOPE_Y - SCOPE_H ) y = SCOPE_Y - SCOPE_H;
        if( y > SCOPE_Y + SCOPE_H ) y = SCOPE_Y + SCOPE_H;

        int x = SCOPE_X0 + (int)( i * step );

        if( have_prev )
          draw_line( prev_x, prev_y, x, y );

        prev_x = x;
        prev_y = y;
        have_prev = 1;
    }
}

// -----------------------------------------------------------------------------
//  Piano keyboard: two octaves from KB_START, keys lit by active-note level
// -----------------------------------------------------------------------------
#define KB_START   C3
#define KB_OCTAVES 2
#define KB_X0      40
#define KB_Y0      196
#define KB_WKEY_W  40
#define KB_WKEY_H  84

int is_black( int semitone )
{
    if( semitone == 1 || semitone == 3 || semitone == 6
        || semitone == 8 || semitone == 10 ) return 1;
    return 0;
}

int white_index( int semitone )
{
    if( semitone == 0 )  return 0;
    if( semitone == 2 )  return 1;
    if( semitone == 4 )  return 2;
    if( semitone == 5 )  return 3;
    if( semitone == 7 )  return 4;
    if( semitone == 9 )  return 5;
    if( semitone == 11 ) return 6;
    return -1;
}

float[ 128 ] note_level;

void compute_note_levels()
{
    for( int n = 0; n < 128; ++n ) note_level[ n ] = 0.0;

    for( int v = 0; v < SYNTH_VOICES; ++v )
      if( synth_v_active[ v ] )
      {
          int n = synth_v_note[ v ];
          if( n >= 0 && n < 128 )
            if( synth_v_level[ v ] > note_level[ n ] )
              note_level[ n ] = synth_v_level[ v ];
      }
}

void draw_key_lit( int x1, int y1, int x2, int y2, int base_color, float level )
{
    if( level <= 0.02 )
    {
        set_multiply_color( base_color );
        draw_filled_rectangle( x1, y1, x2, y2 );
        return;
    }

    int glow = 128 + (int)( level * 127 );
    if( glow > 255 ) glow = 255;
    set_multiply_color( make_color_rgb( glow, 255, 60 + (int)(level*120) ) );
    draw_filled_rectangle( x1, y1, x2, y2 );
}

void draw_keyboard()
{
    int white = 0;

    for( int oct = 0; oct < KB_OCTAVES; ++oct )
      for( int s = 0; s < 12; ++s )
      {
          if( is_black( s ) ) continue;
          int note = KB_START + oct * 12 + s;
          int wx = KB_X0 + white * KB_WKEY_W;
          draw_key_lit( wx, KB_Y0, wx + KB_WKEY_W - 2, KB_Y0 + KB_WKEY_H,
                        0xFFE0E0E0, note_level[ note ] );
          white += 1;
      }

    white = 0;
    for( int oct = 0; oct < KB_OCTAVES; ++oct )
      for( int s = 0; s < 12; ++s )
      {
          int wi = white_index( s );
          if( wi >= 0 ) { white += 1; continue; }

          int note = KB_START + oct * 12 + s;
          int wx = KB_X0 + white * KB_WKEY_W;
          int bx = wx - KB_WKEY_W / 3;
          float lv = note_level[ note ];
          if( lv > 0.02 )
            set_multiply_color( make_color_rgb( 40 + (int)(lv*200), 255, 40 ) );
          else
            set_multiply_color( 0xFF202020 );
          draw_filled_rectangle( bx, KB_Y0, bx + (2*KB_WKEY_W)/3, KB_Y0 + (KB_WKEY_H*3)/5 );
      }
}

// -----------------------------------------------------------------------------
//  Voice meters: 16 vertical bars, height = envelope level, color = phase
// -----------------------------------------------------------------------------
#define MET_X0   40
#define MET_Y1   340
#define MET_H    56
#define MET_W    30
#define MET_GAP  6

int phase_color( int phase )
{
    if( phase == ENV_ATTACK )  return color_green;
    if( phase == ENV_DECAY )   return color_cyan;
    if( phase == ENV_SUSTAIN ) return 0xFF40C0FF;
    if( phase == ENV_RELEASE ) return color_orange;
    return 0xFF303030;
}

void draw_meters()
{
    for( int v = 0; v < SYNTH_VOICES; ++v )
    {
        int x1 = MET_X0 + v * (MET_W + MET_GAP);
        int x2 = x1 + MET_W;

        set_multiply_color( 0xFF181818 );
        draw_filled_rectangle( x1, MET_Y1 - MET_H, x2, MET_Y1 );

        if( synth_v_active[ v ] )
        {
            int h = (int)( synth_v_level[ v ] * MET_H );
            set_multiply_color( phase_color( synth_v_phase[ v ] ) );
            draw_filled_rectangle( x1, MET_Y1 - h, x2, MET_Y1 );
        }
    }
}

// -----------------------------------------------------------------------------
//  HUD text
// -----------------------------------------------------------------------------
int[ 32 ] hud_title  = "VIRCON32 SYNTHESIZER";
int[ 16 ] hud_preset = "PRESET:";
int[ 64 ] hud_keys   = "A B X Y L R = PLAY   UP/DN = PRESET   START = SONG";

void draw_hud()
{
    set_multiply_color( color_white );
    print_at( 24, 10, hud_title );

    set_multiply_color( color_lightgray );
    print_at( 360, 10, hud_preset );
    set_multiply_color( color_yellow );
    print_at( 430, 10, synth_preset_get_name( manual_preset ) );

    set_multiply_color( 0xFF808080 );
    print_at( 24, 300, hud_keys );
}

// =============================================================================
//   INPUT
// =============================================================================

void handle_manual_note( int i, int cur )
{
    int prev = btn_prev[ i ];

    if( cur > 0 && prev <= 0 )
      btn_voice[ i ] = synth_note_on( synth_preset( manual_preset ), scale_notes[ i ], 1.0 );
    else if( cur <= 0 && prev > 0 )
    {
        if( btn_voice[ i ] >= 0 )
        {
            synth_note_off( btn_voice[ i ] );
            btn_voice[ i ] = -1;
        }
    }

    btn_prev[ i ] = cur;
}

int updown_prev;
int leftright_prev;
int start_prev;

void handle_input()
{
    select_gamepad( 0 );

    handle_manual_note( 0, gamepad_button_a() );
    handle_manual_note( 1, gamepad_button_b() );
    handle_manual_note( 2, gamepad_button_x() );
    handle_manual_note( 3, gamepad_button_y() );
    handle_manual_note( 4, gamepad_button_l() );
    handle_manual_note( 5, gamepad_button_r() );

    // D-pad up/down cycles the selected preset (all 35)
    int ud = 0;
    if( gamepad_up()   > 0 ) ud =  1;
    if( gamepad_down() > 0 ) ud = -1;
    if( ud != 0 && updown_prev == 0 )
    {
        manual_preset += ud;
        if( manual_preset < 0 )                    manual_preset = SYNTH_PRESET_COUNT - 1;
        if( manual_preset >= SYNTH_PRESET_COUNT )  manual_preset = 0;
    }
    updown_prev = ud;

    // D-pad left/right changes tempo
    int lr = 0;
    if( gamepad_left()  > 0 ) lr = -1;
    if( gamepad_right() > 0 ) lr =  1;
    if( lr != 0 && leftright_prev == 0 )
    {
        int fpr = song.frames_per_row - lr;          // right = faster
        if( fpr < 3 )  fpr = 3;
        if( fpr > 20 ) fpr = 20;
        song.frames_per_row = fpr;
    }
    leftright_prev = lr;

    // START toggles the backing song
    int st = gamepad_button_start();
    if( st > 0 && start_prev <= 0 )
    {
        if( synth_seq_playing ) synth_seq_stop();
        else                    synth_seq_play( &song );
    }
    start_prev = st;
}

// =============================================================================
//   MAIN
// =============================================================================

void main()
{
    synth_init( 0 );
    synth_load_presets();
    setup_song();

    manual_preset = PRESET_LEAD_SQUARE;
    for( int i = 0; i < 6; ++i ) { btn_prev[ i ] = 0; btn_voice[ i ] = -1; }
    frame_count = 0;

    synth_seq_play( &song );

    while( true )
    {
        handle_input();
        synth_seq_update();
        synth_update();

        compute_note_levels();

        clear_screen( 0xFF101014 );
        draw_scope();
        draw_keyboard();
        draw_meters();
        draw_hud();

        frame_count += 1;
        end_frame();
    }
}
