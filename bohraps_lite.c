// =============================================================================
//  bohraps_lite.c  --  minimal-visuals build of the Bohemian Rhapsody player.
// -----------------------------------------------------------------------------
//  Identical playback engine to bohraps.c (same song_data.h event table and the
//  same 11-slot chip band), but the display is stripped to the cheapest possible
//  drawing so no CPU is stolen from the synth: a title, a progress bar, and 16
//  flat voice-activity blocks. No per-sample oscilloscope reconstruction (that
//  loop -- ~150 points x 16 voices x sin() per frame -- was the throttle).
//
//    START   pause / resume        DOWN   restart from the top
// =============================================================================

#include "video.h"
#include "input.h"
#include "time.h"
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

int   play_frame;
int   ev_index;
int   paused;
int   start_prev;
int   down_prev;
float inv127;

// =============================================================================
//   THE CHIP BAND  (identical to bohraps.c)
// =============================================================================
void setup_band()
{
    Instrument* p;

    // louder than the rest so the "vocal" lead sits out front
    p = &band[ I_LEAD ];    synth_patch( p, WAVE_PULSE25, 0.31, 1, 8, 0.60, 8 );
    synth_set_vibrato( p, 0.18, 6.0, 16 );

    p = &band[ I_BASS ];    synth_patch( p, WAVE_SAW, 0.24, 0, 6, 0.70, 6 );
    synth_set_glide( p, 2 );

    p = &band[ I_STRINGS ]; synth_patch( p, WAVE_SAW, 0.11, 12, 22, 0.80, 26 );
    synth_set_vibrato( p, 0.16, 4.5, 24 );

    p = &band[ I_CHOIR ];   synth_patch( p, WAVE_TRIANGLE, 0.11, 16, 20, 0.78, 28 );
    synth_set_vibrato( p, 0.12, 4.0, 28 );

    p = &band[ I_BRASS ];   synth_patch( p, WAVE_SAW, 0.16, 3, 8, 0.75, 10 );
    synth_set_vibrato( p, 0.20, 5.0, 16 );

    p = &band[ I_GUITAR ];  synth_patch( p, WAVE_SQUARE, 0.15, 1, 10, 0.55, 8 );

    p = &band[ I_ORCH ];    synth_patch( p, WAVE_SAW, 0.18, 0, 10, 0.20, 8 );
    p->curve = 0.5;

    p = &band[ I_TIMP ];    synth_patch( p, WAVE_TRIANGLE, 0.26, 0, 12, 0.0, 10 );
    p->pitch_slide = -0.4;

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
//   MINIMAL DISPLAY  (flat fills only -- no trig, no per-sample loop)
// =============================================================================
int phase_color( int phase )
{
    if( phase == ENV_ATTACK )  return color_green;
    if( phase == ENV_DECAY )   return color_cyan;
    if( phase == ENV_SUSTAIN ) return 0xFF40C0FF;
    if( phase == ENV_RELEASE ) return color_orange;
    return 0xFF303030;
}

#define VB_X0 40
#define VB_Y0 180
#define VB_W  30
#define VB_H  40
#define VB_GAP 6

void draw_voice_blocks()
{
    for( int v = 0; v < SYNTH_VOICES; ++v )
    {
        int x1 = VB_X0 + v * ( VB_W + VB_GAP );
        int x2 = x1 + VB_W;
        int color = 0xFF181818;
        if( synth_v_active[ v ] ) color = phase_color( synth_v_phase[ v ] );
        set_multiply_color( color );
        draw_filled_rectangle( x1, VB_Y0, x2, VB_Y0 + VB_H );
    }
}

int[ 24 ] hud_title = "BOHEMIAN RHAPSODY";
int[ 24 ] hud_sub   = "minimal-visuals build";
int[ 32 ] hud_keys  = "START pause   DOWN restart";
int[ 16 ] hud_pause = "-- PAUSED --";

void draw_progress()
{
    set_multiply_color( 0xFF303030 );
    draw_filled_rectangle( 24, 280, 616, 288 );
    float frac = (float)play_frame / (float)SONG_FRAMES;
    if( frac > 1.0 ) frac = 1.0;
    int fx = 24 + (int)( frac * 592.0 );
    set_multiply_color( color_yellow );
    draw_filled_rectangle( 24, 280, fx, 288 );
}

void draw_hud()
{
    set_multiply_color( color_white );
    print_at( 24, 40, hud_title );
    set_multiply_color( 0xFF909090 );
    print_at( 24, 68, hud_sub );
    set_multiply_color( 0xFF707070 );
    print_at( 24, 300, hud_keys );

    if( paused )
    {
        set_multiply_color( color_orange );
        print_at( 300, 120, hud_pause );
    }
}

// =============================================================================
//   INPUT
// =============================================================================
void handle_input()
{
    select_gamepad( 0 );

    int st = gamepad_button_start();
    if( st > 0 && start_prev <= 0 ) paused = 1 - paused;
    start_prev = st;

    int dn = gamepad_down();
    if( dn > 0 && down_prev <= 0 ) restart_song();
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
            if( ev_index >= SONG_EVENTS && play_frame >= SONG_FRAMES )
              restart_song();
        }
        else
          synth_update();

        clear_screen( 0xFF0C0E12 );
        draw_voice_blocks();
        draw_progress();
        draw_hud();

        end_frame();
    }
}
