#ifndef NITRO_SND_COMMON_BANK_H_
#define NITRO_SND_COMMON_BANK_H_

struct SNDWaveArc;

typedef struct SNDWaveData {
    struct SNDWaveParam param;
    u8 samples[0];
} SNDWaveData;

typedef struct SNDWaveArcLink {
    struct SNDWaveArc * waveArc;
    struct SNDWaveArcLink * next;
} SNDWaveArcLink;

typedef struct SNDWaveArc {
    struct SNDBinaryFileHeader fileHeader;
    struct SNDBinaryBlockHeader blockHeader;
    struct SNDWaveArcLink * topLink;
    u32 reserved[7];
    u32 waveCount;
    u32 waveOffset[0];
} SNDWaveArc;

const SNDWaveData * SND_GetWaveDataAddress(const struct SNDWaveArc * waveArc, int index);

#endif // NITRO_SND_COMMON_BANK_H_
