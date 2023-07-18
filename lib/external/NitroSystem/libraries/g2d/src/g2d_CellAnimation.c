
#include <nitro.h>
#include <nnsys/g2d/g2d_CellAnimation.h>
#include <nnsys/g2d/g2d_SRTControl.h>

#include <nnsys/g2d/load/g2d_NCE_load.h>
#include <nnsys/g2d/fmt/g2d_Oam_data.h>

#include "include/g2d_Internal.h"

static void ApplyCurrentAnimResult_ (NNSG2dCellAnimation * pCellAnim) {
    const NNSG2dAnimDataSRT * pAnimResult = NULL;
    const NNSG2dCellDataBank * pCellBank = NULL;

    NNS_G2D_NULL_ASSERT(pCellAnim);
    NNS_G2D_NULL_ASSERT(pCellAnim->pCellDataBank);

    if (pCellAnim->animCtrl.pActiveCurrent->frames == 0) {
        return;
    }
    pAnimResult = (const NNSG2dAnimDataSRT *)NNS_G2dGetAnimCtrlCurrentElement(&pCellAnim->animCtrl);
    NNS_G2D_NULL_ASSERT(pAnimResult);

    pAnimResult = (const NNSG2dAnimDataSRT *)NNS_G2dGetAnimCtrlCurrentElement(&pCellAnim->animCtrl);
    pCellBank = pCellAnim->pCellDataBank;

    NNSI_G2D_DEBUGMSG0("pAnimResult->index = %d\n", pAnimResult->index);

    pCellAnim->pCurrentCell
        = NNS_G2dGetCellDataByIdx(pCellBank, pAnimResult->index);
    NNS_G2D_NULL_ASSERT(pCellAnim->pCurrentCell);

    {
        const NNSG2dAnimationElement elemType
            = NNSi_G2dGetAnimSequenceElementType(pCellAnim->animCtrl.pAnimSequence->animType);
        NNSi_G2dSrtcInitControl(&pCellAnim->srtCtrl, NNS_G2D_SRTCONTROLTYPE_SRT);

        if (elemType != NNS_G2D_ANIMELEMENT_INDEX) {
            if (elemType == NNS_G2D_ANIMELEMENT_INDEX_T) {
                const NNSG2dAnimDataT * pAnmResT = (const NNSG2dAnimDataT *)pAnimResult;
                NNSi_G2dSrtcSetTrans(&pCellAnim->srtCtrl, pAnmResT->px, pAnmResT->py);
            } else {
                NNSi_G2dSrtcSetSRTScale(&pCellAnim->srtCtrl, pAnimResult->sx, pAnimResult->sy);
                NNSi_G2dSrtcSetSRTRotZ(&pCellAnim->srtCtrl, pAnimResult->rotZ);
                NNSi_G2dSrtcSetTrans(&pCellAnim->srtCtrl, pAnimResult->px, pAnimResult->py);
            }
        }
    }

    if (NNS_G2dCellDataBankHasVramTransferData(pCellBank) &&
        NNSi_G2dIsCellAnimVramTransferHandleValid(pCellAnim)) {
        const NNSG2dCellVramTransferData * pCellTransferData
            = NNSi_G2dGetCellVramTransferData(pCellBank, pAnimResult->index);

        NNS_G2dSetCellTransferStateRequested(
            pCellAnim->cellTransferStateHandle,
            pCellTransferData->srcDataOffset,
            pCellTransferData->szByte
        );
    }
}

static NNS_G2D_INLINE void InitCellAnimationImpl_ (NNSG2dCellAnimation * pCellAnim, const NNSG2dAnimSequence * pAnimSeq, const NNSG2dCellDataBank * pCellDataBank, u32 cellTransferStateHandle) {
    NNS_G2D_NULL_ASSERT(pCellAnim);
    NNS_G2D_NULL_ASSERT(pAnimSeq);
    NNS_G2D_NULL_ASSERT(pCellDataBank);

    pCellAnim->pCellDataBank = pCellDataBank;
    pCellAnim->cellTransferStateHandle = cellTransferStateHandle;

    NNSi_G2dSrtcInitControl(&pCellAnim->srtCtrl, NNS_G2D_SRTCONTROLTYPE_SRT);

    NNS_G2dInitAnimCtrl(&pCellAnim->animCtrl);
    NNS_G2dSetCellAnimationSequence(pCellAnim, pAnimSeq);
}

void NNS_G2dInitCellAnimation (NNSG2dCellAnimation * pCellAnim, const NNSG2dAnimSequence * pAnimSeq, const NNSG2dCellDataBank * pCellDataBank) {
    NNS_G2D_NULL_ASSERT(pCellAnim);
    NNS_G2D_NULL_ASSERT(pAnimSeq);
    NNS_G2D_NULL_ASSERT(pCellDataBank);

    InitCellAnimationImpl_(
        pCellAnim,
        pAnimSeq,
        pCellDataBank,
        NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE
    );
}

void NNS_G2dInitCellAnimationVramTransfered (NNSG2dCellAnimation * pCellAnim, const NNSG2dAnimSequence * pAnimSeq, const NNSG2dCellDataBank * pCellBank, u32 vramStateHandle, u32 dstAddr3D, u32 dstAddr2DMain, u32 dstAddr2DSub, const void * pSrcNCGR, const void * pSrcNCBR, u32 szSrcData) {
    NNS_G2D_ASSERT(NNS_G2dCellDataBankHasVramTransferData(pCellBank));

    {
        const NNSG2dVramTransferData * pVramData =
            (const NNSG2dVramTransferData *)pCellBank->pVramTransferData;

        NNSi_G2dInitCellTransferState(
            vramStateHandle,
            dstAddr3D,
            dstAddr2DMain,
            dstAddr2DSub,
            pVramData->szByteMax,
            pSrcNCGR,
            pSrcNCBR,
            szSrcData
        );

        NNSi_G2dSetCellAnimVramTransferHandle(pCellAnim, vramStateHandle);
    }

    InitCellAnimationImpl_(pCellAnim, pAnimSeq, pCellBank, vramStateHandle);
}

void NNS_G2dSetCellAnimationSequence (NNSG2dCellAnimation * pCellAnim, const NNSG2dAnimSequence * pAnimSeq) {
    NNS_G2D_NULL_ASSERT(pCellAnim);
    NNS_G2D_NULL_ASSERT(pAnimSeq);
    NNS_G2D_ASSERTMSG(
        NNS_G2dGetAnimSequenceAnimType(pAnimSeq) == NNS_G2D_ANIMATIONTYPE_CELL,
        "A cell-Animation's Data is expected"
    );

    NNS_G2dBindAnimCtrl(&pCellAnim->animCtrl, pAnimSeq);
    ApplyCurrentAnimResult_(pCellAnim);
}

void NNS_G2dSetCellAnimationSequenceNoReset (NNSG2dCellAnimation * pCellAnim, const NNSG2dAnimSequence * pAnimSeq) {
    NNS_G2D_NULL_ASSERT(pCellAnim);
    NNS_G2D_NULL_ASSERT(pAnimSeq);
    NNS_G2D_ASSERTMSG(
        NNS_G2dGetAnimSequenceAnimType(pAnimSeq) == NNS_G2D_ANIMATIONTYPE_CELL,
        "A cell-Animation's Data is expected"
    );

    {
        const u16 frameIdx = NNS_G2dGetAnimCtrlCurrentFrame(&pCellAnim->animCtrl);

        pCellAnim->animCtrl.pAnimSequence = pAnimSeq;

        if (!NNS_G2dSetAnimCtrlCurrentFrameNoResetCurrentTime(&pCellAnim->animCtrl, frameIdx)) {
            NNS_G2dResetAnimationState(&pCellAnim->animCtrl);
        }
    }

    ApplyCurrentAnimResult_(pCellAnim);
}

void NNS_G2dTickCellAnimation (NNSG2dCellAnimation * pCellAnim, fx32 frames) {
    NNS_G2D_NULL_ASSERT(pCellAnim);
    NNS_G2D_NULL_ASSERT(pCellAnim->animCtrl.pAnimSequence);
    NNS_G2D_ASSERTMSG(
        NNS_G2dGetAnimSequenceAnimType(pCellAnim->animCtrl.pAnimSequence)
        == NNS_G2D_ANIMATIONTYPE_CELL, "A cell-Animation's Data is expected"
    );

    if (NNS_G2dTickAnimCtrl(&pCellAnim->animCtrl, frames)) {
        ApplyCurrentAnimResult_(pCellAnim);
    }
}

void NNS_G2dSetCellAnimationCurrentFrame (NNSG2dCellAnimation * pCellAnim, u16 frameIndex) {
    NNS_G2D_NULL_ASSERT(pCellAnim);
    NNS_G2D_NULL_ASSERT(pCellAnim->animCtrl.pAnimSequence);

    if (NNS_G2dSetAnimCtrlCurrentFrame(&pCellAnim->animCtrl, frameIndex)) {
        ApplyCurrentAnimResult_(pCellAnim);
    }
}

void NNS_G2dRestartCellAnimation (NNSG2dCellAnimation * pCellAnim) {
    NNSG2dAnimController * pAnmCtrl = NULL;
    NNS_G2D_NULL_ASSERT(pCellAnim);

    pAnmCtrl = NNS_G2dGetCellAnimationAnimCtrl(pCellAnim);
    NNS_G2dResetAnimCtrlState(pAnmCtrl);

    NNS_G2dStartAnimCtrl(pAnmCtrl);

    ApplyCurrentAnimResult_(pCellAnim);
}

void NNS_G2dSetCellAnimationSpeed (NNSG2dCellAnimation * pCellAnim, fx32 speed) {
    NNS_G2D_NULL_ASSERT(pCellAnim);
    NNS_G2D_NULL_ASSERT(pCellAnim->animCtrl.pAnimSequence);

    NNS_G2dSetAnimCtrlSpeed(&pCellAnim->animCtrl, speed);
}

u16 NNS_G2dMakeCellToOams (GXOamAttr * pDstOams, u16 numDstOam, const NNSG2dCellData * pCell, const MtxFx22 * pMtxSR, const NNSG2dFVec2 * pBaseTrans, u16 affineIndex, BOOL bDoubleAffine) {
    u16 i = 0;
    NNSG2dFVec2 objTrans;
    GXOamAttr * pDstOam = NULL;
    const u16 numOBJ
        = (numDstOam < pCell->numOAMAttrs) ? numDstOam : pCell->numOAMAttrs;

    for ( i = 0; i < numOBJ; i++ ) {
        pDstOam = &pDstOams[i];

        NNS_G2dCopyCellAsOamAttr(pCell, i, pDstOam);

        if (pMtxSR != NULL || pBaseTrans != NULL) {
            NNS_G2dGetOamTransFx32(pDstOam, &objTrans);

            if (pMtxSR != NULL) {
                NNSi_G2dRemovePositionAdjustmentFromDoubleAffineOBJ(
                    pDstOam,
                    &objTrans
                );
                {
                    const GXOamEffect effectTypeAfter = (bDoubleAffine) ?
                                                        GX_OAM_EFFECT_AFFINE_DOUBLE : GX_OAM_EFFECT_AFFINE;
                    const BOOL bShouldAdjust = (effectTypeAfter == GX_OAM_EFFECT_AFFINE_DOUBLE);

                    MulMtx22(pMtxSR, &objTrans, &objTrans);

                    G2_SetOBJEffect(pDstOam, effectTypeAfter, affineIndex);

                    NNSi_G2dAdjustDifferenceOfRotateOrientation(
                        pDstOam,
                        pMtxSR,
                        &objTrans,
                        bShouldAdjust
                    );
                }
            }

            if (pBaseTrans != NULL) {
                objTrans.x += pBaseTrans->x;
                objTrans.y += pBaseTrans->y;
            }

            G2_SetOBJPosition(
                pDstOam,
                (objTrans.x + 0x800) >> FX32_SHIFT,
                (objTrans.y + 0x800) >> FX32_SHIFT
            );
        }
    }
    return numOBJ;
}
