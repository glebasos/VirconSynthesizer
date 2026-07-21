#!/usr/bin/env bash
# Build a Vircon32 synthesizer ROM through the full toolchain.
# Usage: ./build.sh [name]      (defaults to "demo")
# Regenerates wavetables if missing, then compile -> assemble -> pack.
set -e
NAME="${1:-demo}"
TOOLS="E:/Claude/Projects/Vircon32/DevTools"
HERE="$(cd "$(dirname "$0")" && pwd)"
cd "$HERE"
mkdir -p obj bin sounds

# 1. wavetables (only if none present)
if ! compgen -G "sounds/wt_*.wav" > /dev/null; then
    echo "[gen] wavetables"
    python tools/gen_waves.py
fi

echo "[1/3] compile  $NAME.c"
"$TOOLS/compile.exe"  "$NAME.c"        -o "obj/$NAME.asm"
echo "[2/3] assemble $NAME.asm"
"$TOOLS/assemble.exe" "obj/$NAME.asm"  -o "obj/$NAME.vbin"

# convert any wavetable WAVs that are missing or out of date
if compgen -G "sounds/*.wav" > /dev/null; then
    for wav in sounds/*.wav; do
        base="$(basename "${wav%.wav}")"
        if [ ! -f "obj/$base.vsnd" ] || [ "$wav" -nt "obj/$base.vsnd" ]; then
            echo "[snd]  wav2vircon $base"
            "$TOOLS/wav2vircon.exe" "$wav" -o "obj/$base.vsnd"
        fi
    done
fi

echo "[3/3] packrom  $NAME.xml"
"$TOOLS/packrom.exe"  "$NAME.xml"      -o "bin/$NAME.v32"
echo "OK -> bin/$NAME.v32"
