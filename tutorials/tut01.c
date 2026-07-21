// Runnable ROM for Tutorial 01 (SFX Tutorial).
// Built by tutorials/build.sh. Full walkthrough: 01-sound-effects.md
#include "video.h"
#include "input.h"
#include "time.h"
#include "../synth.h"   // repo copy lives one dir up; in your own project use "synth.h"

// A custom sound effect we'll build ourselves.
Instrument sfx_jump;

// Remember last frame's button states so we fire on the *press*, not every frame
// it's held. (Vircon gamepad buttons are age counters: >0 = held, <=0 = released.)
int prev_a;
int prev_b;
int prev_x;

int just_pressed( int cur, int* prev )
{
    int was = *prev;
    *prev = cur;
    if( cur > 0 && was <= 0 ) return 1;
    return 0;
}

void main()
{
    synth_init( 0 );
    synth_load_presets();          // gives us ready-made ZAP, KICK, etc.

    // Build a "jump" SFX: a short square blip that slides upward in pitch.
    synth_patch( &sfx_jump, WAVE_SQUARE, 0.30, 0, 12, 0.0, 4 );
    sfx_jump.pitch_slide = 0.6;    // +0.6 semitones every frame -> a rising "boing"

    prev_a = 0;
    prev_b = 0;
    prev_x = 0;

    while( true )
    {
        select_gamepad( 0 );

        // A = our custom jump
        if( just_pressed( gamepad_button_a(), &prev_a ) )
          synth_play_timed( &sfx_jump, C4, 1.0, 12 );

        // B = a preset laser
        if( just_pressed( gamepad_button_b(), &prev_b ) )
          synth_play_timed( synth_preset( PRESET_ZAP ), C5, 1.0, 8 );

        // X = a preset drum hit
        if( just_pressed( gamepad_button_x(), &prev_x ) )
          synth_play_timed( synth_preset( PRESET_KICK ), C2, 1.0, 8 );

        synth_update();            // <-- never forget this
        clear_screen( color_black );
        end_frame();
    }
}
