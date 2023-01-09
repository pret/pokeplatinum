#include <nitro.h>
#include <nnsys/g2d/g2d_SRTControl.h>

#define ASSERT_SRTControlType_VALID(val) \
    NNS_G2D_MINMAX_ASSERT((val), NNS_G2D_SRTCONTROLTYPE_SRT, NNS_G2D_SRTCONTROLTYPE_MTX3D)

#define ASSERT_SRT_MODE(val) NNS_G2D_ASSERTMSG( \
        (val) == NNS_G2D_SRTCONTROLTYPE_SRT, \
        "You can use the function only if its NNSG2dSRTControlType is NNS_G2D_SRTCONTROLTYPE_SRT" \
);

void NNSi_G2dSrtcSetTrans (NNSG2dSRTControl * pCtrl, s16 x, s16 y) {
    if (pCtrl->type == NNS_G2D_SRTCONTROLTYPE_SRT) {
        NNSi_G2dSrtcAffineFlagON(pCtrl, NNS_G2D_AFFINEENABLE_TRANS);

        pCtrl->srtData.trans.x = x;
        pCtrl->srtData.trans.y = y;
    } else {
        NNS_G2D_ASSERTMSG(FALSE, "NOT implemented, avoid calling me");
    }
}

void NNSi_G2dSrtcSetSRTRotZ (NNSG2dSRTControl * pCtrl, u16 rotZ) {
    if (pCtrl->type == NNS_G2D_SRTCONTROLTYPE_SRT) {
        NNSi_G2dSrtcAffineFlagON(pCtrl, NNS_G2D_AFFINEENABLE_ROTATE);

        pCtrl->srtData.rotZ = rotZ;
    } else {
        NNS_G2D_ASSERTMSG(FALSE, "NOT implemented, avoid calling me");
    }
}

void NNSi_G2dSrtcSetSRTScale (NNSG2dSRTControl * pCtrl, fx32 x, fx32 y) {
    if (pCtrl->type == NNS_G2D_SRTCONTROLTYPE_SRT) {
        NNSi_G2dSrtcAffineFlagON(pCtrl, NNS_G2D_AFFINEENABLE_SCALE);

        pCtrl->srtData.scale.x = x;
        pCtrl->srtData.scale.y = y;
    } else {
        NNS_G2D_ASSERTMSG(FALSE, "NOT implemented, avoid calling me");
    }
}

void NNSi_G2dSrtcInitControl (NNSG2dSRTControl * pCtrl, NNSG2dSRTControlType type) {
    NNS_G2D_NULL_ASSERT(pCtrl);
    ASSERT_SRTControlType_VALID(type);

    pCtrl->type = type;

    NNSi_G2dSrtcSetInitialValue(pCtrl);
}

void NNSi_G2dSrtcSetInitialValue (NNSG2dSRTControl * pCtrl) {
    NNS_G2D_NULL_ASSERT(pCtrl);
    ASSERT_SRT_MODE(pCtrl->type);

    MI_CpuFill16(&pCtrl->srtData, 0, sizeof(NNSG2dSRTData));

    pCtrl->srtData.scale.x = FX32_ONE;
    pCtrl->srtData.scale.y = FX32_ONE;
}

void NNSi_G2dSrtcBuildMatrixFromSRT_2D (const NNSG2dSRTControl * pCtrl, MtxFx22 * pDst) {
#pragma unused( pCtrl )
#pragma unused( pDst )
    NNS_G2D_NULL_ASSERT(pCtrl);
    NNS_G2D_NULL_ASSERT(pDst);
    ASSERT_SRT_MODE(pCtrl->type);

    MTX_Identity22(pDst);

    MTX_Rot22(pDst, FX_SinIdx(pCtrl->srtData.rotZ), FX_CosIdx(pCtrl->srtData.rotZ));

    MTX_ScaleApply22(pDst, pDst, pCtrl->srtData.scale.x, pCtrl->srtData.scale.y);
}

void NNSi_G2dSrtcBuildMatrixFromSRT_3D (const NNSG2dSRTControl * pCtrl, MtxFx22 * pDst) {
#pragma unused( pCtrl )
#pragma unused( pDst )
    NNS_G2D_NULL_ASSERT(pCtrl);
    NNS_G2D_NULL_ASSERT(pDst);
    ASSERT_SRT_MODE(pCtrl->type);

    MTX_Rot22(pDst, FX_SinIdx(pCtrl->srtData.rotZ), FX_CosIdx(pCtrl->srtData.rotZ));

    MTX_ScaleApply22(pDst, pDst, pCtrl->srtData.scale.x, pCtrl->srtData.scale.y);
}
