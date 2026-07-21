# Concepts & Setup

How the synth works, what it needs from your ROM, and the handful of hardware
facts that shape what's possible. Read this once; then the
[API reference](api-reference.md) and [tutorials](../tutorials/) will make sense.

---

## The one-minute mental model

- The Vircon32 **SPU plays back samples** — it has **16 channels**, each looping a
  baked sound at a chosen **speed** and **volume**, updated once per frame (60 Hz).
- There is **no way to send generated audio to it at runtime.** So the synth
  *fakes* oscillators: it bakes one cycle of each waveform into the ROM, then
  **pitches** it with the channel speed and **shapes** its loudness with a
  software envelope written every frame.
- A **voice** is one channel (`0..15`). An **instrument** is a recipe (waveform +
  envelope + modulation). You play instruments as notes; the engine assigns them
  to voices and does the per-frame work when you call `synth_update()`.

That's it. Everything else is detail.

---

## What your ROM needs

The synth plays wavetables that must be baked into the cartridge. Two steps:

**1. Generate the wavetables** (once): `python tools/gen_waves.py` writes 8 WAV
files into `sounds/` (`wt_sine`, `wt_triangle`, `wt_saw`, `wt_square`,
`wt_pulse25`, `wt_pulse12`, `wt_noise`, `wt_pwm`). The build script converts them
to `.vsnd` for you.

**2. List them in your ROM's `.xml`, first, in this exact order:**
```xml
<sounds>
    <sound path="obj/wt_sine.vsnd" />
    <sound path="obj/wt_triangle.vsnd" />
    <sound path="obj/wt_saw.vsnd" />
    <sound path="obj/wt_square.vsnd" />
    <sound path="obj/wt_pulse25.vsnd" />
    <sound path="obj/wt_pulse12.vsnd" />
    <sound path="obj/wt_noise.vsnd" />
    <sound path="obj/wt_pwm.vsnd" />   <!-- optional: only if you use PWM morph -->
    <!-- your own game sound effects can follow here -->
</sounds>
```
The order matters: `synth_init(0)` assumes `wt_sine` is cartridge sound `0`, and
the `WAVE_*` constants are offsets from it. If your game already uses sound id 0
for something else, pass that base to `synth_init` and list the wavetables
starting there.

**3. In code:**
```c
#include "synth.h"     // also pulls in audio.h + math.h
...
synth_init( 0 );        // 0 = first wavetable's sound id
synth_load_presets();   // optional, gives you 40 ready instruments
...
while( true ) {
    // your game logic + audio triggers here
    synth_update();     // REQUIRED every frame
    end_frame();
}
```

You can drop `synth.h` straight into a project that already uses the Vircon32
standard library — it only needs `audio.h` and `math.h`.

---

## Notes, pitch, and time

- **Notes are MIDI numbers** `0..127`; middle C is 60. Use the name macros (`C4`,
  `FS3`, `AS5`) or `synth_note_num(PC_A, 4)` for readability.
- **Pitch** comes from equal temperament (A4 = 440 Hz), precomputed at init.
- **Time is measured in frames**, 60 per second. An envelope `attack` of `6` is
  0.1 s; a sequencer `frames_per_row` of `8` is ~7.5 rows/second.

---

## Envelopes (the shape of a sound over time)

Every instrument has an **AHDSR** amplitude envelope:

```
level
 1 |      /‾‾\__
   |     /      ‾‾‾‾\___          sustain
   |    /               ‾‾‾‾‾\____________
   |   /                                  \
 0 |__/____________________________________\____
     A  H   D            (held)             R
```

- **Attack** frames to reach full level, **Hold** frames at the top, **Decay**
  frames down to the **Sustain** level, then it holds until you release, and
  **Release** frames back to silence.
- **`curve`** bends decay/release: `1.0` is a straight line, `< 1.0` (e.g. `0.5`)
  falls fast then tails off — snappier, more natural for plucks and bells.
- A **`sustain` of `0`** makes the sound **self-terminating**: it plays
  attack→decay→silence and frees its voice with no note-off. That's how drums and
  plucks work — use `synth_play_timed` or just `synth_note_on` and forget it.

---

## Modulation (making sounds move)

Layer any of these onto an instrument (see the API reference for signatures):

- **Vibrato** — pitch wobble (`synth_set_vibrato`).
- **Tremolo** — volume wobble (`synth_set_tremolo`).
- **General LFO** — one assignable low-frequency oscillator: pick a shape
  (`LFO_SINE/TRI/SAW/SQUARE/SH`), a rate (free Hz or **tempo-synced** cycles per
  row), and route it to **pitch**, **amplitude**, or **duty** (morph).
- **Mod-envelope** — a second envelope routed to pitch or duty (great for zaps and
  pitch drops).
- **Pitch slide / glide / detune** — constant drift, portamento between notes, and
  fixed offset.

---

## Polyphony, headroom, and voice stealing

- **16 voices** total. `synth_note_on` finds a free one, or **steals the quietest**
  if all are busy. Chords, arps and echoes all consume voices — a 4-note chord is
  4 voices.
- The SPU **mixes additively into 16-bit and wraps (distorts) on overflow**, so
  keep the sum of simultaneous loudness in check. In practice: keep instrument
  `volume` around `0.15–0.35`, leave `synth_master` near its `0.85` default, and
  don't stack many loud voices. If things sound crunchy, lower master volume.

---

## What this SPU **can't** do (so the library doesn't pretend to)

- **No resonant filter** — there's no sample processing at runtime. The wavetable
  **morph** (sweeping between duty/timbre tables) is the closest approximation to
  a filter sweep, and it's **monophonic** (one morphing voice at a time — see the
  [morph](#morph) note).
- **No FM / ring modulation** — channels are summed independently and can't
  modulate each other.
- **No dynamic stereo pan** — a channel's volume applies equally to left and right.
- **Speed clamps at 128**, so notes above ~E7 detune. Stay in a musical range.

Everything the library exposes is achievable within these limits; nothing above
is faked.

---

## Morph

`synth_set_morph` plays a special multi-cycle table (`wt_pwm`) and sweeps which
cycle loops, morphing the timbre/duty — driven by an LFO or mod-env routed to
`DEST_DUTY`. Because the SPU's loop window belongs to the **sound**, not the
channel, **only one voice per morph table sounds correct at a time** — use it for
a mono lead. It's the one experimental feature; test it by ear. `PRESET_PWM_LEAD`
is set up ready to try.

---

## Verifying audio

Vircon32 has **no headless audio capture**, and CPU faults don't appear in logs.
So a clean build + a running main loop means the ROM is valid, but the *sound*
can only be judged **by ear in the emulator**. When in doubt, load the ROM and
listen.
