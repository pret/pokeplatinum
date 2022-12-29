#ifndef NNS_G2D_RENDERERCORE_H_
#define NNS_G2D_RENDERERCORE_H_

#include <nitro.h>

#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/fmt/g2d_Vec_data.h>

#include <nnsys/g2d/fmt/g2d_Oam_data.h>
#include <nnsys/g2d/fmt/g2d_Cell_data.h>

#ifdef __cplusplus
extern "C" {
#endif

#define MtxCache_NOT_AVAILABLE 0xFFFF
#define MtxCache_NOT_AVAILABLE_ForMemFill 0xFFFFFFFF
#define NNS_G2D_NUMBER_OF_2DGRAPHICS_ENGINE 2
#define NNS_G2D_RNDCORE_INTERNAL_OAMBUFFER_SIZE 128
#define NNS_G2D_OAMFLIP_PATTERN_NUM 0x04

typedef enum NNSG2dRendererAffineTypeOverwiteMode {
    NNS_G2D_RND_AFFINE_OVERWRITE_NONE,
    NNS_G2D_RND_AFFINE_OVERWRITE_NORMAL,
    NNS_G2D_RND_AFFINE_OVERWRITE_DOUBLE
} NNSG2dRendererAffineTypeOverwiteMode;

typedef enum NNSG2dSurfaceType {
    NNS_G2D_SURFACETYPE_MAIN3D = 0x00,
    NNS_G2D_SURFACETYPE_MAIN2D = 0x01,
    NNS_G2D_SURFACETYPE_SUB2D  = 0x02,
    NNS_G2D_SURFACETYPE_MAX    = 0x03
} NNSG2dSurfaceType;

typedef enum NNSG2dRendererFlip {
    NNS_G2D_RENDERERFLIP_NONE   = 0x00,
    NNS_G2D_RENDERERFLIP_H      = 0x01,
    NNS_G2D_RENDERERFLIP_V      = 0x02
} NNSG2dRendererFlip;

typedef struct NNSG2dRndCore2DMtxCache {
    MtxFx22 m22;
    u16 affineIndex[NNS_G2D_OAMFLIP_PATTERN_NUM][NNS_G2D_NUMBER_OF_2DGRAPHICS_ENGINE];
} NNSG2dRndCore2DMtxCache;

typedef struct NNSG2dViewRect {
    NNSG2dFVec2 posTopLeft;
    NNSG2dFVec2 sizeView;
} NNSG2dViewRect;

typedef BOOL (* NNSG2dOamRegisterFunction)
(
    const GXOamAttr * pOam,
    u16 affineIndex,
    BOOL bDoubleAffine
);

typedef BOOL (* NNSG2dOamBlockRegisterFunction)
(
    const GXOamAttr * pOam,
    u16 num
);

typedef u16 (* NNSG2dAffineRegisterFunction)
(
    const MtxFx22 * mtx
);

struct NNSG2dRndCoreInstance;
struct NNSG2dRndCoreSurface;

typedef void (* NNSG2dRndCoreDrawCellCallBack)
(
    struct NNSG2dRndCoreInstance * pRend,
    const NNSG2dCellData * pCell
);

typedef void (* NNSG2dRndCoreDrawOamCallBack)
(
    struct NNSG2dRndCoreInstance * pRend,
    const NNSG2dCellData * pCell,
    u16 oamIdx
);

typedef struct NNSG2dRndCoreSurface {
    NNSG2dViewRect viewRect;
    BOOL bActive;
    NNSG2dSurfaceType type;

    NNSG2dRndCoreDrawCellCallBack pBeforeDrawCellBackFunc;
    NNSG2dRndCoreDrawCellCallBack pAfterDrawCellBackFunc;

    NNSG2dRndCoreDrawOamCallBack pBeforeDrawOamBackFunc;

    NNSG2dRndCoreDrawOamCallBack pAfterDrawOamBackFunc;
} NNSG2dRndCoreSurface;

struct NNSG2dImageProxy;
struct NNSG2dImagePaletteProxy;

typedef struct NNSG2dRndCoreInstance {
    NNSG2dRndCoreSurface * pCurrentTargetSurface;
    NNSG2dRendererAffineTypeOverwiteMode affineOverwriteMode;

    const struct NNSG2dImageProxy * pImgProxy;
    const struct NNSG2dImagePaletteProxy * pPltProxy;
    u32 base2DCharOffset;

    u32 baseTexAddr3D;
    u32 basePltAddr3D;

    NNSG2dOamRegisterFunction pFuncOamRegister;
    NNSG2dAffineRegisterFunction pFuncOamAffineRegister;

    u32 flipFlag;

    NNSG2dRndCore2DMtxCache * pCurrentMtxCacheFor2D;

    const MtxFx32 * pCurrentMxt;

    BOOL bDrawEnable;

    fx32 zFor3DSoftwareSprite;

    GXOamAttr currentOam;

    MtxFx43 mtxFor3DGE;
} NNSG2dRndCoreInstance;

void NNS_G2dInitRndCore(NNSG2dRndCoreInstance * pRnd);
void NNS_G2dInitRndCoreSurface(NNSG2dRndCoreSurface * pSurface);

struct NNSG2dImageProxy;
struct NNSG2dImagePaletteProxy;

void NNS_G2dSetRndCoreImageProxy
(
    NNSG2dRndCoreInstance * pRnd,
    const struct NNSG2dImageProxy * pImgProxy,
    const struct NNSG2dImagePaletteProxy * pPltProxy
);

void NNS_G2dSetRndCoreOamRegisterFunc
(
    NNSG2dRndCoreInstance * pRnd,
    NNSG2dOamRegisterFunction pFuncOamRegister,
    NNSG2dAffineRegisterFunction pFuncOamAffineRegister
);

void NNS_G2dSetRndCoreAffineOverwriteMode
    (NNSG2dRndCoreInstance * pRnd,
    NNSG2dRendererAffineTypeOverwiteMode mode
    );

void NNS_G2dSetRndCore3DSoftSpriteZvalue
(
    NNSG2dRndCoreInstance * pRnd, fx32 z
);

void NNS_G2dSetRndCoreSurface
(
    NNSG2dRndCoreInstance * pRnd,
    NNSG2dRndCoreSurface * pSurface
);

void NNS_G2dSetRndCoreCurrentMtx3D
(
    const MtxFx32 * pCurrentMxt
);
void NNS_G2dSetRndCoreCurrentMtx2D
(
    const MtxFx32 * pMtx,
    NNSG2dRndCore2DMtxCache * pCurrentMtxCacheFor2D
);

BOOL NNS_G2dIsRndCoreFlipH(const NNSG2dRndCoreInstance * pRnd);
BOOL NNS_G2dIsRndCoreFlipV(const NNSG2dRndCoreInstance * pRnd);
void NNS_G2dSetRndCoreFlipMode(NNSG2dRndCoreInstance * pRnd, BOOL bFlipH, BOOL bFlipV);

void NNS_G2dRndCoreBeginRendering(NNSG2dRndCoreInstance * pRnd);
void NNS_G2dRndCoreEndRendering(void);

void NNS_G2dRndCoreDrawCell(const NNSG2dCellData * pCell);
void NNS_G2dRndCoreDrawCellVramTransfer(const NNSG2dCellData * pCell, u32 cellVramTransferHandle);

void NNS_G2dRndCoreDrawCellFast2D(const NNSG2dCellData * pCell);

void NNS_G2dSetRndCoreCellCloneSource3D(const NNSG2dCellData * pCell);
void NNS_G2dRndCoreDrawCellClone3D(const NNSG2dCellData * pCell);

NNS_G2D_INLINE void NNS_G2dInitRndCore2DMtxCache
(
    NNSG2dRndCore2DMtxCache * pMtxCache
)
{
    MI_CpuFillFast(pMtxCache->affineIndex,
                   MtxCache_NOT_AVAILABLE_ForMemFill,
                   sizeof(pMtxCache->affineIndex));
}

NNS_G2D_INLINE void NNS_G2dSetRndCore2DMtxCacheMtxParams
(
    NNSG2dRndCore2DMtxCache * pMtxCache,
    MtxFx22 * pM
)
{
    NNS_G2dInitRndCore2DMtxCache(pMtxCache);
    pMtxCache->m22 = *pM;
}

#ifdef __cplusplus
}
#endif

#endif
