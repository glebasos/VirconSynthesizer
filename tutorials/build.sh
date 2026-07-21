#!/usr/bin/env bash
# Build the tutorial ROMs (tut01..tut03) into tutorials/bin/.
# Each tutNN.c is the complete program from the matching tutorial markdown; it
# includes the repo's shared ../synth.h. Wavetables are converted from ../sounds.
# Usage: ./build.sh            (builds all three)
#        ./build.sh tut02       (builds one)
set -e
TOOLS="E:/Claude/Projects/Vircon32/DevTools"
HERE="$(cd "$(dirname "$0")" && pwd)"
cd "$HERE"
mkdir -p obj bin

# make sure the wavetables exist (generate into ../sounds if missing)
if ! compgen -G "../sounds/wt_*.wav" > /dev/null; then
    echo "[gen] wavetables"
    python ../tools/gen_waves.py
fi
# convert the 7 base wavetables this tutorials set uses
for wav in ../sounds/wt_sine.wav ../sounds/wt_triangle.wav ../sounds/wt_saw.wav \
           ../sounds/wt_square.wav ../sounds/wt_pulse25.wav ../sounds/wt_pulse12.wav \
           ../sounds/wt_noise.wav; do
    base="$(basename "${wav%.wav}")"
    if [ ! -f "obj/$base.vsnd" ] || [ "$wav" -nt "obj/$base.vsnd" ]; then
        echo "[snd]  wav2vircon $base"
        "$TOOLS/wav2vircon.exe" "$wav" -o "obj/$base.vsnd"
    fi
done

build_one() {
    local N="$1"
    echo "[$N] compile / assemble / pack"
    "$TOOLS/compile.exe"  "$N.c"       -o "obj/$N.asm"
    "$TOOLS/assemble.exe" "obj/$N.asm" -o "obj/$N.vbin"
    "$TOOLS/packrom.exe"  "$N.xml"     -o "bin/$N.v32"
    echo "  -> bin/$N.v32"
}

if [ -n "$1" ]; then
    build_one "$1"
else
    for N in tut01 tut02 tut03; do build_one "$N"; done
fi
echo "OK"
