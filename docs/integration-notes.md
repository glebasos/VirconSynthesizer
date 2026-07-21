# Integration notes (from real use)

Things that surfaced while driving `synth.h` from a full game (a DOOM port that
plays live level music alongside sound effects). Ordered by how much they bit.

## 1. Sharing the SPU with sound effects — the channel window  ✅ added

The library originally assumed it owned all 16 SPU channels: voice `v` *was*
channel `v`, hardcoded at every `stop_channel` / `play_channel` /
`select_channel` / `assign_channel_sound` call. A game that also plays sfx on the
SPU has nowhere to put them — the synth's voice allocator and `synth_init` stomp
every channel.

**Added:** a channel *window*. Voices now map to channels
`[SYNTH_CHANNEL_BASE .. +SYNTH_VOICES)` via a one-line `synth_ch(v)` helper, and
both constants are `#ifndef`-guarded so a host can size the window before
including the header:

```c
#define SYNTH_VOICES        10     // music gets 10 voices...
#define SYNTH_CHANNEL_BASE  6      // ...on channels 6..15
#include "synth.h"                 // sfx keep channels 0..5
```

Defaults (base 0, 16 voices) are unchanged, so existing ROMs behave identically.
This is the single most important change for using the synth in a real game.

## 2. Variable frame rate breaks tempo — decouple ticks from the render loop

`synth_update` / `synth_seq_update` assume they're called once per 60 Hz frame.
A game whose main loop runs at a *variable, lower* rate (our renderer spends 2–6
vsyncs per iteration) drags the music to half speed or worse, unevenly.

The fix lives in the host, but the library should **document the pattern**: slave
the synth to the vsync counter and run it once per elapsed frame.

```c
int n = get_frame_counter() - last_fc;   // 60 Hz frames since last call
last_fc += n;
if( n > CAP ) n = CAP;                    // don't fast-forward after a load hitch
for( int k = 0; k < n; k++ ) { synth_seq_update(); synth_update(); }
```

Worth considering: a `synth_update_frames(int n)` convenience in the library.

## 3. Dense polyphonic scores want an event player, not the step sequencer

The step sequencer is one note per track per row (≤ 8 tracks). Real MIDI/MUS
scores are far more polyphonic — chords *within* a channel, 9–12 simultaneous
notes. Forcing them through the sequencer requires monophonic reduction per
channel, which throws away harmony and sounds wrong.

What worked instead: treat the score as a **list of timed note events** and fire
each with `synth_play_timed(inst, note, vel, dur)`, letting the voice allocator
handle polyphony. The existing `synth_play_timed` + allocator were exactly right
for this — no library change was needed, but the pattern deserves a place
alongside the sequencer in the docs/tutorials, because the sequencer looks like
the obvious tool and isn't, for imported music.

(A small generic event-list player — sorted `{start, dur, inst, note, vel}` with
a cursor advanced by a row clock — would be a natural library addition.)

## 4. Sustained tones: square drones, triangle sits

A *held* square wave (a multi-second pad/pedal note) is fatiguing and can bury a
mix as an obnoxious buzz — even at modest volume, and especially doubled in
unison. Short square notes are fine; long ones aren't. When arranging, route
sustained low/pad voices to `WAVE_TRIANGLE` (or sine) at low volume. Not a bug,
but a timbre gotcha worth a note in the instrument tutorial.

## 5. Additive mix headroom is on you

The SPU sums `GlobalVolume * ChannelVolume * sample` and only clamps at the final
output, so N loud simultaneous voices crackle. With ~10 music voices plus sfx we
had to keep instrument volumes low (~0.1–0.2) and set a single global volume as
the last writer (note that both `synth_init` and a host's `set_global_volume`
write it — order matters). A short paragraph on headroom budgeting, or an
optional soft-clip/limiter on the master, would save everyone this tuning pass.
