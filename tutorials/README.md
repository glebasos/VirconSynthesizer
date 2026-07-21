# Tutorials

Hands-on guides for adding the synth to your Vircon32 game. Each builds on the
last and includes a complete, compile-ready program.

1. **[Sound effects](01-sound-effects.md)** — trigger one-shot SFX from gameplay
   (jump, coin, hit). The fastest useful thing; ~10 minutes.
2. **[Background music](02-background-music.md)** — a looping soundtrack with the
   step sequencer (tracks, patterns, tempo, swing).
3. **[Custom instruments & modulation](03-instruments-and-modulation.md)** — design
   your own sounds with envelopes, LFOs, arpeggios, echo, and PWM morph.

**Before you start:** you need the Vircon32 DevTools, a copy of `synth.h`, and the
baked wavetables — see [concepts.md](../docs/concepts.md#what-your-rom-needs).

## Runnable ROMs

Each tutorial's complete program is also here as a ready-to-build source file
(`tut01.c`/`.xml` … `tut03.c`/`.xml`) — the exact code from the markdown, wired to
the repo's shared header via `../synth.h` (in your own project you'd use
`"synth.h"`). Build them all:

```bash
./build.sh              # -> tutorials/bin/tut01.v32 .. tut03.v32
./build.sh tut02        # or just one
```

Then run a `.v32` in the emulator. `tut01` = press A/B/X for effects; `tut02` =
music, START toggles it; `tut03` = A/B hold instruments, X/Y one-shots.

For the full API, see the [reference docs](../docs/).
