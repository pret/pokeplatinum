#include <nnsys/g2d/g2d_Renderer.h>

#include "include/g2d_Internal.h"
#include "include/g2di_RendererMtxStack.hpp"
#include "include/g2di_RendererMtxState.h"

#include <nnsys/g2d/fmt/g2d_Oam_data.h>
#include <nnsys/g2d/g2d_OamSoftwareSpriteDraw.h>
#include <nnsys/g2d/g2d_SRTControl.h>

#define NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pRnd) \
    NNS_G2D_ASSERTMSG((pRnd) != NULL, "Please call this method between Begin - End Rendering") \


static NNSG2dRendererInstance * pCurrentInstance_ = NULL;

static u32 currenVramTransferHandle_ = NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE;

typedef struct MCRenderState {
    u16 currentCellAnimIdx;
    u16 pad16_;
    NNSG2dRndCore2DMtxCache * cellAnimMtxCacheTbl[256];
    BOOL bDrawMC;
} MCRenderState;

static MCRenderState mcRenderState_;

static BOOL IsNotCircularLinked_ (const NNSG2dRenderSurface * pList, const NNSG2dRenderSurface * pNew) {
    const NNSG2dRenderSurface * pCursor = pList;

    while (pCursor != NULL) {
        if (pCursor == pNew) {
            return FALSE;
        }
        pCursor = (const NNSG2dRenderSurface *)pCursor->pNextSurface;
    }

    return TRUE;
}

static NNS_G2D_INLINE void OBJPaletteChangeHandling_ (GXOamAttr * pOam) {
    const NNSG2dPaletteSwapTable * pTbl
        = NNS_G2dGetRendererPaletteTbl(pCurrentInstance_);

    NNS_G2D_NULL_ASSERT(pOam);

    if (pTbl != NULL) {
        const u16 newIdx
            = NNS_G2dGetPaletteTableValue(pTbl, NNSi_G2dGetOamColorParam(pOam));
        pOam->cParam = newIdx;
    }
}

static NNS_G2D_INLINE void FlipTranslate_ (int x, int y) {
    const int x_ = NNS_G2dIsRndCoreFlipH(&pCurrentInstance_->rendererCore) ? -x : x;
    const int y_ = NNS_G2dIsRndCoreFlipV(&pCurrentInstance_->rendererCore) ? -y : y;

    NNS_G2dTranslate(x_ << FX32_SHIFT, y_ << FX32_SHIFT, 0);
}

static NNS_G2D_INLINE void SetSrtControlToMtxStack_ (const NNSG2dSRTControl * pSrtCtrl) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pSrtCtrl);
    NNS_G2D_ASSERTMSG(pSrtCtrl->type == NNS_G2D_SRTCONTROLTYPE_SRT, "TODO: show msg ");

    if (NNSi_G2dSrtcIsAffineEnable(pSrtCtrl, NNS_G2D_AFFINEENABLE_TRANS)) {
        FlipTranslate_(pSrtCtrl->srtData.trans.x, pSrtCtrl->srtData.trans.y);
    }

    if (NNSi_G2dSrtcIsAffineEnable(pSrtCtrl, NNS_G2D_AFFINEENABLE_ROTATE)) {
        NNS_G2dRotZ(FX_SinIdx(pSrtCtrl->srtData.rotZ), FX_CosIdx(pSrtCtrl->srtData.rotZ));
    }

    if (NNSi_G2dSrtcIsAffineEnable(pSrtCtrl, NNS_G2D_AFFINEENABLE_SCALE)) {
        NNS_G2dScale(pSrtCtrl->srtData.scale.x, pSrtCtrl->srtData.scale.y, FX32_ONE);
    }
}

static NNS_G2D_INLINE void BeginDrawVramTransferedCell_ (u32 cellVramTransferHandle) {
    NNS_G2D_ASSERT(currenVramTransferHandle_ == NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE);
    NNS_G2D_ASSERT(cellVramTransferHandle != NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE);

    currenVramTransferHandle_ = cellVramTransferHandle;
}

static NNS_G2D_INLINE void EndDrawVramTransferedCell_ ( ) {
    NNS_G2D_ASSERT(currenVramTransferHandle_ != NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE);
    currenVramTransferHandle_ = NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE;
}

static NNS_G2D_INLINE BOOL IsRendererDrawingVramTransferedCell_ ( ) {
    return (BOOL)(currenVramTransferHandle_ != NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE);
}

static NNS_G2D_INLINE u32 GetCurrentVramTransfereHandle_ () {
    return currenVramTransferHandle_;
}

static void RndCoreCBFuncBeforeCell_ (struct NNSG2dRndCoreInstance * pRend, const NNSG2dCellData * pCell) {
    NNS_G2D_NULL_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pCurrentInstance_->pCurrentSurface);
    {
        NNSG2dRenderSurface * pCurrentSurface = pCurrentInstance_->pCurrentSurface;

        if (pCurrentSurface->pFuncVisibilityCulling != NULL) {
            if (!(*pCurrentSurface->pFuncVisibilityCulling)(
                    pCell,
                    NNSi_G2dGetCurrentMtx(),
                    &pCurrentSurface->coreSurface.viewRect
                )) {
                pRend->bDrawEnable = FALSE;
                return;
            } else {
                pRend->bDrawEnable = TRUE;
            }
        }

        if (*pCurrentSurface->pBeforeDrawCellBackFunc) {
            (*pCurrentSurface->pBeforeDrawCellBackFunc)(
                pCurrentInstance_,
                pCurrentSurface,
                pCell,
                NNSi_G2dGetCurrentMtx()
            );
        }
    }
}

static void RndCoreCBFuncAfterCell_ (struct NNSG2dRndCoreInstance * pRend, const NNSG2dCellData * pCell) {
#pragma unused( pRend )
    NNS_G2D_NULL_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pCurrentInstance_->pCurrentSurface);
    {
        NNSG2dRenderSurface * pCurrentSurface = pCurrentInstance_->pCurrentSurface;

        if (*pCurrentSurface->pAfterDrawCellBackFunc) {
            (*pCurrentSurface->pAfterDrawCellBackFunc)(
                pCurrentInstance_,
                pCurrentSurface,
                pCell,
                NNSi_G2dGetCurrentMtx()
            );
        }
    }
}

static void RndCoreCBFuncBeforeOBJ_ (struct NNSG2dRndCoreInstance * pRend, const NNSG2dCellData * pCell, u16 oamIdx) {
    GXOamAttr * pTempOam = &pRend->currentOam;

    NNS_G2D_NULL_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pCurrentInstance_->pCurrentSurface);

    OBJPaletteChangeHandling_(pTempOam);

    if (pCurrentInstance_->overwriteEnableFlag != NNS_G2D_RND_OVERWRITE_NONE) {
        if (NNS_G2dIsRendererOverwriteEnable(pCurrentInstance_, NNS_G2D_RND_OVERWRITE_PRIORITY)) {
            pTempOam->priority = pCurrentInstance_->overwritePriority;
        }

        if (NNS_G2dIsRendererOverwriteEnable(pCurrentInstance_, NNS_G2D_RND_OVERWRITE_PLTTNO)) {
            pTempOam->cParam = pCurrentInstance_->overwritePlttNo;
        }

        if (NNS_G2dIsRendererOverwriteEnable(pCurrentInstance_, NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS)) {
            pTempOam->cParam = 0xF & (pTempOam->cParam + pCurrentInstance_->overwritePlttNoOffset);
        }

        if (NNS_G2dIsRendererOverwriteEnable(pCurrentInstance_, NNS_G2D_RND_OVERWRITE_MOSAIC)) {
            G2_OBJMosaic(pTempOam, pCurrentInstance_->overwriteMosaicFlag);
        }

        if (NNS_G2dIsRendererOverwriteEnable(pCurrentInstance_, NNS_G2D_RND_OVERWRITE_OBJMODE)) {
            G2_SetOBJMode(pTempOam, pCurrentInstance_->overwriteObjMode, G2_GetOBJColorParam(pTempOam));
        }
    }

    {
        NNSG2dRenderSurface * pCurrentSurface = pCurrentInstance_->pCurrentSurface;
        if (*pCurrentSurface->pBeforeDrawOamBackFunc) {
            (*pCurrentSurface->pBeforeDrawOamBackFunc)(
                pCurrentInstance_,
                pCurrentSurface,
                pCell,
                oamIdx,
                NNSi_G2dGetCurrentMtx()
            );
        }
    }
}

static void RndCoreCBFuncAfterOBJ_ (struct NNSG2dRndCoreInstance * pRend, const NNSG2dCellData * pCell, u16 oamIdx) {
#pragma unused( pRend )
    NNS_G2D_NULL_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pCurrentInstance_->pCurrentSurface);
    {
        NNSG2dRenderSurface * pCurrentSurface = pCurrentInstance_->pCurrentSurface;
        if (*pCurrentSurface->pAfterDrawOamBackFunc) {
            (*pCurrentSurface->pAfterDrawOamBackFunc)(
                pCurrentInstance_,
                pCurrentSurface,
                pCell,
                oamIdx,
                NNSi_G2dGetCurrentMtx()
            );
        }
    }
}

static NNS_G2D_INLINE void BeginRndCoreRendering2D_ (NNSG2dRendererInstance * pRnd, NNSG2dRenderSurface * pSurface) {
    NNS_G2D_NULL_ASSERT(pRnd);
    NNS_G2D_ASSERT(pRnd->pCurrentSurface == NULL);
    NNS_G2D_ASSERT(pSurface->type != NNS_G2D_SURFACETYPE_MAIN3D);
    NNS_G2D_NULL_ASSERT(pSurface);

    pRnd->pCurrentSurface = pSurface;
    NNS_G2dSetRndCoreSurface(&pRnd->rendererCore, &pSurface->coreSurface);

    {
        {
            NNS_G2dSetRndCoreOamRegisterFunc(
                &pRnd->rendererCore,
                pSurface->pFuncOamRegister,
                pSurface->pFuncOamAffineRegister
            );
        }
    }

    NNS_G2dRndCoreBeginRendering(&pRnd->rendererCore);
}

static NNS_G2D_INLINE void BeginRndCoreRendering3D_ (NNSG2dRendererInstance * pRnd, NNSG2dRenderSurface * pSurface) {
    NNS_G2D_NULL_ASSERT(pRnd);
    NNS_G2D_ASSERT(pRnd->pCurrentSurface == NULL);
    NNS_G2D_ASSERT(pSurface->type == NNS_G2D_SURFACETYPE_MAIN3D);
    NNS_G2D_NULL_ASSERT(pSurface);

    pRnd->pCurrentSurface = pSurface;
    NNS_G2dSetRndCoreSurface(&pRnd->rendererCore, &pSurface->coreSurface);

    NNS_G2dRndCoreBeginRendering(&pRnd->rendererCore);
}

static NNS_G2D_INLINE void EndRndCoreRendering_ (void) {
    NNS_G2D_NULL_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pCurrentInstance_->pCurrentSurface);

    pCurrentInstance_->pCurrentSurface = NULL;
    NNS_G2dRndCoreEndRendering( );
}

static NNS_G2D_INLINE void DoRenderByRndCore2D_ (const NNSG2dCellData * pCell, NNSG2dRndCoreInstance * pRndCore) {
#pragma unused( pRndCore )
    NNS_G2D_NULL_ASSERT(pCell);
    NNS_G2D_NULL_ASSERT(pRndCore);

    {
        NNSG2dRndCore2DMtxCache * pMtx2D = NULL;

        if (NNSi_G2dIsRndCurrentMtxSRTransformed()) {
            if (mcRenderState_.bDrawMC) {
                pMtx2D
                    = mcRenderState_.cellAnimMtxCacheTbl[mcRenderState_.currentCellAnimIdx];

                if (pMtx2D == NULL) {
                    NNSi_G2dMCMStoreCurrentMtxToMtxCache();

                    pMtx2D = NNSi_G2dMCMGetCurrentMtxCache();

                    mcRenderState_.cellAnimMtxCacheTbl[mcRenderState_.currentCellAnimIdx] = pMtx2D;
                }
            } else {
                NNSi_G2dMCMStoreCurrentMtxToMtxCache();

                pMtx2D = NNSi_G2dMCMGetCurrentMtxCache();
            }
        }

        NNS_G2dSetRndCoreCurrentMtx2D(NNSi_G2dGetCurrentMtx(), pMtx2D);
    }

    if (IsRendererDrawingVramTransferedCell_( )) {
        NNS_G2dRndCoreDrawCellVramTransfer(pCell, GetCurrentVramTransfereHandle_());
    } else {
        NNS_G2dRndCoreDrawCell(pCell);
    }
}

static NNS_G2D_INLINE void DoRenderByRndCore3D_ (const NNSG2dCellData * pCell, NNSG2dRndCoreInstance * pRndCore) {
    NNS_G2D_NULL_ASSERT(pCell);
    NNS_G2D_NULL_ASSERT(pRndCore);

    NNS_G2dSetRndCore3DSoftSpriteZvalue(pRndCore, NNSi_G2dGetCurrentZ());

    NNS_G2dSetRndCoreCurrentMtx3D(NNSi_G2dGetCurrentMtx());

    if (IsRendererDrawingVramTransferedCell_( )) {
        NNS_G2dRndCoreDrawCellVramTransfer(pCell, GetCurrentVramTransfereHandle_());
    } else {
        NNS_G2dRndCoreDrawCell(pCell);
    }
}

static void DrawCellImpl_ (const NNSG2dCellData * pCell) {
    NNSG2dRndCoreInstance * pRndCore = NULL;
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pCell);

    pRndCore = &pCurrentInstance_->rendererCore;

    {
        NNSG2dRenderSurface * pSurface = pCurrentInstance_->pTargetSurfaceList;

        if (pCurrentInstance_->opzHint & NNS_G2D_RDR_OPZHINT_LOCK_PARAMS) {
            if (pSurface->type != NNS_G2D_SURFACETYPE_MAIN3D) {
                DoRenderByRndCore2D_(pCell, pRndCore);
            } else {
                DoRenderByRndCore3D_(pCell, pRndCore);
            }
        } else {
            while (pSurface) {
                if (pSurface->bActive) {
                    if (pSurface->type != NNS_G2D_SURFACETYPE_MAIN3D) {
                        BeginRndCoreRendering2D_(pCurrentInstance_, pSurface);
                        DoRenderByRndCore2D_(pCell, pRndCore);
                        EndRndCoreRendering_();
                    } else {
                        BeginRndCoreRendering3D_(pCurrentInstance_, pSurface);
                        DoRenderByRndCore3D_(pCell, pRndCore);
                        EndRndCoreRendering_();
                    }
                }

                pSurface = pSurface->pNextSurface;
            }
        }
    }
}

static void DrawCellAnimationImpl_ (const NNSG2dCellAnimation * pCellAnim) {
    NNSG2dCellData * pCell = NULL;
    NNS_G2D_NULL_ASSERT(pCellAnim);

    pCell = (NNSG2dCellData *)NNS_G2dGetCellAnimationCurrentCell(pCellAnim);
    NNS_G2D_NULL_ASSERT(pCell);

    if (pCellAnim->srtCtrl.srtData.SRT_EnableFlag == NNS_G2D_AFFINEENABLE_NONE) {
        if (NNSi_G2dIsCellAnimVramTransferHandleValid(pCellAnim)) {
            BeginDrawVramTransferedCell_(NNSi_G2dGetCellAnimVramTransferHandle(pCellAnim));
            DrawCellImpl_(pCell);
            EndDrawVramTransferedCell_();
        } else {
            DrawCellImpl_(pCell);
        }
    } else {
        NNS_G2dPushMtx();
        SetSrtControlToMtxStack_(&pCellAnim->srtCtrl);

        if (NNSi_G2dIsCellAnimVramTransferHandleValid(pCellAnim)) {
            BeginDrawVramTransferedCell_(NNSi_G2dGetCellAnimVramTransferHandle(pCellAnim));
            DrawCellImpl_(pCell);
            EndDrawVramTransferedCell_();
        } else {
            DrawCellImpl_(pCell);
        }
        NNS_G2dPopMtx(1);
    }
}

static void DrawNode_ (const NNSG2dNode * pNode) {
    NNS_G2D_NULL_ASSERT(pNode);
    NNS_G2D_ASSERTMSG(pNode->type == NNS_G2D_NODETYPE_CELL, "NNS_G2D_NODETYPE_CELL is expected.");

    if (pNode->bVisible) {
        NNSG2dCellAnimation * pCellAnim = (NNSG2dCellAnimation *)pNode->pContent;
        NNS_G2D_NULL_ASSERT(pCellAnim);

        NNS_G2dPushMtx();
        SetSrtControlToMtxStack_(&pNode->srtCtrl);
        {
            DrawCellAnimationImpl_(pCellAnim);
        }
        NNS_G2dPopMtx(1);
    }
}

static NNS_G2D_INLINE void DrawNode2_ (const NNSG2dMultiCellInstance * pMC, const NNSG2dMultiCellHierarchyData * pNodeData) {
    const u16 cellAnimIdx = NNSi_G2dGetMC2NodeCellAinmIdx(pNodeData);
    const NNSG2dMCCellAnimation * cellAnimArray = pMC->pCellAnimInstasnces;
    NNS_G2D_MINMAX_ASSERT(cellAnimIdx, 0, pMC->pCurrentMultiCell->numCellAnim);
    mcRenderState_.currentCellAnimIdx = cellAnimIdx;

    NNS_G2dPushMtx();
    FlipTranslate_(pNodeData->posX, pNodeData->posY);
    {
        DrawCellAnimationImpl_(&cellAnimArray[cellAnimIdx].cellAnim);
    }
    NNS_G2dPopMtx(1);
}

static NNS_G2D_INLINE BOOL IsAutoZoffsetEnable_ (void) {
    NNS_G2D_NULL_ASSERT(pCurrentInstance_);
    return (BOOL)pCurrentInstance_->spriteZoffsetStep;
}

void NNS_G2dInitRenderer (NNSG2dRendererInstance * pRend) {
    NNS_G2D_NULL_ASSERT(pRend);

    NNS_G2dInitRndCore(&pRend->rendererCore);

    pRend->pTargetSurfaceList = NULL;
    pRend->pCurrentSurface = NULL;
    pRend->pPaletteSwapTbl = NULL;

    pRend->opzHint = NNS_G2D_RDR_OPZHINT_NONE;

    pRend->spriteZoffsetStep = 0;

    pRend->overwriteEnableFlag = NNS_G2D_RND_OVERWRITE_NONE;
    pRend->overwritePriority = 0;
    pRend->overwritePlttNo = 0;
    pRend->overwriteObjMode = GX_OAM_MODE_NORMAL;
    pRend->overwriteMosaicFlag = FALSE;
    pRend->overwritePlttNoOffset = 0;

    NNSi_G2dMCMInitMtxCache();

    NNSi_G2dSetRndMtxStackSRTransformEnableFlag(TRUE);
}

void NNS_G2dAddRendererTargetSurface (NNSG2dRendererInstance * pRend, NNSG2dRenderSurface * pNew) {
    NNS_G2D_NULL_ASSERT(pRend);
    NNS_G2D_NULL_ASSERT(pNew);
    NNS_G2D_ASSERTMSG(
        IsNotCircularLinked_(pRend->pTargetSurfaceList, pNew),
        "Circular linked lists is detected in NNS_G2dAddRendererTargetSurface()"
    );

    pNew->pNextSurface = pRend->pTargetSurfaceList;
    pRend->pTargetSurfaceList = pNew;
}

void NNS_G2dInitRenderSurface (NNSG2dRenderSurface * pSurface) {
    NNS_G2D_NULL_ASSERT(pSurface);

    MI_CpuFill16(pSurface, 0x0, sizeof(NNSG2dRenderSurface));

    pSurface->coreSurface.bActive = TRUE;

    pSurface->coreSurface.type = NNS_G2D_SURFACETYPE_MAX;

    {
        NNSG2dRndCoreSurface * pS = &pSurface->coreSurface;

        pS->pBeforeDrawCellBackFunc = RndCoreCBFuncBeforeCell_;
        pS->pAfterDrawCellBackFunc = RndCoreCBFuncAfterCell_;
        pS->pBeforeDrawOamBackFunc = RndCoreCBFuncBeforeOBJ_;
        pS->pAfterDrawOamBackFunc = RndCoreCBFuncAfterOBJ_;
    }
}

void NNS_G2dBeginRendering (NNSG2dRendererInstance * pRendererInstance) {
    NNS_G2D_NULL_ASSERT(pRendererInstance);
    NNS_G2D_ASSERTMSG(
        pCurrentInstance_ == NULL,
        "Must be NULL, Make sure calling Begin - End correctly."
    );

    pCurrentInstance_ = pRendererInstance;

    NNSi_G2dMCMCleanupMtxCache();

    G3_PushMtx();

    G3_Identity();
    NNSi_G2dIdentity();
}

void NNS_G2dBeginRenderingEx (NNSG2dRendererInstance * pRendererInstance, u32 opzHint) {
    NNS_G2D_NULL_ASSERT(pRendererInstance);
    NNS_G2D_ASSERT(pRendererInstance->opzHint == NNS_G2D_RDR_OPZHINT_NONE);

    pRendererInstance->opzHint = opzHint;

    {
        if (opzHint & NNS_G2D_RDR_OPZHINT_NOT_SR) {
            NNSi_G2dSetRndMtxStackSRTransformEnableFlag(FALSE);
        }

        if (opzHint & NNS_G2D_RDR_OPZHINT_LOCK_PARAMS) {
            NNSG2dRndCoreInstance * pRndCore = &pRendererInstance->rendererCore;
            NNSG2dRenderSurface * pSurface = pRendererInstance->pTargetSurfaceList;

            NNS_G2D_ASSERTMSG(
                pSurface->pNextSurface == NULL,
                "The number of target surface must be ONE. when you spesified the NNS_G2D_RDR_OPZHINT_LOCK_PARAMS flag."
            );

            if (pSurface->bActive) {
                if (pSurface->type != NNS_G2D_SURFACETYPE_MAIN3D) {
                    BeginRndCoreRendering2D_(pRendererInstance, pSurface);
                } else {
                    BeginRndCoreRendering3D_(pRendererInstance, pSurface);
                }
            }
        }
    }

    NNS_G2dBeginRendering(pRendererInstance);
}

void NNS_G2dEndRendering () {
    NNS_G2D_NULL_ASSERT(pCurrentInstance_);

    G3_PopMtx(1);

    {
        const u32 opzHint = pCurrentInstance_->opzHint;
        if (opzHint != NNS_G2D_RDR_OPZHINT_NONE) {
            if (opzHint & NNS_G2D_RDR_OPZHINT_NOT_SR) {
                NNSi_G2dSetRndMtxStackSRTransformEnableFlag(TRUE);
            }

            if (opzHint & NNS_G2D_RDR_OPZHINT_LOCK_PARAMS) {
                EndRndCoreRendering_();
            }

            pCurrentInstance_->opzHint = NNS_G2D_RDR_OPZHINT_NONE;
        }
    }

    pCurrentInstance_ = NULL;
}

void NNS_G2dDrawCell (const NNSG2dCellData * pCell) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pCell);

    if (IsAutoZoffsetEnable_()) {
        const fx32 offset = NNSi_G2dGetOamSoftEmuAutoZOffsetStep();
        NNSi_G2dSetOamSoftEmuAutoZOffsetFlag(TRUE);
        NNSi_G2dSetOamSoftEmuAutoZOffsetStep(pCurrentInstance_->spriteZoffsetStep);

        DrawCellImpl_(pCell);

        NNSi_G2dSetOamSoftEmuAutoZOffsetFlag(FALSE);
        NNSi_G2dSetOamSoftEmuAutoZOffsetStep(offset);
        NNSi_G2dResetOamSoftEmuAutoZOffset();
    } else {
        DrawCellImpl_(pCell);
    }
}

void NNS_G2dDrawCellAnimation (const NNSG2dCellAnimation * pCellAnim) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pCellAnim);

    if (IsAutoZoffsetEnable_()) {
        const fx32 offset = NNSi_G2dGetOamSoftEmuAutoZOffsetStep();
        NNSi_G2dSetOamSoftEmuAutoZOffsetFlag(TRUE);
        NNSi_G2dSetOamSoftEmuAutoZOffsetStep(pCurrentInstance_->spriteZoffsetStep);

        DrawCellAnimationImpl_(pCellAnim);

        NNSi_G2dSetOamSoftEmuAutoZOffsetFlag(FALSE);
        NNSi_G2dSetOamSoftEmuAutoZOffsetStep(offset);
        NNSi_G2dResetOamSoftEmuAutoZOffset();
    } else {
        DrawCellAnimationImpl_(pCellAnim);
    }
}

void NNS_G2dDrawMultiCell (const NNSG2dMultiCellInstance * pMC) {
    u16 i;
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pMC);
    if (pMC->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
        for ( i = 0; i < pMC->pCurrentMultiCell->numCellAnim; i++ ) {
            mcRenderState_.cellAnimMtxCacheTbl[i] = NULL;
        }
        mcRenderState_.bDrawMC = TRUE;

        if (IsAutoZoffsetEnable_()) {
            const fx32 offset = NNSi_G2dGetOamSoftEmuAutoZOffsetStep();
            NNSi_G2dSetOamSoftEmuAutoZOffsetFlag(TRUE);
            NNSi_G2dSetOamSoftEmuAutoZOffsetStep(pCurrentInstance_->spriteZoffsetStep);

            for ( i = 0; i < pMC->pCurrentMultiCell->numNodes; i++ ) {
                DrawNode2_(pMC, &pMC->pCurrentMultiCell->pHierDataArray[i]);
            }

            NNSi_G2dSetOamSoftEmuAutoZOffsetFlag(FALSE);
            NNSi_G2dSetOamSoftEmuAutoZOffsetStep(offset);
            NNSi_G2dResetOamSoftEmuAutoZOffset();
        } else {
            for ( i = 0; i < pMC->pCurrentMultiCell->numNodes; i++ ) {
                DrawNode2_(pMC, &pMC->pCurrentMultiCell->pHierDataArray[i]);
            }
        }

        mcRenderState_.bDrawMC = FALSE;
    } else {
        const NNSG2dNode * pNode = pMC->pCellAnimInstasnces;
        if (IsAutoZoffsetEnable_()) {
            const fx32 offset = NNSi_G2dGetOamSoftEmuAutoZOffsetStep();

            NNSi_G2dSetOamSoftEmuAutoZOffsetFlag(TRUE);
            NNSi_G2dSetOamSoftEmuAutoZOffsetStep(pCurrentInstance_->spriteZoffsetStep);

            for ( i = 0; i < pMC->pCurrentMultiCell->numNodes; i++ ) {
                DrawNode_(&pNode[i]);
            }

            NNSi_G2dSetOamSoftEmuAutoZOffsetFlag(FALSE);
            NNSi_G2dSetOamSoftEmuAutoZOffsetStep(offset);
            NNSi_G2dResetOamSoftEmuAutoZOffset();
        } else {
            for ( i = 0; i < pMC->pCurrentMultiCell->numNodes; i++ ) {
                DrawNode_(&pNode[i]);
            }
        }
    }
}

void NNS_G2dDrawMultiCellAnimation (const NNSG2dMultiCellAnimation * pMCAnim) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pMCAnim);

    if (pMCAnim->srtCtrl.srtData.SRT_EnableFlag == NNS_G2D_AFFINEENABLE_NONE) {
        NNS_G2dDrawMultiCell(&pMCAnim->multiCellInstance);
    } else {
        NNS_G2dPushMtx();
        SetSrtControlToMtxStack_(&pMCAnim->srtCtrl);
        NNS_G2dDrawMultiCell(&pMCAnim->multiCellInstance);
        NNS_G2dPopMtx(1);
    }
}

void NNS_G2dDrawEntity (NNSG2dEntity * pEntity) {
    BOOL bAffined = FALSE;

    BOOL bPaletteChange = FALSE;
    const NNSG2dPaletteSwapTable * pTbl = NULL;

    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNS_G2D_NULL_ASSERT(pEntity);
    NNS_G2D_ASSERT_ENTITY_VALID(pEntity);

    bPaletteChange = NNS_G2dIsEntityPaletteTblEnable(pEntity);
    if (bPaletteChange) {
        pTbl = NNS_G2dGetRendererPaletteTbl(pCurrentInstance_);
        NNS_G2dSetRendererPaletteTbl(pCurrentInstance_, pEntity->pPaletteTbl);
    }

    {
        switch (pEntity->pEntityData->type) {
        case NNS_G2D_ENTITYTYPE_CELL:
        {
            NNSG2dCellAnimation *
                pCellAnim = (NNSG2dCellAnimation *)pEntity->pDrawStuff;
            NNS_G2D_NULL_ASSERT(pCellAnim);
            NNS_G2dDrawCellAnimation(pCellAnim);
        }
        break;
        case NNS_G2D_ENTITYTYPE_MULTICELL:
        {
            NNSG2dMultiCellAnimation *
                pMCAnim = (NNSG2dMultiCellAnimation *)pEntity->pDrawStuff;
            NNS_G2D_NULL_ASSERT(pMCAnim);
            NNS_G2dDrawMultiCellAnimation(pMCAnim);
        }
        break;
        default:
            NNS_G2D_ASSERTMSG(FALSE, "TODO: msg ");
        }
    }

    if (bPaletteChange) {
        if (pTbl != NULL) {
            NNS_G2dSetRendererPaletteTbl(pCurrentInstance_, pTbl);
        } else {
            NNS_G2dResetRendererPaletteTbl(pCurrentInstance_);
        }
    }
}

void NNS_G2dPushMtx () {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);

    if (!(pCurrentInstance_->opzHint & NNS_G2D_RDR_OPZHINT_NOT_SR)) {
        const u16 lastPos = NNSi_G2dGetMtxStackPos();
        NNSi_G2dMtxPush();
        {
            const u16 newPos = NNSi_G2dGetMtxStackPos();

            NNSi_G2dMCMSetMtxStackPushed(newPos, lastPos);
        }
    } else {
        NNSi_G2dMtxPush();
    }
}

void NNS_G2dPopMtx () {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNSi_G2dMtxPop();
}

void NNS_G2dTranslate (fx32 x, fx32 y, fx32 z) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNSi_G2dTranslate(x, y, z);
}

void NNS_G2dSetTrans (fx32 x, fx32 y, fx32 z) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNSi_G2dSetTrans(x, y, z);
}

void NNS_G2dScale (fx32 x, fx32 y, fx32 z) {
#pragma unused( z )
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNSi_G2dScale(x, y);

    if (!NNSi_G2dIsRndCurrentMtxSRTransformed()) {
        NNS_G2D_WARNING(
            pCurrentInstance_->rendererCore.flipFlag == NNS_G2D_RENDERERFLIP_NONE,
            "You can't use affine transformation using flip function."
        );
        NNSi_G2dSetRndMtxStackSRTransformed();
    }

    NNSi_G2dMCMSetCurrentMtxSRChanged();
}

void NNS_G2dRotZ (fx32 sin, fx32 cos) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(pCurrentInstance_);
    NNSi_G2dRotate(sin, cos);

    if (!NNSi_G2dIsRndCurrentMtxSRTransformed()) {
        NNS_G2D_WARNING(
            pCurrentInstance_->rendererCore.flipFlag == NNS_G2D_RENDERERFLIP_NONE,
            "You can't use affine transformation using flip function."
        );
        NNSi_G2dSetRndMtxStackSRTransformed();
    }

    NNSi_G2dMCMSetCurrentMtxSRChanged();
}

void NNS_G2dSetRendererFlipMode (NNSG2dRendererInstance * pRend, BOOL bFlipH, BOOL bFlipV) {
    NNS_G2D_WARNING(
        !NNSi_G2dIsRndCurrentMtxSRTransformed(),
        "You can't use the flip function using affine transformation."
    );
    NNS_G2D_NULL_ASSERT(pRend);

    NNS_G2dSetRndCoreFlipMode(&pRend->rendererCore, bFlipH, bFlipV);
}

void NNS_G2dSetRendererPaletteTbl (NNSG2dRendererInstance * pRend, const NNSG2dPaletteSwapTable * pTbl) {
    NNS_G2D_NULL_ASSERT(pRend);
    NNS_G2D_NULL_ASSERT(pTbl);

    pRend->pPaletteSwapTbl = pTbl;
}

const NNSG2dPaletteSwapTable * NNS_G2dGetRendererPaletteTbl (NNSG2dRendererInstance * pRend) {
    NNS_G2D_NULL_ASSERT(pRend);

    return pRend->pPaletteSwapTbl;
}

void NNS_G2dResetRendererPaletteTbl (NNSG2dRendererInstance * pRend) {
    NNS_G2D_NULL_ASSERT(pRend);
    pRend->pPaletteSwapTbl = NULL;
}

void NNS_G2dSetRendererImageProxy (NNSG2dRendererInstance * pRend, const NNSG2dImageProxy * pImgProxy, const NNSG2dImagePaletteProxy * pPltProxy) {
    NNS_G2D_NULL_ASSERT(pRend);
    NNS_G2D_NULL_ASSERT(pImgProxy);
    NNS_G2D_NULL_ASSERT(pPltProxy);

    SDK_WARNING(
        pImgProxy->attr.bExtendedPlt == pPltProxy->bExtendedPlt,
        "Palette type mismatching was detected.\n Make sure that you use the correct palette."
    );

    NNS_G2D_WARNING(
        !(pRend->opzHint & NNS_G2D_RDR_OPZHINT_LOCK_PARAMS),
        "Avoid calling this function, when you specified the optimize flag NNS_G2D_RDR_OPZHINT_LOCK_PARAMS."
    );

    NNS_G2dSetRndCoreImageProxy(&pRend->rendererCore, pImgProxy, pPltProxy);
}
