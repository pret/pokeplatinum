#ifndef NNS_SND_SEQ_DATA_H_
#define NNS_SND_SEQ_DATA_H_

#include <nitro/types.h>
#include <nitro/snd.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_SND_SEQ_ARC_INVALID_OFFSET 0xffffffff

#ifdef _MSC_VER
#pragma warning( disable : 4200 )
#endif

typedef struct NNSSndSeqParam {
    u16 bankNo;
    u8 volume;
    u8 channelPrio;
    u8 playerPrio;
    u8 playerNo;
    u16 reserved;
} NNSSndSeqParam;

typedef struct NNSSndSeqArcSeqInfo {
    u32 offset;
    struct NNSSndSeqParam param;
} NNSSndSeqArcSeqInfo;

typedef struct NNSSndSeqArc {
    struct SNDBinaryFileHeader fileHeader;
    struct SNDBinaryBlockHeader blockHeader;
    u32 baseOffset;
    u32 count;
    NNSSndSeqArcSeqInfo info[0];
} NNSSndSeqArc;

typedef struct NNSSndSeqData {
    struct SNDBinaryFileHeader fileHeader;
    struct SNDBinaryBlockHeader blockHeader;
    u32 baseOffset;
    u32 data[0];
} NNSSndSeqData;

#ifdef _MSC_VER
#pragma warning( default : 4200 )
#endif

u32 NNSi_SndSeqArcGetSeqCount(const struct NNSSndSeqArc * seqArc);
const NNSSndSeqArcSeqInfo * NNSi_SndSeqArcGetSeqInfo(
    const struct NNSSndSeqArc * seqArc,
    int seqNo
);

#ifdef __cplusplus
}
#endif

#endif
