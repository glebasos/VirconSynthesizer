# Tutorial 2 — Background music

Now let's add a looping soundtrack with the built-in **step sequencer**. You'll
build a short song from two tracks (bass + lead), play it on a loop, and toggle it
with START — all while your game keeps running.

Assumes you've done [Tutorial 1](01-sound-effects.md) (same project setup).

---

## 1. How the sequencer thinks

- A **`Song`** is a set of parallel **tracks** that share a clock.
- Each **track** has one instrument and an array of **rows**. Every
  `frames_per_row` frames, the sequencer reads one row from every track.
- A row **cell** is either a MIDI note to play, or one of:
  - `SEQ_HOLD` — keep the previous note ringing (do nothing)
  - `SEQ_REST` — silence this step
  - `SEQ_OFF` — release this track's note

So a track is just a list of notes over time. Multiple tracks = harmony + rhythm.

---

## 2. Writing patterns

Notes use the name macros (`C4`, `A2`, `FS3`…). Here's an 8-step bass line and a
lead over an A-minor feel:

```c
//                 row:  0     1        2     3      4     5        6     7
int[8] bass_rows = { A2, SEQ_HOLD, A2, SEQ_HOLD, F2, SEQ_HOLD, G2, SEQ_HOLD };
int[8] lead_rows = { A4, C5,       E5, D5,       C5, A4,       B4, SEQ_REST };
```

`SEQ_HOLD` lets the bass note sustain across two steps; `SEQ_REST` leaves a gap.

---

## 3. Complete program

```c
#include "video.h"
#include "input.h"
#include "time.h"
#include "synth.h"

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
```

**Order matters:** call `synth_seq_update()` (which triggers notes) *before*
`synth_update()` (which renders them), every frame.

---

## 4. Shaping the song

- **Tempo:** smaller `frames_per_row` = faster. Change it live with
  `synth_seq_set_tempo( frames )`.
- **Swing:** `song.swing = 2;` adds 2 frames to odd rows for a shuffle groove.
- **Transpose:** `song.transpose = 3;` moves the whole song up 3 semitones — handy
  for key changes or an intensity shift.
- **More tracks:** bump `num_tracks` and fill `song.tracks[2]`, `[3]`, … up to 8.
  Add drums with `PRESET_KICK` / `PRESET_HAT_CLOSED` on their own tracks:
  ```c
  int[8] kick_rows = { C2, SEQ_REST, C2, SEQ_REST, C2, SEQ_REST, C2, SEQ_REST };
  int[8] hat_rows  = { SEQ_REST, C5, SEQ_REST, C5, SEQ_REST, C5, SEQ_REST, C5 };
  ```
- **Longer songs:** make the row arrays longer and set `song.length` to match.
  All tracks must be the same length.

### mono vs poly tracks
- `mono = 1`: the track reuses one channel and **glides** between notes (give the
  instrument a `glide` time). Ideal for basslines and lead melodies — saves voices.
- `mono = 0`: each note takes a fresh voice; needed if a track plays overlapping
  notes.

### gate (note length)
`gate > 0` releases the note that many frames after it starts — short = staccato,
long/`0` = held until the next note. Great for tightening rhythms.

---

## 5. Music + SFX together

They share the same 16 voices and the same `synth_update()`. Keep doing your
Tutorial-1 `synth_play_timed` calls for effects; the sequencer and your SFX
coexist. If a big SFX burst briefly steals a music voice, the note simply drops
until the next row — usually unnoticeable.

Next: [Tutorial 3 — Custom instruments & modulation](03-instruments-and-modulation.md).
