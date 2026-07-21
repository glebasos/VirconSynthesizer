// Runnable ROM for Tutorial 02 (Music Tutorial).
// Built by tutorials/build.sh. Full walkthrough: 02-background-music.md
#include "video.h"
#include "input.h"
#include "time.h"
#include "../synth.h"   // repo copy lives one dir up; in your own project use "synth.h"

// --- patterns (8 rows) ---
int[8] bass_rows = { A2, SEQ_HOLD, A2, SEQ_HOLD, F2, SEQ_HOLD, G2, SEQ_HOLD };
int[8] lead_rows = { A4, C5,       E5, D5,       C5, A4,       B4, SEQ_REST };

Song song;
int prev_start;

void main()
{
    synth_init( 0 );
    synth_load_presets();

    // --- build the song ---
    song.num_tracks     = 2;
    song.length         = 8;
    song.frames_per_row = 10;      // tempo: 10 frames/row (~90 BPM eighths)
    song.loop           = 1;       // repeat forever
    song.transpose      = 0;
    song.swing          = 0;

    // track 0: a mono, gliding bass
    song.tracks[0].inst     = synth_preset( PRESET_BASS_SAW );
    song.tracks[0].rows     = bass_rows;
    song.tracks[0].velocity = 1.0;
    song.tracks[0].mono     = 1;   // one channel, legato/glide between notes
    song.tracks[0].gate     = 0;

    // track 1: a plucky lead, slightly staccato
    song.tracks[1].inst     = synth_preset( PRESET_PLUCK_SQUARE );
    song.tracks[1].rows     = lead_rows;
    song.tracks[1].velocity = 0.8;
    song.tracks[1].mono     = 0;
    song.tracks[1].gate     = 6;   // auto-release 6 frames after each note

    synth_seq_play( &song );       // start the music

    prev_start = 0;

    while( true )
    {
        select_gamepad( 0 );

        // START toggles the music
        int st = gamepad_button_start();
        if( st > 0 && prev_start <= 0 )
        {
            if( synth_seq_playing ) synth_seq_stop();
            else                    synth_seq_play( &song );
        }
        prev_start = st;

        synth_seq_update();        // advance the sequencer one frame
        synth_update();            // then the engine
        clear_screen( color_black );
        end_frame();
    }
}
