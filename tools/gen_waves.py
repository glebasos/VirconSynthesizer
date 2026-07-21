#!/usr/bin/env python3
# =============================================================================
#  gen_waves.py  --  Wavetable generator for the Vircon32 synthesizer
# -----------------------------------------------------------------------------
#  The Vircon32 SPU is a nearest-sample wavetable playback engine (44100 Hz,
#  16 channels). It has NO runtime sample-write port, so a software synth must
#  bake its oscillator shapes into ROM as sound assets and pitch them with the
#  per-channel Speed register.
#
#  This tool writes single-cycle wavetables as 16-bit mono WAV files that
#  wav2vircon.exe converts to .vsnd. Each table holds exactly one period across
#  PERIOD samples, plus one guard sample equal to sample[0] so the SPU's loop
#  (LoopStart=0, LoopEnd=Length-1=PERIOD) covers a clean power-of-two period.
#
#  Pitch math the C side uses:
#      output_freq = channel_speed * 44100 / PERIOD
#   => channel_speed = freq * PERIOD / 44100
# =============================================================================

import math
import os
import struct
import wave

SAMPLE_RATE = 44100
PERIOD      = 2048          # samples per single cycle (power of two -> exact tuning)
AMPLITUDE   = 9000          # peak; leaves headroom for additive 16-channel mixing
OUT_DIR     = os.path.join(os.path.dirname(__file__), "..", "sounds")

# A dedicated noise buffer: several periods of white noise, looped. Longer than a
# single cycle so the loop period is low enough to read as "noise" not "buzz".
NOISE_LEN   = 8192


def write_wav(name, samples):
    """samples: list of ints in [-32768, 32767], written as 16-bit mono."""
    path = os.path.join(OUT_DIR, name + ".wav")
    with wave.open(path, "wb") as w:
        w.setnchannels(1)
        w.setsampwidth(2)
        w.setframerate(SAMPLE_RATE)
        clamped = bytearray()
        for s in samples:
            v = int(round(s))
            if v >  32767: v =  32767
            if v < -32768: v = -32768
            clamped += struct.pack("<h", v)
        w.writeframes(bytes(clamped))
    print("  wrote %-12s %5d samples" % (name + ".wav", len(samples)))


def single_cycle(fn):
    """Build PERIOD+1 samples; guard sample [PERIOD] duplicates [0] for a seamless loop."""
    out = []
    for i in range(PERIOD + 1):
        phase = (i % PERIOD) / float(PERIOD)   # 0..1
        out.append(AMPLITUDE * fn(phase))
    return out


# ---- oscillator shapes (phase in 0..1, output in -1..1) ---------------------

def osc_sine(p):
    return math.sin(2.0 * math.pi * p)

def osc_triangle(p):
    # rises 0->1 over first half, falls 1->-1... classic triangle
    return 4.0 * abs(p - math.floor(p + 0.5)) - 1.0

def osc_sawtooth(p):
    return 2.0 * p - 1.0

def osc_square(p):
    return 1.0 if p < 0.5 else -1.0

def osc_pulse25(p):
    return 1.0 if p < 0.25 else -1.0

def osc_pulse12(p):
    return 1.0 if p < 0.125 else -1.0


def build_noise():
    # Deterministic pseudo-random noise (fixed seed) so builds are reproducible.
    import random
    random.seed(0x1234)
    out = [random.uniform(-1.0, 1.0) * AMPLITUDE for _ in range(NOISE_LEN)]
    # make it loop seamlessly-ish: taper is unnecessary for noise, leave raw
    return out


# Wavetable morph table for PWM: PWM_CYCLES full pulse periods concatenated,
# duty sweeping from 50% down to ~6%. The synth plays it one cycle at a time by
# moving the SPU loop window (set_sound_loop_start/end), sweeping the duty.
PWM_CYCLES = 8

def build_pwm_morph():
    out = []
    for k in range(PWM_CYCLES):
        duty = 0.5 - (0.5 - 0.06) * (k / float(PWM_CYCLES - 1))
        for i in range(PERIOD):
            phase = i / float(PERIOD)
            out.append(AMPLITUDE if phase < duty else -AMPLITUDE)
    out.append(out[0])   # guard sample for a clean final loop
    return out


def main():
    os.makedirs(OUT_DIR, exist_ok=True)
    print("Generating wavetables (period=%d, rate=%d Hz):" % (PERIOD, SAMPLE_RATE))
    write_wav("wt_sine",     single_cycle(osc_sine))
    write_wav("wt_triangle", single_cycle(osc_triangle))
    write_wav("wt_saw",      single_cycle(osc_sawtooth))
    write_wav("wt_square",   single_cycle(osc_square))
    write_wav("wt_pulse25",  single_cycle(osc_pulse25))
    write_wav("wt_pulse12",  single_cycle(osc_pulse12))
    write_wav("wt_noise",    build_noise())
    write_wav("wt_pwm",      build_pwm_morph())
    print("Done. PERIOD=%d, PWM_CYCLES=%d for the C side" % (PERIOD, PWM_CYCLES))


if __name__ == "__main__":
    main()
