#ifndef NITRO_SND_COMMON_BANK_H_
#define NITRO_SND_COMMON_BANK_H_

typedef struct SNDWaveData {
    struct SNDWaveParam param;
    u8 samples[0];
} SNDWaveData;

#endif // NITRO_SND_COMMON_BANK_H_
