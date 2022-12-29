#ifndef NITRO_SND_COMMON_MIDI_PLAYER_H_
#define NITRO_SND_COMMON_MIDI_PLAYER_H_

#include <nitro/types.h>
#include <nitro/snd/common/channel.h>
#include <nitro/snd/common/exchannel.h>

#ifdef __cplusplus
extern "C" {
#endif

#define SND_MIDI_TRACK_NUM 16

struct SNDBankData;

typedef struct SNDMidiChannel {
    struct SNDExChannel * chp;
    u8 key;
    u8 pad1;
    u16 pad2;
} SNDMidiChannel;

typedef struct SNDMidiTrack {
    struct SNDMidiChannel channels[SND_CHANNEL_NUM];
    SNDLfoParam mod;

    s16 sweep_pitch;

    u16 prgNo;
    s8 pitchbend;

    u8 porta_time;
    u8 volume;
    s8 pan;
    u8 expression;
    s8 transpose;
    u8 prio;
    u8 bendrange;
    u8 porta_flag;
    u8 porta_key;
    u8 attack;
    u8 decay;
    u8 sustain;
    u8 release;

    u8 rpnLSB;
    u8 rpnMSB;
    u8 nrpnLSB;
    u8 nrpnMSB;
    u8 rpn_flag;
    u8 pad1;
    u16 pad2;
} SNDMidiTrack;

typedef struct SNDMidiPlayer {
    const struct SNDBankData * bank;
    SNDMidiTrack track[SND_MIDI_TRACK_NUM];

    u8 main_volume;
    u8 prio;
    u16 pad;
} SNDMidiPlayer;

#ifdef SDK_ARM7

void SND_MidiPlayerInit(SNDMidiPlayer * player);
void SND_MidiPlayerMain(SNDMidiPlayer * player);
void SND_MidiPlayerSetBank(SNDMidiPlayer * player, const struct SNDBankData * bank);
void SND_MidiPlayerProgramChange(SNDMidiPlayer * player, int channel, int prgNo);
void SND_MidiPlayerSendMessage(SNDMidiPlayer * player, u8 status, u8 data1, u8 data2);
void SND_MidiPlayerReset(SNDMidiPlayer * player);

#endif

#ifdef __cplusplus
}
#endif

#endif
