#ifndef NNS_G2D_SRTCONTROL_H_
#define NNS_G2D_SRTCONTROL_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/fmt/g2d_SRTControl_data.h>

#ifdef __cplusplus
extern "C" {
#endif

void NNSi_G2dSrtcSetTrans(NNSG2dSRTControl * pCtrl, s16 x, s16 y);
void NNSi_G2dSrtcSetSRTRotZ(NNSG2dSRTControl * pCtrl, u16 rotZ);
void NNSi_G2dSrtcSetSRTScale(NNSG2dSRTControl * pCtrl, fx32 x, fx32 y);

void NNSi_G2dSrtcSetMatrix2D(NNSG2dSRTControl * pCtrl, fx32 x, fx32 y);
void NNSi_G2dSrtcSetMatrix3D(NNSG2dSRTControl * pCtrl, fx32 x, fx32 y);

void NNSi_G2dSrtcInitControl(NNSG2dSRTControl * pCtrl, NNSG2dSRTControlType type);
void NNSi_G2dSrtcSetInitialValue(NNSG2dSRTControl * pCtrl);
void NNSi_G2dSrtcBuildMatrixFromSRT_2D(const NNSG2dSRTControl * pCtrl, MtxFx22 * pDst);
void NNSi_G2dSrtcBuildMatrixFromSRT_3D(const NNSG2dSRTControl * pCtrl, MtxFx22 * pDst);

NNS_G2D_INLINE void NNSi_G2dSrtcResetAffineFlag (NNSG2dSRTControl * pSRT)
{
    NNS_G2D_NULL_ASSERT(pSRT);
    NNS_G2D_ASSERT(pSRT->type == NNS_G2D_SRTCONTROLTYPE_SRT);
    pSRT->srtData.SRT_EnableFlag = 0x0000;
}

NNS_G2D_INLINE void NNSi_G2dSrtcAffineFlagON (NNSG2dSRTControl * pSRT, u16 newFlag)
{
    NNS_G2D_NULL_ASSERT(pSRT);
    NNS_G2D_ASSERT(pSRT->type == NNS_G2D_SRTCONTROLTYPE_SRT);
    pSRT->srtData.SRT_EnableFlag |= (u16)newFlag;
}

NNS_G2D_INLINE void NNSi_G2dSrtcAffineFlagOFF (NNSG2dSRTControl * pSRT, u16 newFlag)
{
    NNS_G2D_NULL_ASSERT(pSRT);
    NNS_G2D_ASSERT(pSRT->type == NNS_G2D_SRTCONTROLTYPE_SRT);
    pSRT->srtData.SRT_EnableFlag &= ~(u16)newFlag;
}

NNS_G2D_INLINE BOOL NNSi_G2dSrtcIsAffineEnable (const NNSG2dSRTControl * pSRT, NNSG2dAffineEnable flag)
{
    NNS_G2D_NULL_ASSERT(pSRT);
    NNS_G2D_ASSERT(pSRT->type == NNS_G2D_SRTCONTROLTYPE_SRT);
    return (pSRT->srtData.SRT_EnableFlag & (u16)flag) ? TRUE : FALSE;
}

NNS_G2D_INLINE BOOL NNSi_G2dSrtcIsAffineEnable_SR (const NNSG2dSRTControl * pSRT)
{
    NNS_G2D_NULL_ASSERT(pSRT);
    NNS_G2D_ASSERT(pSRT->type == NNS_G2D_SRTCONTROLTYPE_SRT);

    return (NNSi_G2dSrtcIsAffineEnable(pSRT, NNS_G2D_AFFINEENABLE_SCALE) ||
            NNSi_G2dSrtcIsAffineEnable(pSRT, NNS_G2D_AFFINEENABLE_ROTATE)) ? TRUE : FALSE;
}

#ifdef __cplusplus
}
#endif

#endif
