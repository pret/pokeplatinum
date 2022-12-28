#ifndef NITRO_SND_EXCHANNEL_H_
#define NITRO_SND_EXCHANNEL_H_

typedef enum SNDEnvStatus {
    SND_ENV_ATTACK,
    SND_ENV_DECAY,
    SND_ENV_SUSTAIN,
    SND_ENV_RELEASE
} SNDEnvStatus;

typedef struct SNDWaveParam {
    u8 format;
    u8 loopflag;
    u16 rate;
    u16 timer;
    u16 loopstart;
    u32 looplen;
} SNDWaveParam;

#endif //NITRO_SND_EXCHANNEL_H_
