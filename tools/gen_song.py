#!/usr/bin/env python3
# =============================================================================
#  gen_song.py  --  convert a MIDI file into a Vircon32 synth event table.
# -----------------------------------------------------------------------------
#  The Vircon32 SPU has no way to stream audio, so we cannot render a MIDI live.
#  Instead we bake every note into a flat, start-frame-sorted event table that
#  the player (bohraps.c) pops per frame into synth_play_timed(). Timing is
#  frame-accurate at 60 fps, integrated across the file's tempo map.
#
#  14 MIDI tracks are folded onto a small "chip band" of instrument slots so the
#  16-voice engine (and the additive, wrapping mixer) stay manageable. Channel 9
#  (GM percussion) is routed to kick/snare/hat slots by drum note, not pitched.
#
#  Output: song_data.h  (parallel int[] arrays + counts), included by bohraps.c.
# =============================================================================
import struct, sys, os

FPS = 60.0

# --- instrument slot ids: MUST match the band[] setup in bohraps.c -----------
I_LEAD, I_BASS, I_STRINGS, I_CHOIR, I_BRASS, I_GUITAR, I_ORCH, I_TIMP, \
    I_KICK, I_SNARE, I_HAT = range(11)
NUM_INSTS = 11

# MIDI channel -> melodic instrument slot (channel 9 handled separately)
CHAN_SLOT = {
    0:  I_LEAD,      # Acoustic Grand  (main line, 1919 notes)
    1:  I_BASS,      # Electric Bass
    2:  I_STRINGS,   # Strings
    3:  I_CHOIR,     # Choir Aahs
    4:  I_BRASS,     # Alto Sax
    5:  I_BRASS,     # French Horn
    6:  I_BRASS,     # Synth Brass
    7:  I_BRASS,     # Oboe
    8:  I_GUITAR,    # Distortion Guitar
    11: I_GUITAR,    # Distortion Guitar (2nd)
    12: I_ORCH,      # Orchestra Hit
    10: I_TIMP,      # Timpani (pitched, low)
}

def read_vlq(data, i):
    val = 0
    while True:
        b = data[i]; i += 1
        val = (val << 7) | (b & 0x7f)
        if not (b & 0x80): break
    return val, i

def parse(path):
    with open(path, 'rb') as f:
        data = f.read()
    assert data[:4] == b'MThd'
    hlen = struct.unpack('>I', data[4:8])[0]
    fmt, ntrk, div = struct.unpack('>HHH', data[8:8+hlen])
    pos = 8 + hlen
    all_notes = []          # (start_tick, end_tick, note, vel, chan)
    tempos = []             # (abs_tick, us_per_qn)
    for _ in range(ntrk):
        assert data[pos:pos+4] == b'MTrk'
        tlen = struct.unpack('>I', data[pos+4:pos+8])[0]
        pos += 8; end = pos + tlen; i = pos
        abstick = 0; running = None; active = {}
        while i < end:
            dt, i = read_vlq(data, i); abstick += dt
            b = data[i]
            if b & 0x80:
                status = b; i += 1; running = status
            else:
                status = running
            if status is None: break
            if status == 0xFF:
                meta = data[i]; i += 1
                mlen, i = read_vlq(data, i); chunk = data[i:i+mlen]; i += mlen
                if meta == 0x51 and mlen == 3:
                    tempos.append((abstick, (chunk[0]<<16)|(chunk[1]<<8)|chunk[2]))
            elif status in (0xF0, 0xF7):
                slen, i = read_vlq(data, i); i += slen
            else:
                hi = status & 0xF0; chan = status & 0x0F
                if hi in (0x80,0x90,0xA0,0xB0,0xE0):
                    d1 = data[i]; d2 = data[i+1]; i += 2
                    if hi == 0x90 and d2 > 0:
                        active[(chan,d1)] = (abstick, d2)
                    elif hi == 0x80 or (hi == 0x90 and d2 == 0):
                        key = (chan,d1)
                        if key in active:
                            st, vel = active.pop(key)
                            all_notes.append((st, abstick, d1, vel, chan))
                elif hi in (0xC0, 0xD0):
                    i += 1
        pos = end
    if not tempos:
        tempos = [(0, 500000)]
    tempos.sort()
    return div, tempos, all_notes

def make_tick_to_frame(div, tempos):
    # Precompute cumulative seconds at the start of each tempo segment, then
    # convert any tick by integrating within its segment.
    segs = []           # (start_tick, us_per_qn, secs_at_start)
    secs = 0.0
    for idx, (tk, us) in enumerate(tempos):
        if idx > 0:
            prev_tk, prev_us, prev_secs = segs[-1]
            secs = prev_secs + (tk - prev_tk) / div * (prev_us / 1e6)
        segs.append((tk, us, secs))
    def t2f(tick):
        seg = segs[0]
        for s in segs:
            if s[0] <= tick: seg = s
            else: break
        start_tk, us, secs_at = seg
        sec = secs_at + (tick - start_tk) / div * (us / 1e6)
        return int(round(sec * FPS))
    return t2f

# --- GM drum note -> (slot, play_note, extra_dur_frames) ---------------------
def map_drum(note):
    if note in (35, 36):                 return (I_KICK, 36, 4)     # bass drum
    if note in (37, 38, 39, 40):         return (I_SNARE, 62, 3)    # snare/rim
    if note in (42, 44):                 return (I_HAT, 96, 2)      # closed hat
    if note == 46:                       return (I_HAT, 90, 8)      # open hat
    if note in (49, 51, 52, 55, 57, 59): return (I_HAT, 82, 14)     # cymbals
    if 41 <= note <= 50:                 return (I_TIMP, 48, 6)     # toms
    return (I_HAT, 96, 2)

def build_events(div, tempos, notes):
    t2f = make_tick_to_frame(div, tempos)
    evs = []            # (frame, note, vel, dur, slot)
    for (st, et, note, vel, chan) in notes:
        f0 = t2f(st); f1 = t2f(et)
        dur = f1 - f0
        if chan == 9:
            slot, pnote, extra = map_drum(note)
            note = pnote
            dur = max(dur, 1) + extra
        else:
            slot = CHAN_SLOT.get(chan)
            if slot is None:            # unknown channel -> treat as lead
                slot = I_LEAD
            if dur < 2: dur = 2
            if dur > 600: dur = 600     # cap absurdly long notes at 10 s
        evs.append((f0, note, vel, dur, slot))
    evs.sort(key=lambda e: (e[0], e[4]))
    return evs

def emit(evs, path):
    N = len(evs)
    total_frames = max(e[0] + e[3] for e in evs) + 60
    def arr(name, idx):
        vals = [str(e[idx]) for e in evs]
        lines = ["int[%d] %s = {" % (N, name)]
        for i in range(0, N, 20):
            lines.append("  " + ",".join(vals[i:i+20]) + ",")
        lines.append("};")
        return "\n".join(lines)
    with open(path, "w") as f:
        f.write("// Auto-generated by tools/gen_song.py from bohraps.mid. Do not edit.\n")
        f.write("#define SONG_EVENTS %d\n" % N)
        f.write("#define SONG_FRAMES %d\n" % total_frames)
        f.write("#define SONG_INSTS  %d\n\n" % NUM_INSTS)
        f.write(arr("ev_frame", 0) + "\n")   # start frame
        f.write(arr("ev_note",  1) + "\n")   # midi note (or drum play-note)
        f.write(arr("ev_vel",   2) + "\n")   # midi velocity 0..127
        f.write(arr("ev_dur",   3) + "\n")   # duration in frames
        f.write(arr("ev_slot",  4) + "\n")   # instrument slot (band[] index)
    print("wrote %s: %d events, %d frames (%.1f s)" %
          (path, N, total_frames, total_frames / FPS))

def main():
    src = sys.argv[1] if len(sys.argv) > 1 else "bohraps.mid"
    here = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    div, tempos, notes = parse(os.path.join(here, src))
    evs = build_events(div, tempos, notes)
    emit(evs, os.path.join(here, "song_data.h"))

if __name__ == "__main__":
    main()
