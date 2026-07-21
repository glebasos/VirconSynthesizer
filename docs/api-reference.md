# synth.h — API Reference

Complete reference for the Vircon32 synthesizer library. Everything lives in one
header, `synth.h`, which depends only on `audio.h` and `math.h`.

For the *why* behind the design, read [concepts.md](concepts.md). For hands-on
walkthroughs, see the [tutorials](../tutorials/).

- [Conventions](#conventions)
- [Setup & lifecycle](#setup--lifecycle)
- [Instruments (patches)](#instruments-patches)
- [Preset bank](#preset-bank)
- [Playing notes](#playing-notes)
- [Chords](#chords)
- [Arpeggiator](#arpeggiator)
- [Echo & the event scheduler](#echo--the-event-scheduler)
- [Step sequencer](#step-sequencer)
- [Live voice state](#live-voice-state)
- [Constants](#constants)

---

## Conventions

- A **voice** is one SPU channel, `0..15`. `synth_note_on` returns the voice it
  used (or the one it stole). `-1` is never a valid voice.
- An **`Instrument`** is a struct describing a sound. It is **always passed by
  pointer** — Vircon32 cannot pass structs by value.
- **Times are in frames** (1 frame = 1/60 s). **Levels are `0..1`.** Pitch offsets
  are in **semitones**.
- **Notes are MIDI numbers** `0..127` (middle C = 60). Note-name macros (`C4`,
  `AS3`, …) and `synth_note_num()` produce them.
- You **must call `synth_update()` once per frame** or nothing is heard.

---

## Setup & lifecycle

### `void synth_init( int wave_base_sound_id )`
Initializes the engine. `wave_base_sound_id` is the cartridge sound id of the
first wavetable (`wt_sine`) — normally `0`. Enables looping on the 7 base
wavetables, clears all voices, sets master volume to `0.85`. **Call once at
startup.**

### `void synth_load_presets()`
Fills the 40-instrument [preset bank](#preset-bank). Optional but recommended.
Call after `synth_init`.

### `void synth_update()`
**The heartbeat.** Advances every voice's envelope and modulation, writes the SPU
Volume/Speed registers, frees finished voices, and pumps the event scheduler.
**Call once per frame, before `end_frame()`.**

### `void synth_master_volume( float v )`
Global output scaler `0..1` applied to every voice. Default `0.85`.

### `void synth_set_transpose( int semitones )`
Global transpose applied to notes started after the call.

### `int synth_note_num( int pitch_class, int octave )`
Builds a MIDI number from a pitch class (`PC_C`, `PC_D`, …) and octave
(`synth_note_num(PC_A, 4)` == `A4` == 69).

---

## Instruments (patches)

### `struct Instrument`
Every field, grouped. Set the basics with `synth_patch`, then layer features with
the `synth_set_*` helpers (which also default everything sensibly).

| Field | Meaning |
|-------|---------|
| `waveform` | `WAVE_*` oscillator |
| `volume` | peak amplitude `0..1` (keep low — the mix is additive) |
| `attack` `hold` `decay` `sustain` `release` | AHDSR (frames; sustain `0..1`) |
| `curve` | decay/release shape exponent (`1.0` linear, `<1` snappy/exponential) |
| `vib_depth` `vib_rate` `vib_delay` | dedicated pitch LFO (semis, Hz, frames) |
| `trem_depth` `trem_rate` | dedicated amplitude LFO (`0..1`, Hz) |
| `lfo_shape` `lfo_rate` `lfo_depth` `lfo_delay` `lfo_dest` `lfo_sync` | general LFO |
| `menv_attack` `menv_decay` `menv_amount` `menv_dest` | mod-envelope |
| `pitch_slide` | constant semitones/frame (drum zaps: negative) |
| `glide` | portamento frames (mono tracks / retrigger) |
| `detune` | constant semitone offset |
| `arp_on` `arp_pattern[8]` `arp_len` `arp_speed` | arpeggiator |
| `morph_sound` `morph_cycles` `morph_base` | wavetable/PWM morph |

### `void synth_patch( Instrument* i, int wave, float vol, int a, int d, float s, int r )`
Sets waveform + volume + ADSR and **zeroes all modulation**. Start here.
```c
Instrument lead;
synth_patch( &lead, WAVE_PULSE25, 0.22, 1, 6, 0.55, 10 );
```

### Envelope shaping
- `void synth_set_hold( Instrument* i, int frames )` — AHDSR hold at peak.
- `void synth_set_curve( Instrument* i, float curve )` — `<1` = snappy decay.

### Dedicated LFOs
- `void synth_set_vibrato( Instrument* i, float depth, float rate, int delay )` — pitch LFO (semitones, Hz, fade-in frames).
- `void synth_set_tremolo( Instrument* i, float depth, float rate )` — amplitude LFO (`0..1`, Hz).

### General LFO
- `void synth_set_lfo( Instrument* i, int shape, float rate, float depth, int delay, int dest )`
  — `shape` = `LFO_*`; `rate` in Hz; `depth` means semitones (`DEST_PITCH`),
  `0..1` (`DEST_AMP`), or cycles (`DEST_DUTY`); `dest` = `DEST_*`.
- `void synth_set_lfo_sync( Instrument* i, int on )` — when on, `lfo_rate` is
  **cycles per sequencer row** instead of Hz (tempo-locked wobble).

### Mod-envelope
- `void synth_set_modenv( Instrument* i, int attack, int decay, float amount, int dest )`
  — a 0→amount→0 envelope routed to `DEST_PITCH` (semitones) or `DEST_DUTY` (cycles).
- `void synth_set_pitch_env( Instrument* i, float amount, int frames )` — shorthand
  for a decay-only pitch mod-env (starts `amount` semitones sharp, falls to 0).

### Pitch & tuning
- `void synth_set_glide( Instrument* i, int frames )` — portamento time.
- `void synth_set_detune( Instrument* i, float semitones )` — constant offset.
- `i->pitch_slide = -0.9;` — set directly for a constant per-frame drift.

### Arpeggiator / morph
See [Arpeggiator](#arpeggiator) and [concepts.md](concepts.md#morph).

---

## Preset bank

### `Instrument* synth_preset( int id )`
Returns a pointer to preset `id` (a `PRESET_*` constant). Requires
`synth_load_presets()` first.

### `int* synth_preset_get_name( int id )`
Returns a printable name string (for UI). `SYNTH_PRESET_COUNT` is the total (40).

**Ids:** `PRESET_LEAD_SQUARE PRESET_LEAD_PULSE PRESET_LEAD_SAW PRESET_LEAD_SINE
PRESET_LEAD_CHIP PRESET_BASS_SUB PRESET_BASS_TRI PRESET_BASS_SQUARE PRESET_BASS_SAW
PRESET_BASS_PLUCK PRESET_PLUCK_SQUARE PRESET_PLUCK_SAW PRESET_EPIANO PRESET_HARP
PRESET_MARIMBA PRESET_PAD_SAW PRESET_PAD_SQUARE PRESET_PAD_WARM PRESET_STRINGS
PRESET_ORGAN PRESET_ORGAN_SOFT PRESET_BRASS PRESET_BELL PRESET_CHIME PRESET_ZAP
PRESET_LASER PRESET_SIREN PRESET_DROP PRESET_KICK PRESET_SNARE PRESET_HAT_CLOSED
PRESET_HAT_OPEN PRESET_TOM PRESET_CLAP PRESET_COWBELL PRESET_ARP_MAJ PRESET_ARP_MIN
PRESET_WOBBLE PRESET_PLUCK_ECHO PRESET_PWM_LEAD`.
Drums start at `PRESET_DRUM_FIRST`; feature demos at `PRESET_SHOWCASE_FIRST`.

Presets are ordinary instruments — copy and tweak one:
```c
Instrument mylead;
mylead = *synth_preset( PRESET_LEAD_SAW );   // whole-struct copy
mylead.decay = 20;                            // then customize
```

---

## Playing notes

### `int synth_note_on( Instrument* inst, int note, float velocity )`
Starts `note` (`0..127`) at `velocity` (`0..1`) on a free voice (steals the
quietest if all 16 are busy). Returns the voice. The note **sustains until you
release it** with `synth_note_off` (unless the instrument has `sustain == 0`,
which self-terminates).

### `int synth_play_timed( Instrument* inst, int note, float velocity, int frames )`
Like `synth_note_on` but auto-releases after `frames`. **Fire-and-forget** — ideal
for sound effects and drums. Returns the voice.

### `int synth_note_on_freq( Instrument* inst, float hz, float velocity )`
Start a note at a raw frequency in Hz (sirens, sweeps, non-tempered pitches).

### `int synth_note_on_channel( Instrument* inst, int note, float velocity, int v )`
Force a specific channel `v`. Low-level; most code uses `synth_note_on`.

### `void synth_note_off( int v )`
Enter the release phase of voice `v`. Safe to call on an already-released/idle
voice.

### `void synth_note_retrigger( int v, int note )`
Change a live voice to a new note **without re-attacking** (legato). Honors the
instrument's `glide` (portamento). Used by mono sequencer tracks.

### `void synth_pitch_bend( int v, float semitones )`
Continuous pitch offset on a live voice (e.g. from a game parameter).

### `void synth_set_voice_volume( int v, float velocity )`
Change a live voice's velocity/volume scaler.

### `void synth_voice_kill( int v )`
Immediately stop and free a voice (no release).

### `void synth_all_notes_off()`  /  `void synth_panic()`
Release everything / hard-stop everything (panic also clears the scheduler).

### `int synth_is_voice_active( int v )`
Non-zero if voice `v` is currently sounding.

---

## Chords

Chord types: `CHORD_MAJ CHORD_MIN CHORD_DIM CHORD_AUG CHORD_MAJ7 CHORD_MIN7
CHORD_DOM7 CHORD_SUS4 CHORD_SUS2 CHORD_POWER`.

### `int synth_chord( Instrument* inst, int root, int type, float vel, int* out_voices )`
Plays a chord; writes each voice id into `out_voices` (size ≥ 4) and returns the
count. You keep the voices ringing and release them later:
```c
int voices[4];
int n = synth_chord( synth_preset(PRESET_PAD_SAW), C3, CHORD_MIN7, 0.7, voices );
// ...later...
synth_release_voices( voices, n );
```

### `int synth_chord_timed( Instrument* inst, int root, int type, float vel, int frames )`
Fire-and-forget chord that auto-releases after `frames`. Returns the note count.

### `void synth_release_voices( int* voices, int count )`
Releases a set of voices returned by `synth_chord`.

---

## Arpeggiator

Fakes a chord on a single channel by rapidly retuning the note.

### `void synth_set_arp( Instrument* i, int* pattern, int len, int speed )`
`pattern` = semitone offsets from the played note (up to 8), `len` = steps used,
`speed` = frames per step.
```c
int pat[3] = { 0, 4, 7 };            // major triad
synth_set_arp( &lead, pat, 3, 4 );   // step every 4 frames
```
### `void synth_clear_arp( Instrument* i )`
Turns the arpeggiator off.

> The arp changes pitch only (legato). It overrides `glide` while active.

---

## Echo & the event scheduler

`synth_update()` pumps a 64-slot event queue, so notes can be scheduled into the
future. This powers echo, flams and ratchets.

### `void synth_schedule_note( Instrument* inst, int note, float vel, int delay, int dur )`
Play `note` `delay` frames from now. `dur > 0` auto-releases (like
`synth_play_timed`); `dur == 0` is a sustained note you must release yourself.

### `void synth_set_echo( int taps, int delay, float feedback )`
Set the defaults used by `synth_note_echo`. `feedback` is the velocity multiplier
per tap (`0.5` halves each repeat).

### `int synth_note_echo( Instrument* inst, int note, float vel, int dur )`
Play a note plus decaying repeats using the global echo settings. Returns the
first voice.

### `int synth_play_echo( Instrument* inst, int note, float vel, int dur, int taps, int delay, float feedback )`
Same, with explicit echo parameters.

---

## Step sequencer

Build a `Song` of parallel tracks; call `synth_seq_update()` each frame.

### `struct SeqTrack`
| Field | Meaning |
|-------|---------|
| `inst` | the track's `Instrument*` |
| `rows` | `int[]` of cells (length = song `length`) |
| `velocity` | `0..1` |
| `mono` | `1` = single-channel legato/glide line |
| `gate` | `>0` = auto note-off this many frames after each trigger (staccato) |

Row cell values: a MIDI note `1..127`, or `SEQ_HOLD` (keep previous note ringing),
`SEQ_REST` (do nothing), `SEQ_OFF` (release this track's note).

### `struct Song`
| Field | Meaning |
|-------|---------|
| `tracks[8]` | up to `SEQ_MAX_TRACKS` tracks |
| `num_tracks` | tracks in use |
| `length` | number of rows |
| `frames_per_row` | tempo (frames each row lasts) |
| `loop` | `1` = repeat from row 0 |
| `transpose` | semitones added to every note |
| `swing` | extra frames on odd rows (shuffle) |

### Functions
- `void synth_seq_play( Song* song )` — start from row 0.
- `void synth_seq_stop()` — stop and release held notes.
- `void synth_seq_pause( int paused )` — freeze/resume without releasing.
- `void synth_seq_set_tempo( int frames_per_row )` — change tempo live.
- `void synth_seq_update()` — advance one frame. Call every frame while playing.
- `synth_seq_playing` — read this global (non-zero while playing).

---

## Live voice state

The whole program is one translation unit, so a visualizer can read engine state
directly. All are arrays indexed by voice `0..15`:

| Global | Meaning |
|--------|---------|
| `synth_v_active[v]` | `1` while sounding |
| `synth_v_note[v]` | current MIDI note (arp updates this) |
| `synth_v_basenote[v]` | the note that was played (arp root) |
| `synth_v_phase[v]` | `ENV_*` |
| `synth_v_level[v]` | envelope level `0..1` |
| `synth_v_age[v]` | frames since note-on |
| `synth_v_freq[v]` | current frequency in Hz |
| `synth_v_amp[v]` | last amplitude written |
| `synth_v_inst[v]` | the `Instrument*` |

Example: a level meter is `synth_v_active[v] ? synth_v_level[v] : 0`.

---

## Constants

**Waveforms:** `WAVE_SINE WAVE_TRIANGLE WAVE_SAW WAVE_SQUARE WAVE_PULSE25
WAVE_PULSE12 WAVE_NOISE`; `WAVE_COUNT` (7).

**Envelope phases:** `ENV_OFF ENV_ATTACK ENV_HOLD ENV_DECAY ENV_SUSTAIN ENV_RELEASE`.

**LFO shapes:** `LFO_SINE LFO_TRI LFO_SAW LFO_SQUARE LFO_SH`.

**Modulation destinations:** `DEST_NONE DEST_PITCH DEST_AMP DEST_DUTY`.

**Sequencer cells:** `SEQ_REST` (−2), `SEQ_OFF` (−1), `SEQ_HOLD` (0).

**Chord types:** `CHORD_MAJ MIN DIM AUG MAJ7 MIN7 DOM7 SUS4 SUS2 POWER`.

**Note names:** `C1`..`B7`, sharps as `CS4`, `DS4`, … . Pitch classes: `PC_C PC_D
PC_E PC_F PC_G PC_A PC_B`.

**Engine:** `SYNTH_VOICES` (16), `SYNTH_WAVE_PERIOD` (2048), `SYNTH_RATE` (44100),
`SYNTH_FPS` (60), `SYNTH_EVENTS` (64), `SYNTH_PWM_CYCLES` (8), `SYNTH_NO_TIMER`
(−1), `SYNTH_PRESET_COUNT` (40), `SEQ_MAX_TRACKS` (8).
