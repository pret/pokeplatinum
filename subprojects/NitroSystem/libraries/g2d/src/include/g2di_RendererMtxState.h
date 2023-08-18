#ifndef NNS_G2DI_RENDERERMTXSTATE_H_
#define NNS_G2DI_RENDERERMTXSTATE_H_

#include <nnsys/g2d/g2d_Renderer.h>

#include "g2d_Internal.h"
#include "g2di_RendererMtxStack.hpp"
#include "g2di_RendererMtxCache.h"

typedef enum MCMRndMtxStateType {
    MCM_MTX_NOT_SR = 0,
    MCM_MTX_SR_NOT_CACHELOADED,
    MCM_MTX_SR_NOT_CACHELOADED_STACKCHANGED,
    MCM_MTX_SR_CACHELOADED
} MCMRndMtxStateType;

typedef struct MCMMtxState {
    u16 mtxCacheIdx;
    u16 groupID;
    u16 stateType;
    u16 pad16;
} MCMMtxState;

NNS_G2D_INLINE u16 GetMtxStateMtxCacheIdx_ (const MCMMtxState * pMtxState) {
    return pMtxState->mtxCacheIdx;
}

NNS_G2D_INLINE void SetMtxStateMtxCacheIdx_ (MCMMtxState * pMtxState, u16 cacheIdx) {
    pMtxState->mtxCacheIdx = cacheIdx;
}

NNS_G2D_INLINE u16 GetMtxStateGroupID_ (const MCMMtxState * pMtxState) {
    return pMtxState->groupID;
}

NNS_G2D_INLINE void SetMtxStateGroupID_ (MCMMtxState * pMtxState, u16 groupID) {
    pMtxState->groupID = groupID;
}

static MCMMtxState mtxStateStack_[G2Di_NUM_MTX_CACHE];
static u16 groupID_ = 0;

NNS_G2D_INLINE MCMMtxState * GetCuurentMtxState_ () {
    return &mtxStateStack_[NNSi_G2dGetMtxStackPos()];
}

NNS_G2D_INLINE void SetParentMtxStateLoaded_ (u16 mtxCacheIdx, u16 groupID) {
    int i;
    const u16 currntStackPos = NNSi_G2dGetMtxStackPos();

    for (i = currntStackPos; i >= 0; i--) {
        if (GetMtxStateGroupID_(&mtxStateStack_[i]) != groupID) {
            break;
        } else {
            mtxStateStack_[i].stateType = MCM_MTX_SR_CACHELOADED;
            SetMtxStateMtxCacheIdx_(&mtxStateStack_[i], mtxCacheIdx);
        }

        NNSI_G2D_DEBUGMSG1(
            "Set Loaded => mtxStateStack_[%d].mtxCacheIdx = %d\n",
            i,
            GetMtxStateMtxCacheIdx_(&mtxStateStack_[i])
        );
    }
}

NNS_G2D_INLINE u16 GetNewGroupID_ () {
    return groupID_++;
}

NNS_G2D_INLINE void InitGroupID_ () {
    groupID_ = 0;
}

NNS_G2D_INLINE void NNSi_G2dMCMInitMtxCache () {
    NNSi_G2dInitRndMtxStack();
    NNSi_RMCInitMtxCache();

    InitGroupID_();

    MI_CpuClearFast(mtxStateStack_, sizeof(mtxStateStack_));
}

NNS_G2D_INLINE NNSG2dRndCore2DMtxCache * NNSi_G2dMCMGetCurrentMtxCache () {
    return NNSi_RMCGetMtxCacheByIdx(GetMtxStateMtxCacheIdx_(GetCuurentMtxState_()));
}

NNS_G2D_INLINE void NNSi_G2dMCMCleanupMtxCache () {
    NNSi_G2dInitRndMtxStack();

    NNSi_RMCResetMtxCache();

    InitGroupID_();

    MI_CpuClearFast(mtxStateStack_, sizeof(mtxStateStack_));
}

NNS_G2D_INLINE BOOL NNSi_G2dMCMShouldCurrentMtxBeLoadedToMtxCache ( ) {
    MCMMtxState * pCurrMtxState = GetCuurentMtxState_();

    return (BOOL)(pCurrMtxState->stateType == MCM_MTX_SR_NOT_CACHELOADED ||
                  pCurrMtxState->stateType == MCM_MTX_SR_NOT_CACHELOADED_STACKCHANGED);
}

NNS_G2D_INLINE void NNSi_G2dMCMSetCurrentMtxSRChanged () {
    MCMMtxState * pCurrMtxState = GetCuurentMtxState_();

    switch (pCurrMtxState->stateType) {
    case MCM_MTX_SR_NOT_CACHELOADED:

        return;
    case MCM_MTX_NOT_SR:
    case MCM_MTX_SR_NOT_CACHELOADED_STACKCHANGED:
    case MCM_MTX_SR_CACHELOADED:

    {
        SetMtxStateGroupID_(pCurrMtxState, GetNewGroupID_());

        pCurrMtxState->stateType = MCM_MTX_SR_NOT_CACHELOADED;

        NNSI_G2D_DEBUGMSG1(
            "currentMtxCachePos change to %d at %d\n",
            pCurrMtxState->mtxCacheIdx,
            NNSi_G2dGetMtxStackPos()
        );
    }
    break;
    }
}

NNS_G2D_INLINE void NNSi_G2dMCMSetMtxStackPushed (u16 newPos, u16 lastPos) {
    mtxStateStack_[newPos] = mtxStateStack_[lastPos];

    if (mtxStateStack_[lastPos].stateType == MCM_MTX_SR_NOT_CACHELOADED) {
        mtxStateStack_[newPos].stateType = MCM_MTX_SR_NOT_CACHELOADED_STACKCHANGED;
    } else {
        mtxStateStack_[newPos].stateType = mtxStateStack_[lastPos].stateType;
    }
}

static void NNSi_G2dMCMStoreCurrentMtxToMtxCache ( ) {
    if (NNSi_G2dMCMShouldCurrentMtxBeLoadedToMtxCache()) {
        MCMMtxState * pCurrentState = GetCuurentMtxState_();
        const u16 mtxCacheIdx = NNSi_RMCUseNewMtxCache();
        const u16 groupID = GetMtxStateGroupID_(pCurrentState);

        NNS_G2D_MINMAX_ASSERT(mtxCacheIdx, 0, G2Di_NUM_MTX_CACHE - 1);

        SetMtxStateMtxCacheIdx_(pCurrentState, mtxCacheIdx);

        {
            NNS_G2dInitRndCore2DMtxCache(NNSi_RMCGetMtxCacheByIdx(mtxCacheIdx));

            NNSi_G2dGetMtxRS(
                NNSi_G2dGetCurrentMtxFor2DHW(),
                &NNSi_G2dMCMGetCurrentMtxCache()->m22
            );

            NNSI_G2D_DEBUGMSG1(
                "Mtx No %d is cache loaded To %d = %d\n",
                mtxStateStackPos_,
                pCurrMtxState->mtxCacheIdx
            );
        }

        SetParentMtxStateLoaded_(mtxCacheIdx, groupID);
    }
}

#endif
