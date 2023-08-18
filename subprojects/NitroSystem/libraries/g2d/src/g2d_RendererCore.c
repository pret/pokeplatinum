
#include <nnsys/g2d/g2d_RendererCore.h>

#include "include/g2di_RendererMtxCache.h"

#include <nnsys/g2d/fmt/g2d_Cell_data.h>
#include <nnsys/g2d/g2d_OamSoftwareSpriteDraw.h>
#include <nnsys/g2d/g2d_CellTransferManager.h>

#define NNSi_G2D_RNDCORE_DUMMY_FLAG FALSE
#define NNSi_G2D_RNDCORE_OAMENTORY_SUCCESSFUL TRUE

static NNSG2dRndCoreInstance * pTheInstance_ = NULL;

static const MtxFx32 mtxIdentity_ = {
    FX32_ONE, 0,
    0, FX32_ONE,
    0, 0
};

#define NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT(  ) \
    NNS_G2D_ASSERTMSG(pTheInstance_ != NULL, "Please call this method between Begin - End Rendering")

#define NNS_G2D_RND_OUTSIDE_BEGINEND_ASSERT(  ) \
    NNS_G2D_ASSERTMSG(pTheInstance_ == NULL, "Please call this method outside Begin - End Rendering")

static NNS_G2D_INLINE u16 GetMtxCacheAffineIndex_ (const NNSG2dRndCore2DMtxCache * pMtxCache, NNSG2dSurfaceType surfaceType, OAM_FLIP flipType) {
    return pMtxCache->affineIndex[flipType][surfaceType - NNS_G2D_SURFACETYPE_MAIN2D];
}

static NNS_G2D_INLINE void SetMtxCacheAffineIndex_ (NNSG2dRndCore2DMtxCache * pMtxCache, NNSG2dSurfaceType surfaceType, OAM_FLIP flipType, u16 affineIndex) {
    pMtxCache->affineIndex[flipType][surfaceType - NNS_G2D_SURFACETYPE_MAIN2D] = affineIndex;
}

static NNS_G2D_INLINE BOOL IsMtxCacheRegisteredAsAffineParams_ (const u16 affineIdx) {
    return (affineIdx != MtxCache_NOT_AVAILABLE) ? TRUE : FALSE;
}

static NNS_G2D_INLINE const MtxFx32 * RndCoreGetCurrentMtx_ () {
    if (pTheInstance_->pCurrentMxt) {
        return pTheInstance_->pCurrentMxt;
    } else {
        return &mtxIdentity_;
    }
}

static NNS_G2D_INLINE BOOL IsRndCore2DAffineTransformed_ (const NNSG2dRndCoreInstance * pRnd) {
    return (BOOL)(pRnd->flipFlag == NNS_G2D_RENDERERFLIP_NONE &&
                  pRnd->pCurrentMtxCacheFor2D != NULL);
}

static NNS_G2D_INLINE int GetShiftToConvByteTo2DChar_ (GXOBJVRamModeChar mappingType) {
    int shift = (REG_GX_DISPCNT_EXOBJ_MASK & mappingType) >> REG_GX_DISPCNT_EXOBJ_SHIFT;
    return shift;
}

static NNS_G2D_INLINE BOOL IsAlignedShiftValueBoundary_ (u32 sizeByte, int shiftBit) {
    const int mask = (0x1 << shiftBit) - 1;
    return (BOOL)((mask & sizeByte) == 0);
}

static NNS_G2D_INLINE u32 GetNum2DCharacter_ (u32 sizeByte, GXOBJVRamModeChar mappingType) {
    const int shiftBit = 5 + GetShiftToConvByteTo2DChar_(mappingType);
    u32 numChar = sizeByte >> shiftBit;

    NNS_G2D_ASSERT(IsAlignedShiftValueBoundary_(sizeByte, shiftBit));

    return numChar;
}

static NNS_G2D_INLINE u32 GetTexBaseAddr3D_ (const NNSG2dImageProxy * pImgProxy) {
    NNS_G2D_NULL_ASSERT(pImgProxy);
    if (NNS_G2dIsImageReadyToUse(pImgProxy, NNS_G2D_VRAM_TYPE_3DMAIN)) {
        return NNS_G2dGetImageLocation(pImgProxy, NNS_G2D_VRAM_TYPE_3DMAIN);
    } else {
        return 0;
    }
}

static NNS_G2D_INLINE u32 GetPltBaseAddr3D_ (const NNSG2dImagePaletteProxy * pPltProxy) {
    NNS_G2D_NULL_ASSERT(pPltProxy);
    if (NNS_G2dIsImagePaletteReadyToUse(pPltProxy, NNS_G2D_VRAM_TYPE_3DMAIN)) {
        return NNS_G2dGetImagePaletteLocation(pPltProxy, NNS_G2D_VRAM_TYPE_3DMAIN);
    } else {
        return 0;
    }
}

static NNS_G2D_INLINE NNS_G2D_VRAM_TYPE SurfaceTypeToVramType_ (NNSG2dSurfaceType surfaceType) {
    return (NNS_G2D_VRAM_TYPE)surfaceType;
}

static NNS_G2D_INLINE u32 GetCharacterBase2D_ (const NNSG2dImageProxy * pImgProxy, NNSG2dSurfaceType type) {
    NNS_G2D_NULL_ASSERT(pImgProxy);
    NNS_G2D_ASSERT(
        type == NNS_G2D_SURFACETYPE_MAIN2D ||
        type == NNS_G2D_SURFACETYPE_SUB2D
    );

    {
        const NNS_G2D_VRAM_TYPE vramType = SurfaceTypeToVramType_(type);

        if (NNS_G2dIsImageReadyToUse(pImgProxy, vramType)) {
            u32 baseAddr = NNS_G2dGetImageLocation(pImgProxy, vramType);

            return GetNum2DCharacter_(baseAddr, pImgProxy->attr.mappingType);
        } else {
            return 0;
        }
    }
}

static NNS_G2D_INLINE BOOL IsOamAttrDoubleAffineMode_ (const GXOamAttr * pAttr) {
    return (BOOL)(pAttr->rsMode == 0x3);
}

static NNS_G2D_INLINE void HandleCellCallBackFunc_ (NNSG2dRndCoreDrawCellCallBack pFunc, const NNSG2dCellData * pCell) {
    if (pFunc) {
        (*pFunc)(pTheInstance_, pCell);
    }
}

static NNS_G2D_INLINE void HandleCellOamBackFunc_ (NNSG2dRndCoreDrawOamCallBack pFunc, const NNSG2dCellData * pCell, u16 oamIdx) {
    if (pFunc) {
        (*pFunc)(pTheInstance_, pCell, oamIdx);
    }
}

static NNS_G2D_INLINE void MakeFlipMtx_ (const MtxFx22 * pMtxSrc, MtxFx22 * pMtxDst, OAM_FLIP type) {
    NNS_G2D_NULL_ASSERT(pMtxSrc);
    NNS_G2D_NULL_ASSERT(pMtxDst);

    {
        *pMtxDst = *pMtxSrc;

        if (type & OAM_FLIP_H) {
            pMtxDst->_00 = -pMtxDst->_00;
            pMtxDst->_01 = -pMtxDst->_01;
        }

        if (type & OAM_FLIP_V) {
            pMtxDst->_10 = -pMtxDst->_10;
            pMtxDst->_11 = -pMtxDst->_11;
        }
    }
}

static NNS_G2D_INLINE u16 LoadMtxCacheAsAffineParams_ (NNSG2dRndCore2DMtxCache * pMtxCache, const NNSG2dRndCoreSurface * pSurface, OAM_FLIP type) {
    u16 affineIdx = GetMtxCacheAffineIndex_(pMtxCache, pSurface->type, type);

    if (!IsMtxCacheRegisteredAsAffineParams_(affineIdx)) {
        NNS_G2D_NULL_ASSERT(pTheInstance_->pFuncOamAffineRegister);

        {
            if (type == OAM_FLIP_NONE) {
                affineIdx = (*pTheInstance_->pFuncOamAffineRegister)(&pMtxCache->m22);
            } else {
                MtxFx22 mtxTemp;
                MakeFlipMtx_(&pMtxCache->m22, &mtxTemp, type);
                affineIdx = (*pTheInstance_->pFuncOamAffineRegister)(&mtxTemp);
            }

            SetMtxCacheAffineIndex_(pMtxCache, pSurface->type, type, affineIdx);
        }
    }

    return affineIdx;
}

static NNS_G2D_INLINE NNS_G2D_VRAM_TYPE ConvertSurfaceTypeToVramType_ (NNSG2dSurfaceType surfaceType) {
    return (NNS_G2D_VRAM_TYPE)(surfaceType);
}

static NNS_G2D_INLINE u16 GetFlipedOBJPosX_ (GXOamAttr * pOam, const GXOamShape shape) {
    return NNS_G2dIsRndCoreFlipH(pTheInstance_) ?
           (u16)(-NNS_G2dRepeatXinCellSpace((s16)pOam->x) - NNS_G2dGetOamSizeX(&shape)):
           (u16)NNS_G2dRepeatXinCellSpace((s16)pOam->x);
}

static NNS_G2D_INLINE u16 GetFlipedOBJPosY_ (GXOamAttr * pOam, const GXOamShape shape) {
    return NNS_G2dIsRndCoreFlipV(pTheInstance_) ?
           (u16)(-NNS_G2dRepeatYinCellSpace((s16)pOam->y) - NNS_G2dGetOamSizeY(&shape)) :
           (u16)NNS_G2dRepeatYinCellSpace((s16)pOam->y);
}

static NNS_G2D_INLINE void OverwriteOamFlipFlag_ (GXOamAttr * pOam) {
    NNS_G2D_NULL_ASSERT(pOam);
    {
        const BOOL bFlipH =
            NNS_G2dIsRndCoreFlipH(pTheInstance_) ^ NNSi_G2dGetOamFlipH(pOam);
        const BOOL bFlipV =
            NNS_G2dIsRndCoreFlipV(pTheInstance_) ^ NNSi_G2dGetOamFlipV(pOam);

        pOam->attr01 &= ~GX_OAM_ATTR01_HF_MASK;
        pOam->attr01 |= bFlipH << GX_OAM_ATTR01_HF_SHIFT;

        pOam->attr01 &= ~GX_OAM_ATTR01_VF_MASK;
        pOam->attr01 |= bFlipV << GX_OAM_ATTR01_VF_SHIFT;
    }
}

static void DoAffineTransforme_ (const MtxFx22 * pMtxSR, GXOamAttr * pOam, NNSG2dFVec2 * pBaseTrans) {
    NNSG2dFVec2 objTrans;
    GXOamEffect effectTypeAfter;

    NNS_G2dGetOamTransFx32(pOam, &objTrans);

    NNSi_G2dRemovePositionAdjustmentFromDoubleAffineOBJ(pOam, &objTrans);

    MulMtx22(pMtxSR, &objTrans, &objTrans);

    if (pTheInstance_->affineOverwriteMode != NNS_G2D_RND_AFFINE_OVERWRITE_NONE) {
        if (pTheInstance_->affineOverwriteMode == NNS_G2D_RND_AFFINE_OVERWRITE_DOUBLE) {
            effectTypeAfter = GX_OAM_EFFECT_AFFINE_DOUBLE;
        } else {
            effectTypeAfter = GX_OAM_EFFECT_AFFINE;
        }

        G2_SetOBJEffect(pOam, effectTypeAfter, 0);
    }

    {
        const BOOL bShouldAdjust = G2_GetOBJEffect(pOam) == GX_OAM_EFFECT_AFFINE_DOUBLE;

        NNSi_G2dAdjustDifferenceOfRotateOrientation(
            pOam,
            pMtxSR,
            &objTrans,
            bShouldAdjust
        );
    }

    objTrans.x += pBaseTrans->x;
    objTrans.y += pBaseTrans->y;
    G2_SetOBJPosition(pOam, objTrans.x >> FX32_SHIFT, objTrans.y >> FX32_SHIFT);
}

static NNS_G2D_INLINE void DoFlipTransforme_ (GXOamAttr * pOam, NNSG2dFVec2 * pBaseTrans) {
    if (pTheInstance_->flipFlag != NNS_G2D_RENDERERFLIP_NONE) {
        const GXOamShape shape = NNS_G2dGetOAMSize(pOam);

        OverwriteOamFlipFlag_(pOam);

        if (NNS_G2dIsRndCoreFlipH(pTheInstance_)) {
            pOam->x = -pOam->x - NNS_G2dGetOamSizeX(&shape);
        }

        if (NNS_G2dIsRndCoreFlipV(pTheInstance_)) {
            pOam->y = (u8)(-pOam->y - NNS_G2dGetOamSizeY(&shape));
        }
    }

    pOam->x += pBaseTrans->x >> FX32_SHIFT;
    pOam->y += pBaseTrans->y >> FX32_SHIFT;
}

static BOOL IsRndCoreReadyForBeginRendering_ (NNSG2dRndCoreInstance * pRnd) {
    NNS_G2D_NULL_ASSERT(pRnd);
    {
        if (!(pRnd->pImgProxy && pRnd->pPltProxy)) {
            OS_Warning("RendererCore:ImageProxy isn't ready.");
            return FALSE;
        }

        if (pRnd->pCurrentTargetSurface == NULL) {
            OS_Warning("RendererCore:TragetSurface isn't ready.");
            return FALSE;
        } else {
            if (!pRnd->pCurrentTargetSurface->bActive) {
                OS_Warning("RendererCore:The current tragetSurface isn't active. Is it OK?");
            }
        }

        if (pRnd->pCurrentTargetSurface->type == NNS_G2D_SURFACETYPE_MAIN2D ||
            pRnd->pCurrentTargetSurface->type == NNS_G2D_SURFACETYPE_SUB2D) {
            if
            (
                (pRnd->pFuncOamAffineRegister == NULL &&
                 pRnd->pFuncOamRegister == NULL)
            ) {
                OS_Warning("RendererCore:OAM-RegisterFunction For 2D Graphics Engine rendering isn't ready.");
                return FALSE;
            }
        }
    }

    return TRUE;
}

static void DrawCellToSurface2D_ (const NNSG2dRndCoreSurface * pSurface, const NNSG2dCellData * pCell) {
    NNSG2dFVec2 baseTrans;
    MtxFx22 mtxSR;
    const MtxFx32 * pCurrMtx = RndCoreGetCurrentMtx_();

    NNS_G2D_NULL_ASSERT(pSurface);
    NNS_G2D_NULL_ASSERT(pCell);

    NNSi_G2dGetMtxTrans(pCurrMtx, &baseTrans);

    baseTrans.x -= pSurface->viewRect.posTopLeft.x;
    baseTrans.y -= pSurface->viewRect.posTopLeft.y;

    {
        const u32 baseCharOffset = pTheInstance_->base2DCharOffset;
        const BOOL bAffined = IsRndCore2DAffineTransformed_(pTheInstance_);

        u16 i;
        GXOamAttr * pTempOam = &pTheInstance_->currentOam;
        u16 oamAffinIdx = NNS_G2D_OAM_AFFINE_IDX_NONE;

        for ( i = 0; i < pCell->numOAMAttrs; i++ ) {
            pTheInstance_->bDrawEnable = TRUE;
            NNS_G2dCopyCellAsOamAttr(pCell, i, pTempOam);

            HandleCellOamBackFunc_(pSurface->pBeforeDrawOamBackFunc, pCell, i);

            if (!pTheInstance_->bDrawEnable) {
                continue;
            }

            pTempOam->charNo += baseCharOffset;

            if (bAffined) {
                oamAffinIdx =
                    LoadMtxCacheAsAffineParams_(
                        pTheInstance_->pCurrentMtxCacheFor2D,
                        pSurface,
                        TO_OAM_FLIP(
                            NNSi_G2dGetOamFlipH(pTempOam),
                            NNSi_G2dGetOamFlipV(pTempOam)
                        )
                    );
                NNSi_G2dGetMtxRS(pCurrMtx, &mtxSR);
                DoAffineTransforme_(&mtxSR, pTempOam, &baseTrans);
            } else {
                oamAffinIdx = NNS_G2D_OAM_AFFINE_IDX_NONE;
                DoFlipTransforme_(pTempOam, &baseTrans);
            }

            NNS_G2D_NULL_ASSERT(pTheInstance_->pFuncOamRegister);

            if (NNSi_G2D_RNDCORE_OAMENTORY_SUCCESSFUL
                != (*pTheInstance_->pFuncOamRegister)(
                    pTempOam,
                    oamAffinIdx,
                    NNSi_G2D_RNDCORE_DUMMY_FLAG
                )) {
                return;
            }

            HandleCellOamBackFunc_(pSurface->pAfterDrawOamBackFunc, pCell, i);
        }
    }
}

static void DrawOamToSurface3D_ (GXOamAttr * pOam) {
    G3_LoadMtx43(&pTheInstance_->mtxFor3DGE);

    if (pTheInstance_->flipFlag != NNS_G2D_RENDERERFLIP_NONE) {
        const GXOamShape shape = NNS_G2dGetOAMSize(pOam);

        const s16 posX = (s16)GetFlipedOBJPosX_(pOam, shape);
        const s16 posY = (s16)GetFlipedOBJPosY_(pOam, shape);
        const s16 posZ = -1;

        OverwriteOamFlipFlag_(pOam);

        NNS_G2dDrawOneOam3DDirectWithPosFast(
            posX, posY, posZ,
            pOam,
            &pTheInstance_->pImgProxy->attr,
            pTheInstance_->baseTexAddr3D,
            pTheInstance_->basePltAddr3D
        );
    } else {
        const s16 posX = (s16)NNS_G2dRepeatXinCellSpace((s16)pOam->x);
        const s16 posY = (s16)NNS_G2dRepeatYinCellSpace((s16)pOam->y);
        const s16 posZ = -1;

        NNS_G2dDrawOneOam3DDirectWithPosFast(
            posX, posY, posZ,
            pOam,
            &pTheInstance_->pImgProxy->attr,
            pTheInstance_->baseTexAddr3D,
            pTheInstance_->basePltAddr3D
        );
    }
}

static void DrawCellToSurface3D_ (const NNSG2dRndCoreSurface * pSurface, const NNSG2dCellData * pCell) {
    u16 i = 0;

    GXOamAttr * pTempOam = &pTheInstance_->currentOam;

    NNS_G2D_NULL_ASSERT(pSurface);
    NNS_G2D_NULL_ASSERT(pCell);

    for ( i = 0; i < pCell->numOAMAttrs; i++ ) {
        pTheInstance_->bDrawEnable = TRUE;
        NNS_G2dCopyCellAsOamAttr(pCell, i, pTempOam);

        HandleCellOamBackFunc_(pSurface->pBeforeDrawOamBackFunc, pCell, i);
        if (pTheInstance_->bDrawEnable) {
            DrawOamToSurface3D_(pTempOam);
        }

        HandleCellOamBackFunc_(pSurface->pAfterDrawOamBackFunc, pCell, i);
    }
}

static NNS_G2D_INLINE void DrawCellImpl_ (const NNSG2dCellData * pCell, u32 cellVramTransferHandle) {
    const NNSG2dRndCoreSurface * pSurface = pTheInstance_->pCurrentTargetSurface;

    if (!pSurface->bActive) {
        return;
    }

    pTheInstance_->bDrawEnable = TRUE;
    HandleCellCallBackFunc_(pSurface->pBeforeDrawCellBackFunc, pCell);
    if (pTheInstance_->bDrawEnable) {
        if (cellVramTransferHandle != NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE) {
            NNSi_G2dSetVramTransferCellDrawnFlag
            (
                cellVramTransferHandle,
                ConvertSurfaceTypeToVramType_(pSurface->type),
                TRUE
            );
        }

        switch (pSurface->type) {
        case NNS_G2D_SURFACETYPE_MAIN3D:
            DrawCellToSurface3D_(pSurface, pCell);
            break;
        case NNS_G2D_SURFACETYPE_MAIN2D:
        case NNS_G2D_SURFACETYPE_SUB2D:
            DrawCellToSurface2D_(pSurface, pCell);
            break;
        case NNS_G2D_SURFACETYPE_MAX:
        default:
            NNS_G2D_ASSERT(FALSE);
        }
    }
    HandleCellCallBackFunc_(pSurface->pAfterDrawCellBackFunc, pCell);
}

void NNS_G2dInitRndCore (NNSG2dRndCoreInstance * pRnd) {
    MI_CpuFill16(pRnd, 0x0, sizeof(NNSG2dRndCoreInstance));

    pRnd->pCurrentTargetSurface = NULL;

    pRnd->affineOverwriteMode = NNS_G2D_RND_AFFINE_OVERWRITE_DOUBLE;

    pRnd->pImgProxy = NULL;
    pRnd->pPltProxy = NULL;

    pRnd->flipFlag = NNS_G2D_RENDERERFLIP_NONE;

    pRnd->bDrawEnable = TRUE;

    pRnd->pCurrentMtxCacheFor2D = NULL;
}

void NNS_G2dInitRndCoreSurface (NNSG2dRndCoreSurface * pSurface) {
    MI_CpuFill16(pSurface, 0x0, sizeof(NNSG2dRndCoreSurface));

    pSurface->bActive = TRUE;
    pSurface->type = NNS_G2D_SURFACETYPE_MAX;
}

void NNS_G2dSetRndCoreImageProxy (NNSG2dRndCoreInstance * pRnd, const NNSG2dImageProxy * pImgProxy, const NNSG2dImagePaletteProxy * pPltProxy) {
    NNS_G2D_RND_OUTSIDE_BEGINEND_ASSERT();
    NNS_G2D_NULL_ASSERT(pRnd);
    NNS_G2D_NULL_ASSERT(pImgProxy);
    NNS_G2D_NULL_ASSERT(pPltProxy);

    pRnd->pImgProxy = pImgProxy;
    pRnd->pPltProxy = pPltProxy;
}

void NNS_G2dSetRndCoreOamRegisterFunc (NNSG2dRndCoreInstance * pRnd, NNSG2dOamRegisterFunction pFuncOamRegister, NNSG2dAffineRegisterFunction pFuncOamAffineRegister) {
    NNS_G2D_RND_OUTSIDE_BEGINEND_ASSERT();
    NNS_G2D_NULL_ASSERT(pRnd);
    NNS_G2D_NULL_ASSERT(pFuncOamRegister);
    NNS_G2D_NULL_ASSERT(pFuncOamAffineRegister);

    pRnd->pFuncOamRegister = pFuncOamRegister;
    pRnd->pFuncOamAffineRegister = pFuncOamAffineRegister;
}

void NNS_G2dSetRndCoreAffineOverwriteMode (NNSG2dRndCoreInstance * pRnd, NNSG2dRendererAffineTypeOverwiteMode mode) {
    NNS_G2D_NULL_ASSERT(pRnd);

    pRnd->affineOverwriteMode = mode;
}

void NNS_G2dSetRndCoreCurrentMtx3D (const MtxFx32 * pCurrentMxt) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT();
    NNS_G2D_NULL_ASSERT(pCurrentMxt);
    NNS_G2D_WARNING(
        pTheInstance_->pCurrentTargetSurface->type == NNS_G2D_SURFACETYPE_MAIN3D,
        "This method works only for 3D graphics engine rendering."
    );

    {
        NNSG2dRndCoreInstance * pRnd = pTheInstance_;

        pRnd->pCurrentMxt = pCurrentMxt;

        {
            {
                pRnd->mtxFor3DGE._00 = pCurrentMxt->_00;
                pRnd->mtxFor3DGE._01 = pCurrentMxt->_01;
                pRnd->mtxFor3DGE._02 = 0;

                pRnd->mtxFor3DGE._10 = pCurrentMxt->_10;
                pRnd->mtxFor3DGE._11 = pCurrentMxt->_11;
                pRnd->mtxFor3DGE._12 = 0;

                pRnd->mtxFor3DGE._20 = 0;
                pRnd->mtxFor3DGE._21 = 0;
                pRnd->mtxFor3DGE._22 = FX32_ONE;

                pRnd->mtxFor3DGE._30 = pCurrentMxt->_20;
                pRnd->mtxFor3DGE._31 = pCurrentMxt->_21;
                pRnd->mtxFor3DGE._32 = pRnd->zFor3DSoftwareSprite;
            }
        }
    }
}

static BOOL CheckMtx2DParamsValid (const MtxFx32 * pMtx, NNSG2dRndCore2DMtxCache * pCurrentMtxCacheFor2D) {
    if (!(pMtx->_00 == FX32_ONE && pMtx->_01 == 0 &&
          pMtx->_10 == 0 && pMtx->_11 == FX32_ONE)) {
        if (pCurrentMtxCacheFor2D == NULL) {
            NNS_G2D_WARNING(
                FALSE,
                "Make sure that you have to specified the affine-mtx for the 2D graphics engine when you use affine transformation."
            );
            return FALSE;
        }
    } else {
    }
    return TRUE;
}

void NNS_G2dSetRndCoreCurrentMtx2D (const MtxFx32 * pMtx, NNSG2dRndCore2DMtxCache * pCurrentMtxCacheFor2D) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT();
    NNS_G2D_NULL_ASSERT(pMtx);

    NNS_G2D_WARNING(
        pTheInstance_->pCurrentTargetSurface->type != NNS_G2D_SURFACETYPE_MAIN3D,
        "This method works only for 2D graphics engine rendering."
    );
    NNS_G2D_ASSERT(CheckMtx2DParamsValid(pMtx, pCurrentMtxCacheFor2D));

    {
        NNSG2dRndCoreInstance * pRnd = pTheInstance_;

        pRnd->pCurrentMxt = pMtx;
        pRnd->pCurrentMtxCacheFor2D = pCurrentMtxCacheFor2D;
    }
}

void NNS_G2dSetRndCore3DSoftSpriteZvalue (NNSG2dRndCoreInstance * pRnd, fx32 z) {
    pRnd->zFor3DSoftwareSprite = z;
}

void NNS_G2dSetRndCoreSurface (NNSG2dRndCoreInstance * pRnd, NNSG2dRndCoreSurface * pSurface) {
    NNS_G2D_RND_OUTSIDE_BEGINEND_ASSERT();
    NNS_G2D_NULL_ASSERT(pRnd);
    NNS_G2D_NULL_ASSERT(pSurface);

    pRnd->pCurrentTargetSurface = pSurface;
}

BOOL NNS_G2dIsRndCoreFlipH (const NNSG2dRndCoreInstance * pRnd) {
    NNS_G2D_NULL_ASSERT(pRnd);
    return (BOOL)((pRnd->flipFlag & NNS_G2D_RENDERERFLIP_H) != 0);
}

BOOL NNS_G2dIsRndCoreFlipV (const NNSG2dRndCoreInstance * pRnd) {
    NNS_G2D_NULL_ASSERT(pRnd);
    return (BOOL)((pRnd->flipFlag & NNS_G2D_RENDERERFLIP_V) != 0);
}

void NNS_G2dSetRndCoreFlipMode (NNSG2dRndCoreInstance * pRnd, BOOL bFlipH, BOOL bFlipV) {
    NNS_G2D_NULL_ASSERT(pRnd);
    NNS_G2D_WARNING(
        pRnd->pCurrentMtxCacheFor2D == NULL,
        "You can't use the flip function using affine transformation."
    );

    if (bFlipH) {
        pRnd->flipFlag |= NNS_G2D_RENDERERFLIP_H;
    } else {
        pRnd->flipFlag &= ~NNS_G2D_RENDERERFLIP_H;
    }

    if (bFlipV) {
        pRnd->flipFlag |= NNS_G2D_RENDERERFLIP_V;
    } else {
        pRnd->flipFlag &= ~NNS_G2D_RENDERERFLIP_V;
    }
}

void NNS_G2dRndCoreBeginRendering (NNSG2dRndCoreInstance * pRnd) {
    NNS_G2D_NULL_ASSERT(pRnd);
    NNS_G2D_ASSERT(pTheInstance_ == NULL);
    NNS_G2D_ASSERTMSG(
        IsRndCoreReadyForBeginRendering_(pRnd),
        "NNSG2dRndCoreInstance isn't ready to begin rendering."
    );

    pTheInstance_ = pRnd;

    if (pRnd->pCurrentTargetSurface->type == NNS_G2D_SURFACETYPE_MAIN3D) {
        G3_MtxMode(GX_MTXMODE_PROJECTION);
        G3_PushMtx();
        G3_Translate(
            -pRnd->pCurrentTargetSurface->viewRect.posTopLeft.x,
            -pRnd->pCurrentTargetSurface->viewRect.posTopLeft.y, 0
        );
        G3_MtxMode(GX_MTXMODE_POSITION);

        pRnd->baseTexAddr3D = GetTexBaseAddr3D_(pTheInstance_->pImgProxy);
        pRnd->basePltAddr3D = GetPltBaseAddr3D_(pTheInstance_->pPltProxy);
    } else {
        pTheInstance_->base2DCharOffset
            = GetCharacterBase2D_(
                  pTheInstance_->pImgProxy,
                  pTheInstance_->pCurrentTargetSurface->type
            );
    }
}

void NNS_G2dRndCoreEndRendering (void) {
    NNS_G2D_NULL_ASSERT(pTheInstance_);

    if (pTheInstance_->pCurrentTargetSurface->type == NNS_G2D_SURFACETYPE_MAIN3D) {
        G3_MtxMode(GX_MTXMODE_PROJECTION);
        G3_PopMtx(1);
        G3_MtxMode(GX_MTXMODE_POSITION);
    } else {
        pTheInstance_->base2DCharOffset = 0;

        pTheInstance_->pCurrentMxt = NULL;
        pTheInstance_->pCurrentMtxCacheFor2D = NULL;
    }
    pTheInstance_ = NULL;
}

void NNS_G2dRndCoreDrawCell (const NNSG2dCellData * pCell) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT();
    NNS_G2D_NULL_ASSERT(pCell);

    DrawCellImpl_(pCell, NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE);
}

void NNS_G2dRndCoreDrawCellVramTransfer (const NNSG2dCellData * pCell, u32 cellVramTransferHandle) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT();
    NNS_G2D_NULL_ASSERT(pCell);

    NNS_G2D_ASSERT(cellVramTransferHandle != NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE);
    DrawCellImpl_(pCell, cellVramTransferHandle);
}

void NNS_G2dRndCoreDrawCellFast2D (const NNSG2dCellData * pCell) {
    const NNSG2dRndCoreSurface * pSurface = pTheInstance_->pCurrentTargetSurface;
    NNSG2dFVec2 baseTrans;
    const MtxFx32 * pCurrMtx = RndCoreGetCurrentMtx_();

    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT();

    NNS_G2D_ASSERTMSG(
        pSurface->type == NNS_G2D_SURFACETYPE_MAIN2D ||
        pSurface->type == NNS_G2D_SURFACETYPE_SUB2D,
        "This method can work only for the 2D Graphics Engine."
    );

    NNS_G2D_ASSERTMSG(
        pTheInstance_->pCurrentMtxCacheFor2D == NULL,
        "You can't use this method using affine transfomation."
    );
    NNS_G2D_NULL_ASSERT(pCell);

    NNSi_G2dGetMtxTrans(pCurrMtx, &baseTrans);

    baseTrans.x -= pSurface->viewRect.posTopLeft.x;
    baseTrans.y -= pSurface->viewRect.posTopLeft.y;

    {
        u16 i;
        GXOamAttr * pTempOam;
        const u32 baseCharOffset = pTheInstance_->base2DCharOffset;

        for ( i = 0; i < pCell->numOAMAttrs; i++ ) {
            pTempOam = &pTheInstance_->currentOam;

            NNS_G2dCopyCellAsOamAttr(pCell, i, pTempOam);

            DoFlipTransforme_(pTempOam, &baseTrans);

            pTempOam->charNo += baseCharOffset;

            NNS_G2D_NULL_ASSERT(pTheInstance_->pFuncOamRegister);
            if (FALSE == (*pTheInstance_->pFuncOamRegister)(pTempOam, NNS_G2D_OAM_AFFINE_IDX_NONE, FALSE)) {
                return;
            }
        }
    }
}

void NNS_G2dSetRndCoreCellCloneSource3D (const NNSG2dCellData * pCell) {
    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT();
    NNS_G2D_ASSERTMSG(
        pTheInstance_->pCurrentTargetSurface->type == NNS_G2D_SURFACETYPE_MAIN3D,
        "This method can work only for the 3D Graphics Engine."
    );
    NNS_G2D_NULL_ASSERT(pCell);

    {
        GXOamAttr * pOam = &pTheInstance_->currentOam;

        NNS_G2dCopyCellAsOamAttr(pCell, 0, pOam);

        OverwriteOamFlipFlag_(pOam);

        NNS_G2dSetOamSoftEmuSpriteParamCache
        (
            pOam,
            &pTheInstance_->pImgProxy->attr,
            pTheInstance_->baseTexAddr3D,
            pTheInstance_->basePltAddr3D
        );
    }
}

void NNS_G2dRndCoreDrawCellClone3D (const NNSG2dCellData * pCell) {
    u16 i = 0;

    GXOamAttr * pOam = &pTheInstance_->currentOam;

    NNS_G2D_RND_BETWEEN_BEGINEND_ASSERT();
    NNS_G2D_ASSERTMSG(
        pTheInstance_->pCurrentTargetSurface->type == NNS_G2D_SURFACETYPE_MAIN3D,
        "This method can work only for the 3D Graphics Engine."
    );
    NNS_G2D_NULL_ASSERT(pTheInstance_->pCurrentTargetSurface);
    NNS_G2D_NULL_ASSERT(pCell);

    if (pTheInstance_->flipFlag != NNS_G2D_RENDERERFLIP_NONE) {
        for ( i = 0; i < pCell->numOAMAttrs; i++ ) {
            NNS_G2dCopyCellAsOamAttr(pCell, i, pOam);

            G3_LoadMtx43(&pTheInstance_->mtxFor3DGE);

            {
                const GXOamShape shape = NNS_G2dGetOAMSize(pOam);

                const s16 posX = (s16)GetFlipedOBJPosX_(pOam, shape);
                const s16 posY = (s16)GetFlipedOBJPosY_(pOam, shape);
                const s16 posZ = -1;

                OverwriteOamFlipFlag_(pOam);

                NNS_G2dDrawOneOam3DDirectUsingParamCacheFast(posX, posY, posZ, pOam);
            }
        }
    } else {
        for ( i = 0; i < pCell->numOAMAttrs; i++ ) {
            NNS_G2dCopyCellAsOamAttr(pCell, i, pOam);

            G3_LoadMtx43(&pTheInstance_->mtxFor3DGE);

            {
                const s16 posX = (s16)NNS_G2dRepeatXinCellSpace((s16)pOam->x);
                const s16 posY = (s16)NNS_G2dRepeatYinCellSpace((s16)pOam->y);
                const s16 posZ = -1;

                NNS_G2dDrawOneOam3DDirectUsingParamCacheFast(posX, posY, posZ, pOam);
            }
        }
    }
}
