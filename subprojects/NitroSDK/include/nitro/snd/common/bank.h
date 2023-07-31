#ifndef NITRO_SND_COMMON_BANK_H_
#define NITRO_SND_COMMON_BANK_H_

#include <nitro/snd/common/exchannel.h>
#include <nitro/snd/common/data.h>

#ifdef __cplusplus
extern "C" {
#endif

#define SND_INST_KEYSPLIT_MAX 8

#define SND_BANK_TO_WAVEARC_MAX 4

#define SND_BANK_DISABLE_RELEASE 255

struct SNDWaveArc;
struct SNDExChannel;

typedef enum SNDInstType {
    SND_INST_INVALID = 0,

    SND_INST_PCM = 0x01,
    SND_INST_PSG,
    SND_INST_NOISE,
    SND_INST_DIRECTPCM,
    SND_INST_NULL,

    SND_INST_DRUM_SET = 0x10,
    SND_INST_KEY_SPLIT
} SNDInstType;

#ifdef _MSC_VER
#pragma warning( disable : 4200 )
#endif

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

typedef struct SNDWaveData {
    struct SNDWaveParam param;
    u8 samples[0];
} SNDWaveData;

typedef struct SNDBankData {
    struct SNDBinaryFileHeader fileHeader;
    struct SNDBinaryBlockHeader blockHeader;

    struct SNDWaveArcLink waveArcLink[SND_BANK_TO_WAVEARC_MAX];
    u32 instCount;
    u32 instOffset[0];
} SNDBankData;

typedef struct SNDInstParam {
    u16 wave[2];
    u8 original_key;
    u8 attack;
    u8 decay;
    u8 sustain;
    u8 release;
    u8 pan;
} SNDInstParam;

typedef struct SNDInstData {
    u8 type;
    u8 padding_;

    struct SNDInstParam param;
} SNDInstData;

typedef struct SNDKeySplit {
    u8 key[SND_INST_KEYSPLIT_MAX];
    struct SNDInstData instOffset[0];
} SNDKeySplit;

typedef struct SNDDrumSet {
    u8 min;
    u8 max;
    struct SNDInstData instOffset[0];
} SNDDrumSet;

typedef struct SNDInstPos {
    u32 prgNo;
    u32 index;
} SNDInstPos;

#if defined(SDK_WIN32) || defined(SDK_FROM_TOOL)

struct SNDBankDataCallback;
typedef BOOL (__stdcall * SNDReadInstDataFunc)(const struct SNDBankDataCallback * bank, int prgNo,
                                               int key, struct SNDInstData * inst);

typedef struct SNDBankDataCallback {
    struct SNDBinaryFileHeader fileHeader;
    struct SNDBinaryBlockHeader blockHeader;

    void * arg;
    SNDReadInstDataFunc readInstDataFunc;
} SNDBankDataCallback;

#endif

#ifdef _MSC_VER
#pragma warning( default : 4200 )
#endif

void SND_AssignWaveArc(struct SNDBankData * bank, int index, struct SNDWaveArc * waveArc);
void SND_DestroyBank(struct SNDBankData * bank);
void SND_DestroyWaveArc(struct SNDWaveArc * waveArc);

BOOL SND_ReadInstData(const struct SNDBankData * bank, int prgNo, int key,
                      struct SNDInstData * inst);
BOOL SND_WriteInstData(struct SNDBankData * bank, int prgNo, int key,
                       const struct SNDInstData * inst);

struct SNDInstPos SND_GetFirstInstDataPos(const struct SNDBankData * bank);
BOOL SND_GetNextInstData(const struct SNDBankData * bank, struct SNDInstData * inst,
                         struct SNDInstPos * pos);

u32 SND_GetWaveDataCount(const struct SNDWaveArc * waveArc);
void SND_SetWaveDataAddress(struct SNDWaveArc * waveArc, int index, const SNDWaveData * address);
const SNDWaveData * SND_GetWaveDataAddress(const struct SNDWaveArc * waveArc, int index);

#ifdef SDK_ARM7

BOOL SND_NoteOn(struct SNDExChannel * ch_p,
                int key,
                int velocity,
                s32 length, const struct SNDBankData * bank, const struct SNDInstData * inst);

#endif

#ifdef __cplusplus
}
#endif

#endif
