#ifndef NNSG3D_GECOM_INLINE_H_
#define NNSG3D_GECOM_INLINE_H_

#ifdef __cplusplus
extern "C" {
#endif

NNS_G3D_INLINE void NNS_G3dGeBufferData_N (const u32 * args, u32 num)
{
    NNS_G3D_ASSERT(args && num > 0);
    NNS_G3dGeBufferOP_N(*args, args + 1, num - 1);
}

NNS_G3D_INLINE void NNS_G3dGeMtxMode (GXMtxMode mode)
{
    GX_MTXMODE_ASSERT(mode);
    NNS_G3dGeBufferOP_N(G3OP_MTX_MODE, (u32 *)&mode, G3OP_MTX_MODE_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGePushMtx (void)
{
    NNS_G3dGeBufferOP_N(G3OP_MTX_PUSH, NULL, G3OP_MTX_PUSH_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGePopMtx (int num)
{
    GX_MTX_POP_NUM_ASSERT(num);
    NNS_G3dGeBufferOP_N(G3OP_MTX_POP, (u32 *)&num, G3OP_MTX_POP_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeStoreMtx (int num)
{
    GX_MTX_STORE_NUM_ASSERT(num);
    NNS_G3dGeBufferOP_N(G3OP_MTX_STORE, (u32 *)&num, G3OP_MTX_STORE_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeRestoreMtx (int num)
{
    GX_MTX_RESTORE_NUM_ASSERT(num);
    NNS_G3dGeBufferOP_N(G3OP_MTX_RESTORE, (u32 *)&num, G3OP_MTX_RESTORE_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeIdentity (void)
{
    NNS_G3dGeBufferOP_N(G3OP_MTX_IDENTITY, NULL, G3OP_MTX_IDENTITY_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeScaleVec (const VecFx32 * vec)
{
    NNS_G3D_NULL_ASSERT(vec);
    NNS_G3dGeBufferOP_N(G3OP_MTX_SCALE, (u32 *)vec, G3OP_MTX_SCALE_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeScale (fx32 x, fx32 y, fx32 z)
{
    VecFx32 vec;
    vec.x = x;
    vec.y = y;
    vec.z = z;
    NNS_G3dGeBufferOP_N(G3OP_MTX_SCALE, (u32 *)&vec, G3OP_MTX_SCALE_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeTranslateVec (const VecFx32 * vec)
{
    NNS_G3D_NULL_ASSERT(vec);
    NNS_G3dGeBufferOP_N(G3OP_MTX_TRANS, (u32 *)vec, G3OP_MTX_TRANS_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeTranslate (fx32 x, fx32 y, fx32 z)
{
    VecFx32 vec;
    vec.x = x;
    vec.y = y;
    vec.z = z;
    NNS_G3dGeBufferOP_N(G3OP_MTX_TRANS, (u32 *)&vec, G3OP_MTX_TRANS_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeColor (GXRgb rgb)
{
    u32 tmp;
    GXRGB_ASSERT(rgb);
    tmp = GX_PACK_COLOR_PARAM(rgb);
    NNS_G3dGeBufferOP_N(G3OP_COLOR, (u32 *)&tmp, G3OP_COLOR_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeNormal (fx16 x, fx16 y, fx16 z)
{
    u32 tmp;
    SDK_MINMAX_ASSERT(x, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(y, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(z, -FX16_ONE, FX16_ONE - 1);

    tmp = GX_PACK_NORMAL_PARAM(x, y, z);

    NNS_G3dGeBufferOP_N(G3OP_NORMAL, (u32 *)&tmp, G3OP_NORMAL_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeTexCoord (fx32 s, fx32 t)
{
    u32 tmp;
    SDK_MINMAX_ASSERT(s, -2048 * FX32_ONE, 2048 * FX32_ONE - 1);
    SDK_MINMAX_ASSERT(t, -2048 * FX32_ONE, 2048 * FX32_ONE - 1);

    tmp = GX_PACK_TEXCOORD_PARAM(s, t);

    NNS_G3dGeBufferOP_N(G3OP_TEXCOORD, (u32 *)&tmp, G3OP_TEXCOORD_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeVtx (fx16 x, fx16 y, fx16 z)
{
    u32 tmp[2];
    tmp[0] = GX_FX16PAIR(x, y);
    tmp[1] = (u32)(u16)z;

    NNS_G3dGeBufferOP_N(G3OP_VTX_16, tmp, G3OP_VTX_16_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeVtx10 (fx16 x, fx16 y, fx16 z)
{
    u32 tmp = GX_PACK_VTX10_PARAM(x, y, z);

    NNS_G3dGeBufferOP_N(G3OP_VTX_10, &tmp, G3OP_VTX_10_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeVtxXY (fx16 x, fx16 y)
{
    u32 tmp = GX_PACK_VTXXY_PARAM(x, y);

    NNS_G3dGeBufferOP_N(G3OP_VTX_XY, &tmp, G3OP_VTX_XY_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeVtxXZ (fx16 x, fx16 z)
{
    u32 tmp = GX_PACK_VTXXZ_PARAM(x, z);

    NNS_G3dGeBufferOP_N(G3OP_VTX_XZ, &tmp, G3OP_VTX_XZ_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeVtxYZ (fx16 y, fx16 z)
{
    u32 tmp = GX_PACK_VTXYZ_PARAM(y, z);

    NNS_G3dGeBufferOP_N(G3OP_VTX_YZ, &tmp, G3OP_VTX_YZ_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeVtxDiff (fx16 x, fx16 y, fx16 z)
{
    u32 tmp;
    SDK_MINMAX_ASSERT(x, (fx16)0xfe00, (fx16)0x1ff);
    SDK_MINMAX_ASSERT(y, (fx16)0xfe00, (fx16)0x1ff);
    SDK_MINMAX_ASSERT(z, (fx16)0xfe00, (fx16)0x1ff);

    tmp = GX_PACK_VTXDIFF_PARAM(x, y, z);

    NNS_G3dGeBufferOP_N(G3OP_VTX_DIFF, &tmp, G3OP_VTX_DIFF_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGePolygonAttr (
    int light,
    GXPolygonMode polyMode,
    GXCull cullMode,
    int polygonID,
    int alpha,
    int misc
)
{
    u32 tmp;
    GX_LIGHTMASK_ASSERT(light);
    GX_POLYGONMODE_ASSERT(polyMode);
    GX_CULL_ASSERT(cullMode);
    GX_POLYGON_ATTR_POLYGONID_ASSERT(polygonID);
    GX_POLYGON_ATTR_ALPHA_ASSERT(alpha);

    tmp = GX_PACK_POLYGONATTR_PARAM(light,
                                    polyMode,
                                    cullMode,
                                    polygonID,
                                    alpha,
                                    misc);

    NNS_G3dGeBufferOP_N(G3OP_POLYGON_ATTR,
                        &tmp,
                        G3OP_POLYGON_ATTR_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeTexImageParam (
    GXTexFmt texFmt,
    GXTexGen texGen,
    GXTexSizeS s,
    GXTexSizeT t,
    GXTexRepeat repeat,
    GXTexFlip flip,
    GXTexPlttColor0 pltt0,
    u32 addr)
{
    u32 tmp;

    GX_TEXREPEAT_ASSERT(repeat);
    GX_TEXFLIP_ASSERT(flip);
    GX_TEXSIZE_S_ASSERT(s);
    GX_TEXSIZE_T_ASSERT(t);
    GX_TEXFMT_ASSERT(texFmt);
    GX_TEXPLTTCOLOR0_ASSERT(pltt0);
    GX_TEXGEN_ASSERT(texGen);
    GX_TEXIMAGE_PARAM_ADDR_ASSERT(addr);

    tmp = GX_PACK_TEXIMAGE_PARAM(texFmt,
                                 texGen,
                                 s,
                                 t,
                                 repeat,
                                 flip,
                                 pltt0,
                                 addr);

    NNS_G3dGeBufferOP_N(G3OP_TEXIMAGE_PARAM,
                        &tmp,
                        G3OP_TEXIMAGE_PARAM_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeTexPlttBase (u32 addr, GXTexFmt texfmt)
{
    u32 param = GX_PACK_TEXPLTTBASE_PARAM(addr, texfmt);
    GX_TEXPLTTBASEPARAM_ASSERT(param);

    NNS_G3dGeBufferOP_N(G3OP_TEXPLTT_BASE,
                        &param,
                        G3OP_TEXPLTT_BASE_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeMaterialColorDiffAmb (
    GXRgb diffuse,
    GXRgb ambient,
    BOOL IsSetVtxColor)
{
    u32 tmp;
    GXRGB_ASSERT(diffuse);
    GXRGB_ASSERT(ambient);

    tmp = GX_PACK_DIFFAMB_PARAM(diffuse, ambient, IsSetVtxColor);

    NNS_G3dGeBufferOP_N(G3OP_DIF_AMB,
                        &tmp,
                        G3OP_DIF_AMB_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeMaterialColorSpecEmi (
    GXRgb specular,
    GXRgb emission,
    BOOL IsShininess)
{
    u32 tmp;
    GXRGB_ASSERT(specular);
    GXRGB_ASSERT(emission);

    tmp = GX_PACK_SPECEMI_PARAM(specular, emission, IsShininess);

    NNS_G3dGeBufferOP_N(G3OP_SPE_EMI,
                        &tmp,
                        G3OP_SPE_EMI_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeLightVector (
    GXLightId lightID,
    fx16 x,
    fx16 y,
    fx16 z)
{
    u32 tmp;
    GX_LIGHTID_ASSERT(lightID);
    SDK_MINMAX_ASSERT(x, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(y, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(z, -FX16_ONE, FX16_ONE - 1);

    tmp = GX_PACK_LIGHTVECTOR_PARAM(lightID, x, y, z);

    NNS_G3dGeBufferOP_N(G3OP_LIGHT_VECTOR,
                        &tmp,
                        G3OP_LIGHT_VECTOR_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeLightColor (
    GXLightId lightID,
    GXRgb rgb)
{
    u32 tmp;
    GX_LIGHTID_ASSERT(lightID);
    GXRGB_ASSERT(rgb);

    tmp = GX_PACK_LIGHTCOLOR_PARAM(lightID, rgb);

    NNS_G3dGeBufferOP_N(G3OP_LIGHT_COLOR,
                        &tmp,
                        G3OP_LIGHT_COLOR_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeBegin (GXBegin primitive)
{
    GX_BEGIN_ASSERT(primitive);

    NNS_G3dGeBufferOP_N(G3OP_BEGIN,
                        (u32 *)&primitive,
                        G3OP_BEGIN_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeEnd (void)
{
    NNS_G3dGeBufferOP_N(G3OP_END, NULL, G3OP_END_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeViewPort (
    int x1,
    int y1,
    int x2,
    int y2)
{
    u32 tmp;
    GX_VIEWPORT_ASSERT(x1, y1, x2, y2);
    tmp = GX_PACK_VIEWPORT_PARAM(x1, y1, x2, y2);

    NNS_G3dGeBufferOP_N(G3OP_VIEWPORT, &tmp, G3OP_VIEWPORT_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeBoxTest (const GXBoxTestParam * box)
{
    NNS_G3D_NULL_ASSERT(box);

    NNS_G3dGeBufferOP_N(G3OP_BOX_TEST,
                        (u32 *)&box->val[0],
                        G3OP_BOX_TEST_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGePositionTest (
    fx16 x,
    fx16 y,
    fx16 z)
{
    u32 tmp[2];
    tmp[0] = GX_FX16PAIR(x, y);
    tmp[1] = (u32)(u16)z;

    NNS_G3dGeBufferOP_N(G3OP_POS_TEST,
                        (u32 *)&tmp[0],
                        G3OP_POS_TEST_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeVectorTest (
    fx16 x,
    fx16 y,
    fx16 z)
{
    u32 tmp;
    SDK_MINMAX_ASSERT(x, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(y, -FX16_ONE, FX16_ONE - 1);
    SDK_MINMAX_ASSERT(z, -FX16_ONE, FX16_ONE - 1);

    tmp = GX_PACK_VECTORTEST_PARAM(x, y, z);

    NNS_G3dGeBufferOP_N(G3OP_VEC_TEST,
                        &tmp,
                        G3OP_VEC_TEST_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeLoadMtx44 (const MtxFx44 * m)
{
    NNS_G3D_NULL_ASSERT(m);

    NNS_G3dGeBufferOP_N(G3OP_MTX_LOAD_4x4,
                        (u32 *)m,
                        G3OP_MTX_LOAD_4x4_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeLoadMtx43 (const MtxFx43 * m)
{
    NNS_G3D_NULL_ASSERT(m);

    NNS_G3dGeBufferOP_N(G3OP_MTX_LOAD_4x3,
                        (u32 *)m,
                        G3OP_MTX_LOAD_4x3_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeMultMtx44 (const MtxFx44 * m)
{
    NNS_G3D_NULL_ASSERT(m);

    NNS_G3dGeBufferOP_N(G3OP_MTX_MULT_4x4,
                        (u32 *)m,
                        G3OP_MTX_MULT_4x4_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeMultMtx43 (const MtxFx43 * m)
{
    NNS_G3D_NULL_ASSERT(m);

    NNS_G3dGeBufferOP_N(G3OP_MTX_MULT_4x3,
                        (u32 *)m,
                        G3OP_MTX_MULT_4x3_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeMultMtx33 (const MtxFx33 * m)
{
    NNS_G3D_NULL_ASSERT(m);

    NNS_G3dGeBufferOP_N(G3OP_MTX_MULT_3x3,
                        (u32 *)m,
                        G3OP_MTX_MULT_3x3_NPARAMS);
}

NNS_G3D_INLINE void NNS_G3dGeShininess (const u32 * table)
{
    NNS_G3D_NULL_ASSERT(table);

    NNS_G3dGeBufferOP_N(G3OP_SHININESS,
                        table,
                        G3OP_SHININESS_NPARAMS);
}

#ifdef __cplusplus
}
#endif

#endif
