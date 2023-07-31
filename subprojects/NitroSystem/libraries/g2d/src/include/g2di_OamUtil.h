#ifndef NNS_G2DI_OAMUTIL_H_
#define NNS_G2DI_OAMUTIL_H_

#include <nitro.h>
#include <nnsys/g2d/fmt/g2d_Vec_data.h>
#include <nnsys/g2d/fmt/g2d_Oam_data.h>
#include <nnsys/g2d/g2d_OAM_Types.h>

static fx32 NNSi_G2dGetOamSin(const NNSG2dOamAffineParams * pOamAff);
static fx32 NNSi_G2dGetOamCos(const NNSG2dOamAffineParams * pOamAff);
static s16 NNSi_G2dGetOamX(const GXOamAttr * oamAttr);
static s16 NNSi_G2dGetOamY(const GXOamAttr * oamAttr);
static u16 NNSi_G2dGetOamName(const GXOamAttr * oamAttr);
static u16 NNSi_G2dGetOamColorParam(const GXOamAttr * oamAttr);
static BOOL NNSi_G2dGetOamFlipH(const GXOamAttr * oamAttr);
static BOOL NNSi_G2dGetOamFlipV(const GXOamAttr * oamAttr);
static void NNSi_G2dSetInvisible(GXOamAttr * oamAttr);
static BOOL NNSi_G2dIsVisible(const GXOamAttr * pOam);
static u16 NNSi_G2dGetTexelS(GXTexSizeS s);
static u16 NNSi_G2dGetTexelT(GXTexSizeT t);
static u16 NNSi_G2dGetTextureBaseAddrOffs(u16 charIdx, GXTexSizeS sS, GXTexSizeT sT, u16 bytePerTexel);
static u16 NNSi_G2dGetTextureU(u16 charIdx, GXTexSizeS sS);
static u16 NNSi_G2dGetTextureV(u16 charIdx, GXTexSizeS sS);
static BOOL NNSi_G2dIsRSEnable(const GXOamAttr * pOam);
static u16 NNSi_G2dGetAffineIdx(const GXOamAttr * pOam);
static void NNSi_G2dAdjustDifferenceOfRotateOrientation(const GXOamAttr * pOam, const MtxFx22 * pM, NNSG2dFVec2 * pV, BOOL adjustDoubleAffine);

static const u16 NNSI_G2D_NNSI_G2D_SIZE_OBJ_CHAR_TEXEL_S = 0x8;
static const u16 NNSI_G2D_NNSI_G2D_SIZE_OBJ_CHAR_TEXEL_T = 0x8;
static const u16 NNSI_G2D_SIZE_OBJ_CHAR = NNSI_G2D_NNSI_G2D_SIZE_OBJ_CHAR_TEXEL_S * NNSI_G2D_NNSI_G2D_SIZE_OBJ_CHAR_TEXEL_T;

NNS_G2D_INLINE fx32 NNSi_G2dGetOamSin (const NNSG2dOamAffineParams * pOamAff) {
    NNS_G2D_NULL_ASSERT(pOamAff);
    return (fx32)((u32)pOamAff->PB << 4);
}

NNS_G2D_INLINE fx32 NNSi_G2dGetOamCos (const NNSG2dOamAffineParams * pOamAff) {
    NNS_G2D_NULL_ASSERT(pOamAff);
    return (fx32)((u32)pOamAff->PA << 4);
}

NNS_G2D_INLINE s16 NNSi_G2dGetOamX (const GXOamAttr * oamAttr) {
    NNS_G2D_NULL_ASSERT(oamAttr);
    {
        s16 val = (s16)((GX_OAM_ATTR01_X_MASK & oamAttr->attr01) >> GX_OAM_ATTR01_X_SHIFT);
        return val;
    }
}

NNS_G2D_INLINE s16 NNSi_G2dGetOamY (const GXOamAttr * oamAttr) {
    NNS_G2D_NULL_ASSERT(oamAttr);
    {
        s16 val = (s16)((GX_OAM_ATTR01_Y_MASK & oamAttr->attr01) >> GX_OAM_ATTR01_Y_SHIFT);
        return val;
    }
}

NNS_G2D_INLINE s16 NNSi_G2dRepeatXinScreenArea (s16 srcX) {
    if (srcX > 0x0FF) {
        srcX |= 0xFF00;
    }
    return srcX;
}

NNS_G2D_INLINE s16 NNSi_G2dRepeatYinScreenArea (s16 srcY) {
    if (srcY > 0xBF) {
        srcY |= 0xFF00;
    }
    return srcY;
}

NNS_G2D_INLINE void NNSi_G2dSetOamX (GXOamAttr * oamAttr, s16 x) {
    NNS_G2D_NULL_ASSERT(oamAttr);
    oamAttr->attr01 |= (GX_OAM_ATTR01_X_MASK & ((u32)x << GX_OAM_ATTR01_X_SHIFT));
}

NNS_G2D_INLINE void NNSi_G2dSetOamY (GXOamAttr * oamAttr, s16 y) {
    NNS_G2D_NULL_ASSERT(oamAttr);
    oamAttr->attr01 |= (GX_OAM_ATTR01_Y_MASK & ((u32)y << GX_OAM_ATTR01_Y_SHIFT));
}

NNS_G2D_INLINE u16 NNSi_G2dGetOamName (const GXOamAttr * oamAttr) {
    NNS_G2D_NULL_ASSERT(oamAttr);
    return (u16)((GX_OAM_ATTR2_NAME_MASK & oamAttr->attr2) >> GX_OAM_ATTR2_NAME_SHIFT);
}

NNS_G2D_INLINE u16 NNSi_G2dGetOamColorParam (const GXOamAttr * oamAttr) {
    NNS_G2D_NULL_ASSERT(oamAttr);
    return (u16)((GX_OAM_ATTR2_CPARAM_MASK & oamAttr->attr2) >> GX_OAM_ATTR2_CPARAM_SHIFT);
}

NNS_G2D_INLINE BOOL NNSi_G2dGetOamFlipH (const GXOamAttr * oamAttr) {
    return (BOOL)(oamAttr->flipH);
}

NNS_G2D_INLINE BOOL NNSi_G2dGetOamFlipV (const GXOamAttr * oamAttr) {
    return (BOOL)(oamAttr->flipV);
}

NNS_G2D_INLINE u16 NNSi_G2dGetOamAffineIdx (const GXOamAttr * oamAttr) {
    return (u16)((GX_OAM_ATTR01_RS_MASK & oamAttr->attr01) >> GX_OAM_ATTR01_RS_SHIFT);
}

NNS_G2D_INLINE void NNSi_G2dSetInvisible (GXOamAttr * oamAttr) {
    NNS_G2D_NULL_ASSERT(oamAttr);

    oamAttr->attr0 &= ~GX_OAM_ATTR01_RSENABLE_MASK;
    oamAttr->attr0 |= (0x2 << GX_OAM_ATTR01_RSENABLE_SHIFT);
}

NNS_G2D_INLINE BOOL NNSi_G2dIsVisible (const GXOamAttr * pOam) {
    NNS_G2D_NULL_ASSERT(pOam);
    return (0x2 != (GX_OAM_ATTR01_RSENABLE_MASK & pOam->attr0) >> GX_OAM_ATTR01_RSENABLE_SHIFT) ? TRUE : FALSE;
}

static u16 NNSi_G2dGetTexelS (GXTexSizeS s) {
    return (u16)(0x0001 << (0x3 + s));
}

NNS_G2D_INLINE u16 NNSi_G2dGetTexelT (GXTexSizeT t) {
    return (u16)(0x0001 << (0x3 + t));
}

NNS_G2D_INLINE u16 NNSi_G2dGetTextureBaseAddrOffs (u16 charIdx, GXTexSizeS sS, GXTexSizeT sT, u16 bytePerTexel) {
#pragma unused ( sS )
#pragma unused ( sT )
#pragma unused ( bytePerTexel )

    const u16 retOffs = (u16)(charIdx * NNSI_G2D_SIZE_OBJ_CHAR);
    NNS_G2D_MINMAX_ASSERT(retOffs, 0, bytePerTexel * NNSi_G2dGetTexelS(sS) * NNSi_G2dGetTexelT(sT));

    return retOffs;
}

NNS_G2D_INLINE u16 NNSi_G2dGetTextureU (u16 charIdx, GXTexSizeS sS) {
    const int numCharPerS = NNSi_G2dGetTexelS(sS) / NNSI_G2D_NNSI_G2D_SIZE_OBJ_CHAR_TEXEL_S;
    const int U = charIdx % numCharPerS;

    return (u16)(U * NNSI_G2D_NNSI_G2D_SIZE_OBJ_CHAR_TEXEL_S);
}

NNS_G2D_INLINE u16 NNSi_G2dGetTextureV (u16 charIdx, GXTexSizeS sS) {
    const int numCharPerS = NNSi_G2dGetTexelS(sS) / NNSI_G2D_NNSI_G2D_SIZE_OBJ_CHAR_TEXEL_S;
    const int V = charIdx / numCharPerS;

    return (u16)(V * NNSI_G2D_NNSI_G2D_SIZE_OBJ_CHAR_TEXEL_T);
}

NNS_G2D_INLINE BOOL NNSi_G2dIsRSEnable (const GXOamAttr * pOam) {
    return ((pOam->attr01 & GX_OAM_ATTR01_RSENABLE_MASK) != 0) ? TRUE : FALSE;
}

NNS_G2D_INLINE u16 NNSi_G2dGetAffineIdx (const GXOamAttr * pOam) {
    if (NNSi_G2dIsRSEnable(pOam)) {
        return (u16)((pOam->attr01 & GX_OAM_ATTR01_RS_MASK) >> GX_OAM_ATTR01_RS_SHIFT);
    } else {
        return 0;
    }
}

NNS_G2D_INLINE void NNS_G2dGetOamTransFx32 (const GXOamAttr * pOam, NNSG2dFVec2 * pRet) {
    NNS_G2D_NULL_ASSERT(pOam);
    NNS_G2D_NULL_ASSERT(pRet);

    pRet->x = (fx32)(NNS_G2dRepeatXinCellSpace(NNSi_G2dGetOamX(pOam)) * FX32_ONE);
    pRet->y = (fx32)(NNS_G2dRepeatYinCellSpace(NNSi_G2dGetOamY(pOam)) * FX32_ONE);
}

NNS_G2D_INLINE void NNSi_G2dRemovePositionAdjustmentFromDoubleAffineOBJ (const GXOamAttr * pOam, NNSG2dFVec2 * pV) {
    NNS_G2D_NULL_ASSERT(pOam);
    NNS_G2D_NULL_ASSERT(pV);

#ifdef NNS_G2D_ASSUME_DOUBLEAFFINE_OBJPOS_ADJUSTED
    if (G2_GetOBJEffect(pOam) == GX_OAM_EFFECT_AFFINE_DOUBLE) {
        const GXOamShape oamShape = NNS_G2dGetOAMSize(pOam);
        const int halfW = NNS_G2dGetOamSizeX(&oamShape) << (FX32_SHIFT - 1);
        const int halfH = NNS_G2dGetOamSizeY(&oamShape) << (FX32_SHIFT - 1);

        pV->x += halfW;
        pV->y += halfH;
    }
#else
    #pragma unused( pOam )
    #pragma unused( pV )
#endif
}

NNS_G2D_INLINE void NNSi_G2dAdjustDifferenceOfRotateOrientation (const GXOamAttr * pOam, const MtxFx22 * pM, NNSG2dFVec2 * pV, BOOL adjustDoubleAffine) {
    NNS_G2D_NULL_ASSERT(pOam);
    NNS_G2D_NULL_ASSERT(pM);
    NNS_G2D_NULL_ASSERT(pV);
    {
        const GXOamShape oamShape = NNS_G2dGetOAMSize(pOam);
        const int halfW = NNS_G2dGetOamSizeX(&oamShape) >> 1;
        const int halfH = NNS_G2dGetOamSizeY(&oamShape) >> 1;

        pV->x += -(halfW << FX32_SHIFT) + pM->_00 * halfW + pM->_10 * halfH;
        pV->y += -(halfH << FX32_SHIFT) + pM->_01 * halfW + pM->_11 * halfH;

        if (adjustDoubleAffine) {
            pV->x -= halfW << FX32_SHIFT;
            pV->y -= halfH << FX32_SHIFT;
        }
    }
}

#endif
