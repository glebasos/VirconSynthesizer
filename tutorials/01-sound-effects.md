# Tutorial 1 — Sound effects in your game

The fastest way to get audio into a Vircon32 game: trigger one-shot sound effects
from gameplay events. By the end you'll play a coin blip, a laser, and a drum hit
from the gamepad — and you'll have built one custom SFX from scratch.

**You need:** the Vircon32 DevTools, `synth.h`, and the wavetables (see
[concepts.md](../docs/concepts.md#what-your-rom-needs)). ~10 minutes.

---

## 1. Project setup

Put `synth.h` next to your `.c` file, and generate the wavetables once:

```bash
python tools/gen_waves.py      # writes sounds/wt_*.wav
```

Your ROM's `.xml` must list the wavetables first (they become sound ids 0–7):

```xml
<?xml version="1.0" encoding="UTF-8" standalone="no" ?>
<rom-definition version="1.0">
    <rom type="cartridge" title="SFX Tutorial" version="1.0" />
    <binary path="obj/sfx.vbin" />
    <textures />
    <sounds>
        <sound path="obj/wt_sine.vsnd" />
        <sound path="obj/wt_triangle.vsnd" />
        <sound path="obj/wt_saw.vsnd" />
        <sound path="obj/wt_square.vsnd" />
        <sound path="obj/wt_pulse25.vsnd" />
        <sound path="obj/wt_pulse12.vsnd" />
        <sound path="obj/wt_noise.vsnd" />
    </sounds>
</rom-definition>
```

---

## 2. The three lines that matter

Any game using the synth follows the same skeleton:

```c
synth_init( 0 );        // once, at startup (0 = first wavetable sound id)
...
synth_update();         // once per frame, before end_frame()
```

Sound effects are then a single call: **`synth_play_timed`** — play a note that
releases itself after N frames. Fire it and forget it.

---

## 3. Complete program

```c
#include "video.h"
#include "input.h"
#include "time.h"
#include "synth.h"

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
```

Build it (adapt `build.sh`, or run the tools directly) and press A / B / X.

---

## 4. What just happened

- **`synth_play_timed( inst, note, velocity, frames )`** allocates a voice, plays
  the note, and auto-releases after `frames`. No cleanup, no note-off. Perfect for
  SFX because they're short and fire-and-forget.
- **Presets** (`synth_preset(PRESET_ZAP)`) are ready-made instruments — 40 of
  them. Great for prototyping: grab one and play it.
- **Building an instrument** is just `synth_patch( inst, waveform, volume, attack,
  decay, sustain, release )` plus optional tweaks. Our jump used `pitch_slide` to
  rise; a `sustain` of `0` made it self-terminating (percussive).

### Try changing things
- Swap `WAVE_SQUARE` for `WAVE_SAW` or `WAVE_NOISE` in the jump.
- Make it a *fall* instead of a rise: `sfx_jump.pitch_slide = -0.8;`.
- Give the laser more bite: it's `PRESET_LASER`; drums are `PRESET_SNARE`,
  `PRESET_HAT_CLOSED`, `PRESET_TOM`, `PRESET_COWBELL`.
- Play the same SFX at different pitches for variety:
  `synth_play_timed( &sfx_jump, C4 + (rand()&7), 1.0, 12 );` (needs `misc.h`).

---

## 5. Tips for real games

- **One `synth_play_timed` per event.** Don't call it every frame the event is
  true — edge-detect the press (like `just_pressed`).
- **Velocity** (`0..1`) scales loudness — quieter footsteps, louder explosions.
- **Voices are limited to 16.** SFX are short, so they free up fast; if a burst of
  effects steals your music's voices for a moment, that's the quietest-voice
  stealer doing its job.
- Keep effects punchy: short `decay`, `sustain = 0`, small `release`.

Next: [Tutorial 2 — Background music](02-background-music.md).
