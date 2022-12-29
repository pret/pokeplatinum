#ifndef NNS_G2D_CELLANIMATION_H_
#define NNS_G2D_CELLANIMATION_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/fmt/g2d_SRTControl_data.h>
#include <nnsys/g2d/g2d_Animation.h>
#include <nnsys/g2d/fmt/g2d_Cell_data.h>

#include <nnsys/g2d/g2d_CellTransferManager.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2dSetCellAnimSpeed NNS_G2dSetCellAnimationSpeed
#define NNS_G2dGetCellAnimAnimCtrl NNS_G2dGetCellAnimationAnimCtrl
#define NNS_G2dInitializeCellAnimation NNS_G2dInitCellAnimation
#define NNS_G2dInitializeCellAnimationVramTransfered NNS_G2dInitCellAnimationVramTransfered

typedef NNSG2dAnimSequence NNSG2dCellAnimSequence;
typedef NNSG2dAnimBankData NNSG2dCellAnimBankData;

typedef struct NNSG2dCellAnimation {
    NNSG2dAnimController animCtrl;
    const NNSG2dCellData * pCurrentCell;
    const NNSG2dCellDataBank * pCellDataBank;

    u32 cellTransferStateHandle;

    NNSG2dSRTControl srtCtrl;
} NNSG2dCellAnimation;

void NNS_G2dInitCellAnimation(NNSG2dCellAnimation * pCellAnim, const NNSG2dAnimSequence * pAnimSeq, const NNSG2dCellDataBank * pCellDataBank);
void NNS_G2dInitCellAnimationVramTransfered
(
    NNSG2dCellAnimation * pCellAnim,
    const NNSG2dAnimSequence * pAnimSeq,
    const NNSG2dCellDataBank * pCellBank,
    u32 vramSettingHandle,
    u32 dstAddr3D,
    u32 dstAddr2DMain,
    u32 dstAddr2DSub,
    const void * pSrcNCGR,
    const void * pSrcNCBR,
    u32 szSrcData
);

void NNS_G2dSetCellAnimationSequence(NNSG2dCellAnimation * pCellAnim, const NNSG2dAnimSequence * pAnimSeq);
void NNS_G2dSetCellAnimationSequenceNoReset(NNSG2dCellAnimation * pCellAnim, const NNSG2dAnimSequence * pAnimSeq);

void NNS_G2dTickCellAnimation(NNSG2dCellAnimation * pCellAnim, fx32 frames);
void NNS_G2dSetCellAnimationCurrentFrame(NNSG2dCellAnimation * pCellAnim, u16 frameIndex);
void NNS_G2dRestartCellAnimation
(
    NNSG2dCellAnimation * pCellAnim
);

void NNS_G2dSetCellAnimationSpeed
(
    NNSG2dCellAnimation * pCellAnim,
    fx32 speed
);

u16 NNS_G2dMakeCellToOams
(
    GXOamAttr * pDstOams,
    u16 numDstOam,
    const NNSG2dCellData * pCell,
    const MtxFx22 * pMtxSR,
    const NNSG2dFVec2 * pBaseTrans,
    u16 affineIndex,
    BOOL bDoubleAffine
);

NNS_G2D_INLINE NNSG2dAnimController * NNS_G2dGetCellAnimationAnimCtrl
(
    NNSG2dCellAnimation * pCellAnim
)
{
    NNS_G2D_NULL_ASSERT(pCellAnim);
    return &pCellAnim->animCtrl;
}

NNS_G2D_INLINE const NNSG2dCellData * NNS_G2dGetCellAnimationCurrentCell
(
    const NNSG2dCellAnimation * pCellAnim
)
{
    NNS_G2D_NULL_ASSERT(pCellAnim);
    return pCellAnim->pCurrentCell;
}

NNS_G2D_INLINE BOOL NNSi_G2dIsCellAnimVramTransferHandleValid (const NNSG2dCellAnimation * pCellAnim)
{
    return (BOOL)(pCellAnim->cellTransferStateHandle
                  != NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE);
}

NNS_G2D_INLINE BOOL NNSi_G2dIsVramTransferCellAnim (const NNSG2dCellAnimation * pCellAnim)
{
    return NNSi_G2dIsCellAnimVramTransferHandleValid(pCellAnim);
}

NNS_G2D_INLINE void NNSi_G2dSetCellAnimVramTransferHandle (NNSG2dCellAnimation * pCellAnim, u32 handle)
{
    NNS_G2D_NULL_ASSERT(pCellAnim);
    NNS_G2D_ASSERT(handle != NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE);

    pCellAnim->cellTransferStateHandle = handle;
}

NNS_G2D_INLINE u32 NNSi_G2dGetCellAnimVramTransferHandle (const NNSG2dCellAnimation * pCellAnim)
{
    NNS_G2D_NULL_ASSERT(pCellAnim);
    return pCellAnim->cellTransferStateHandle;
}

#ifdef __cplusplus
}
#endif

#endif
