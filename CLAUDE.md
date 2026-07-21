# CLAUDE.md — Vircon32 Synthesizer

Guidance for future Claude sessions working in this repo. Read this first, then
`README.md` (user-facing API docs) and `VIRCON32_C_DIALECT.md` (the C dialect).

---

## What this is / current state

A **software wavetable synthesizer** for the Vircon32 fantasy console, written as
a single header (`synth.h`) in Vircon32 C, plus a showcase demo (`demo.c`) and a
host-side wavetable generator (`tools/gen_waves.py`).

**Status (2026-07-21): complete and building clean.** The full toolchain
(compile → assemble → pack) succeeds, the ROM loads all sounds and runs its main
loop fault-free (confirmed headlessly via `DebugLog.txt`). Feature set:

- 16-voice engine; per-voice **AHDSR + curve** amplitude envelope.
- Dedicated **vibrato** (pitch LFO) and **tremolo** (amp LFO).
- A **general assignable LFO** (sine/tri/saw/square/sample&hold; free or
  tempo-synced; routable to pitch/amp/duty).
- A **mod-envelope** (attack/decay) routable to pitch or duty.
- **Pitch slide**, **glide/portamento**, **detune**.
- **Arpeggiator** (fakes chords on one channel).
- **Event scheduler + echo/delay**.
- **PWM / wavetable morph** — EXPERIMENTAL, monophonic (see caveats below).
- note_on by MIDI note / raw Hz / forced channel; **timed** (auto-release) notes;
  **chords** (10 types); **40-preset bank**; note-name macros (`C4`=60);
  master volume + global transpose.
- A **step sequencer**: parallel tracks, per-track mono/glide/gate, per-song
  swing/transpose/loop.

> **Audio itself is verified by the USER, by ear.** Vircon32 has no headless
> audio readback and CPU faults don't surface in the log. "Builds + runs the main
> loop without faulting" is as far as automated verification goes. **Do not claim
> a sound/melody works — say it builds and the user must listen.** The user has
> asked us **not to launch the emulator**; they run it themselves.

---

## TL;DR — build & run

```bash
./build.sh demo            # regenerates wavetables if missing, then compile→assemble→pack
                           # -> bin/demo.v32
```

The user runs `bin/demo.v32` in the emulator (`E:\Soft\Vircon32\Emulator\Vircon32.exe`).
**Do not launch the emulator yourself unless asked.**

Toolchain lives in `E:/Claude/Projects/Vircon32/DevTools/`
(`compile.exe`, `assemble.exe`, `wav2vircon.exe`, `packrom.exe`).
Python 3 is needed only for `tools/gen_waves.py`.

---

## Hardware model — why it's a wavetable synth

The Vircon32 SPU is a **16-channel, 44100 Hz, nearest-sample sample-playback**
engine. It plays baked cartridge sounds; each channel has a `Volume` and `Speed`
register you rewrite per frame (60 Hz). **There is no runtime sample-write port**,
so you cannot stream synthesized audio. The only way to synthesize is:

1. Bake single-cycle oscillator shapes into ROM as looping sounds
   (`tools/gen_waves.py`). One cycle = `SYNTH_WAVE_PERIOD` (**2048**) samples.
2. Pitch a channel: `speed = freq_hz * 2048 / 44100`. `synth_init` precomputes
   this per MIDI note (equal temperament, A4=440) into `synth_note_speed[128]`.
3. Shape amplitude/pitch/timbre in software, per frame, by writing Volume/Speed
   (and, for morph, the sound's loop window).

Playback math (emulator `V32SPU.cpp::UpdateOutputBuffer`): `Position += Speed`
each output sample; `sample = Samples[(int)Position]` (no interpolation → high
notes alias, which is the chiptune aesthetic); loop wraps `Position` within
`[LoopStart, LoopEnd]`.

---

## Hardware limits — verified from emulator source (READ THIS)

These are load-bearing facts, verified in
`ComputerSoftware/DesktopEmulator/ConsoleLogic/V32SPUWriters.cpp` and `V32SPU.cpp`:

- **`assign_channel_sound` is IGNORED unless the channel is Stopped.**
  (`WriteSPUChannelAssignedSound`: "sounds can only be assigned to a non playing
  channel".) → `synth_note_on_channel`/`synth_note_on_freq` **must
  `stop_channel(v)` before assigning**, or a stolen (still-playing) voice keeps
  the previous instrument's waveform. This is already done; don't remove it.
- **`Speed` clamps to `[0, 128]`, `Volume` to `[0, 8]`.** Notes above ~E7 (speed
  > 128) detune. Normal range is fine.
- **The loop window (`SoundLoopStart/End`) is a property of the SOUND, not the
  channel**, and persists. Two channels playing the same sound share its loop
  config. This is why the morph feature is **monophonic per morph table**.
- Mix is **additive into signed 16-bit** and **wraps (not clips)** on overflow.
  Keep `Σ(master · volume · velocity · tablePeak)` under 32767 across
  simultaneous voices. Tables peak at ~9000, instrument volumes are ~0.15–0.36,
  default `synth_master = 0.85`. Echo/arps/chords multiply voice counts — mind it.

**NOT possible on this SPU (don't try, don't fake silently):** a real resonant
**filter**, **FM / ring-mod** (channels can't modulate each other), dynamic
**stereo pan** (channel Volume scales L and R equally). The morph is the closest
we get to a "filter sweep".

---

## Repo layout

| Path | What |
|------|------|
| `synth.h` | The whole synth engine + sequencer + scheduler. Single header. |
| `demo.c` / `demo.xml` | Showcase ROM: self-playing song + live display + gamepad synth. |
| `tools/gen_waves.py` | Host-side wavetable generator → `sounds/wt_*.wav`. |
| `build.sh` | Full pipeline. `./build.sh <name>` (default `demo`). |
| `README.md` | User-facing API docs. Keep in sync with `synth.h`. |
| `VIRCON32_C_DIALECT.md` | The C dialect reference (shared across Vircon ports). |
| `sounds/` | Generated `.wav` wavetables (regenerated by `gen_waves.py`). |
| `obj/`, `bin/` | Build outputs (`.asm`, `.vbin`, `.vsnd`, `.v32`). |

### Cartridge sound-id layout (must match `demo.xml` order)

```
0 wt_sine   1 wt_triangle  2 wt_saw   3 wt_square
4 wt_pulse25  5 wt_pulse12  6 wt_noise   7 wt_pwm (morph table)
```

`WAVE_*` constants are offsets from `synth_wave_base` (0 here). The morph table is
`synth_wave_base + WAVE_COUNT` (= 7). If you reorder the ROM `<sounds>`, update
these assumptions.

---

## `synth.h` architecture

- **Voice = SPU channel (0..15).** State is Structure-of-Arrays, `synth_v_*[16]`,
  publicly readable so the display can draw live meters (active, note, phase,
  level, freq, amp, inst). Voice 0..15 map 1:1 to channels.
- **`Instrument`** is a struct, **always passed by pointer** (Vircon32's one-word
  calling convention forbids struct-by-value). `synth_patch()` sets the basics
  and zeroes all modulation; `synth_set_*` layer on features.
- **`synth_update()`** is the heartbeat — call once per frame before `end_frame()`.
  It pumps the scheduler, then per active voice: steps the envelope (frees the
  voice on `ENV_OFF` via `stop_channel`), runs arp **or** glide, evaluates the
  LFO + mod-env once, computes amplitude (env·vol·vel·master, minus tremolo/LFO),
  computes pitch (bend + slide + pitch-mod-env + vibrato + LFO), applies morph,
  writes Volume/Speed, then handles the auto-off timer.
- **Envelope** phases: `ENV_OFF/ATTACK/HOLD/DECAY/SUSTAIN/RELEASE`. `sustain==0`
  makes an instrument self-terminating (percussive) — decay goes straight to OFF,
  no note-off needed. `curve != 1.0` shapes decay/release via `pow(t, curve)`.
- **Sequencer** (`Song`/`SeqTrack`): shared row clock, `frames_per_row` tempo.
  Cells are a MIDI note or `SEQ_HOLD/SEQ_REST/SEQ_OFF`. `mono` tracks reuse one
  channel and `synth_note_retrigger` (legato/glide); `gate` gives staccato via
  the timed-note path. Each track holds one voice id in `synth_seq_voice[]`.
- **Scheduler** (`synth_ev_*[64]`): "in N frames, play this note". Powers echo.
  `synth_update` pumps it; never call `synth_scheduler_update` directly.
- **No `misc.h`.** synth.h depends only on `audio.h` + `math.h`. Sample&hold uses
  a tiny inline LCG (`synth_lcg`) rather than pulling in `rand`/malloc globals.

### Arp vs glide

Both write `synth_v_curspeed`. **Arp wins** — when `arp_on`, glide is skipped.
Arp also updates `synth_v_note`/`synth_v_freq` each step so the scope/keyboard
show the right pitch. Documented; keep it that way.

### Morph (experimental)

`synth_set_morph(inst, sound_id, cycles, base)` routes the voice through a
K-cycle table (`wt_pwm`, 8 duty cycles). Each frame, a `DEST_DUTY` LFO/mod-env
moves the position; `synth_apply_morph` sets that sound's loop window to cycle
`k`. **Reset the window to the base cycle before `play_channel`** (done in
`synth_morph_reset`) because loop config persists per-sound. Bias the duty LFO
**rising (saw)** — a backward window move forces an immediate wrap = phase click.
**Monophonic per morph table.** This is the ONE feature whose correctness is
audio-artifact-dependent and can't be verified without listening.

---

## Vircon32 C dialect gotchas that bit us here

(Full reference in `VIRCON32_C_DIALECT.md`; these are the ones that actually
tripped this project.)

- **Arrays are `type[N] name`, NOT `type name[N]`.** The latter is a hard error.
  Applies to globals, struct members, locals.
- **Only ONE `#define` per physical line.** A define's body runs to end-of-line
  and swallows any later `#` → "definitions cannot contain the hash symbol".
- **Structs pass by pointer only** (one-word calling convention). Return scalars.
- **No ternary `?:`, no comma operator.** Use if/else.
- **Float literals below ~1e-6 underflow to 0.0** silently. We stay well above it.
- **String literals initialize `int[]`**; size the array ≥ len+1 or get "too many
  characters to assign". 2D `int[N][16]` string-literal initializers work.
- A `.c` must sit where its `#include "x.h"` resolves (compiler searches its own
  `include/` dir, then the source file's dir). Keep `synth.h` beside `demo.c`.
- `wav2vircon` accepts **mono 16-bit** WAV.

---

## How to extend

- **Add/reshape a wavetable:** edit `tools/gen_waves.py` (each oscillator is a
  function of phase 0..1 → −1..1), delete `sounds/wt_*.wav`, rebuild. Keep the
  `WAVE_*` order in `synth.h` and the `<sounds>` list in `demo.xml` in sync.
- **Add a preset:** add a `PRESET_*` id (bump `SYNTH_PRESET_COUNT`), a name in
  `synth_preset_name`, and a line in `synth_load_presets`. The `gen_waves.py` /
  preset tables were originally generated together to avoid index drift — if
  adding many, regenerate rather than hand-editing.
- **Add a modulation feature:** add fields to `Instrument` (default them in
  `synth_patch`), per-voice state to the `synth_v_*` arrays (init in
  `synth_voice_begin`), and the logic in `synth_update`. Compile a tiny harness
  after each change (the workflow that caught every bug here).
- **Verify a compile fast:** `compile.exe file.c -o obj/file.asm` then
  `assemble.exe`. Build a throwaway `t_*.c` beside `synth.h` that exercises the
  new API; the compiler is first-error-only so iterate.

---

## Demo (`demo.c`)

Self-playing 32-row chiptune (Am–F–C–G) built entirely from presets — 5 tracks
(pulse lead, mono+glide saw bass, square-pluck arp, kick, hat) with a little
swing. The display is reconstructed from live voice state (proof the engine
ticks): a summed-voice **oscilloscope**, 16 ADSR-colored **voice meters**, a lit
**piano**, and the selected preset name.

Controls: **START** play/stop song · **A B X Y L R** play a scale with the
selected preset · **D-pad ↑/↓** step all 40 presets · **←/→** tempo. Selecting
**ECHO PLUCK** routes manual notes through `synth_note_echo`; **MAJ/MIN ARP**,
**WOBBLE**, and **PWM LEAD** demo the new modulation on a held note.

Gamepad note: buttons are **signed age counters**, not booleans (value = frames
held; ≤0 released). We edge-detect press = `cur>0 && prev<=0`.

---

## Backlog / ideas (not built)

Pattern + order-list (songs longer than one loop), per-track mixer/mute,
automation lanes, humanize (timing/velocity jitter), unison/sub-osc helpers,
more wavetables (bandlimited/formant), non-looped one-shot drum mode, a 3-way
"pan" hack via L/C/R wavetable variants. A second demo song was offered but not
yet built.
