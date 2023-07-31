#ifndef NNS_G2D_RENDERER_H_
#define NNS_G2D_RENDERER_H_

#include <nitro.h>

#include <nnsys/g2d/g2d_Softsprite.h>
#include <nnsys/g2d/g2d_Entity.h>
#include <nnsys/g2d/g2d_Node.h>
#include <nnsys/g2d/g2d_MultiCellAnimation.h>
#include <nnsys/g2d/g2d_PaletteTable.h>
#include <nnsys/g2d/fmt/g2d_Character_data.h>
#include <nnsys/g2d/g2d_RendererCore.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2dAddTargetSurface NNS_G2dAddRendererTargetSurface
#define NNS_G2dSetCurrentImageProxy NNS_G2dSetRendererImageProxy

typedef BOOL (* NNSG2dRndCellCullingFunction)
(
    const NNSG2dCellData * pCell,
    const MtxFx32 * pMtx,
    const NNSG2dViewRect * pViewRect
);

struct NNSG2dRendererInstance;
struct NNSG2dRenderSurface;

typedef void (* NNSG2dRndDrawCellCallBack)
(
    struct NNSG2dRendererInstance * pRend,
    struct NNSG2dRenderSurface * pSurface,
    const NNSG2dCellData * pCell,
    const MtxFx32 * pMtx
);

typedef void (* NNSG2dRndDrawOamCallBack)
(
    struct NNSG2dRendererInstance * pRend,
    struct NNSG2dRenderSurface * pSurface,
    const NNSG2dCellData * pCell,
    u16 oamIdx,
    const MtxFx32 * pMtx
);

typedef struct NNSG2dRenderSurface {
    union {
        NNSG2dRndCoreSurface coreSurface;
        struct {
            NNSG2dViewRect viewRect;
            BOOL bActive;
            NNSG2dSurfaceType type;

            NNSG2dRndCoreDrawCellCallBack pBeforeCoreDrawCellBack;
            NNSG2dRndCoreDrawCellCallBack pAfterCoreDrawCellBack;

            NNSG2dRndCoreDrawOamCallBack pBeforeCoreDrawOamBack;
            NNSG2dRndCoreDrawOamCallBack pAfterCoreDrawOamBack;
        };
    };

    NNSG2dOamRegisterFunction pFuncOamRegister;
    NNSG2dAffineRegisterFunction pFuncOamAffineRegister;

    void * pNextSurface;

    NNSG2dRndCellCullingFunction pFuncVisibilityCulling;

    NNSG2dRndDrawCellCallBack pBeforeDrawCellBackFunc;
    NNSG2dRndDrawCellCallBack pAfterDrawCellBackFunc;

    NNSG2dRndDrawOamCallBack pBeforeDrawOamBackFunc;
    NNSG2dRndDrawOamCallBack pAfterDrawOamBackFunc;
} NNSG2dRenderSurface;

typedef enum NNSG2dRendererOptimizeHint {
    NNS_G2D_RDR_OPZHINT_NONE              = 0x0,
    NNS_G2D_RDR_OPZHINT_NOT_SR            = 0x1,
    NNS_G2D_RDR_OPZHINT_LOCK_PARAMS       = 0x2
} NNSG2dRendererOptimizeHint;

typedef enum NNSG2dRendererOverwriteParam {
    NNS_G2D_RND_OVERWRITE_NONE          = 0x0,
    NNS_G2D_RND_OVERWRITE_PRIORITY      = 0x1,
    NNS_G2D_RND_OVERWRITE_PLTTNO        = 0x2,
    NNS_G2D_RND_OVERWRITE_MOSAIC        = 0x4,
    NNS_G2D_RND_OVERWRITE_OBJMODE       = 0x8,
    NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS   = 0x10,
    NNS_G2D_RND_OVERWRITE_MAX
} NNSG2dRendererOverwriteParam;

typedef struct NNSG2dRendererInstance {
    NNSG2dRndCoreInstance rendererCore;

    NNSG2dRenderSurface * pTargetSurfaceList;
    NNSG2dRenderSurface * pCurrentSurface;

    const NNSG2dPaletteSwapTable * pPaletteSwapTbl;
    u32 opzHint;

    fx32 spriteZoffsetStep;

    u32 overwriteEnableFlag;
    u16 overwritePriority;
    u16 overwritePlttNo;
    GXOamMode overwriteObjMode;
    BOOL overwriteMosaicFlag;

    u16 overwritePlttNoOffset;
    u16 pad16_;
} NNSG2dRendererInstance;

void NNS_G2dInitRenderer(NNSG2dRendererInstance * pRend);
void NNS_G2dAddRendererTargetSurface
(
    NNSG2dRendererInstance * pRend,
    NNSG2dRenderSurface * pNew
);
void NNS_G2dInitRenderSurface(NNSG2dRenderSurface * pSurface);
void NNS_G2dSetRendererFlipMode
(
    NNSG2dRendererInstance * pRend,
    BOOL bFlipH,
    BOOL bFlipV
);

void NNS_G2dBeginRendering(NNSG2dRendererInstance * pRendererInstance);
void NNS_G2dBeginRenderingEx(NNSG2dRendererInstance * pRendererInstance, u32 opzHint);

void NNS_G2dDrawCell(const NNSG2dCellData * pCell);
void NNS_G2dDrawCellAnimation(const NNSG2dCellAnimation * pCellAnim);
void NNS_G2dDrawMultiCell(const NNSG2dMultiCellInstance * pMC);
void NNS_G2dDrawMultiCellAnimation(const NNSG2dMultiCellAnimation * pMCAnim);

void NNS_G2dDrawEntity(NNSG2dEntity * pEntity);

void NNS_G2dEndRendering( );

void NNS_G2dPushMtx();
void NNS_G2dPopMtx();
void NNS_G2dTranslate(fx32 x, fx32 y, fx32 z);
void NNS_G2dSetTrans(fx32 x, fx32 y, fx32 z);
void NNS_G2dScale(fx32 x, fx32 y, fx32 z);
void NNS_G2dRotZ(fx32 sin, fx32 cos);

void NNS_G2dSetRendererPaletteTbl
(
    NNSG2dRendererInstance * pRend,
    const NNSG2dPaletteSwapTable * pTbl
);
const NNSG2dPaletteSwapTable * NNS_G2dGetRendererPaletteTbl
(
    NNSG2dRendererInstance * pRend
);
void NNS_G2dResetRendererPaletteTbl
(
    NNSG2dRendererInstance * pRend
);

void NNS_G2dSetRendererImageProxy
(
    NNSG2dRendererInstance * pRend,
    const NNSG2dImageProxy * pImgProxy,
    const NNSG2dImagePaletteProxy * pPltProxy
);

NNS_G2D_INLINE void NNS_G2dSetRendererSpriteZoffset
(
    NNSG2dRendererInstance * pRend,
    fx32 spriteZoffset
)
{
    pRend->spriteZoffsetStep = spriteZoffset;
}

NNS_G2D_INLINE void NNS_G2dSetRendererAffineOverwriteMode
(
    NNSG2dRendererInstance * pRend,
    NNSG2dRendererAffineTypeOverwiteMode affineMode
)
{
    NNS_G2D_NULL_ASSERT(pRend);
    pRend->rendererCore.affineOverwriteMode = affineMode;
}

NNS_G2D_INLINE NNSG2dRendererAffineTypeOverwiteMode NNS_G2dGetRendererAffineOverwriteMode
(
    const NNSG2dRendererInstance * pRend
)
{
    NNS_G2D_NULL_ASSERT(pRend);
    return pRend->rendererCore.affineOverwriteMode;
}

NNS_G2D_INLINE void NNS_G2dSetRendererSurfaceActiveFlag
(
    NNSG2dRenderSurface * pSurface,
    BOOL bActive
)
{
    NNS_G2D_NULL_ASSERT(pSurface);
    pSurface->coreSurface.bActive = bActive;
}

NNS_G2D_INLINE BOOL NNS_G2dGetRendererSurfaceActiveFlag
(
    const NNSG2dRenderSurface * pSurface
)
{
    NNS_G2D_NULL_ASSERT(pSurface);
    return pSurface->coreSurface.bActive;
}

NNS_G2D_INLINE void NNS_G2dSetRendererOverwritePriority
(
    NNSG2dRendererInstance * pRend,
    u16 Priority
)
{
    pRend->overwritePriority = Priority;
}

NNS_G2D_INLINE u16 NNS_G2dGetRendererOverwritePriority
(
    const NNSG2dRendererInstance * pRend
)
{
    return pRend->overwritePriority;
}

NNS_G2D_INLINE void NNS_G2dSetRendererOverwritePlttNo
(
    NNSG2dRendererInstance * pRend,
    u16 plttNo
)
{
    pRend->overwritePlttNo = plttNo;
}

NNS_G2D_INLINE u16 NNS_G2dGetRendererOverwritePlttNo
(
    const NNSG2dRendererInstance * pRend
)
{
    return pRend->overwritePlttNo;
}

NNS_G2D_INLINE void NNS_G2dSetRendererOverwritePlttNoOffset
(
    NNSG2dRendererInstance * pRend,
    u16 plttNoOffset
)
{
    pRend->overwritePlttNoOffset = plttNoOffset;
}

NNS_G2D_INLINE u16 NNS_G2dGetRendererOverwritePlttNoOffset
(
    const NNSG2dRendererInstance * pRend
)
{
    return pRend->overwritePlttNoOffset;
}

NNS_G2D_INLINE void NNS_G2dSetRendererOverwriteMosaicFlag
(
    NNSG2dRendererInstance * pRend,
    BOOL overwriteMosaicFlag
)
{
    pRend->overwriteMosaicFlag = overwriteMosaicFlag;
}

NNS_G2D_INLINE BOOL NNS_G2dGetRendererOverwriteMosaicFlag
(
    const NNSG2dRendererInstance * pRend
)
{
    return pRend->overwriteMosaicFlag;
}

NNS_G2D_INLINE void NNS_G2dSetRendererOverwriteOBJMode
(
    NNSG2dRendererInstance * pRend,
    GXOamMode overwriteObjMode
)
{
    pRend->overwriteObjMode = overwriteObjMode;
}

NNS_G2D_INLINE GXOamMode NNS_G2dGetRendererOverwriteOBJMode
(
    const NNSG2dRendererInstance * pRend
)
{
    return pRend->overwriteObjMode;
}

NNS_G2D_INLINE void NNS_G2dSetRendererOverwriteEnable
(
    NNSG2dRendererInstance * pRnd,
    NNSG2dRendererOverwriteParam flag
)
{
    pRnd->overwriteEnableFlag |= flag;
}

NNS_G2D_INLINE void NNS_G2dSetRendererOverwriteDisable
(
    NNSG2dRendererInstance * pRnd,
    NNSG2dRendererOverwriteParam flag
)
{
    pRnd->overwriteEnableFlag &= ~flag;
}

NNS_G2D_INLINE BOOL NNS_G2dIsRendererOverwriteEnable
(
    const NNSG2dRendererInstance * pRnd,
    NNSG2dRendererOverwriteParam flag
)
{
    return (BOOL)(pRnd->overwriteEnableFlag & flag);
}

NNS_G2D_INLINE void NNS_G2dOptimizeRenderer (NNSG2dRendererInstance * pRend)
{
#pragma unused( pRend )
    OS_Warning("Sorry, NNS_G2dOptimizeRenderer() is obsolete.Please avoid calling this func.");
}

#ifdef __cplusplus
}
#endif

#endif
