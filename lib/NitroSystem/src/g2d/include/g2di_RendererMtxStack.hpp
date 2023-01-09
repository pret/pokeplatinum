#ifndef NNS_G2DI_RENDERERMTXSTACK_HPP_
#define NNS_G2DI_RENDERERMTXSTACK_HPP_

#include <nitro.h>
#include <nnsys/g2d/fmt/g2d_Vec_data.h>

#include "g2di_Mtx32.h"

#define NNS_G2D_MAXLENGTH_OF_2DMTXSTACK 32
#define G2Di_RENDERER_MTX_SR_NONE NNS_G2D_OAM_AFFINE_IDX_NONE

static MtxFx32 mtxStack_[NNS_G2D_MAXLENGTH_OF_2DMTXSTACK];
static MtxFx32 mtxStackFor2DHW_[NNS_G2D_MAXLENGTH_OF_2DMTXSTACK];
static fx32 fxZStack_[NNS_G2D_MAXLENGTH_OF_2DMTXSTACK];
static s32 stackPos_ = 0;

static u16 firstSRTransformedMtxIdx_ = G2Di_RENDERER_MTX_SR_NONE;

static BOOL bDonotUseSRTransform = FALSE;
static MtxFx32 mtxI_ = {FX32_ONE, 0, 0, FX32_ONE, 0, 0};

static void NNSi_G2dInitRndMtxStack();
static BOOL NNSi_G2dIsStackEmpty();
static BOOL NNSi_G2dStackHasEnoughCapacity();

static void NNSi_G2dMtxPush();
static void NNSi_G2dMtxPop();
static void NNSi_G2dTranslate(fx32 x, fx32 y, fx32 z);
static void NNSi_G2dSetTrans(fx32 x, fx32 y, fx32 z);
static void NNSi_G2dRotate(fx32 sin, fx32 cos);
static void NNSi_G2dScale(fx32 sx, fx32 sy);
static void NNSi_G2dIdentity( );

static const MtxFx32 * NNSi_G2dGetCurrentMtx();
static u16 NNSi_G2dGetMtxStackPos();

static void NNSi_G2dSetRndMtxStackSRTransformed();
static BOOL NNSi_G2dIsRndCurrentMtxSRTransformed();

static void RestoreRndMtxStackStateNotSR_();
static void CheckIfRndCurrentMtxIsSRTransformed_();

NNS_G2D_INLINE void RestoreRndMtxStackStateNotSR_ () {
    firstSRTransformedMtxIdx_ = G2Di_RENDERER_MTX_SR_NONE;
}

NNS_G2D_INLINE void NNSi_G2dInitRndMtxStack ( ) {
    stackPos_ = 0;
    RestoreRndMtxStackStateNotSR_();
}

NNS_G2D_INLINE void NNSi_G2dSetRndMtxStackSRTransformEnableFlag (BOOL bEnable) {
    bDonotUseSRTransform = !bEnable;
}

NNS_G2D_INLINE void NNSi_G2dSetRndMtxStackSRTransformed () {
    NNS_G2D_ASSERTMSG(
        firstSRTransformedMtxIdx_ == G2Di_RENDERER_MTX_SR_NONE,
        "firstSRTransformedMtxIdx_ must be set only in the first time of using SR transform."
    );

    NNSI_G2D_DEBUGMSG1(
        "Affine SR == ON : in stack_position %d \n",
        NNSi_G2dGetMtxStackPos()
    );

    firstSRTransformedMtxIdx_ = NNSi_G2dGetMtxStackPos();
}

NNS_G2D_INLINE BOOL NNSi_G2dIsRndCurrentMtxSRTransformed () {
    return (BOOL)(!bDonotUseSRTransform &&
                  firstSRTransformedMtxIdx_ != G2Di_RENDERER_MTX_SR_NONE);
}

NNS_G2D_INLINE void CheckIfRndCurrentMtxIsSRTransformed_ () {
    if (NNSi_G2dIsRndCurrentMtxSRTransformed()) {
        const u16 currentIdx = NNSi_G2dGetMtxStackPos();
        {
            if (firstSRTransformedMtxIdx_ > currentIdx) {
                NNSI_G2D_DEBUGMSG1(
                    "Affine SR == OFF : in stack_position %d \n",
                    currentIdx
                );

                RestoreRndMtxStackStateNotSR_();
            }
        }
    }
}

NNS_G2D_INLINE BOOL NNSi_G2dIsStackEmpty () {
    return (BOOL)(stackPos_ <= 0);
}

NNS_G2D_INLINE BOOL NNSi_G2dStackHasEnoughCapacity () {
    return (BOOL)(stackPos_ + 1 < NNS_G2D_MAXLENGTH_OF_2DMTXSTACK);
}

NNS_G2D_INLINE void NNSi_G2dMtxPush () {
    if (NNSi_G2dStackHasEnoughCapacity()) {
        const int nextPos_ = stackPos_ + 1;

        if (bDonotUseSRTransform) {
            mtxStack_[nextPos_]._20 = mtxStack_[stackPos_]._20;
            mtxStack_[nextPos_]._21 = mtxStack_[stackPos_]._21;
            fxZStack_[nextPos_] = fxZStack_[stackPos_];
        } else {
            mtxStack_[nextPos_] = mtxStack_[stackPos_];
            mtxStackFor2DHW_[nextPos_] = mtxStackFor2DHW_[stackPos_];
            fxZStack_[nextPos_] = fxZStack_[stackPos_];
        }
        stackPos_ = nextPos_;
    } else {
        OS_Warning("The mtxStack overflow in G2D library.");
    }
}

NNS_G2D_INLINE void NNSi_G2dMtxPop () {
    if (!NNSi_G2dIsStackEmpty()) {
        stackPos_--;

        {
            if (firstSRTransformedMtxIdx_ > stackPos_) {
                NNSI_G2D_DEBUGMSG1(
                    "Affine SR == OFF : in stack_position %d \n",
                    stackPos_
                );

                RestoreRndMtxStackStateNotSR_();
            }
        }
    } else {
        OS_Warning("The mtxStack is empty, so we can't pop it any more");
    }
}

NNS_G2D_INLINE void NNSi_G2dTranslate (fx32 x, fx32 y, fx32 z) {
    if (bDonotUseSRTransform) {
        mtxStack_[stackPos_]._20 += x;
        mtxStack_[stackPos_]._21 += y;
        fxZStack_[stackPos_] += z;
    } else {
        MtxFx32 temp;

        NNSi_G2dSetTranslate(&temp, x, y);
        NNSi_G2dMtxConcat32(&temp, &mtxStack_[stackPos_], &mtxStack_[stackPos_]);
        NNSi_G2dMtxConcat32(&temp, &mtxStackFor2DHW_[stackPos_], &mtxStackFor2DHW_[stackPos_]);

        fxZStack_[stackPos_] += z;
    }
}

NNS_G2D_INLINE void NNSi_G2dSetTrans (fx32 x, fx32 y, fx32 z) {
    mtxStack_[stackPos_]._20 = x;
    mtxStack_[stackPos_]._21 = y;
    if (!bDonotUseSRTransform) {
        mtxStackFor2DHW_[stackPos_]._20 = x;
        mtxStackFor2DHW_[stackPos_]._21 = y;
    }

    fxZStack_[stackPos_] = z;
}

NNS_G2D_INLINE void NNSi_G2dRotate (fx32 sin, fx32 cos) {
    NNS_G2D_ASSERTMSG(
        !bDonotUseSRTransform,
        "Renderer module is the -- DonotUseSRTransform -- Mode.You can't use SR Transfomation."
    );

    {
        MtxFx32 temp;
        NNSi_G2dSetRotate(&temp, sin, cos);

        NNSi_G2dMtxConcat32(&temp, &mtxStack_[stackPos_], &mtxStack_[stackPos_]);
        NNSi_G2dMtxConcat32(&temp, &mtxStackFor2DHW_[stackPos_], &mtxStackFor2DHW_[stackPos_]);
    }
}

NNS_G2D_INLINE void NNSi_G2dScale (fx32 sx, fx32 sy) {
    NNS_G2D_ASSERTMSG(
        !bDonotUseSRTransform,
        "Renderer module is the -- DonotUseSRTransform -- Mode.You can't use SR Transfomation."
    );

    {
        MtxFx32 temp;
        NNSi_G2dSetScale(&temp, sx, sy);
        NNSi_G2dMtxConcat32(&temp, &mtxStack_[stackPos_], &mtxStack_[stackPos_]);
        NNSi_G2dSetScaleFor2DHW(&temp, sx, sy);
        NNSi_G2dMtxConcat32(&temp, &mtxStackFor2DHW_[stackPos_], &mtxStackFor2DHW_[stackPos_]);
    }
}

static void NNSi_G2dIdentity ( ) {
    if (bDonotUseSRTransform) {
        mtxStack_[stackPos_]._20 = 0;
        mtxStack_[stackPos_]._21 = 0;
    } else {
        MtxFx32 * pMtxCurr = &mtxStack_[stackPos_];

        pMtxCurr->_00 = FX32_ONE;
        pMtxCurr->_01 = 0;
        pMtxCurr->_10 = 0;
        pMtxCurr->_11 = FX32_ONE;
        pMtxCurr->_20 = 0;
        pMtxCurr->_21 = 0;

        mtxStackFor2DHW_[stackPos_] = *pMtxCurr;
    }

    fxZStack_[stackPos_] = 0;
}

NNS_G2D_INLINE const MtxFx32 * NNSi_G2dGetCurrentMtx () {
    if (bDonotUseSRTransform) {
        mtxI_._20 = mtxStack_[stackPos_]._20;
        mtxI_._21 = mtxStack_[stackPos_]._21;

        return &mtxI_;
    } else {
        return &mtxStack_[stackPos_];
    }
}

NNS_G2D_INLINE const MtxFx32 * NNSi_G2dGetCurrentMtxFor2DHW () {
    if (bDonotUseSRTransform) {
        mtxI_._20 = mtxStack_[stackPos_]._20;
        mtxI_._21 = mtxStack_[stackPos_]._21;

        return &mtxI_;
    } else {
        return &mtxStackFor2DHW_[stackPos_];
    }
}

NNS_G2D_INLINE fx32 NNSi_G2dGetCurrentZ () {
    return fxZStack_[stackPos_];
}

NNS_G2D_INLINE u16 NNSi_G2dGetMtxStackPos ( ) {
    return (u16)(stackPos_);
}

#endif
