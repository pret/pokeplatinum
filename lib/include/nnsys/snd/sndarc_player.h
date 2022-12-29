#ifndef NNS_SND_SNDARC_PLAYER_H_
#define NNS_SND_SNDARC_PLAYER_H_

#include <nitro/types.h>
#include <nnsys/snd/heap.h>

#ifdef __cplusplus
extern "C" {
#endif

struct NNSSndHandle;

BOOL NNS_SndArcPlayerSetup(NNSSndHeapHandle heap);

BOOL NNS_SndArcPlayerStartSeq(struct NNSSndHandle * handle, int seqNo);
BOOL NNS_SndArcPlayerStartSeqArc(struct NNSSndHandle * handle, int seqArcNo, int index);

BOOL NNS_SndArcPlayerStartSeqEx(
    struct NNSSndHandle * handle,
    int playerNo,
    int bankNo,
    int playerPrio,
    int seqNo
);
BOOL NNS_SndArcPlayerStartSeqArcEx(
    struct NNSSndHandle * handle,
    int playerNo,
    int bankNo,
    int playerPrio,
    int seqArcNo,
    int index
);

#ifdef __cplusplus
}
#endif

#endif
