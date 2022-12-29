#ifndef NNS_SND_SNDARC_LOADER_H_
#define NNS_SND_SNDARC_LOADER_H_

#include <nitro/types.h>
#include <nnsys/snd/heap.h>

#ifdef __cplusplus
extern "C" {
#endif

struct NNSSndSeqData;
struct NNSSndSeqArc;
struct SNDBankData;
struct SNDWaveArc;

typedef enum NNSSndArcLoadResult {
    NNS_SND_ARC_LOAD_SUCESS = 0,
    NNS_SND_ARC_LOAD_ERROR_INVALID_GROUP_NO,
    NNS_SND_ARC_LOAD_ERROR_INVALID_SEQ_NO,
    NNS_SND_ARC_LOAD_ERROR_INVALID_SEQARC_NO,
    NNS_SND_ARC_LOAD_ERROR_INVALID_BANK_NO,
    NNS_SND_ARC_LOAD_ERROR_INVALID_WAVEARC_NO,
    NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_SEQ,
    NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_SEQARC,
    NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_BANK,
    NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_WAVE
} NNSSndArcLoadResult;

BOOL NNS_SndArcLoadGroup(int groupNo, NNSSndHeapHandle heap);

BOOL NNS_SndArcLoadSeq(int seqNo, NNSSndHeapHandle heap);
BOOL NNS_SndArcLoadSeqArc(int seqArcNo, NNSSndHeapHandle heap);
BOOL NNS_SndArcLoadBank(int bankNo, NNSSndHeapHandle heap);
BOOL NNS_SndArcLoadWaveArc(int waveArcNo, NNSSndHeapHandle heap);

BOOL NNS_SndArcLoadSeqEx(int seqNo, u32 loadFlag, NNSSndHeapHandle heap);
BOOL NNS_SndArcLoadBankEx(int bankNo, u32 loadFlag, NNSSndHeapHandle heap);

void * NNSi_SndArcLoadFile(
    u32 fileId,
    NNSSndHeapDisposeCallback callback,
    u32 data1,
    u32 data2,
    NNSSndHeapHandle heap
);

NNSSndArcLoadResult NNSi_SndArcLoadGroup(int groupNo, NNSSndHeapHandle heap);
NNSSndArcLoadResult NNSi_SndArcLoadSeq(int seqNo, u32 loadFlag, NNSSndHeapHandle heap, BOOL bSetAddr, struct NNSSndSeqData ** pData);
NNSSndArcLoadResult NNSi_SndArcLoadSeqArc(int seqArcNo, u32 loadFlag, NNSSndHeapHandle heap, BOOL bSetAddr, struct NNSSndSeqArc ** pData);
NNSSndArcLoadResult NNSi_SndArcLoadBank(int bankNo, u32 loadFlag, NNSSndHeapHandle heap, BOOL bSetAddr, struct SNDBankData ** pData);
NNSSndArcLoadResult NNSi_SndArcLoadWaveArc(int waveArcNo, u32 loadFlag, NNSSndHeapHandle heap, BOOL bSetAddr, struct SNDWaveArc ** pData);

#ifdef __cplusplus
}
#endif

#endif
