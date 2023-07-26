#ifndef NNS_G2DI_RENDERERMTXCACHE_H_
#define NNS_G2DI_RENDERERMTXCACHE_H_

#include <nnsys/g2d/g2d_RendererCore.h>

#include "g2d_Internal.h"
#include "g2di_RendererMtxStack.hpp"

typedef enum OAM_FLIP {
    OAM_FLIP_NONE   = 0,
    OAM_FLIP_H      = 0x01,
    OAM_FLIP_V      = 0x02,
    OAM_FLIP_HV     = 0x03,
    OAM_FLIP_MAX    = NNS_G2D_OAMFLIP_PATTERN_NUM
} OAM_FLIP;

#define OAM_FLIP_ASSERT(val)                                       \
        NNS_G2D_MINMAX_ASSERT((val), OAM_FLIP_NONE, OAM_FLIP_HV)    \

#define TO_OAM_FLIP(bFlipH, bFlipV) (OAM_FLIP)((bFlipV << 1) | (bFlipH))

#define G2Di_NUM_MTX_CACHE 32

static NNSG2dRndCore2DMtxCache mtxCacheBuffer_[G2Di_NUM_MTX_CACHE];

static u16 currentMtxCachePos_ = 0;

NNS_G2D_INLINE void NNSi_RMCInitMtxCache () {
    int i;
    for (i = 0; i < G2Di_NUM_MTX_CACHE; i++) {
        NNS_G2dInitRndCore2DMtxCache(&mtxCacheBuffer_[i]);
    }
    currentMtxCachePos_ = 0;
}

NNS_G2D_INLINE void NNSi_RMCResetMtxCache () {
    int i;

    for (i = 0; i < currentMtxCachePos_; i++) {
        NNS_G2dInitRndCore2DMtxCache(&mtxCacheBuffer_[i]);
    }
    currentMtxCachePos_ = 0;
}

NNS_G2D_INLINE NNSG2dRndCore2DMtxCache * NNSi_RMCGetMtxCacheByIdx (u16 idx) {
    NNS_G2D_MINMAX_ASSERT(idx, 0, G2Di_NUM_MTX_CACHE - 1);
    return &mtxCacheBuffer_[idx];
}

NNS_G2D_INLINE u16 NNSi_RMCUseNewMtxCache () {
    const u16 ret = currentMtxCachePos_;

    if (currentMtxCachePos_ < G2Di_NUM_MTX_CACHE - 1) {
        currentMtxCachePos_++;
    } else {
        NNS_G2D_WARNING(
            FALSE, "MtxCache is running out. G2d ignores the user request"
            ", and uses MtxCache-Idx = 31."
        );
    }

    return ret;
}

#endif
