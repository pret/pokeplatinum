#ifndef NITRO_G3IMM_H_
#define NITRO_G3IMM_H_

#include <nitro/hw/ARM9/mmap_global.h>
#include <nitro/gx/g3.h>
#include <nitro/fx/fx_const.h>

#ifdef __cplusplus
extern "C" {
#endif

static void G3_Direct0(int op);
static void G3_Direct1(int op, u32 param0);
static void G3_Direct2(int op, u32 param0, u32 param1);
static void G3_Direct3(int op, u32 param0, u32 param1, u32 param2);

static void G3_MtxMode(GXMtxMode mode);
static void G3_PushMtx(void);
static void G3_PopMtx(int num);
static void G3_StoreMtx(int num);
static void G3_RestoreMtx(int num);
static void G3_Identity(void);
void G3_LoadMtx44(const MtxFx44 * m);
void G3_LoadMtx43(const MtxFx43 * m);
void G3_MultMtx44(const MtxFx44 * m);
void G3_MultMtx43(const MtxFx43 * m);
void G3_MultMtx33(const MtxFx33 * m);
void G3_MultTransMtx33(const MtxFx33 * mtx, const VecFx32 * trans);
static void G3_Scale(fx32 x, fx32 y, fx32 z);
static void G3_Translate(fx32 x, fx32 y, fx32 z);
static void G3_Color(GXRgb rgb);
static void G3_Normal(fx16 x, fx16 y, fx16 z);
static void G3_TexCoord(fx32 s, fx32 t);
static void G3_Vtx(fx16 x, fx16 y, fx16 z);
static void G3_Vtx10(fx16 x, fx16 y, fx16 z);
static void G3_VtxXY(fx16 x, fx16 y);
static void G3_VtxXZ(fx16 x, fx16 z);
static void G3_VtxYZ(fx16 y, fx16 z);
static void G3_VtxDiff(fx16 x, fx16 y, fx16 z);
static void G3_PolygonAttr(int light, GXPolygonMode polyMode, GXCull cullMode, int polygonID, int alpha, int misc
);
static void G3_TexImageParam(GXTexFmt texFmt,
                             GXTexGen texGen,
                             GXTexSizeS s,
                             GXTexSizeT t,
                             GXTexRepeat repeat, GXTexFlip flip, GXTexPlttColor0 pltt0, u32 addr);
static void G3_TexPlttBase(u32 addr, GXTexFmt texfmt);
static void G3_MaterialColorDiffAmb(GXRgb diffuse, GXRgb ambient, BOOL IsSetVtxColor);
static void G3_MaterialColorSpecEmi(GXRgb specular, GXRgb emission, BOOL IsShininess);
static void G3_LightVector(GXLightId lightID, fx16 x, fx16 y, fx16 z);
static void G3_LightColor(GXLightId lightID, GXRgb rgb);
void G3_Shininess(const u32 * table);
static void G3_Begin(GXBegin primitive);
static void G3_End(void);
static void G3_SwapBuffers(GXSortMode am, GXBufferMode zw);
static void G3_ViewPort(int x1, int y1, int x2, int y2);
static void G3_BoxTest(const GXBoxTestParam * box);
static void G3_PositionTest(fx16 x, fx16 y, fx16 z);
static void G3_VectorTest(fx16 x, fx16 y, fx16 z);

static inline void G3_Direct0 (int op)
{
    *(REGType32v *)(REG_MTX_MODE_ADDR + ((op - G3OP_MTX_MODE) * 4)) = 0;
}

static inline void G3_Direct1 (int op, u32 param0)
{
    *(REGType32v *)(REG_MTX_MODE_ADDR + ((op - G3OP_MTX_MODE) * 4)) = param0;
}

static inline void G3_Direct2 (int op, u32 param0, u32 param1)
{
    *(REGType32v *)(REG_MTX_MODE_ADDR + ((op - G3OP_MTX_MODE) * 4)) = param0;
    *(REGType32v *)(REG_MTX_MODE_ADDR + ((op - G3OP_MTX_MODE) * 4)) = param1;
}

static inline void G3_Direct3 (int op, u32 param0, u32 param1, u32 param2)
{
    *(REGType32v *)(REG_MTX_MODE_ADDR + ((op - G3OP_MTX_MODE) * 4)) = param0;
    *(REGType32v *)(REG_MTX_MODE_ADDR + ((op - G3OP_MTX_MODE) * 4)) = param1;
    *(REGType32v *)(REG_MTX_MODE_ADDR + ((op - G3OP_MTX_MODE) * 4)) = param2;
}

static inline void G3_MtxMode (GXMtxMode mode)
{
    GX_MTXMODE_ASSERT(mode);

    reg_G3_MTX_MODE = GX_PACK_MTXMODE_PARAM(mode);
}

static inline void G3_PushMtx ()
{
    reg_G3_MTX_PUSH = 0;
}

static inline void G3_PopMtx (int num)
{
    GX_MTX_POP_NUM_ASSERT(num);

    reg_G3_MTX_POP = GX_PACK_POPMTX_PARAM(num);
}

static inline void G3_StoreMtx (int num)
{
    GX_MTX_STORE_NUM_ASSERT(num);

    reg_G3_MTX_STORE = GX_PACK_STOREMTX_PARAM(num);
}

static inline void G3_RestoreMtx (int num)
{
    GX_MTX_RESTORE_NUM_ASSERT(num);

    reg_G3_MTX_RESTORE = GX_PACK_RESTOREMTX_PARAM(num);
}

static inline void G3_Identity ()
{
    reg_G3_MTX_IDENTITY = 0;
}

static inline void G3_Scale (fx32 x, fx32 y, fx32 z)
{
    reg_G3_MTX_SCALE = (u32)x;
    reg_G3_MTX_SCALE = (u32)y;
    reg_G3_MTX_SCALE = (u32)z;
}

static inline void G3_Translate (fx32 x, fx32 y, fx32 z)
{
    reg_G3_MTX_TRANS = (u32)x;
    reg_G3_MTX_TRANS = (u32)y;
    reg_G3_MTX_TRANS = (u32)z;
}

static inline void G3_Color (GXRgb rgb)
{
    GXRGB_ASSERT(rgb);

    reg_G3_COLOR = GX_PACK_COLOR_PARAM(rgb);
}

static inline void G3_Normal (fx16 x, fx16 y, fx16 z)
{
    SDK_MINMAX_ASSERT(x, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(y, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(z, -FX16_ONE, FX16_ONE - 1);

    reg_G3_NORMAL = GX_PACK_NORMAL_PARAM(x, y, z);
}

static inline void G3_TexCoord (fx32 s, fx32 t)
{
    SDK_MINMAX_ASSERT(s, -2048 * FX32_ONE, 2048 * FX32_ONE - 1);
    SDK_MINMAX_ASSERT(t, -2048 * FX32_ONE, 2048 * FX32_ONE - 1);

    reg_G3_TEXCOORD = GX_PACK_TEXCOORD_PARAM(s, t);
}

static inline void G3_Vtx (fx16 x, fx16 y, fx16 z)
{
    reg_G3_VTX_16 = GX_FX16PAIR(x, y);
    reg_G3_VTX_16 = (u32)(u16)z;
}

static inline void G3_Vtx10 (fx16 x, fx16 y, fx16 z)
{
    reg_G3_VTX_10 = GX_PACK_VTX10_PARAM(x, y, z);
}

static inline void G3_VtxXY (fx16 x, fx16 y)
{
    reg_G3_VTX_XY = GX_PACK_VTXXY_PARAM(x, y);
}

static inline void G3_VtxXZ (fx16 x, fx16 z)
{
    reg_G3_VTX_XZ = GX_PACK_VTXXZ_PARAM(x, z);
}

static inline void G3_VtxYZ (fx16 y, fx16 z)
{
    reg_G3_VTX_YZ = GX_PACK_VTXYZ_PARAM(y, z);
}

static inline void G3_VtxDiff (fx16 x, fx16 y, fx16 z)
{
    SDK_MINMAX_ASSERT(x, (fx16)0xfe00, (fx16)0x1ff);
    SDK_MINMAX_ASSERT(y, (fx16)0xfe00, (fx16)0x1ff);
    SDK_MINMAX_ASSERT(z, (fx16)0xfe00, (fx16)0x1ff);

    reg_G3_VTX_DIFF = GX_PACK_VTXDIFF_PARAM(x, y, z);
}

static inline void G3_PolygonAttr (int light, GXPolygonMode polyMode, GXCull cullMode, int polygonID, int alpha, int misc
)
{
    GX_LIGHTMASK_ASSERT(light);
    GX_POLYGONMODE_ASSERT(polyMode);
    GX_CULL_ASSERT(cullMode);
    GX_POLYGON_ATTR_POLYGONID_ASSERT(polygonID);
    GX_POLYGON_ATTR_ALPHA_ASSERT(alpha);

    reg_G3_POLYGON_ATTR = GX_PACK_POLYGONATTR_PARAM(light,
                                                    polyMode, cullMode, polygonID, alpha, misc);
}

static inline void G3_TexImageParam (GXTexFmt texFmt,
                                     GXTexGen texGen,
                                     GXTexSizeS s,
                                     GXTexSizeT t,
                                     GXTexRepeat repeat,
                                     GXTexFlip flip, GXTexPlttColor0 pltt0, u32 addr)
{
    GX_TEXREPEAT_ASSERT(repeat);
    GX_TEXFLIP_ASSERT(flip);
    GX_TEXSIZE_S_ASSERT(s);
    GX_TEXSIZE_T_ASSERT(t);
    GX_TEXFMT_ASSERT(texFmt);
    GX_TEXPLTTCOLOR0_ASSERT(pltt0);
    GX_TEXGEN_ASSERT(texGen);
    GX_TEXIMAGE_PARAM_ADDR_ASSERT(addr);

    reg_G3_TEXIMAGE_PARAM = GX_PACK_TEXIMAGE_PARAM(texFmt, texGen, s, t, repeat, flip, pltt0, addr);
}

static inline void G3_TexPlttBase (u32 addr, GXTexFmt texfmt)
{
    u32 param = GX_PACK_TEXPLTTBASE_PARAM(addr, texfmt);
    GX_TEXPLTTBASEPARAM_ASSERT(param);

    reg_G3_TEXPLTT_BASE = param;
}

static inline void G3_MaterialColorDiffAmb (GXRgb diffuse, GXRgb ambient, BOOL IsSetVtxColor)
{
    GXRGB_ASSERT(diffuse);
    GXRGB_ASSERT(ambient);

    reg_G3_DIF_AMB = GX_PACK_DIFFAMB_PARAM(diffuse, ambient, IsSetVtxColor);
}

static inline void G3_MaterialColorSpecEmi (GXRgb specular, GXRgb emission, BOOL IsShininess)
{
    GXRGB_ASSERT(specular);
    GXRGB_ASSERT(emission);

    reg_G3_SPE_EMI = GX_PACK_SPECEMI_PARAM(specular, emission, IsShininess);
}

static inline void G3_LightVector (GXLightId lightID, fx16 x, fx16 y, fx16 z)
{
    GX_LIGHTID_ASSERT(lightID);
    SDK_MINMAX_ASSERT(x, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(y, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(z, -FX16_ONE, FX16_ONE - 1);

    reg_G3_LIGHT_VECTOR = GX_PACK_LIGHTVECTOR_PARAM(lightID, x, y, z);
}

static inline void G3_LightColor (GXLightId lightID, GXRgb rgb)
{
    GX_LIGHTID_ASSERT(lightID);
    GXRGB_ASSERT(rgb);

    reg_G3_LIGHT_COLOR = GX_PACK_LIGHTCOLOR_PARAM(lightID, rgb);
}

static inline void G3_Begin (GXBegin primitive)
{
    GX_BEGIN_ASSERT(primitive);

    reg_G3_BEGIN_VTXS = GX_PACK_BEGIN_PARAM(primitive);
}

static inline void G3_End ()
{
    reg_G3_END_VTXS = 0;
}

static inline void G3_SwapBuffers (GXSortMode am, GXBufferMode zw)
{
    GX_SORTMODE_ASSERT(am);
    GX_BUFFERMODE_ASSERT(zw);

    reg_G3_SWAP_BUFFERS = GX_PACK_SWAPBUFFERS_PARAM(am, zw);
}

static inline void G3_ViewPort (int x1, int y1, int x2, int y2)
{
    GX_VIEWPORT_ASSERT(x1, y1, x2, y2);

    reg_G3_VIEWPORT = GX_PACK_VIEWPORT_PARAM(x1, y1, x2, y2);
}

static inline void G3_BoxTest (const GXBoxTestParam * box)
{
    reg_G3_BOX_TEST = box->val[0];
    reg_G3_BOX_TEST = box->val[1];
    reg_G3_BOX_TEST = box->val[2];
}

static inline void G3_PositionTest (fx16 x, fx16 y, fx16 z)
{
    reg_G3_POS_TEST = GX_FX16PAIR(x, y);
    reg_G3_POS_TEST = (u32)(u16)z;
}

static inline void G3_VectorTest (fx16 x, fx16 y, fx16 z)
{
    SDK_MINMAX_ASSERT(x, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(y, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(z, -FX16_ONE, FX16_ONE - 1);

    reg_G3_VEC_TEST = GX_PACK_VECTORTEST_PARAM(x, y, z);
}

#ifdef __cplusplus
}
#endif

#endif
