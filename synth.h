/* *****************************************************************************
*  synth.h  --  A wavetable synthesizer for the Vircon32 fantasy console
*  --------------------------------------------------------------------------- *
*  The Vircon32 SPU is a 16-channel, 44100 Hz nearest-sample wavetable player.
*  It has no runtime sample-write port, so this library synthesizes sound by:
*
*    1. Baking single-cycle oscillator shapes into ROM as looping sounds
*       (see tools/gen_waves.py -> sounds/wt_*.wav). One period spans
*       SYNTH_WAVE_PERIOD samples.
*    2. Pitching a channel with the SPU Speed register:
*           speed = freq_hz * SYNTH_WAVE_PERIOD / 44100
*    3. Shaping amplitude in software with a per-frame (60 Hz) ADSR envelope
*       written to the channel Volume register, plus modulation (vibrato,
*       tremolo, pitch envelope, pitch slide, portamento) written each frame.
*
*  A "voice" is one SPU channel (0..15). An "instrument" is a patch describing
*  waveform + envelope + modulation. Play notes directly (synth_note_on /
*  synth_note_off / synth_play_timed / synth_chord) or through the sequencer.
*
*  DIALECT (Vircon32 C): everything is a 32-bit word; structs are passed by
*  pointer (never by value); no ternary; arrays are written `Type[N] name`.
*
*  QUICK START:
*      #include "synth.h"                 // pulls in audio.h + math.h
*      synth_init( 0 );                   // wave sounds start at cartridge id 0
*      synth_load_presets();              // fill the preset bank (optional)
*      ...
*      synth_play_timed( synth_preset( PRESET_LEAD_SQUARE ), C4, 1.0, 30 );
*      ... each frame ...
*          synth_seq_update();            // if using the sequencer
*          synth_update();                // REQUIRED
*          end_frame();
*
*  The ROM's <sounds> must list the 7 wavetables first, in WAVE_* order:
*      wt_sine, wt_triangle, wt_saw, wt_square, wt_pulse25, wt_pulse12, wt_noise
*
*  --------------------------------------------------------------------------- *
*  API OVERVIEW
*  --------------------------------------------------------------------------- *
*   Setup       synth_init, synth_load_presets, synth_master_volume,
*               synth_set_transpose
*   Patches     synth_patch, synth_set_vibrato, synth_set_tremolo,
*               synth_set_pitch_env, synth_set_glide, synth_set_detune,
*               synth_preset(id)
*   Notes       synth_note_on, synth_note_on_channel, synth_note_on_freq,
*               synth_play_timed, synth_note_off, synth_note_retrigger,
*               synth_pitch_bend, synth_set_voice_volume, synth_voice_kill,
*               synth_all_notes_off, synth_panic
*   Chords      synth_chord, synth_chord_timed, synth_release_voices
*   Helpers     synth_note_num(pc,octave), note-name macros (C4, AS3, ...),
*               chord-type macros (CHORD_MAJ, CHORD_MIN7, ...)
*   Sequencer   synth_seq_play, synth_seq_stop, synth_seq_update,
*               synth_seq_pause, synth_seq_set_tempo
*   Live state  synth_v_active/note/phase/level/freq/amp/inst[voice], etc.
***************************************************************************** */

#ifndef SYNTH_H
#define SYNTH_H

#include "audio.h"
#include "math.h"

// =============================================================================
//   CONFIGURATION CONSTANTS
// =============================================================================

#define SYNTH_VOICES        16        // == SPU channels
#define SYNTH_WAVE_PERIOD   2048      // samples per single cycle (tools/gen_waves.py)
#define SYNTH_RATE          44100     // SPU sampling rate
#define SYNTH_FPS           60        // envelope tick rate
#define SYNTH_NO_TIMER      -1        // synth_v_timer value meaning "no auto-off"

// waveform ids = offset into the cartridge sound list (see synth_wave_base)
#define WAVE_SINE       0
#define WAVE_TRIANGLE   1
#define WAVE_SAW        2
#define WAVE_SQUARE     3
#define WAVE_PULSE25    4
#define WAVE_PULSE12    5
#define WAVE_NOISE      6
#define WAVE_COUNT      7

// envelope phases
#define ENV_OFF         0
#define ENV_ATTACK      1
#define ENV_DECAY       2
#define ENV_SUSTAIN     3
#define ENV_RELEASE     4

// sequencer cell meanings (values >0 are MIDI notes 1..127)
#define SEQ_REST       -2        // silence; do not retrigger
#define SEQ_OFF        -1        // release the note currently playing on this track
#define SEQ_HOLD        0        // keep the previous note ringing

// -----------------------------------------------------------------------------
//  note-name -> MIDI number (C4 = 60 = middle C). 'S' = sharp.
// -----------------------------------------------------------------------------
#define C1   24
#define CS1  25
#define D1   26
#define DS1  27
#define E1   28
#define F1   29
#define FS1  30
#define G1   31
#define GS1  32
#define A1   33
#define AS1  34
#define B1   35
#define C2   36
#define CS2  37
#define D2   38
#define DS2  39
#define E2   40
#define F2   41
#define FS2  42
#define G2   43
#define GS2  44
#define A2   45
#define AS2  46
#define B2   47
#define C3   48
#define CS3  49
#define D3   50
#define DS3  51
#define E3   52
#define F3   53
#define FS3  54
#define G3   55
#define GS3  56
#define A3   57
#define AS3  58
#define B3   59
#define C4   60
#define CS4  61
#define D4   62
#define DS4  63
#define E4   64
#define F4   65
#define FS4  66
#define G4   67
#define GS4  68
#define A4   69
#define AS4  70
#define B4   71
#define C5   72
#define CS5  73
#define D5   74
#define DS5  75
#define E5   76
#define F5   77
#define FS5  78
#define G5   79
#define GS5  80
#define A5   81
#define AS5  82
#define B5   83
#define C6   84
#define CS6  85
#define D6   86
#define DS6  87
#define E6   88
#define F6   89
#define FS6  90
#define G6   91
#define GS6  92
#define A6   93
#define AS6  94
#define B6   95
#define C7   96
#define CS7  97
#define D7   98
#define DS7  99
#define E7   100
#define F7   101
#define FS7  102
#define G7   103
#define GS7  104
#define A7   105
#define AS7  106
#define B7   107

// pitch classes for synth_note_num( pitch_class, octave )
#define PC_C 0
#define PC_D 2
#define PC_E 4
#define PC_F 5
#define PC_G 7
#define PC_A 9
#define PC_B 11

// =============================================================================
//   INSTRUMENT (PATCH) DEFINITION
// =============================================================================
//   Always passed by pointer (one-word calling convention). Envelope times are
//   in frames (1 frame = 1/60 s); levels are 0..1.
// =============================================================================

struct Instrument
{
    int   waveform;          // WAVE_*
    float volume;            // peak amplitude 0..1 (keep low for mix headroom)

    // amplitude ADSR
    int   attack;            // frames 0 -> peak
    int   decay;             // frames peak -> sustain
    float sustain;           // sustain level 0..1 (0 => self-terminating/percussive)
    int   release;           // frames note-off -> 0

    // vibrato: pitch LFO
    float vib_depth;         // semitones
    float vib_rate;          // Hz
    int   vib_delay;         // frames before it fades in

    // tremolo: amplitude LFO
    float trem_depth;        // 0..1 (fraction of amplitude removed at LFO peak)
    float trem_rate;         // Hz

    // pitch envelope: an initial pitch offset that decays linearly to 0
    float pitch_env_amount;  // semitones at note start (can be negative)
    int   pitch_env_time;    // frames to reach 0

    // linear pitch slide (constant drift; drum zaps use a negative value)
    float pitch_slide;       // semitones per frame

    // portamento / glide (only used via synth_note_retrigger / mono seq tracks)
    int   glide;             // frames to slide from the previous note to this one

    // constant detune, e.g. for stacking two voices into a fat unison
    float detune;            // semitones
};

// =============================================================================
//   VOICE STATE  (Structure-of-Arrays; readable by the display for live meters)
// =============================================================================

int                   synth_wave_base;            // cartridge sound id of WAVE_SINE
float                 synth_master;               // master volume 0..1
int                   synth_transpose;            // global transpose in semitones
float[ 128 ]          synth_note_speed;           // MIDI note -> SPU speed (@speed base)
float[ 128 ]          synth_note_freq;            // MIDI note -> Hz

int[ SYNTH_VOICES ]   synth_v_active;
int[ SYNTH_VOICES ]   synth_v_note;
int[ SYNTH_VOICES ]   synth_v_phase;      // ENV_*
float[ SYNTH_VOICES ] synth_v_level;      // current envelope level 0..1
int[ SYNTH_VOICES ]   synth_v_frames;     // frames spent in current phase
int[ SYNTH_VOICES ]   synth_v_age;        // frames since note-on
float[ SYNTH_VOICES ] synth_v_relstart;   // level at moment of note-off
float[ SYNTH_VOICES ] synth_v_curspeed;   // current (glided) base speed
float[ SYNTH_VOICES ] synth_v_tgtspeed;   // glide target base speed
int[ SYNTH_VOICES ]   synth_v_glideframes;// frames left to reach tgt (0 = there)
float[ SYNTH_VOICES ] synth_v_vibphase;   // vibrato LFO phase (cycles)
float[ SYNTH_VOICES ] synth_v_tremphase;  // tremolo LFO phase (cycles)
float[ SYNTH_VOICES ] synth_v_bend;       // manual pitch bend (semitones)
float[ SYNTH_VOICES ] synth_v_vel;        // note velocity 0..1
float[ SYNTH_VOICES ] synth_v_freq;       // playing frequency Hz (for scope)
float[ SYNTH_VOICES ] synth_v_amp;        // last written amplitude (for meters)
int[ SYNTH_VOICES ]   synth_v_timer;      // frames until auto note-off (or NO_TIMER)
Instrument*[ SYNTH_VOICES ] synth_v_inst;

// =============================================================================
//   INITIALISATION
// =============================================================================

// Build the MIDI note -> speed/frequency tables. 440 Hz = A4 = note 69.
void synth_build_tables()
{
    for( int n = 0; n < 128; ++n )
    {
        float exponent = (n - 69) / 12.0;
        float freq = 440.0 * pow( 2.0, exponent );
        synth_note_freq[ n ]  = freq;
        synth_note_speed[ n ] = freq * SYNTH_WAVE_PERIOD / SYNTH_RATE;
    }
}

// wave_base_sound_id = cartridge sound id of the first wavetable (WAVE_SINE).
void synth_init( int wave_base_sound_id )
{
    synth_wave_base = wave_base_sound_id;
    synth_master    = 1.0;
    synth_transpose = 0;
    synth_build_tables();

    // enable looping on every wavetable sound
    for( int w = 0; w < WAVE_COUNT; ++w )
    {
        select_sound( wave_base_sound_id + w );
        set_sound_loop( true );
    }

    // clear all voices / channels
    for( int v = 0; v < SYNTH_VOICES; ++v )
    {
        synth_v_active[ v ]  = 0;
        synth_v_phase[ v ]   = ENV_OFF;
        synth_v_level[ v ]   = 0.0;
        synth_v_amp[ v ]     = 0.0;
        synth_v_timer[ v ]   = SYNTH_NO_TIMER;
        synth_v_inst[ v ]    = (Instrument*)0;
        stop_channel( v );
    }

    set_global_volume( 1.0 );
}

// Master volume applied on top of every voice, 0..1.
void synth_master_volume( float v )
{
    synth_master = v;
}

// Global transpose in semitones (affects notes started after the call).
void synth_set_transpose( int semitones )
{
    synth_transpose = semitones;
}

// A MIDI note number from pitch class (PC_*) and octave (C4 == middle C).
int synth_note_num( int pitch_class, int octave )
{
    return (octave + 1) * 12 + pitch_class;
}

// =============================================================================
//   INTERNAL: base speed for a note (transpose + detune folded in)
// =============================================================================

float synth_base_speed( int note, Instrument* inst )
{
    int n = note + synth_transpose;
    if( n < 0 )   n = 0;
    if( n > 127 ) n = 127;

    float speed = synth_note_speed[ n ];
    if( inst->detune != 0.0 )
      speed = speed * pow( 2.0, inst->detune / 12.0 );

    return speed;
}

// =============================================================================
//   VOICE ALLOCATION
// =============================================================================

// Find a free voice, or steal the quietest one. Always returns 0..15.
int synth_alloc_voice()
{
    for( int v = 0; v < SYNTH_VOICES; ++v )
      if( !synth_v_active[ v ] )
        return v;

    int   best = 0;
    float best_amp = synth_v_amp[ 0 ];

    for( int v = 1; v < SYNTH_VOICES; ++v )
      if( synth_v_amp[ v ] < best_amp )
      {
          best_amp = synth_v_amp[ v ];
          best = v;
      }

    return best;
}

// =============================================================================
//   NOTE ON / OFF
// =============================================================================

// Start `note` on a specific voice/channel with `velocity`. Low-level; most
// callers use synth_note_on. Returns the voice id.
int synth_note_on_channel( Instrument* inst, int note, float velocity, int v )
{
    if( note < 0 )   note = 0;
    if( note > 127 ) note = 127;

    float base = synth_base_speed( note, inst );

    synth_v_active[ v ]      = 1;
    synth_v_note[ v ]        = note;
    synth_v_inst[ v ]        = inst;
    synth_v_phase[ v ]       = ENV_ATTACK;
    synth_v_level[ v ]       = 0.0;
    synth_v_frames[ v ]      = 0;
    synth_v_age[ v ]         = 0;
    synth_v_relstart[ v ]    = 0.0;
    synth_v_curspeed[ v ]    = base;
    synth_v_tgtspeed[ v ]    = base;
    synth_v_glideframes[ v ] = 0;
    synth_v_vibphase[ v ]    = 0.0;
    synth_v_tremphase[ v ]   = 0.0;
    synth_v_bend[ v ]        = 0.0;
    synth_v_vel[ v ]         = velocity;
    synth_v_freq[ v ]        = synth_note_freq[ note ];
    synth_v_timer[ v ]       = SYNTH_NO_TIMER;

    assign_channel_sound( v, synth_wave_base + inst->waveform );
    select_channel( v );
    set_channel_volume( 0.0 );
    set_channel_speed( base );
    play_channel( v );

    return v;
}

// Start `note` (0..127) on a free/stolen voice. Returns the voice used.
int synth_note_on( Instrument* inst, int note, float velocity )
{
    int v = synth_alloc_voice();
    return synth_note_on_channel( inst, note, velocity, v );
}

// Start a note by raw frequency (Hz) instead of a MIDI number.
int synth_note_on_freq( Instrument* inst, float hz, float velocity )
{
    int v = synth_alloc_voice();
    float base = hz * SYNTH_WAVE_PERIOD / SYNTH_RATE;
    if( inst->detune != 0.0 )
      base = base * pow( 2.0, inst->detune / 12.0 );

    synth_v_active[ v ]      = 1;
    synth_v_note[ v ]        = 60;              // nominal
    synth_v_inst[ v ]        = inst;
    synth_v_phase[ v ]       = ENV_ATTACK;
    synth_v_level[ v ]       = 0.0;
    synth_v_frames[ v ]      = 0;
    synth_v_age[ v ]         = 0;
    synth_v_relstart[ v ]    = 0.0;
    synth_v_curspeed[ v ]    = base;
    synth_v_tgtspeed[ v ]    = base;
    synth_v_glideframes[ v ] = 0;
    synth_v_vibphase[ v ]    = 0.0;
    synth_v_tremphase[ v ]   = 0.0;
    synth_v_bend[ v ]        = 0.0;
    synth_v_vel[ v ]         = velocity;
    synth_v_freq[ v ]        = hz;
    synth_v_timer[ v ]       = SYNTH_NO_TIMER;

    assign_channel_sound( v, synth_wave_base + inst->waveform );
    select_channel( v );
    set_channel_volume( 0.0 );
    set_channel_speed( base );
    play_channel( v );
    return v;
}

// Play a note that auto-releases after `frames` frames. Fire-and-forget.
int synth_play_timed( Instrument* inst, int note, float velocity, int frames )
{
    int v = synth_note_on( inst, note, velocity );
    synth_v_timer[ v ] = frames;
    return v;
}

// Glide a live voice to a new note WITHOUT re-attacking (legato / portamento).
// Honors the instrument's glide time; if glide == 0 the pitch snaps.
void synth_note_retrigger( int v, int note )
{
    if( v < 0 || v >= SYNTH_VOICES ) return;
    if( !synth_v_active[ v ] ) return;

    Instrument* inst = synth_v_inst[ v ];
    if( note < 0 )   note = 0;
    if( note > 127 ) note = 127;

    float base = synth_base_speed( note, inst );
    synth_v_tgtspeed[ v ] = base;
    synth_v_note[ v ]     = note;
    synth_v_freq[ v ]     = synth_note_freq[ note ];

    if( inst->glide > 0 )
      synth_v_glideframes[ v ] = inst->glide;
    else
    {
        synth_v_curspeed[ v ]    = base;
        synth_v_glideframes[ v ] = 0;
    }
}

// Begin the release phase of a voice.
void synth_note_off( int v )
{
    if( v < 0 || v >= SYNTH_VOICES ) return;
    if( !synth_v_active[ v ] ) return;
    if( synth_v_phase[ v ] == ENV_RELEASE || synth_v_phase[ v ] == ENV_OFF ) return;

    synth_v_relstart[ v ] = synth_v_level[ v ];
    synth_v_phase[ v ]    = ENV_RELEASE;
    synth_v_frames[ v ]   = 0;
}

// Override a live voice's velocity/volume scaler (0..1), effective next update.
void synth_set_voice_volume( int v, float velocity )
{
    if( v < 0 || v >= SYNTH_VOICES ) return;
    synth_v_vel[ v ] = velocity;
}

// Immediately silence and free a voice.
void synth_voice_kill( int v )
{
    synth_v_active[ v ] = 0;
    synth_v_phase[ v ]  = ENV_OFF;
    synth_v_level[ v ]  = 0.0;
    synth_v_amp[ v ]    = 0.0;
    synth_v_timer[ v ]  = SYNTH_NO_TIMER;
    stop_channel( v );
}

void synth_all_notes_off()
{
    for( int v = 0; v < SYNTH_VOICES; ++v )
      if( synth_v_active[ v ] )
        synth_note_off( v );
}

void synth_panic()
{
    for( int v = 0; v < SYNTH_VOICES; ++v )
      synth_voice_kill( v );
}

// Apply a pitch bend (semitones) to a live voice; effective next update.
void synth_pitch_bend( int v, float semitones )
{
    if( v < 0 || v >= SYNTH_VOICES ) return;
    synth_v_bend[ v ] = semitones;
}

int synth_is_voice_active( int v )
{
    if( v < 0 || v >= SYNTH_VOICES ) return 0;
    return synth_v_active[ v ];
}

// =============================================================================
//   PER-FRAME UPDATE  (envelope + modulation -> SPU registers)
// =============================================================================

// Advance one voice's ADSR envelope. Returns the new level 0..1.
float synth_step_envelope( int v, Instrument* inst )
{
    int   phase  = synth_v_phase[ v ];
    int   frames = synth_v_frames[ v ];
    float level  = synth_v_level[ v ];

    if( phase == ENV_ATTACK )
    {
        if( inst->attack <= 0 )
          level = 1.0;
        else
          level = (float)frames / inst->attack;

        if( level >= 1.0 )
        {
            level = 1.0;
            synth_v_phase[ v ]  = ENV_DECAY;
            synth_v_frames[ v ] = 0;
        }
    }
    else if( phase == ENV_DECAY )
    {
        int done = 0;
        if( inst->decay <= 0 )
        {
            level = inst->sustain;
            done = 1;
        }
        else
        {
            float t = (float)frames / inst->decay;
            level = 1.0 - (1.0 - inst->sustain) * t;
            if( frames >= inst->decay )
            {
                level = inst->sustain;
                done = 1;
            }
        }

        if( done )
        {
            // sustain of 0 => percussive: skip the sustain hold and finish
            if( inst->sustain <= 0.001 )
              synth_v_phase[ v ] = ENV_OFF;
            else
            {
                synth_v_phase[ v ]  = ENV_SUSTAIN;
                synth_v_frames[ v ] = 0;
            }
        }
    }
    else if( phase == ENV_SUSTAIN )
    {
        level = inst->sustain;
    }
    else if( phase == ENV_RELEASE )
    {
        if( inst->release <= 0 )
          level = 0.0;
        else
        {
            float t = (float)frames / inst->release;
            level = synth_v_relstart[ v ] * (1.0 - t);
        }

        if( level <= 0.0 || frames >= inst->release )
        {
            level = 0.0;
            synth_v_phase[ v ] = ENV_OFF;
        }
    }

    synth_v_level[ v ] = level;
    return level;
}

// Current pitch offset in semitones (bend + slide + pitch-env + vibrato).
float synth_pitch_offset( int v, Instrument* inst )
{
    float semis = synth_v_bend[ v ];

    if( inst->pitch_slide != 0.0 )
      semis += inst->pitch_slide * synth_v_age[ v ];

    if( inst->pitch_env_amount != 0.0 && inst->pitch_env_time > 0 )
    {
        int age = synth_v_age[ v ];
        if( age < inst->pitch_env_time )
        {
            float k = 1.0 - (float)age / inst->pitch_env_time;
            semis += inst->pitch_env_amount * k;
        }
    }

    if( inst->vib_depth > 0.0 && synth_v_age[ v ] >= inst->vib_delay )
    {
        synth_v_vibphase[ v ] += inst->vib_rate / SYNTH_FPS;
        float lfo = sin( synth_v_vibphase[ v ] * 6.2831853 );
        semis += inst->vib_depth * lfo;
    }

    return semis;
}

// Call once per frame, before end_frame().
void synth_update()
{
    for( int v = 0; v < SYNTH_VOICES; ++v )
    {
        if( !synth_v_active[ v ] ) continue;

        Instrument* inst = synth_v_inst[ v ];

        float level = synth_step_envelope( v, inst );

        if( synth_v_phase[ v ] == ENV_OFF )
        {
            synth_voice_kill( v );
            continue;
        }

        // glide the base speed toward its target
        if( synth_v_glideframes[ v ] > 0 )
        {
            float diff = synth_v_tgtspeed[ v ] - synth_v_curspeed[ v ];
            synth_v_curspeed[ v ] += diff / synth_v_glideframes[ v ];
            synth_v_glideframes[ v ] -= 1;
            if( synth_v_glideframes[ v ] == 0 )
              synth_v_curspeed[ v ] = synth_v_tgtspeed[ v ];
        }

        // amplitude: envelope * patch volume * velocity * master
        float amp = level * inst->volume * synth_v_vel[ v ] * synth_master;

        // tremolo (amplitude LFO)
        if( inst->trem_depth > 0.0 )
        {
            synth_v_tremphase[ v ] += inst->trem_rate / SYNTH_FPS;
            float lfo = 0.5 + 0.5 * sin( synth_v_tremphase[ v ] * 6.2831853 );
            amp = amp * (1.0 - inst->trem_depth * lfo);
        }

        synth_v_amp[ v ] = amp;

        // pitch: glided base speed * 2^(offset/12)
        float semis = synth_pitch_offset( v, inst );
        float speed = synth_v_curspeed[ v ];
        if( semis != 0.0 )
          speed = speed * pow( 2.0, semis / 12.0 );

        select_channel( v );
        set_channel_volume( amp );
        set_channel_speed( speed );

        synth_v_frames[ v ] += 1;
        synth_v_age[ v ]    += 1;

        // timed auto-release
        if( synth_v_timer[ v ] > 0 )
        {
            synth_v_timer[ v ] -= 1;
            if( synth_v_timer[ v ] == 0 )
            {
                synth_note_off( v );
                synth_v_timer[ v ] = SYNTH_NO_TIMER;
            }
        }
    }
}

// =============================================================================
//   PATCH HELPERS
// =============================================================================

// Basic patch: waveform + volume + ADSR. Zeroes all modulation.
void synth_patch( Instrument* i, int wave, float vol,
                  int a, int d, float s, int r )
{
    i->waveform         = wave;
    i->volume           = vol;
    i->attack           = a;
    i->decay            = d;
    i->sustain          = s;
    i->release          = r;
    i->vib_depth        = 0.0;
    i->vib_rate         = 0.0;
    i->vib_delay        = 0;
    i->trem_depth       = 0.0;
    i->trem_rate        = 0.0;
    i->pitch_env_amount = 0.0;
    i->pitch_env_time   = 0;
    i->pitch_slide      = 0.0;
    i->glide            = 0;
    i->detune           = 0.0;
}

void synth_set_vibrato( Instrument* i, float depth, float rate, int delay )
{
    i->vib_depth = depth;
    i->vib_rate  = rate;
    i->vib_delay = delay;
}

void synth_set_tremolo( Instrument* i, float depth, float rate )
{
    i->trem_depth = depth;
    i->trem_rate  = rate;
}

void synth_set_pitch_env( Instrument* i, float amount, int frames )
{
    i->pitch_env_amount = amount;
    i->pitch_env_time   = frames;
}

void synth_set_glide( Instrument* i, int frames )
{
    i->glide = frames;
}

void synth_set_detune( Instrument* i, float semitones )
{
    i->detune = semitones;
}

// =============================================================================
//   PRESET BANK
// =============================================================================

#define PRESET_LEAD_SQUARE   0
#define PRESET_LEAD_PULSE    1
#define PRESET_LEAD_SAW      2
#define PRESET_LEAD_SINE     3
#define PRESET_LEAD_CHIP     4
#define PRESET_BASS_SUB      5
#define PRESET_BASS_TRI      6
#define PRESET_BASS_SQUARE   7
#define PRESET_BASS_SAW      8
#define PRESET_BASS_PLUCK    9
#define PRESET_PLUCK_SQUARE  10
#define PRESET_PLUCK_SAW     11
#define PRESET_EPIANO        12
#define PRESET_HARP          13
#define PRESET_MARIMBA       14
#define PRESET_PAD_SAW       15
#define PRESET_PAD_SQUARE    16
#define PRESET_PAD_WARM      17
#define PRESET_STRINGS       18
#define PRESET_ORGAN         19
#define PRESET_ORGAN_SOFT    20
#define PRESET_BRASS         21
#define PRESET_BELL          22
#define PRESET_CHIME         23
#define PRESET_ZAP           24
#define PRESET_LASER         25
#define PRESET_SIREN         26
#define PRESET_DROP          27
#define PRESET_KICK          28
#define PRESET_SNARE         29
#define PRESET_HAT_CLOSED    30
#define PRESET_HAT_OPEN      31
#define PRESET_TOM           32
#define PRESET_CLAP          33
#define PRESET_COWBELL       34
#define SYNTH_PRESET_COUNT   35
#define PRESET_DRUM_FIRST    PRESET_KICK

Instrument[ SYNTH_PRESET_COUNT ] synth_preset_bank;

int[ SYNTH_PRESET_COUNT ][ 16 ] synth_preset_name =
{
    "SQ LEAD", "PLS LEAD", "SAW LEAD", "SINE LEAD", "CHIP LEAD",
    "SUB BASS", "TRI BASS", "SQ BASS", "SAW BASS", "PLUCK BASS",
    "SQ PLUCK", "SAW PLUCK", "E-PIANO", "HARP", "MARIMBA",
    "SAW PAD", "SQ PAD", "WARM PAD", "STRINGS", "ORGAN",
    "SOFT ORGAN", "BRASS", "BELL", "CHIME", "ZAP",
    "LASER", "SIREN", "DROP", "KICK", "SNARE",
    "CL HAT", "OP HAT", "TOM", "CLAP", "COWBELL"
};

// pointer to a preset instrument (id = PRESET_*)
Instrument* synth_preset( int id )
{
    return &synth_preset_bank[ id ];
}

int* synth_preset_get_name( int id )
{
    return synth_preset_name[ id ];
}

// Fill the whole preset bank. Call once after synth_init.
void synth_load_presets()
{
    Instrument* p;
    p=&synth_preset_bank[PRESET_LEAD_SQUARE]; synth_patch(p,WAVE_SQUARE,0.22,1,6,0.55,10); synth_set_vibrato(p,0.25,6.0,14);
    p=&synth_preset_bank[PRESET_LEAD_PULSE]; synth_patch(p,WAVE_PULSE25,0.22,1,8,0.5,10); synth_set_vibrato(p,0.30,6.5,12);
    p=&synth_preset_bank[PRESET_LEAD_SAW]; synth_patch(p,WAVE_SAW,0.2,1,6,0.6,10); synth_set_vibrato(p,0.20,5.5,16);
    p=&synth_preset_bank[PRESET_LEAD_SINE]; synth_patch(p,WAVE_SINE,0.28,2,10,0.6,14); synth_set_vibrato(p,0.25,5.0,20);
    p=&synth_preset_bank[PRESET_LEAD_CHIP]; synth_patch(p,WAVE_PULSE12,0.2,0,4,0.5,8); synth_set_vibrato(p,0.40,7.0,8);
    p=&synth_preset_bank[PRESET_BASS_SUB]; synth_patch(p,WAVE_SINE,0.34,0,4,0.9,6);
    p=&synth_preset_bank[PRESET_BASS_TRI]; synth_patch(p,WAVE_TRIANGLE,0.32,0,3,0.85,8);
    p=&synth_preset_bank[PRESET_BASS_SQUARE]; synth_patch(p,WAVE_SQUARE,0.28,0,4,0.7,6);
    p=&synth_preset_bank[PRESET_BASS_SAW]; synth_patch(p,WAVE_SAW,0.26,0,5,0.7,6);
    p=&synth_preset_bank[PRESET_BASS_PLUCK]; synth_patch(p,WAVE_TRIANGLE,0.32,0,10,0.0,6);
    p=&synth_preset_bank[PRESET_PLUCK_SQUARE]; synth_patch(p,WAVE_SQUARE,0.24,0,12,0.0,8);
    p=&synth_preset_bank[PRESET_PLUCK_SAW]; synth_patch(p,WAVE_SAW,0.22,0,14,0.0,10);
    p=&synth_preset_bank[PRESET_EPIANO]; synth_patch(p,WAVE_SINE,0.28,1,18,0.25,16);
    p=&synth_preset_bank[PRESET_HARP]; synth_patch(p,WAVE_TRIANGLE,0.26,0,20,0.0,24);
    p=&synth_preset_bank[PRESET_MARIMBA]; synth_patch(p,WAVE_SINE,0.3,0,10,0.0,6);
    p=&synth_preset_bank[PRESET_PAD_SAW]; synth_patch(p,WAVE_SAW,0.16,24,30,0.7,40); synth_set_vibrato(p,0.15,4.0,30);
    p=&synth_preset_bank[PRESET_PAD_SQUARE]; synth_patch(p,WAVE_SQUARE,0.15,20,20,0.7,36);
    p=&synth_preset_bank[PRESET_PAD_WARM]; synth_patch(p,WAVE_TRIANGLE,0.2,28,20,0.75,44); synth_set_vibrato(p,0.12,3.5,40);
    p=&synth_preset_bank[PRESET_STRINGS]; synth_patch(p,WAVE_SAW,0.16,18,10,0.8,30); synth_set_vibrato(p,0.25,5.0,24);
    p=&synth_preset_bank[PRESET_ORGAN]; synth_patch(p,WAVE_SQUARE,0.2,0,0,1.0,4);
    p=&synth_preset_bank[PRESET_ORGAN_SOFT]; synth_patch(p,WAVE_TRIANGLE,0.22,2,0,0.9,8);
    p=&synth_preset_bank[PRESET_BRASS]; synth_patch(p,WAVE_SAW,0.2,4,8,0.75,12); synth_set_vibrato(p,0.20,5.0,18);
    p=&synth_preset_bank[PRESET_BELL]; synth_patch(p,WAVE_SINE,0.26,0,30,0.0,40);
    p=&synth_preset_bank[PRESET_CHIME]; synth_patch(p,WAVE_SINE,0.22,0,40,0.1,50); synth_set_tremolo(p,0.3,4.0);
    p=&synth_preset_bank[PRESET_ZAP]; synth_patch(p,WAVE_SAW,0.24,0,8,0.0,6); synth_set_pitch_env(p,24.0,8);
    p=&synth_preset_bank[PRESET_LASER]; synth_patch(p,WAVE_SQUARE,0.22,0,10,0.0,6); p->pitch_slide=-1.2;
    p=&synth_preset_bank[PRESET_SIREN]; synth_patch(p,WAVE_SINE,0.24,4,0,0.9,10); synth_set_vibrato(p,2.0,3.0,0);
    p=&synth_preset_bank[PRESET_DROP]; synth_patch(p,WAVE_TRIANGLE,0.28,0,20,0.0,10); p->pitch_slide=-0.6;
    p=&synth_preset_bank[PRESET_KICK]; synth_patch(p,WAVE_TRIANGLE,0.36,0,6,0.0,6); p->pitch_slide=-0.9;
    p=&synth_preset_bank[PRESET_SNARE]; synth_patch(p,WAVE_NOISE,0.24,0,8,0.0,6);
    p=&synth_preset_bank[PRESET_HAT_CLOSED]; synth_patch(p,WAVE_NOISE,0.16,0,3,0.0,3);
    p=&synth_preset_bank[PRESET_HAT_OPEN]; synth_patch(p,WAVE_NOISE,0.16,0,12,0.0,14);
    p=&synth_preset_bank[PRESET_TOM]; synth_patch(p,WAVE_TRIANGLE,0.3,0,10,0.0,8); p->pitch_slide=-0.4;
    p=&synth_preset_bank[PRESET_CLAP]; synth_patch(p,WAVE_NOISE,0.2,0,6,0.0,8);
    p=&synth_preset_bank[PRESET_COWBELL]; synth_patch(p,WAVE_SQUARE,0.2,0,8,0.0,6);
}

// =============================================================================
//   CHORDS
// =============================================================================

#define CHORD_MAJ    0
#define CHORD_MIN    1
#define CHORD_DIM    2
#define CHORD_AUG    3
#define CHORD_MAJ7   4
#define CHORD_MIN7   5
#define CHORD_DOM7   6
#define CHORD_SUS4   7
#define CHORD_SUS2   8
#define CHORD_POWER  9
#define CHORD_TYPES  10

// interval tables (semitones from root); -1 terminates (max 4 notes)
int[ CHORD_TYPES ][ 4 ] synth_chord_iv =
{
    {  0,  4,  7, -1 },   // MAJ
    {  0,  3,  7, -1 },   // MIN
    {  0,  3,  6, -1 },   // DIM
    {  0,  4,  8, -1 },   // AUG
    {  0,  4,  7, 11 },   // MAJ7
    {  0,  3,  7, 10 },   // MIN7
    {  0,  4,  7, 10 },   // DOM7
    {  0,  5,  7, -1 },   // SUS4
    {  0,  2,  7, -1 },   // SUS2
    {  0,  7, 12, -1 }    // POWER
};

// Play a chord; writes each voice id into out_voices[] and returns the count.
// out_voices must have room for 4 ints.
int synth_chord( Instrument* inst, int root, int type, float vel, int* out_voices )
{
    int count = 0;
    for( int i = 0; i < 4; ++i )
    {
        int iv = synth_chord_iv[ type ][ i ];
        if( iv < 0 ) break;
        out_voices[ count ] = synth_note_on( inst, root + iv, vel );
        count += 1;
    }
    return count;
}

// Play a chord that auto-releases after `frames` frames. Fire-and-forget.
int synth_chord_timed( Instrument* inst, int root, int type, float vel, int frames )
{
    int count = 0;
    for( int i = 0; i < 4; ++i )
    {
        int iv = synth_chord_iv[ type ][ i ];
        if( iv < 0 ) break;
        synth_play_timed( inst, root + iv, vel, frames );
        count += 1;
    }
    return count;
}

// Release a set of voices returned by synth_chord.
void synth_release_voices( int* voices, int count )
{
    for( int i = 0; i < count; ++i )
      synth_note_off( voices[ i ] );
}

// =============================================================================
//   STEP SEQUENCER
// =============================================================================
//   A song is a set of parallel tracks. Each track owns one instrument and a
//   row array of cells (a MIDI note, or SEQ_REST / SEQ_OFF / SEQ_HOLD). All
//   tracks advance together on a shared row clock at `frames_per_row` frames.
//
//   Per-track options:
//     mono  = 1  -> reuse one channel and glide/legato between notes (uses the
//                   instrument's glide time); good for basslines and leads.
//     gate       -> if > 0, auto-release this many frames after each trigger
//                   (staccato). 0 = hold until the next event.
//   Per-song options:
//     transpose  -> semitones added to every note.
//     swing      -> extra frames added to odd rows (shuffle feel).
// =============================================================================

#define SEQ_MAX_TRACKS 8

struct SeqTrack
{
    Instrument* inst;
    int*        rows;     // array of cells, length = song length
    float       velocity;
    int         mono;     // 1 = single-channel legato/glide line
    int         gate;     // >0 = auto note-off after this many frames
};

struct Song
{
    SeqTrack[ SEQ_MAX_TRACKS ] tracks;
    int      num_tracks;
    int      length;          // number of rows
    int      frames_per_row;  // tempo: frames each row lasts
    int      loop;            // 1 = repeat from row 0
    int      transpose;       // semitones added to every note
    int      swing;           // extra frames on odd rows
};

// playback state
Song* synth_seq_song;
int   synth_seq_row;
int   synth_seq_timer;
int   synth_seq_playing;
int[ SEQ_MAX_TRACKS ] synth_seq_voice;   // voice currently held by each track

void synth_seq_play( Song* song )
{
    synth_seq_song    = song;
    synth_seq_row     = 0;
    synth_seq_timer   = 0;
    synth_seq_playing = 1;

    for( int t = 0; t < SEQ_MAX_TRACKS; ++t )
      synth_seq_voice[ t ] = -1;
}

void synth_seq_stop()
{
    synth_seq_playing = 0;
    for( int t = 0; t < SEQ_MAX_TRACKS; ++t )
      if( synth_seq_voice[ t ] >= 0 )
      {
          synth_note_off( synth_seq_voice[ t ] );
          synth_seq_voice[ t ] = -1;
      }
}

void synth_seq_pause( int paused )
{
    if( paused ) synth_seq_playing = 0;
    else         synth_seq_playing = 1;
}

void synth_seq_set_tempo( int frames_per_row )
{
    if( synth_seq_song )
      synth_seq_song->frames_per_row = frames_per_row;
}

// Fire the cells of the current row across all tracks.
void synth_seq_trigger_row()
{
    Song* song = synth_seq_song;

    for( int t = 0; t < song->num_tracks; ++t )
    {
        SeqTrack* tr = &song->tracks[ t ];
        int cell = tr->rows[ synth_seq_row ];

        if( cell == SEQ_HOLD ) continue;   // keep previous note ringing
        if( cell == SEQ_REST ) continue;   // leave note alone

        int held = synth_seq_voice[ t ];

        // SEQ_OFF -> release whatever this track holds
        if( cell == SEQ_OFF )
        {
            if( held >= 0 ) synth_note_off( held );
            synth_seq_voice[ t ] = -1;
            continue;
        }

        // an actual note
        int note = cell + song->transpose;

        // mono legato: glide the existing voice instead of stealing a new one
        if( tr->mono && held >= 0 && synth_v_active[ held ] )
        {
            synth_note_retrigger( held, note );
            if( tr->gate > 0 ) synth_v_timer[ held ] = tr->gate;
            continue;
        }

        // otherwise release the old note and start a fresh one
        if( held >= 0 ) synth_note_off( held );

        int v;
        if( tr->gate > 0 )
          v = synth_play_timed( tr->inst, note, tr->velocity, tr->gate );
        else
          v = synth_note_on( tr->inst, note, tr->velocity );

        synth_seq_voice[ t ] = v;
    }
}

// Advance the sequencer one frame.
void synth_seq_update()
{
    if( !synth_seq_playing ) return;
    Song* song = synth_seq_song;

    if( synth_seq_timer <= 0 )
    {
        synth_seq_trigger_row();

        // row duration, with optional swing on odd rows
        int dur = song->frames_per_row;
        if( song->swing > 0 && (synth_seq_row & 1) )
          dur += song->swing;
        synth_seq_timer = dur;

        synth_seq_row += 1;
        if( synth_seq_row >= song->length )
        {
            if( song->loop )
              synth_seq_row = 0;
            else
              synth_seq_stop();
        }
    }

    synth_seq_timer -= 1;
}

#endif
