# Vircon32 Synthesizer

A software **wavetable synthesizer** for the [Vircon32](https://www.vircon32.com/)
fantasy console, plus a playable showcase demo.

Vircon32's SPU is a 16-channel, 44100 Hz **sample-playback** engine — it plays
baked cartridge sounds, and it has **no runtime sample-write port**. So there is
no way to stream synthesized audio to it directly. Instead, this library does
what real chiptune hardware does: it bakes single-cycle oscillator shapes into
ROM, pitches them per-channel with the `Speed` register, and shapes their
amplitude in software with a per-frame ADSR envelope written to the `Volume`
register. The result is a 16-voice polyphonic synth with envelopes, vibrato,
pitch-slide drums, and a small step sequencer — all in one header, `synth.h`.

---

## Files

| File | Purpose |
|------|---------|
| `synth.h`          | The synth engine + step sequencer. Include this. |
| `tools/gen_waves.py` | Generates the wavetable WAVs (`sounds/wt_*.wav`). |
| `demo.c` / `demo.xml` | The showcase: self-playing chiptune + live display + gamepad synth. |
| `build.sh`         | Full pipeline: gen waves → compile → assemble → pack. |

## Build & run

```bash
./build.sh demo            # -> bin/demo.v32
Vircon32.exe bin/demo.v32  # run in the emulator
```

`build.sh` regenerates the wavetables on first run (needs Python 3), converts
them with `wav2vircon`, then compiles/assembles/packs. The ROM carries no
textures — everything on screen is drawn with `draw_primitives`.

## Demo controls

| Input | Action |
|-------|--------|
| **START** | play / stop the backing song |
| **A B X Y L R** | play a 6-note scale with the selected preset |
| **D-pad ↑ / ↓** | step through all 35 presets (name shown top-right) |
| **D-pad ← / →** | slower / faster tempo |

The on-screen display is reconstructed entirely from live voice state — the
oscilloscope sums the active voices' waveforms, the 16 bars are their envelope
levels (colored by ADSR phase), and the piano lights the notes actually
sounding. If it moves, the engine is ticking.

> **Note:** audio can only be verified by ear in the emulator — Vircon32 has no
> headless audio readback. A clean build + clean main-loop run (both confirmed)
> mean the ROM is valid; the melody itself is for you to hear.

---

## The `synth.h` API

### Setup

```c
#include "synth.h"      // pulls in audio.h + math.h
synth_init( 0 );        // 0 = cartridge sound id of the first wavetable (wt_sine)
```

Your ROM's `<sounds>` **must list the 7 wavetables first, in `WAVE_*` order**:
`wt_sine, wt_triangle, wt_saw, wt_square, wt_pulse25, wt_pulse12, wt_noise`.

Then, once per frame:

```c
synth_seq_update();     // if using the sequencer
synth_update();         // REQUIRED: advances envelopes, writes SPU registers
end_frame();
```

### Preset bank (40 ready instruments)

Fill the bank once, then grab any preset by id:

```c
synth_load_presets();
Instrument* lead = synth_preset( PRESET_LEAD_PULSE );
```

| Group | Presets |
|-------|---------|
| Leads | `LEAD_SQUARE` `LEAD_PULSE` `LEAD_SAW` `LEAD_SINE` `LEAD_CHIP` |
| Bass | `BASS_SUB` `BASS_TRI` `BASS_SQUARE` `BASS_SAW` `BASS_PLUCK` |
| Keys / pluck | `PLUCK_SQUARE` `PLUCK_SAW` `EPIANO` `HARP` `MARIMBA` |
| Pads / strings | `PAD_SAW` `PAD_SQUARE` `PAD_WARM` `STRINGS` `ORGAN` `ORGAN_SOFT` `BRASS` |
| Bells / FX | `BELL` `CHIME` `ZAP` `LASER` `SIREN` `DROP` |
| Drums | `KICK` `SNARE` `HAT_CLOSED` `HAT_OPEN` `TOM` `CLAP` `COWBELL` |
| Feature demos | `ARP_MAJ` `ARP_MIN` `WOBBLE` `PLUCK_ECHO` `PWM_LEAD` |

All ids are `PRESET_*`; `synth_preset_get_name(id)` returns a printable name,
`SYNTH_PRESET_COUNT` is the total. Drums start at `PRESET_DRUM_FIRST`, the
feature-showcase presets at `PRESET_SHOWCASE_FIRST`.

### Building your own instruments

An `Instrument` is a plain struct, always passed **by pointer** (Vircon32's
one-word calling convention). Envelope times are in **frames** (1/60 s), levels
`0..1`. Waveforms: `WAVE_SINE, WAVE_TRIANGLE, WAVE_SAW, WAVE_SQUARE,
WAVE_PULSE25, WAVE_PULSE12, WAVE_NOISE`.

```c
Instrument lead;
//            inst    wave         vol   A  D  sustain  R
synth_patch( &lead, WAVE_PULSE25, 0.22,  1, 6, 0.55,   10 );

synth_set_curve   ( &lead, 0.5 );           // decay/release shape (1=linear, <1=snappy)
synth_set_hold    ( &lead, 4 );             // AHDSR: frames held at peak before decay
synth_set_vibrato ( &lead, 0.25, 6.0, 14 ); // pitch LFO: depth(semis), rate(Hz), delay
synth_set_tremolo ( &lead, 0.30, 4.0 );     // amplitude LFO: depth(0..1), rate(Hz)
synth_set_glide   ( &lead, 3 );             // portamento time for mono/retrigger
synth_set_detune  ( &lead, 0.1 );           // constant semitone offset (fat unison)
lead.pitch_slide = -0.9;                     // constant semitones/frame (drum zaps)
```

A `sustain` of `0` makes the instrument **self-terminating** (percussive): it
plays attack→(hold)→decay→off with no note-off needed — that's how the drums work.

### Assignable LFO + mod-envelope

Beyond the dedicated vibrato/tremolo, each instrument has one **general LFO** and
one **mod-envelope**, each routable to `DEST_PITCH`, `DEST_AMP`, or `DEST_DUTY`:

```c
// LFO: shape, rate(Hz), depth, fade-in frames, destination
synth_set_lfo     ( &lead, LFO_TRI, 5.0, 0.4, 8, DEST_PITCH );
synth_set_lfo_sync( &lead, 1 );             // now rate is *cycles per sequencer row*

// mod-env: attack, decay, amount, destination
synth_set_modenv  ( &lead, 0, 10, 12.0, DEST_PITCH );  // +12 semis, fall over 10 frames
synth_set_pitch_env( &lead, 24.0, 8 );      // shorthand for a decay-only pitch mod-env
```

LFO shapes: `LFO_SINE LFO_TRI LFO_SAW LFO_SQUARE LFO_SH` (sample & hold).
`DEST_PITCH` adds semitones, `DEST_AMP` is tremolo-style depth `0..1`, `DEST_DUTY`
drives the wavetable morph (below).

### Arpeggiator

Fakes a chord on a single channel by rapidly retuning the note (NES/GB style):

```c
int pattern[3] = { 0, 4, 7 };               // semitone offsets from the played note
synth_set_arp( &lead, pattern, 3, 4 );      // pattern, length, frames per step
synth_clear_arp( &lead );
```

### Echo / delay (event scheduler)

`synth_update()` also pumps a small event queue, so notes can be scheduled into
the future — that powers echo, flams and ratchets:

```c
synth_set_echo ( 4, 6, 0.6 );               // taps, frames apart, feedback (velocity mul)
synth_note_echo( pluck, C4, 1.0, 10 );      // note + 4 decaying repeats (uses defaults)
synth_play_echo( pluck, C4, 1.0, 10, 3, 8, 0.5 );        // explicit taps/delay/feedback
synth_schedule_note( pluck, G4, 0.7, 30, 12 );           // one note, 30 frames from now
```

### Wavetable / PWM morph (experimental, monophonic)

Sweeps a baked multi-cycle table's **loop window** to morph timbre / duty — the
closest thing to a filter sweep this SPU allows. Because the loop window is a
property of the *sound* (not the channel), **only one voice per morph table**
sounds correct at a time — use it for a mono lead. Route an LFO or mod-env to
`DEST_DUTY` to drive the sweep (bias it rising to avoid phase clicks):

```c
synth_set_morph( &lead, synth_wave_base + WAVE_COUNT, SYNTH_PWM_CYCLES, 0.0 );
synth_set_lfo  ( &lead, LFO_SAW, 1.5, SYNTH_PWM_CYCLES - 1, 0, DEST_DUTY );
```

The morph table (`wt_pwm`, 8 duty cycles) is generated by `tools/gen_waves.py`
and must be listed in the ROM right after the 7 base wavetables. The
`PRESET_PWM_LEAD` preset is set up this way.

### Playing notes

```c
int v = synth_note_on      ( lead, A4, 1.0 );        // note-name macro or 0..127
        synth_note_on_freq ( lead, 523.25, 1.0 );    // by raw Hz
        synth_note_on_channel( lead, A4, 1.0, 5 );   // force SPU channel 5
        synth_play_timed   ( lead, A4, 1.0, 30 );    // auto-releases after 30 frames

synth_pitch_bend      ( v, 2.0 );    // +2 semitones on a live voice
synth_note_retrigger  ( v, C5 );     // glide/legato a live voice to a new note
synth_set_voice_volume( v, 0.5 );    // live volume change
synth_note_off        ( v );         // release
synth_all_notes_off();               // release everything
synth_panic();                       // hard-stop everything now

synth_master_volume( 0.8 );          // global 0..1
synth_set_transpose( 12 );           // global transpose, semitones
```

Note names `C1`..`B7` (sharps as `CS4`, `DS4`, …) and `synth_note_num(PC_A, 4)`
are provided; `synth_note_on` returns the voice (`0..15`), stealing the quietest
one if all 16 are busy.

### Chords

```c
int voices[4];
int n = synth_chord( lead, C3, CHORD_MIN7, 0.8, voices ); // returns note count
        synth_release_voices( voices, n );
        synth_chord_timed( lead, C3, CHORD_MAJ, 0.8, 40 ); // fire-and-forget
```

Chord types: `CHORD_MAJ MIN DIM AUG MAJ7 MIN7 DOM7 SUS4 SUS2 POWER`.

### Step sequencer

A `Song` is up to 8 parallel tracks sharing a row clock. Each track owns one
instrument and a row array of cells:

- a value `1..127` — a MIDI note to trigger
- `SEQ_HOLD` (0) — keep the previous note ringing
- `SEQ_REST` (−2) — silence this row (leave the note alone)
- `SEQ_OFF` (−1) — release the note this track is holding

```c
int[ 8 ] melody = { C4, SEQ_HOLD, E4, SEQ_OFF,  G4, SEQ_REST, C5, SEQ_OFF };

Song song;
song.num_tracks     = 1;
song.length         = 8;
song.frames_per_row = 8;     // tempo: frames per row
song.loop           = 1;
song.transpose      = 0;     // semitones added to every note
song.swing          = 1;     // extra frames on odd rows (shuffle)
song.tracks[0].inst     = synth_preset( PRESET_LEAD_PULSE );
song.tracks[0].rows     = melody;
song.tracks[0].velocity = 1.0;
song.tracks[0].mono     = 0; // 1 = single-channel legato/glide line
song.tracks[0].gate     = 0; // >0 = auto note-off N frames after each trigger (staccato)

synth_seq_play( &song );     // then call synth_seq_update() each frame
// also: synth_seq_stop(), synth_seq_pause(1/0), synth_seq_set_tempo(frames)
```

Set a track's `mono = 1` (and give its instrument a `synth_set_glide` time) to
get a portamento bassline that slurs between notes on a single channel.

### Live state (for meters / scopes)

Because the whole program is one translation unit, the demo reads voice state
straight from the engine's global arrays, indexed by voice `0..15`:

`synth_v_active`, `synth_v_note`, `synth_v_phase` (`ENV_*`), `synth_v_level`
(0..1), `synth_v_freq` (Hz), `synth_v_amp` (last amplitude written),
`synth_v_inst` (the `Instrument*`).

---

## How the pitch math works

Each wavetable holds exactly one period across `SYNTH_WAVE_PERIOD` (2048)
samples, looped by the SPU. To sound a frequency `f`:

```
channel_speed = f * SYNTH_WAVE_PERIOD / 44100
```

`synth_init` precomputes this for every MIDI note into `synth_note_speed[128]`
(equal temperament, A4 = 440 Hz). Vibrato, bend, and pitch-slide multiply that
base speed by `2^(semitones/12)` each frame.

### Mixing headroom

The SPU mixes channels additively into 16-bit samples, so the sum of all
sounding voices must stay under full scale to avoid clipping. The wavetables
peak at ~9000 (not 32767) and instrument volumes are kept low (~0.15–0.35);
budget roughly `Σ(volume · 9000) < 32767` across simultaneous voices.

## Extending the wavetables

Edit `tools/gen_waves.py` to add or reshape oscillators (each is a function of
phase `0..1` returning `-1..1`), delete `sounds/wt_*.wav`, and rebuild. Keep the
`WAVE_*` order in `synth.h` and the ROM `<sounds>` list in sync.
