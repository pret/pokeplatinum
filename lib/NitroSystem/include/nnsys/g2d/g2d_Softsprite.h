#ifndef NNS_G2D_SOFTWARESPRITE_H_
#define NNS_G2D_SOFTWARESPRITE_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/fmt/g2d_Vec_data.h>
#include <nnsys/g2d/g2d_Image.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2dSetCurrentPolygonID NNS_G2dSetSpriteCurrentPolygonID
#define NNS_G2dSetDefaultAttr NNS_G2dSetSpriteDefaultAttr
#define NNS_G2dGetDefaultAttr NNS_G2dGetSpriteDefaultAttr

#define NNS_G2D_SPRITEATTR_TEXTUE NNS_G2D_SPRITEATTR_TEXTURE

typedef enum NNSG2dSpriteAttr {
    NNS_G2D_SPRITEATTR_ALPHA   = 0x1,
    NNS_G2D_SPRITEATTR_TEXTURE = 0x2,
    NNS_G2D_SPRITEATTR_COLOR   = 0x4,
    NNS_G2D_SPRITEATTR_UV      = 0x8,
    NNS_G2D_SPRITEATTR_FLIP    = 0x10,
    NNS_G2D_SPRITEATTR_ROTO    = 0x20,
    NNS_G2D_SPRITEATTR_ROTXY   = 0x40
} NNSG2dSpriteAttr;

typedef struct NNSG2dSimpleSprite {
    NNSG2dSVec2 pos;
    NNSG2dSVec2 size;

    u16 rotZ;
    u8 priority;
    u8 alpha;
} NNSG2dSimpleSprite;

typedef struct NNSG2dBasicSprite {
    NNSG2dSimpleSprite simpleParams;
    NNSG2dImageAttr * pTextureAttr;
    u32 texAddr;
    u32 plttAddr;
    u16 plttOffset;
    GXRgb color;
} NNSG2dBasicSprite;

typedef struct NNSG2dExtendedSprite {
    NNSG2dBasicSprite basicParams;
    NNSG2dFVec2 uvUL;
    NNSG2dFVec2 uvLR;
    BOOL flipH;
    BOOL flipV;
    NNSG2dSVec2 rotO;
    u16 rotX;
    u16 rotY;
} NNSG2dExtendedSprite;

void NNS_G2dSetupSoftwareSpriteCamera();
void NNS_G2dSetupSoftwareSpriteMaterial();

void NNS_G2dSetSpriteAttrEnable(u32 attr);
BOOL NNS_G2dIsSpriteAttrEnable(NNSG2dSpriteAttr attr);
void NNS_G2dSetSpriteCurrentPolygonID(u16 id);

void NNS_G2dSetSpriteDefaultAttr(const NNSG2dExtendedSprite * pE);
const NNSG2dExtendedSprite * NNS_G2dGetSpriteDefaultAttr( );

void NNS_G2dDrawSpriteSimpleFast(const NNSG2dSimpleSprite * pS);
void NNS_G2dDrawSpriteBasicFast(const NNSG2dBasicSprite * pB);
void NNS_G2dDrawSpriteExtendedFast(const NNSG2dExtendedSprite * pE);

void NNS_G2dDrawSpriteFast
(
    s16 px, s16 py, int pz,
    int sx, int sy,
    int U0, int V0, int U1, int V1
);

NNS_G2D_INLINE void NNS_G2dDrawSpriteSimple (const NNSG2dSimpleSprite * pS)
{
    G3_PushMtx();
    NNS_G2dDrawSpriteSimpleFast(pS);
    G3_PopMtx(1);
}

NNS_G2D_INLINE void NNS_G2dDrawSpriteBasic (const NNSG2dBasicSprite * pB)
{
    G3_PushMtx();
    NNS_G2dDrawSpriteBasicFast(pB);
    G3_PopMtx(1);
}
NNS_G2D_INLINE void NNS_G2dDrawSpriteExtended (const NNSG2dExtendedSprite * pE)
{
    G3_PushMtx();
    NNS_G2dDrawSpriteExtendedFast(pE);
    G3_PopMtx(1);
}

NNS_G2D_INLINE void NNS_G2dDrawSprite
(
    s16 px, s16 py, int pz,
    int sx, int sy,
    int U0, int V0, int U1, int V1
)
{
    G3_PushMtx();
    NNS_G2dDrawSpriteFast(px, py, pz, sx, sy, U0, V0, U1, V1);
    G3_PopMtx(1);
}

void NNSi_G2dDrawSpriteFast
(
    s16 px, s16 py, fx32 pz,
    int sx, int sy,
    fx32 U0, fx32 V0, fx32 U1, fx32 V1
);

void NNSi_G2dDrawSpriteWithMtxFast
(
    s16 px, s16 py, fx32 pz,
    int sx, int sy,
    const MtxFx22 * baseMtx,
    fx32 U0, fx32 V0, fx32 U1, fx32 V1
);

void NNSi_G2dDrawSpriteWithMtxDoubleAffineFast
(
    s16 px, s16 py, fx32 pz,
    int sx, int sy,
    const MtxFx22 * baseMtx,
    fx32 U0, fx32 V0, fx32 U1, fx32 V1
);

#ifdef __cplusplus
}
#endif

#endif
