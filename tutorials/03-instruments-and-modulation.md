# Tutorial 3 — Custom instruments & modulation

The presets are a starting point; the real fun is designing your own sounds. This
tutorial builds instruments from scratch and layers on **envelopes, LFOs,
arpeggios, and echo** — the tools that turn a beep into a character.

Assumes Tutorials [1](01-sound-effects.md) and [2](02-background-music.md).

---

## 1. Anatomy of an instrument

An instrument is one struct. `synth_patch` sets the core and zeroes everything
else; the `synth_set_*` helpers add modulation:

```c
Instrument pad;
//          inst  waveform    vol   A   D  sustain  R
synth_patch( &pad, WAVE_SAW, 0.16, 24, 30, 0.70,   40 );  // slow, lush
```

- **waveform** — the raw timbre. `WAVE_SINE` (pure), `WAVE_TRIANGLE` (soft),
  `WAVE_SAW` (bright/buzzy), `WAVE_SQUARE`/`WAVE_PULSE25`/`WAVE_PULSE12` (hollow,
  thinner with narrower pulses), `WAVE_NOISE` (percussion/wind).
- **volume** — keep it low (`0.15–0.35`); many voices sum together.
- **A/D/S/R** — the loudness shape (see [concepts](../docs/concepts.md#envelopes)).
  Slow attack = pad; zero attack + zero sustain = pluck/drum.

Two knobs change the *feel* of the envelope:
```c
synth_set_curve( &pad, 0.5 );   // snappier, more natural decay (1.0 = linear)
synth_set_hold ( &pad, 4 );     // hold at full level 4 frames before decaying
```

---

## 2. Movement: vibrato, tremolo, and the LFO

```c
synth_set_vibrato( &pad, 0.2, 5.0, 20 );  // pitch wobble: depth(semis), rate(Hz), delay
synth_set_tremolo( &pad, 0.3, 4.0 );      // volume wobble: depth(0..1), rate(Hz)
```

For anything else, use the **general LFO** and route it where you want:

```c
// a slow filter-ish "wobble" on volume, locked to the song tempo
synth_set_lfo     ( &pad, LFO_SINE, 2.0, 0.5, 0, DEST_AMP );
synth_set_lfo_sync( &pad, 1 );   // rate is now cycles-per-row, not Hz
```

- `DEST_PITCH` — depth is in **semitones** (another vibrato, any shape).
- `DEST_AMP` — depth is `0..1` (tremolo/gate).
- `DEST_DUTY` — drives the PWM morph (section 6).
- Shapes: `LFO_SINE LFO_TRI LFO_SAW LFO_SQUARE LFO_SH` (sample & hold = random
  stepped, great for bleepy/glitchy motion).

The **mod-envelope** is a one-shot version — perfect for pitch drops:
```c
Instrument zap;
synth_patch( &zap, WAVE_SAW, 0.24, 0, 8, 0.0, 6 );
synth_set_pitch_env( &zap, 24.0, 8 );   // start 2 octaves sharp, fall to pitch in 8 frames
```

---

## 3. Arpeggios: chords on one channel

A classic chiptune trick — cycle through chord tones fast enough that the ear
hears a chord, using a single voice:

```c
Instrument arp;
synth_patch( &arp, WAVE_PULSE25, 0.20, 0, 6, 0.5, 8 );
int[3] pattern = { 0, 4, 7 };            // major triad (semitone offsets)
synth_set_arp( &arp, pattern, 3, 4 );    // pattern, length, frames per step
```
Now `synth_note_on(&arp, C4, 1.0)` sounds a C-major arpeggio. Change the pattern
for minor `{0,3,7}`, octaves `{0,12}`, or wild custom runs.

---

## 4. Echo

`synth_update` schedules future notes for you, so echo is one call:

```c
synth_set_echo ( 4, 6, 0.6 );                    // 4 taps, 6 frames apart, 0.6 feedback
synth_note_echo( synth_preset(PRESET_HARP), C5, 1.0, 10 );   // note + decaying repeats
```

---

## 5. Putting it together — a playable demo

Press A/B/X/Y to hear four instruments you built. Hold them to hear the
envelopes/LFOs/arp evolve.

```c
#include "video.h"
#include "input.h"
#include "time.h"
#include "synth.h"

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
```

> Note the A/B handling: because we want to *release on button-up*, we test both
> `rising` (press → `synth_note_on`) and `falling` (release → `synth_note_off`).
> These helpers don't mutate `prev`, so both edges read the same previous value;
> we update all four `prev_*` once at the end of the frame.

---

## 6. Bonus: the PWM morph (experimental)

`synth_set_morph` sweeps a special multi-cycle table for evolving, filter-like
timbres. It's **monophonic** (one morphing voice at a time) and needs the
`wt_pwm` table listed in your ROM after the base wavetables:

```c
Instrument pwm;
synth_patch( &pwm, WAVE_SQUARE, 0.22, 2, 6, 0.7, 12 );
synth_set_morph( &pwm, synth_wave_base + WAVE_COUNT, SYNTH_PWM_CYCLES, 0.0 );
synth_set_lfo  ( &pwm, LFO_SAW, 1.5, SYNTH_PWM_CYCLES - 1, 0, DEST_DUTY );
```
`PRESET_PWM_LEAD` is set up exactly this way. Sweep it with a **rising** (saw) LFO
to avoid phase clicks, and give it a single line to play. Test it by ear.

---

## Where to go next

- Skim the [API reference](../docs/api-reference.md) for everything (chords,
  frequency-based notes, live voice state for visualizers, master volume…).
- Read [`demo.c`](../demo.c) — it combines a sequenced song, live gamepad playing,
  and an oscilloscope/piano visualizer driven entirely from voice state.
- Copy a preset and mutate it: `mylead = *synth_preset(PRESET_LEAD_SAW);` then
  change fields until it's yours.
