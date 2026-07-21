// Runnable ROM for Tutorial 03 (Synth Tutorial).
// Built by tutorials/build.sh. Full walkthrough: 03-instruments-and-modulation.md
#include "video.h"
#include "input.h"
#include "time.h"
#include "../synth.h"   // repo copy lives one dir up; in your own project use "synth.h"

Instrument pad;      // lush saw pad with an LFO on volume
Instrument zap;      // pitch-drop laser
Instrument arp;      // major arpeggio
// (Y uses the built-in PRESET_HARP through echo — no instrument to declare)

int prev_a, prev_b, prev_x, prev_y;
int voice_a, voice_b;

// Pure edge tests (they don't mutate prev, so we can ask both in one frame).
int rising( int cur, int prev )
{
    if( cur > 0 && prev <= 0 ) return 1;
    return 0;
}
int falling( int cur, int prev )
{
    if( cur <= 0 && prev > 0 ) return 1;
    return 0;
}

void main()
{
    synth_init( 0 );
    synth_load_presets();

    synth_patch( &pad, WAVE_SAW, 0.16, 24, 30, 0.70, 40 );
    synth_set_lfo( &pad, LFO_SINE, 3.0, 0.5, 0, DEST_AMP );

    synth_patch( &zap, WAVE_SAW, 0.24, 0, 8, 0.0, 6 );
    synth_set_pitch_env( &zap, 24.0, 8 );

    synth_patch( &arp, WAVE_PULSE25, 0.20, 0, 6, 0.5, 8 );
    int[3] pattern = { 0, 4, 7 };
    synth_set_arp( &arp, pattern, 3, 4 );

    synth_set_echo( 4, 6, 0.6 );

    prev_a = 0; prev_b = 0; prev_x = 0; prev_y = 0;
    voice_a = -1; voice_b = -1;

    while( true )
    {
        select_gamepad( 0 );
        int a = gamepad_button_a();
        int b = gamepad_button_b();
        int x = gamepad_button_x();
        int y = gamepad_button_y();

        // A: hold the pad (sustained note, released on button-up)
        if( rising ( a, prev_a ) ) voice_a = synth_note_on( &pad, C3, 0.9 );
        if( falling( a, prev_a ) && voice_a >= 0 ) { synth_note_off( voice_a ); voice_a = -1; }

        // B: hold the arpeggio
        if( rising ( b, prev_b ) ) voice_b = synth_note_on( &arp, C4, 1.0 );
        if( falling( b, prev_b ) && voice_b >= 0 ) { synth_note_off( voice_b ); voice_b = -1; }

        // X: one-shot zap
        if( rising( x, prev_x ) ) synth_play_timed( &zap, C5, 1.0, 10 );

        // Y: echoed harp
        if( rising( y, prev_y ) ) synth_note_echo( synth_preset( PRESET_HARP ), C5, 1.0, 10 );

        prev_a = a;  prev_b = b;  prev_x = x;  prev_y = y;

        synth_update();
        clear_screen( color_black );
        end_frame();
    }
}
