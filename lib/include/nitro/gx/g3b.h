#ifndef NITRO_G3B_H_
#define NITRO_G3B_H_

#include <nitro/gx/g3.h>
#include <nitro/fx/fx_const.h>

#ifdef __cplusplus
extern "C" {
#endif

#if (defined(SDK_WIN32) || defined(SDK_FROM_TOOL))
#define SDK_ASSERT(exp) ((void)0)
#define SDK_ALIGN4_ASSERT(exp) ((void)0)
#define SDK_MINMAX_ASSERT(exp, min, max) ((void)0)
#define SDK_NULL_ASSERT(exp) ((void)0)

#ifdef _MSC_VER
#define SDK_ASSERTMSG(exp, msg) ((void)0)
#ifndef __cplusplus
#define inline __inline
#endif
#else
#define SDK_ASSERTMSG(exp, ...) ((void)0)
#endif
#endif

static void G3BS_Direct0(GXDLInfo * info, int op);
static void G3BS_Direct1(GXDLInfo * info, int op, u32 param0);
static void G3BS_Direct2(GXDLInfo * info, int op, u32 param0, u32 param1);
static void G3BS_Direct3(GXDLInfo * info, int op, u32 param0, u32 param1, u32 param2);
void G3BS_DirectN(GXDLInfo * info, int op, int nParams, const u32 * params);

static void G3BS_Nop(GXDLInfo * info);
static void G3BS_MtxMode(GXDLInfo * info, GXMtxMode mode);
static void G3BS_PushMtx(GXDLInfo * info);
static void G3BS_PopMtx(GXDLInfo * info, int num);
static void G3BS_StoreMtx(GXDLInfo * info, int num);
static void G3BS_RestoreMtx(GXDLInfo * info, int num);
static void G3BS_Identity(GXDLInfo * info);
void G3BS_LoadMtx44(GXDLInfo * info, const MtxFx44 * m);
void G3BS_LoadMtx43(GXDLInfo * info, const MtxFx43 * m);
void G3BS_MultMtx44(GXDLInfo * info, const MtxFx44 * m);
void G3BS_MultMtx43(GXDLInfo * info, const MtxFx43 * m);
void G3BS_MultMtx33(GXDLInfo * info, const MtxFx33 * m);
void G3BS_MultTransMtx33(GXDLInfo * info, const MtxFx33 * mtx, const VecFx32 * trans);
static void G3BS_Scale(GXDLInfo * info, fx32 x, fx32 y, fx32 z);
static void G3BS_Translate(GXDLInfo * info, fx32 x, fx32 y, fx32 z);
static void G3BS_Color(GXDLInfo * info, GXRgb rgb);
static void G3BS_Normal(GXDLInfo * info, fx16 x, fx16 y, fx16 z);
static void G3BS_TexCoord(GXDLInfo * info, fx32 s, fx32 t);
static void G3BS_Vtx(GXDLInfo * info, fx16 x, fx16 y, fx16 z);
static void G3BS_Vtx10(GXDLInfo * info, fx16 x, fx16 y, fx16 z);
static void G3BS_VtxXY(GXDLInfo * info, fx16 x, fx16 y);
static void G3BS_VtxXZ(GXDLInfo * info, fx16 x, fx16 z);
static void G3BS_VtxYZ(GXDLInfo * info, fx16 y, fx16 z);
static void G3BS_VtxDiff(GXDLInfo * info, fx16 x, fx16 y, fx16 z);
static void G3BS_PolygonAttr(GXDLInfo * info, int light, GXPolygonMode polyMode, GXCull cullMode, int polygonID, int alpha, int misc
);
static void G3BS_TexImageParam(GXDLInfo * info,
                               GXTexFmt texFmt,
                               GXTexGen texGen,
                               GXTexSizeS s,
                               GXTexSizeT t,
                               GXTexRepeat repeat, GXTexFlip flip, GXTexPlttColor0 pltt0, u32 addr);
static void G3BS_TexPlttBase(GXDLInfo * info, u32 addr, GXTexFmt texfmt);
static void G3BS_MaterialColorDiffAmb(GXDLInfo * info, GXRgb diffuse, GXRgb ambient,
                                      BOOL IsSetVtxColor);
static void G3BS_MaterialColorSpecEmi(GXDLInfo * info, GXRgb specular, GXRgb emission,
                                      BOOL IsShininess);
static void G3BS_LightVector(GXDLInfo * info, GXLightId lightID, fx16 x, fx16 y, fx16 z);
static void G3BS_LightColor(GXDLInfo * info, GXLightId lightID, GXRgb rgb);
static void G3BS_Shininess(GXDLInfo * info, const u32 * table);
static void G3BS_Begin(GXDLInfo * info, GXBegin primitive);
static void G3BS_End(GXDLInfo * info);
static void G3BS_SwapBuffers(GXDLInfo * info, GXSortMode am, GXBufferMode zw);
static void G3BS_ViewPort(GXDLInfo * info, int x1, int y1, int x2, int y2);
static void G3BS_BoxTest(GXDLInfo * info, const GXBoxTestParam * box);
static void G3BS_PositionTest(GXDLInfo * info, fx16 x, fx16 y, fx16 z);
static void G3BS_VectorTest(GXDLInfo * info, fx16 x, fx16 y, fx16 z);

static void G3B_UpdateGXDLInfo(GXDLInfo * info, int n);
void G3B_Direct0(GXDLInfo * info, int op);
void G3B_Direct1(GXDLInfo * info, int op, u32 param0);
void G3B_Direct2(GXDLInfo * info, int op, u32 param0, u32 param1);
void G3B_Direct3(GXDLInfo * info, int op, u32 param0, u32 param1, u32 param2);
void G3B_DirectN(GXDLInfo * info, int op, int nParams, const u32 * params);

void G3B_Nop(GXDLInfo * info);
void G3B_MtxMode(GXDLInfo * info, GXMtxMode mode);
void G3B_PushMtx(GXDLInfo * info);
void G3B_PopMtx(GXDLInfo * info, int num);
void G3B_StoreMtx(GXDLInfo * info, int num);
void G3B_RestoreMtx(GXDLInfo * info, int num);
void G3B_Identity(GXDLInfo * info);
void G3B_LoadMtx44(GXDLInfo * info, const MtxFx44 * m);
void G3B_LoadMtx43(GXDLInfo * info, const MtxFx43 * m);
void G3B_MultMtx44(GXDLInfo * info, const MtxFx44 * m);
void G3B_MultMtx43(GXDLInfo * info, const MtxFx43 * m);
void G3B_MultMtx33(GXDLInfo * info, const MtxFx33 * m);
void G3B_Scale(GXDLInfo * info, fx32 x, fx32 y, fx32 z);
void G3B_Translate(GXDLInfo * info, fx32 x, fx32 y, fx32 z);
void G3B_MultTransMtx33(GXDLInfo * info, const MtxFx33 * mtx, const VecFx32 * trans);
void G3B_Color(GXDLInfo * info, GXRgb rgb);
void G3B_Normal(GXDLInfo * info, fx16 x, fx16 y, fx16 z);
void G3B_TexCoord(GXDLInfo * info, fx32 s, fx32 t);
void G3B_Vtx(GXDLInfo * info, fx16 x, fx16 y, fx16 z);
void G3B_Vtx10(GXDLInfo * info, fx16 x, fx16 y, fx16 z);
void G3B_VtxXY(GXDLInfo * info, fx16 x, fx16 y);
void G3B_VtxXZ(GXDLInfo * info, fx16 x, fx16 z);
void G3B_VtxYZ(GXDLInfo * info, fx16 y, fx16 z);
void G3B_VtxDiff(GXDLInfo * info, fx16 x, fx16 y, fx16 z);
void G3B_PolygonAttr(GXDLInfo * info, int light, GXPolygonMode polyMode, GXCull cullMode, int polygonID, int alpha, int misc
);
void G3B_TexImageParam(GXDLInfo * info,
                       GXTexFmt texFmt,
                       GXTexGen texGen,
                       GXTexSizeS s,
                       GXTexSizeT t,
                       GXTexRepeat repeat, GXTexFlip flip, GXTexPlttColor0 pltt0, u32 addr);
void G3B_TexPlttBase(GXDLInfo * info, u32 addr, GXTexFmt texfmt);
void G3B_MaterialColorDiffAmb(GXDLInfo * info, GXRgb diffuse, GXRgb ambient, BOOL IsSetVtxColor);
void G3B_MaterialColorSpecEmi(GXDLInfo * info, GXRgb specular, GXRgb emission, BOOL IsShininess);
void G3B_LightVector(GXDLInfo * info, GXLightId lightID, fx16 x, fx16 y, fx16 z);
void G3B_LightColor(GXDLInfo * info, GXLightId lightID, GXRgb rgb);
void G3B_Shininess(GXDLInfo * info, const u32 * table);
void G3B_Begin(GXDLInfo * info, GXBegin primitive);
void G3B_End(GXDLInfo * info);
void G3B_SwapBuffers(GXDLInfo * info, GXSortMode am, GXBufferMode zw);
void G3B_ViewPort(GXDLInfo * info, int x1, int y1, int x2, int y2);
void G3B_BoxTest(GXDLInfo * info, const GXBoxTestParam * box);
void G3B_PositionTest(GXDLInfo * info, fx16 x, fx16 y, fx16 z);
void G3B_VectorTest(GXDLInfo * info, fx16 x, fx16 y, fx16 z);

#define GXBS_CURR_ALIGNMENT_ASSERT(x) SDK_ASSERT(((u32)x->curr_cmd & 0x03) == 0)

static inline void G3BS_Direct0 (GXDLInfo * info, int op)
{
    SDK_NULL_ASSERT(info);
    GXBS_CURR_ALIGNMENT_ASSERT(info);
    GX_VALID_OPCODE_ASSERT(op);

    *(u32 *)info->curr_cmd = (u32)op;
}

static inline void G3BS_Direct1 (GXDLInfo * info, int op, u32 param0)
{
    SDK_NULL_ASSERT(info);
    GXBS_CURR_ALIGNMENT_ASSERT(info);
    GX_VALID_OPCODE_ASSERT(op);

    *(u32 *)info->curr_cmd = (u32)op;
    *info->curr_param = param0;
}

static inline void G3BS_Direct2 (GXDLInfo * info, int op, u32 param0, u32 param1)
{
    SDK_NULL_ASSERT(info);
    GXBS_CURR_ALIGNMENT_ASSERT(info);
    GX_VALID_OPCODE_ASSERT(op);

    *(u32 *)info->curr_cmd = (u32)op;
    *(info->curr_param + 0) = param0;
    *(info->curr_param + 1) = param1;
}

static inline void G3BS_Direct3 (GXDLInfo * info, int op, u32 param0, u32 param1, u32 param2)
{
    SDK_NULL_ASSERT(info);
    GXBS_CURR_ALIGNMENT_ASSERT(info);
    GX_VALID_OPCODE_ASSERT(op);

    *(u32 *)info->curr_cmd = (u32)op;
    *(info->curr_param + 0) = param0;
    *(info->curr_param + 1) = param1;
    *(info->curr_param + 2) = param2;
}

static inline void G3BS_Nop (GXDLInfo * info)
{
    G3BS_Direct0(info, G3OP_NOP);
}

static inline void G3BS_MtxMode (GXDLInfo * info, GXMtxMode mode)
{
    GX_MTXMODE_ASSERT(mode);

    G3BS_Direct1(info, G3OP_MTX_MODE, GX_PACK_MTXMODE_PARAM(mode));
}

static inline void G3BS_PushMtx (GXDLInfo * info)
{
    G3BS_Direct0(info, G3OP_MTX_PUSH);
}

static inline void G3BS_PopMtx (GXDLInfo * info, int num)
{
    GX_MTX_POP_NUM_ASSERT(num);

    G3BS_Direct1(info, G3OP_MTX_POP, GX_PACK_POPMTX_PARAM(num));
}

static inline void G3BS_StoreMtx (GXDLInfo * info, int num)
{
    GX_MTX_STORE_NUM_ASSERT(num);

    G3BS_Direct1(info, G3OP_MTX_STORE, GX_PACK_STOREMTX_PARAM(num));
}

static inline void G3BS_RestoreMtx (GXDLInfo * info, int num)
{
    GX_MTX_RESTORE_NUM_ASSERT(num);

    G3BS_Direct1(info, G3OP_MTX_RESTORE, GX_PACK_RESTOREMTX_PARAM(num));
}

static inline void G3BS_Identity (GXDLInfo * info)
{
    G3BS_Direct0(info, G3OP_MTX_IDENTITY);
}

static inline void G3BS_Scale (GXDLInfo * info, fx32 x, fx32 y, fx32 z)
{
    G3BS_Direct3(info, G3OP_MTX_SCALE, (u32)x, (u32)y, (u32)z);
}

static inline void G3BS_Translate (GXDLInfo * info, fx32 x, fx32 y, fx32 z)
{
    G3BS_Direct3(info, G3OP_MTX_TRANS, (u32)x, (u32)y, (u32)z);
}

static inline void G3BS_Color (GXDLInfo * info, GXRgb rgb)
{
    GXRGB_ASSERT(rgb);
    G3BS_Direct1(info, G3OP_COLOR, GX_PACK_COLOR_PARAM(rgb));
}

static inline void G3BS_Normal (GXDLInfo * info, fx16 x, fx16 y, fx16 z)
{
    SDK_MINMAX_ASSERT(x, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(y, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(z, -FX16_ONE, FX16_ONE - 1);

    G3BS_Direct1(info, G3OP_NORMAL, GX_PACK_NORMAL_PARAM(x, y, z));
}

static inline void G3BS_TexCoord (GXDLInfo * info, fx32 s, fx32 t)
{
    SDK_MINMAX_ASSERT(s, -2048 * FX32_ONE, 2048 * FX32_ONE - 1);
    SDK_MINMAX_ASSERT(t, -2048 * FX32_ONE, 2048 * FX32_ONE - 1);

    G3BS_Direct1(info, G3OP_TEXCOORD, GX_PACK_TEXCOORD_PARAM(s, t));
}

static inline void G3BS_Vtx (GXDLInfo * info, fx16 x, fx16 y, fx16 z)
{
    G3BS_Direct2(info, G3OP_VTX_16, GX_FX16PAIR(x, y), (u32)(u16)z);
}

static inline void G3BS_Vtx10 (GXDLInfo * info, fx16 x, fx16 y, fx16 z)
{
    G3BS_Direct1(info, G3OP_VTX_10, GX_PACK_VTX10_PARAM(x, y, z));
}

static inline void G3BS_VtxXY (GXDLInfo * info, fx16 x, fx16 y)
{
    G3BS_Direct1(info, G3OP_VTX_XY, GX_PACK_VTXXY_PARAM(x, y));
}

static inline void G3BS_VtxXZ (GXDLInfo * info, fx16 x, fx16 z)
{
    G3BS_Direct1(info, G3OP_VTX_XZ, GX_PACK_VTXXZ_PARAM(x, z));
}

static inline void G3BS_VtxYZ (GXDLInfo * info, fx16 y, fx16 z)
{
    G3BS_Direct1(info, G3OP_VTX_YZ, GX_PACK_VTXYZ_PARAM(y, z));
}

static inline void G3BS_VtxDiff (GXDLInfo * info, fx16 x, fx16 y, fx16 z)
{
    SDK_MINMAX_ASSERT(x, (fx16)0xfe00, (fx16)0x1ff);
    SDK_MINMAX_ASSERT(y, (fx16)0xfe00, (fx16)0x1ff);
    SDK_MINMAX_ASSERT(z, (fx16)0xfe00, (fx16)0x1ff);

    G3BS_Direct1(info, G3OP_VTX_DIFF, GX_PACK_VTXDIFF_PARAM(x, y, z));
}

static inline void G3BS_PolygonAttr (GXDLInfo * info, int light, GXPolygonMode polyMode, GXCull cullMode, int polygonID, int alpha, int misc
)
{
    GX_LIGHTMASK_ASSERT(light);
    GX_POLYGONMODE_ASSERT(polyMode);
    GX_CULL_ASSERT(cullMode);
    GX_POLYGON_ATTR_POLYGONID_ASSERT(polygonID);
    GX_POLYGON_ATTR_ALPHA_ASSERT(alpha);

    G3BS_Direct1(info,
                 G3OP_POLYGON_ATTR,
                 GX_PACK_POLYGONATTR_PARAM(light, polyMode, cullMode, polygonID, alpha, misc));
}

static inline void G3BS_TexImageParam (GXDLInfo * info,
                                       GXTexFmt texFmt,
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

    G3BS_Direct1(info,
                 G3OP_TEXIMAGE_PARAM,
                 GX_PACK_TEXIMAGE_PARAM(texFmt, texGen, s, t, repeat, flip, pltt0, addr));
}

static inline void G3BS_TexPlttBase (GXDLInfo * info, u32 addr, GXTexFmt texfmt)
{
    u32 param = GX_PACK_TEXPLTTBASE_PARAM(addr, texfmt);
    GX_TEXPLTTBASEPARAM_ASSERT(param);

    G3BS_Direct1(info, G3OP_TEXPLTT_BASE, param);
}

static inline void G3BS_MaterialColorDiffAmb (GXDLInfo * info,
                                              GXRgb diffuse, GXRgb ambient, BOOL IsSetVtxColor)
{
    GXRGB_ASSERT(diffuse);
    GXRGB_ASSERT(ambient);

    G3BS_Direct1(info, G3OP_DIF_AMB, GX_PACK_DIFFAMB_PARAM(diffuse, ambient, IsSetVtxColor));
}

static inline void G3BS_MaterialColorSpecEmi (GXDLInfo * info,
                                              GXRgb specular, GXRgb emission, BOOL IsShininess)
{
    GXRGB_ASSERT(specular);
    GXRGB_ASSERT(emission);

    G3BS_Direct1(info, G3OP_SPE_EMI, GX_PACK_SPECEMI_PARAM(specular, emission, IsShininess));
}

static inline void G3BS_LightVector (GXDLInfo * info, GXLightId lightID, fx16 x, fx16 y, fx16 z)
{
    GX_LIGHTID_ASSERT(lightID);
    SDK_MINMAX_ASSERT(x, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(y, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(z, -FX16_ONE, FX16_ONE - 1);

    G3BS_Direct1(info, G3OP_LIGHT_VECTOR, GX_PACK_LIGHTVECTOR_PARAM(lightID, x, y, z));
}

static inline void G3BS_LightColor (GXDLInfo * info, GXLightId lightID, GXRgb rgb)
{
    GX_LIGHTID_ASSERT(lightID);
    GXRGB_ASSERT(rgb);

    G3BS_Direct1(info, G3OP_LIGHT_COLOR, GX_PACK_LIGHTCOLOR_PARAM(lightID, rgb));
}

static inline void G3BS_Shininess (GXDLInfo * info, const u32 * table)
{
    G3BS_DirectN(info, G3OP_SHININESS, 32, table);
}

static inline void G3BS_Begin (GXDLInfo * info, GXBegin primitive)
{
    GX_BEGIN_ASSERT(primitive);

    G3BS_Direct1(info, G3OP_BEGIN, GX_PACK_BEGIN_PARAM(primitive));
}

static inline void G3BS_End (GXDLInfo * info)
{
    G3BS_Direct0(info, G3OP_END);
}

static inline void G3BS_SwapBuffers (GXDLInfo * info, GXSortMode am, GXBufferMode zw)
{
    GX_SORTMODE_ASSERT(am);
    GX_BUFFERMODE_ASSERT(zw);

    G3BS_Direct1(info, G3OP_SWAP_BUFFERS, GX_PACK_SWAPBUFFERS_PARAM(am, zw));
}

static inline void G3BS_ViewPort (GXDLInfo * info, int x1, int y1, int x2, int y2)
{
    GX_VIEWPORT_ASSERT(x1, y1, x2, y2);

    G3BS_Direct1(info, G3OP_VIEWPORT, GX_PACK_VIEWPORT_PARAM(x1, y1, x2, y2));
}

static inline void G3BS_BoxTest (GXDLInfo * info, const GXBoxTestParam * box)
{
    G3BS_Direct3(info, G3OP_BOX_TEST, box->val[0], box->val[1], box->val[2]);
}

static inline void G3BS_PositionTest (GXDLInfo * info, fx16 x, fx16 y, fx16 z)
{
    G3BS_Direct2(info, G3OP_POS_TEST, GX_FX16PAIR(x, y), (u32)(u16)z);
}

static inline void G3BS_VectorTest (GXDLInfo * info, fx16 x, fx16 y, fx16 z)
{
    SDK_MINMAX_ASSERT(x, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(y, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(z, -FX16_ONE, FX16_ONE - 1);

    G3BS_Direct1(info, G3OP_VEC_TEST, GX_PACK_VECTORTEST_PARAM(x, y, z));
}

static inline void G3B_UpdateGXDLInfo (GXDLInfo * info, int n)
{
    info->curr_cmd = (u8 *)(info->curr_param + n);
    info->curr_param = (u32 *)(info->curr_cmd + 4);

    SDK_ASSERTMSG(((u32)(info->curr_cmd) - (u32)info->bottom <= info->length),
                  "Buffer overflow ! : Current DL buffer doesn't have enough capacity for new commands\n");
}

#if (defined(_MSC_VER) && !defined(_cplusplus))
#undef inline
#endif

#ifdef __cplusplus
}
#endif

#endif
