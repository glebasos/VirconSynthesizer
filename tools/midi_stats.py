#!/usr/bin/env python3
# Minimal MIDI parser -> statistics for bohraps.mid
import struct, sys, os

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
    assert data[:4] == b'MThd', "not a MIDI file"
    hlen = struct.unpack('>I', data[4:8])[0]
    fmt, ntrk, div = struct.unpack('>HHH', data[8:8+hlen])
    pos = 8 + hlen
    tracks = []
    tempos = []  # (abs_tick, us_per_qn)
    for t in range(ntrk):
        assert data[pos:pos+4] == b'MTrk', "bad track %d" % t
        tlen = struct.unpack('>I', data[pos+4:pos+8])[0]
        pos += 8
        end = pos + tlen
        i = pos
        abstick = 0
        running = None
        notes = []       # (start_tick, note, vel, chan)
        active = {}      # (chan,note)->(start_tick,vel)
        prog = {}        # chan->program
        name = None
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
                mlen, i = read_vlq(data, i)
                chunk = data[i:i+mlen]; i += mlen
                if meta == 0x51 and mlen == 3:
                    us = (chunk[0]<<16)|(chunk[1]<<8)|chunk[2]
                    tempos.append((abstick, us))
                elif meta == 0x03:
                    name = chunk.decode('latin1', 'ignore')
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
                            notes.append((st, abstick, d1, vel, chan))
                elif hi in (0xC0, 0xD0):
                    d1 = data[i]; i += 1
                    if hi == 0xC0: prog[chan] = d1
        tracks.append((name, notes, prog))
        pos = end
    return fmt, div, tempos, tracks

def main():
    path = sys.argv[1] if len(sys.argv)>1 else 'bohraps.mid'
    fmt, div, tempos, tracks = parse(path)
    print("format=%d division=%d ticks/qn" % (fmt, div))
    print("tempos:", tempos[:6], "..." if len(tempos)>6 else "", "count=%d"%len(tempos))
    us = tempos[0][1] if tempos else 500000
    bpm = 60000000/us
    print("initial bpm=%.1f" % bpm)
    total_notes = 0
    maxtick = 0
    allchans = set()
    for ti,(name,notes,prog) in enumerate(tracks):
        if not notes:
            print("  trk%2d %-24s (no notes) prog=%s" % (ti, str(name)[:24], prog))
            continue
        chans = sorted(set(n[4] for n in notes))
        lo = min(n[2] for n in notes); hi = max(n[2] for n in notes)
        endt = max(n[1] for n in notes)
        maxtick = max(maxtick, endt)
        total_notes += len(notes)
        allchans |= set(chans)
        print("  trk%2d %-24s notes=%4d chans=%s prog=%s range=%d..%d" %
              (ti, str(name)[:24], len(notes), chans, prog, lo, hi))
    print("TOTAL notes=%d maxtick=%d channels=%s" % (total_notes, maxtick, sorted(allchans)))
    # duration in seconds using first tempo
    secs = maxtick/div * (us/1e6)
    print("approx duration (const tempo) = %.1f s = %.1f frames @60fps" % (secs, secs*60))

main()
