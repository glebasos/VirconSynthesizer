// =============================================================================
//  bohraps.c  --  a Vircon32 ROM that plays "Bohemian Rhapsody" (bohraps.mid)
//                 through synth.h.
// -----------------------------------------------------------------------------
//  The MIDI was baked into a flat, start-frame-sorted event table by
//  tools/gen_song.py (song_data.h). Each frame we pop every event whose start
//  frame has arrived and fire it as a timed note on one of a small "chip band"
//  of instruments; synth.h auto-releases each note after its duration. The
//  14 MIDI tracks are folded onto 11 instrument slots so the 16-voice engine
//  and the additive/wrapping mixer stay under control (see gen_song.py).
//
//    START   pause / resume        SELECT / D-pad Down   restart from the top
//
//  NOTE: audio can only be verified by ear on real hardware/emulator. This ROM
//  builds and runs its main loop; whether it *sounds* like the song is for the
//  listener to judge, and the mix (master volume / per-instrument levels) is
//  meant to be tuned by ear.
// =============================================================================

#include "video.h"
#include "input.h"
#include "time.h"
#include "math.h"
#include "draw_primitives.h"
#include "synth.h"
#include "song_data.h"

// --- instrument slots: MUST match the ids in tools/gen_song.py ---------------
#define I_LEAD    0
#define I_BASS    1
#define I_STRINGS 2
#define I_CHOIR   3
#define I_BRASS   4
#define I_GUITAR  5
#define I_ORCH    6
#define I_TIMP    7
#define I_KICK    8
#define I_SNARE   9
#define I_HAT     10

Instrument[ SONG_INSTS ] band;

int   play_frame;      // current playback frame
int   ev_index;        // next event to fire
int   paused;
int   start_prev;
int   down_prev;
float inv127;

// =============================================================================
//   THE CHIP BAND  (approximations of the General MIDI voices)
// =============================================================================

void setup_band()
{
    Instrument* p;

    // main line (channel 0, ~1919 notes) -- a bright pulse lead that cuts through
    p = &band[ I_LEAD ];    synth_patch( p, WAVE_PULSE25, 0.20, 1, 8, 0.60, 8 );
    synth_set_vibrato( p, 0.18, 6.0, 16 );

    // bass -- saw with a short glide so runs slur a little
    p = &band[ I_BASS ];    synth_patch( p, WAVE_SAW, 0.24, 0, 6, 0.70, 6 );
    synth_set_glide( p, 2 );

    // strings -- slow saw pad
    p = &band[ I_STRINGS ]; synth_patch( p, WAVE_SAW, 0.13, 12, 22, 0.80, 26 );
    synth_set_vibrato( p, 0.16, 4.5, 24 );

    // choir -- soft triangle pad
    p = &band[ I_CHOIR ];   synth_patch( p, WAVE_TRIANGLE, 0.13, 16, 20, 0.78, 28 );
    synth_set_vibrato( p, 0.12, 4.0, 28 );

    // brass (horns / sax / oboe / synth brass) -- reedy saw
    p = &band[ I_BRASS ];   synth_patch( p, WAVE_SAW, 0.16, 3, 8, 0.75, 10 );
    synth_set_vibrato( p, 0.20, 5.0, 16 );

    // distortion guitar -- square
    p = &band[ I_GUITAR ];  synth_patch( p, WAVE_SQUARE, 0.15, 1, 10, 0.55, 8 );

    // orchestra hit -- saw stab, fast decay
    p = &band[ I_ORCH ];    synth_patch( p, WAVE_SAW, 0.18, 0, 10, 0.20, 8 );
    p->curve = 0.5;

    // timpani / toms -- triangle with a downward pitch drop, percussive
    p = &band[ I_TIMP ];    synth_patch( p, WAVE_TRIANGLE, 0.26, 0, 12, 0.0, 10 );
    p->pitch_slide = -0.4;

    // drums
    p = &band[ I_KICK ];    synth_patch( p, WAVE_TRIANGLE, 0.34, 0, 6, 0.0, 6 );
    p->pitch_slide = -0.9;
    p = &band[ I_SNARE ];   synth_patch( p, WAVE_NOISE, 0.22, 0, 8, 0.0, 6 );
    p = &band[ I_HAT ];     synth_patch( p, WAVE_NOISE, 0.14, 0, 3, 0.0, 3 );
}

// =============================================================================
//   EVENT PLAYBACK
// =============================================================================

void fire_due_events()
{
    while( ev_index < SONG_EVENTS && ev_frame[ ev_index ] <= play_frame )
    {
        int   slot = ev_slot[ ev_index ];
        float vel  = ev_vel[ ev_index ] * inv127;
        synth_play_timed( &band[ slot ], ev_note[ ev_index ], vel, ev_dur[ ev_index ] );
        ev_index += 1;
    }
}

void restart_song()
{
    synth_panic();
    play_frame = 0;
    ev_index   = 0;
}

// =============================================================================
//   RECONSTRUCTED OSCILLOSCOPE  (proof the engine is ticking)
// =============================================================================

float wave_shape( int wave, float phase )
{
    float p = phase - floor( phase );

    if( wave == WAVE_SINE )     return sin( p * 6.2831853 );
    if( wave == WAVE_TRIANGLE ) return 4.0 * fabs( p - 0.5 ) - 1.0;
    if( wave == WAVE_SAW )      return 2.0 * p - 1.0;
    if( wave == WAVE_SQUARE )   { if( p < 0.5 )  return 1.0; return -1.0; }
    if( wave == WAVE_PULSE25 )  { if( p < 0.25 ) return 1.0; return -1.0; }
    if( wave == WAVE_PULSE12 )  { if( p < 0.125 ) return 1.0; return -1.0; }

    float h = sin( p * 127.1 + phase * 13.0 ) * 43758.5;
    return (h - floor( h )) * 2.0 - 1.0;
}

#define SCOPE_X0 24
#define SCOPE_X1 616
#define SCOPE_Y  150
#define SCOPE_H  70
#define SCOPE_N  148

void draw_scope()
{
    set_multiply_color( 0xFF20242C );
    draw_filled_rectangle( SCOPE_X0-4, SCOPE_Y-SCOPE_H-6, SCOPE_X1+4, SCOPE_Y+SCOPE_H+6 );
    set_multiply_color( 0xFF203828 );
    draw_horizontal_line( SCOPE_X0, SCOPE_Y, SCOPE_X1 );

    float window = 0.020;
    float scroll = play_frame * window;
    float step   = (float)( SCOPE_X1 - SCOPE_X0 ) / SCOPE_N;

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

        int y = SCOPE_Y - (int)( sum * SCOPE_H * 1.4 );
        if( y < SCOPE_Y - SCOPE_H ) y = SCOPE_Y - SCOPE_H;
        if( y > SCOPE_Y + SCOPE_H ) y = SCOPE_Y + SCOPE_H;

        int x = SCOPE_X0 + (int)( i * step );
        if( have_prev ) draw_line( prev_x, prev_y, x, y );
        prev_x = x; prev_y = y; have_prev = 1;
    }
}

// =============================================================================
//   VOICE METERS  (16 bars, height = level, color = envelope phase)
// =============================================================================
#define MET_X0 40
#define MET_Y1 320
#define MET_H  70
#define MET_W  30
#define MET_GAP 6

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
        int x1 = MET_X0 + v * ( MET_W + MET_GAP );
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

// =============================================================================
//   HUD
// =============================================================================
int[ 24 ] hud_title = "BOHEMIAN RHAPSODY";
int[ 40 ] hud_sub   = "Vircon32 chip-synth cover  -  synth.h";
int[ 40 ] hud_keys  = "START pause   DOWN restart";
int[ 16 ] hud_pause = "-- PAUSED --";

void draw_progress()
{
    int bx0 = 24;
    int bx1 = 616;
    int by  = 340;
    set_multiply_color( 0xFF303030 );
    draw_filled_rectangle( bx0, by, bx1, by + 8 );

    float frac = (float)play_frame / (float)SONG_FRAMES;
    if( frac > 1.0 ) frac = 1.0;
    int fx = bx0 + (int)( frac * ( bx1 - bx0 ) );
    set_multiply_color( color_yellow );
    draw_filled_rectangle( bx0, by, fx, by + 8 );
}

void draw_hud()
{
    set_multiply_color( color_white );
    print_at( 24, 12, hud_title );
    set_multiply_color( 0xFF909090 );
    print_at( 24, 40, hud_sub );
    set_multiply_color( 0xFF707070 );
    print_at( 360, 12, hud_keys );

    if( paused )
    {
        set_multiply_color( color_orange );
        print_at( 270, 175, hud_pause );
    }
}

// =============================================================================
//   INPUT
// =============================================================================
void handle_input()
{
    select_gamepad( 0 );

    int st = gamepad_button_start();
    if( st > 0 && start_prev <= 0 )
      paused = 1 - paused;
    start_prev = st;

    int dn = gamepad_down();
    if( dn > 0 && down_prev <= 0 )
      restart_song();
    down_prev = dn;
}

// =============================================================================
//   MAIN
// =============================================================================
void main()
{
    synth_init( 0 );
    setup_band();
    synth_master_volume( 0.45 );

    inv127     = 1.0 / 127.0;
    play_frame = 0;
    ev_index   = 0;
    paused     = 0;
    start_prev = 0;
    down_prev  = 0;

    while( true )
    {
        handle_input();

        if( !paused )
        {
            fire_due_events();
            synth_update();
            play_frame += 1;

            // loop the song once every voice has rung out past the end
            if( ev_index >= SONG_EVENTS && play_frame >= SONG_FRAMES )
              restart_song();
        }
        else
          synth_update();

        clear_screen( 0xFF0C0E12 );
        draw_scope();
        draw_meters();
        draw_progress();
        draw_hud();

        end_frame();
    }
}
