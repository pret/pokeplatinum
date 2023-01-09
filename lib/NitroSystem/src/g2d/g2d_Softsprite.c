#include <nitro.h>
#include <nnsys/g2d/g2d_Softsprite.h>

static NNSG2dExtendedSprite defaultSpriteAttr_;
static u32 defaultAttrEnable_ = 0x0;
static u16 currentPolygonID_ = 0x0;

static void DrawSprite_(const NNSG2dSimpleSprite * pS, const NNSG2dBasicSprite * pB, const NNSG2dExtendedSprite * pE);

static void DrawSprite_ (const NNSG2dSimpleSprite * pS, const NNSG2dBasicSprite * pB, const NNSG2dExtendedSprite * pE) {
    const fx32 size = FX32_HALF;

    fx32 U0 = 0;
    fx32 U1 = pS->size.x << FX32_SHIFT;

    fx32 V0 = 0;
    fx32 V1 = pS->size.y << FX32_SHIFT;

    if (NNS_G2dIsSpriteAttrEnable(NNS_G2D_SPRITEATTR_UV)) {
        U0 = pE->uvUL.x;
        U1 = pE->uvLR.x;
        V0 = pE->uvUL.y;
        V1 = pE->uvLR.y;
    }

    if (NNS_G2dIsSpriteAttrEnable(NNS_G2D_SPRITEATTR_FLIP)) {
        fx32 temp;

        if (pE->flipH) {
            temp = U0;
            U0 = U1;
            U1 = temp;
        }

        if (pE->flipV) {
            temp = V0;
            V0 = V1;
            V1 = temp;
        }
    }

    {
        G3_Translate(
            (pS->pos.x << FX32_SHIFT) + ((pS->size.x >> 1) << FX32_SHIFT),
            (pS->pos.y << FX32_SHIFT) + ((pS->size.y >> 1) << FX32_SHIFT),
            ((int)pS->priority << FX32_SHIFT)
        );

        if (NNS_G2dIsSpriteAttrEnable(NNS_G2D_SPRITEATTR_ROTO)) {
            G3_Translate(
                pE->rotO.x << FX32_SHIFT,
                    pE->rotO.y << FX32_SHIFT,
                    0
            );
        }

        if (NNS_G2dIsSpriteAttrEnable(NNS_G2D_SPRITEATTR_ROTXY)) {
            G3_RotX(FX_SinIdx(pE->rotX), FX_CosIdx(pE->rotX));
            G3_RotY(FX_SinIdx(pE->rotY), FX_CosIdx(pE->rotY));
        }
        G3_RotZ(FX_SinIdx(pS->rotZ), FX_CosIdx(pS->rotZ));

        if (NNS_G2dIsSpriteAttrEnable(NNS_G2D_SPRITEATTR_ROTO)) {
            G3_Translate(
                -pE->rotO.x << FX32_SHIFT,
                    -pE->rotO.y << FX32_SHIFT,
                    0
            );
        }
        G3_Scale(
            pS->size.x << FX32_SHIFT,
                pS->size.y << FX32_SHIFT,
                FX32_ONE
        );

        if (NNS_G2dIsSpriteAttrEnable(NNS_G2D_SPRITEATTR_TEXTURE)) {
            if (pB->pTextureAttr) {
                const NNSG2dImageAttr * pAttr = pB->pTextureAttr;

                G3_TexImageParam(
                    pAttr->fmt,
                    GX_TEXGEN_TEXCOORD,
                    pAttr->sizeS,
                    pAttr->sizeT,
                    GX_TEXREPEAT_NONE,
                    GX_TEXFLIP_NONE,
                    pAttr->plttUse,
                    pB->texAddr
                );

                if (NNS_G2dIsPaletteImageFmt(pAttr)) {
                    G3_TexPlttBase((u32)(pB->plttAddr + 32 * pB->plttOffset), pAttr->fmt);
                }
            } else {
                OS_Warning("The Texture Attribute of software sprite must be specified.");
            }
        }

        if (NNS_G2dIsSpriteAttrEnable(NNS_G2D_SPRITEATTR_ALPHA)) {
            if (pS->alpha == 0) {
                return;
            }

            G3_PolygonAttr(
                GX_LIGHTMASK_NONE,
                GX_POLYGONMODE_MODULATE,
                GX_CULL_NONE,
                currentPolygonID_,
                pS->alpha,
                0
            );
        }

        if (NNS_G2dIsSpriteAttrEnable(NNS_G2D_SPRITEATTR_COLOR)) {
            G3_Color(pB->color);
        }

        G3_Begin(GX_BEGIN_QUADS);

        G3_TexCoord(U0, V1);
        G3_Vtx10(0 - size, 0 + size, 0);

        G3_TexCoord(U1, V1);
        G3_Vtx10(0 + size, 0 + size, 0);

        G3_TexCoord(U1, V0);
        G3_Vtx10(0 + size, -size, 0);

        G3_TexCoord(U0, V0);
        G3_Vtx10(0 - size, -size, 0);

        G3_End( );
    }
}

static void SetAffine43 (MtxFx43 * pDst, const MtxFx22 * pSubMtx, fx32 x, fx32 y, fx32 z) {
    NNS_G2D_NULL_ASSERT(pDst);
    NNS_G2D_NULL_ASSERT(pSubMtx);

    pDst->_00 = pSubMtx->_00;
    pDst->_01 = pSubMtx->_01;
    pDst->_02 = 0;
    pDst->_10 = pSubMtx->_10;
    pDst->_11 = pSubMtx->_11;
    pDst->_12 = 0;
    pDst->_20 = 0;
    pDst->_21 = 0;
    pDst->_22 = FX32_ONE;
    pDst->_30 = x;
    pDst->_31 = y;
    pDst->_32 = z;
}

static void SetBaseMtx_ (const MtxFx22 * baseMtx) {
    MtxFx43 mtx;
    SetAffine43(&mtx, baseMtx, 0, 0, 0);

    G3_MultMtx43(&mtx);
}

static void DrawOneQuad_ (fx32 U0, fx32 U1, fx32 V0, fx32 V1) {
    const fx32 size = FX32_ONE;

    {
        G3_Begin(GX_BEGIN_QUADS);

        G3_TexCoord(U0, V1);
        G3_Vtx(0, 0 + size, 0);

        G3_TexCoord(U1, V1);
        G3_Vtx(0 + size, 0 + size, 0);

        G3_TexCoord(U1, V0);
        G3_Vtx(0 + size, 0, 0);

        G3_TexCoord(U0, V0);
        G3_Vtx(0, 0, 0);

        G3_End( );
    }
}

static void DrawOneQuadCenter_ (fx32 U0, fx32 U1, fx32 V0, fx32 V1) {
    const fx32 size = FX32_HALF;

    {
        G3_Begin(GX_BEGIN_QUADS);

        G3_TexCoord(U0, V1);
        G3_Vtx(0 - size, 0 + size, 0);

        G3_TexCoord(U1, V1);
        G3_Vtx(0 + size, 0 + size, 0);

        G3_TexCoord(U1, V0);
        G3_Vtx(0 + size, -size, 0);

        G3_TexCoord(U0, V0);
        G3_Vtx(-size, -size, 0);

        G3_End( );
    }
}

void NNS_G2dSetupSoftwareSpriteMaterial () {
    {
        G3_MaterialColorDiffAmb(
            GX_RGB(31, 31, 31),
            GX_RGB(16, 16, 16),
            TRUE
        );

        G3_MaterialColorSpecEmi(
            GX_RGB(16, 16, 16),
            GX_RGB(0, 0, 0),
            FALSE
        );

        G3_PolygonAttr(
            GX_LIGHTMASK_NONE,
            GX_POLYGONMODE_MODULATE,
            GX_CULL_NONE,
            0,
            31,
            0
        );
    }
}

void NNS_G2dSetupSoftwareSpriteCamera () {
    G3_ViewPort(0, 0, 255, 191);
    {
        {
            G3_OrthoW(
                FX32_ONE * 0,
                FX32_ONE * 192,
                FX32_ONE * 0,
                FX32_ONE * 256,
                FX32_ONE * -1024,
                FX32_ONE * 1024,
                FX32_ONE * 1024,
                NULL
            );

            G3_StoreMtx(0);
        }

        {
            VecFx32 Eye = {0, 0, 0};
            VecFx32 vUp = {0, FX32_ONE, 0};
            VecFx32 at = {0, 0, -FX32_ONE};

            G3_LookAt(&Eye, &vUp, &at, NULL);
        }

        G3_MtxMode(GX_MTXMODE_POSITION);
    }
}

void NNS_G2dSetSpriteAttrEnable (u32 attr) {
    defaultAttrEnable_ = attr;
}

BOOL NNS_G2dIsSpriteAttrEnable (NNSG2dSpriteAttr attr) {
    return (BOOL)(defaultAttrEnable_ & (u32)attr);
}

void NNS_G2dSetSpriteCurrentPolygonID (u16 id) {
    NNS_G2D_MINMAX_ASSERT(id, 0, 63);

    currentPolygonID_ = id;
}

void NNS_G2dSetSpriteDefaultAttr (const NNSG2dExtendedSprite * pE) {
    defaultSpriteAttr_ = *pE;
}

const NNSG2dExtendedSprite * NNS_G2dGetSpriteDefaultAttr ( ) {
    return &defaultSpriteAttr_;
}

void NNS_G2dDrawSpriteSimpleFast (const NNSG2dSimpleSprite * pS) {
    DrawSprite_(pS, &defaultSpriteAttr_.basicParams, &defaultSpriteAttr_);
}

void NNS_G2dDrawSpriteBasicFast (const NNSG2dBasicSprite * pB) {
    DrawSprite_(&pB->simpleParams, pB, &defaultSpriteAttr_);
}

void NNS_G2dDrawSpriteExtendedFast (const NNSG2dExtendedSprite * pE) {
    DrawSprite_(&pE->basicParams.simpleParams, &pE->basicParams, pE);
}

void NNS_G2dDrawSpriteFast (s16 px, s16 py, int pz, int sx, int sy, int U0, int V0, int U1, int V1) {
    G3_Translate(FX32_ONE * px, FX32_ONE * py, FX32_ONE * pz);

    G3_Scale(FX32_ONE * sx, FX32_ONE * sy, FX32_ONE);

    DrawOneQuad_(FX32_ONE * U0, FX32_ONE * U1, FX32_ONE * V0, FX32_ONE * V1);
}

void NNSi_G2dDrawSpriteFast (s16 px, s16 py, fx32 pz, int sx, int sy, fx32 U0, fx32 V0, fx32 U1, fx32 V1) {
    G3_Translate(px << FX32_SHIFT, py << FX32_SHIFT, pz);

    G3_Scale(sx << FX32_SHIFT, sy << FX32_SHIFT, FX32_ONE);

    {
        const fx32 size = FX32_ONE;

        G3_Begin(GX_BEGIN_QUADS);

        G3_TexCoord(U0, V1);
        G3_Vtx(0, 0 + size, 0);

        G3_TexCoord(U1, V1);
        G3_Vtx(0 + size, 0 + size, 0);

        G3_TexCoord(U1, V0);
        G3_Vtx(0 + size, 0, 0);

        G3_TexCoord(U0, V0);
        G3_Vtx(0, 0, 0);

        G3_End( );
    }
}

void NNSi_G2dDrawSpriteWithMtxFast (s16 px, s16 py, fx32 pz, int sx, int sy, const MtxFx22 * baseMtx, fx32 U0, fx32 V0, fx32 U1, fx32 V1) {
    G3_Translate(FX32_ONE * px + FX32_HALF * sx, FX32_ONE * py + FX32_HALF * sy, pz);

    SetBaseMtx_(baseMtx);

    G3_Scale(FX32_ONE * sx, FX32_ONE * sy, FX32_ONE);

    DrawOneQuadCenter_(U0, U1, V0, V1);
}

void NNSi_G2dDrawSpriteWithMtxDoubleAffineFast (s16 px, s16 py, fx32 pz, int sx, int sy, const MtxFx22 * baseMtx, fx32 U0, fx32 V0, fx32 U1, fx32 V1) {
    G3_Translate(FX32_ONE * px + FX32_ONE * sx, FX32_ONE * py + FX32_ONE * sy, pz);

    SetBaseMtx_(baseMtx);

    G3_Scale(FX32_ONE * sx, FX32_ONE * sy, FX32_ONE);

    DrawOneQuadCenter_(U0, U1, V0, V1);
}
