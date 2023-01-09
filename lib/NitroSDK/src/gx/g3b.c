#ifdef SDK_WIN32
#include <nitro_win32.h>
#else
#include <nitro/gx/g3b.h>
#include <nitro/mi/dma.h>
#include <nitro/mi/memory.h>

#include "include/gxasm.h"
#endif

void G3BS_DirectN (GXDLInfo * info, int op, int nParams, const u32 * params) {
    SDK_NULL_ASSERT(info);
    SDK_NULL_ASSERT(params);
    SDK_NULL_ASSERT(info->curr_param);
    SDK_ALIGN4_ASSERT(info->curr_cmd);
    SDK_ASSERT(op >= 0 && op < 0x100);

    *(u32 *)info->curr_cmd = (u32)op;

    while (--nParams >= 0) {
        *(info->curr_param + nParams) = *(params + nParams);
    }
}

void G3BS_LoadMtx44 (GXDLInfo * info, const MtxFx44 * m) {
    SDK_NULL_ASSERT(info);
    SDK_NULL_ASSERT(m);
    SDK_NULL_ASSERT(info->curr_param);
    SDK_ALIGN4_ASSERT(info->curr_cmd);

    *(u32 *)info->curr_cmd = G3OP_MTX_LOAD_4x4;

#ifndef SDK_WIN32
    MI_Copy64B(&m->_00, (void *)info->curr_param);
#else
    *(info->curr_param + 0) = (u32)m->_00;
    *(info->curr_param + 1) = (u32)m->_01;
    *(info->curr_param + 2) = (u32)m->_02;
    *(info->curr_param + 3) = (u32)m->_03;

    *(info->curr_param + 4) = (u32)m->_10;
    *(info->curr_param + 5) = (u32)m->_11;
    *(info->curr_param + 6) = (u32)m->_12;
    *(info->curr_param + 7) = (u32)m->_13;

    *(info->curr_param + 8) = (u32)m->_20;
    *(info->curr_param + 9) = (u32)m->_21;
    *(info->curr_param + 10) = (u32)m->_22;
    *(info->curr_param + 11) = (u32)m->_23;

    *(info->curr_param + 12) = (u32)m->_30;
    *(info->curr_param + 13) = (u32)m->_31;
    *(info->curr_param + 14) = (u32)m->_32;
    *(info->curr_param + 15) = (u32)m->_33;
#endif
}

void G3BS_LoadMtx43 (GXDLInfo * info, const MtxFx43 * m) {
    SDK_NULL_ASSERT(info);
    SDK_NULL_ASSERT(m);
    SDK_NULL_ASSERT(info->curr_param);
    SDK_ALIGN4_ASSERT(info->curr_cmd);

    *(u32 *)info->curr_cmd = G3OP_MTX_LOAD_4x3;
#ifndef SDK_WIN32
    MI_Copy48B(&m->_00, (void *)info->curr_param);
#else
    *(info->curr_param + 0) = (u32)m->_00;
    *(info->curr_param + 1) = (u32)m->_01;
    *(info->curr_param + 2) = (u32)m->_02;

    *(info->curr_param + 3) = (u32)m->_10;
    *(info->curr_param + 4) = (u32)m->_11;
    *(info->curr_param + 5) = (u32)m->_12;

    *(info->curr_param + 6) = (u32)m->_20;
    *(info->curr_param + 7) = (u32)m->_21;
    *(info->curr_param + 8) = (u32)m->_22;

    *(info->curr_param + 9) = (u32)m->_30;
    *(info->curr_param + 10) = (u32)m->_31;
    *(info->curr_param + 11) = (u32)m->_32;
#endif
}

void G3BS_MultMtx44 (GXDLInfo * info, const MtxFx44 * m) {
    SDK_NULL_ASSERT(info);
    SDK_NULL_ASSERT(m);
    SDK_NULL_ASSERT(info->curr_param);
    SDK_ALIGN4_ASSERT(info->curr_cmd);

    *(u32 *)info->curr_cmd = G3OP_MTX_MULT_4x4;
#ifndef SDK_WIN32
    MI_Copy64B(&m->_00, (void *)info->curr_param);
#else
    *(info->curr_param + 0) = (u32)m->_00;
    *(info->curr_param + 1) = (u32)m->_01;
    *(info->curr_param + 2) = (u32)m->_02;
    *(info->curr_param + 3) = (u32)m->_03;

    *(info->curr_param + 4) = (u32)m->_10;
    *(info->curr_param + 5) = (u32)m->_11;
    *(info->curr_param + 6) = (u32)m->_12;
    *(info->curr_param + 7) = (u32)m->_13;

    *(info->curr_param + 8) = (u32)m->_20;
    *(info->curr_param + 9) = (u32)m->_21;
    *(info->curr_param + 10) = (u32)m->_22;
    *(info->curr_param + 11) = (u32)m->_23;

    *(info->curr_param + 12) = (u32)m->_30;
    *(info->curr_param + 13) = (u32)m->_31;
    *(info->curr_param + 14) = (u32)m->_32;
    *(info->curr_param + 15) = (u32)m->_33;
#endif
}

void G3BS_MultMtx43 (GXDLInfo * info, const MtxFx43 * m) {
    SDK_NULL_ASSERT(info);
    SDK_NULL_ASSERT(m);
    SDK_NULL_ASSERT(info->curr_param);
    SDK_ALIGN4_ASSERT(info->curr_cmd);

    *(u32 *)info->curr_cmd = G3OP_MTX_MULT_4x3;
#ifndef SDK_WIN32
    MI_Copy48B(&m->_00, (void *)info->curr_param);
#else
    *(info->curr_param + 0) = (u32)m->_00;
    *(info->curr_param + 1) = (u32)m->_01;
    *(info->curr_param + 2) = (u32)m->_02;

    *(info->curr_param + 3) = (u32)m->_10;
    *(info->curr_param + 4) = (u32)m->_11;
    *(info->curr_param + 5) = (u32)m->_12;

    *(info->curr_param + 6) = (u32)m->_20;
    *(info->curr_param + 7) = (u32)m->_21;
    *(info->curr_param + 8) = (u32)m->_22;

    *(info->curr_param + 9) = (u32)m->_30;
    *(info->curr_param + 10) = (u32)m->_31;
    *(info->curr_param + 11) = (u32)m->_32;
#endif
}

void G3BS_MultMtx33 (GXDLInfo * info, const MtxFx33 * m) {
    SDK_NULL_ASSERT(info);
    SDK_NULL_ASSERT(m);
    SDK_NULL_ASSERT(info->curr_param);
    SDK_ALIGN4_ASSERT(info->curr_cmd);

    *(u32 *)info->curr_cmd = G3OP_MTX_MULT_3x3;
#ifndef SDK_WIN32
    MI_Copy36B(&m->_00, (void *)info->curr_param);
#else
    *(info->curr_param + 0) = (u32)m->_00;
    *(info->curr_param + 1) = (u32)m->_01;
    *(info->curr_param + 2) = (u32)m->_02;

    *(info->curr_param + 3) = (u32)m->_10;
    *(info->curr_param + 4) = (u32)m->_11;
    *(info->curr_param + 5) = (u32)m->_12;

    *(info->curr_param + 6) = (u32)m->_20;
    *(info->curr_param + 7) = (u32)m->_21;
    *(info->curr_param + 8) = (u32)m->_22;
#endif
}

void G3BS_MultTransMtx33 (GXDLInfo * info, const MtxFx33 * mtx, const VecFx32 * trans) {
    SDK_NULL_ASSERT(info);
    SDK_NULL_ASSERT(mtx);
    SDK_NULL_ASSERT(trans);
    SDK_NULL_ASSERT(info->curr_param);
    SDK_ALIGN4_ASSERT(info->curr_cmd);

    *(u32 *)info->curr_cmd = G3OP_MTX_MULT_4x3;
#ifndef SDK_WIN32
    MI_Copy36B(&mtx->_00, (void *)info->curr_param);
    MI_CpuCopy32(trans, (u32 *)info->curr_param + 9, sizeof(VecFx32));
#else
    *((u32 *)info->curr_param + 0) = (u32)mtx->_00;
    *((u32 *)info->curr_param + 1) = (u32)mtx->_01;
    *((u32 *)info->curr_param + 2) = (u32)mtx->_02;

    *((u32 *)info->curr_param + 3) = (u32)mtx->_10;
    *((u32 *)info->curr_param + 4) = (u32)mtx->_11;
    *((u32 *)info->curr_param + 5) = (u32)mtx->_12;

    *((u32 *)info->curr_param + 6) = (u32)mtx->_20;
    *((u32 *)info->curr_param + 7) = (u32)mtx->_21;
    *((u32 *)info->curr_param + 8) = (u32)mtx->_22;

    *((u32 *)info->curr_param + 9) = trans->x;
    *((u32 *)info->curr_param + 10) = trans->y;
    *((u32 *)info->curr_param + 11) = trans->z;
#endif
}

void G3B_Direct0 (GXDLInfo * info, int op) {
    G3BS_Direct0(info, op);
    G3B_UpdateGXDLInfo(info, 0);
}

void G3B_Direct1 (GXDLInfo * info, int op, u32 param0) {
    G3BS_Direct1(info, op, param0);
    G3B_UpdateGXDLInfo(info, 1);
}

void G3B_Direct2 (GXDLInfo * info, int op, u32 param0, u32 param1) {
    G3BS_Direct2(info, op, param0, param1);
    G3B_UpdateGXDLInfo(info, 2);
}

void G3B_Direct3 (GXDLInfo * info, int op, u32 param0, u32 param1, u32 param2) {
    G3BS_Direct3(info, op, param0, param1, param2);
    G3B_UpdateGXDLInfo(info, 3);
}

void G3B_DirectN (GXDLInfo * info, int op, int nParams, const u32 * params) {
    G3BS_DirectN(info, op, nParams, params);
    G3B_UpdateGXDLInfo(info, nParams);
}

void G3B_Nop (GXDLInfo * info) {
    G3BS_Nop(info);
    G3B_UpdateGXDLInfo(info, G3OP_NOP_NPARAMS);
}

void G3B_MtxMode (GXDLInfo * info, GXMtxMode mode) {
    G3BS_MtxMode(info, mode);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_MODE_NPARAMS);
}

void G3B_PushMtx (GXDLInfo * info) {
    G3BS_PushMtx(info);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_PUSH_NPARAMS);
}

void G3B_PopMtx (GXDLInfo * info, int num) {
    G3BS_PopMtx(info, num);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_POP_NPARAMS);
}

void G3B_StoreMtx (GXDLInfo * info, int num) {
    G3BS_StoreMtx(info, num);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_STORE_NPARAMS);
}

void G3B_RestoreMtx (GXDLInfo * info, int num) {
    G3BS_RestoreMtx(info, num);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_RESTORE_NPARAMS);
}

void G3B_Identity (GXDLInfo * info) {
    G3BS_Identity(info);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_IDENTITY_NPARAMS);
}

void G3B_LoadMtx44 (GXDLInfo * info, const MtxFx44 * m) {
    G3BS_LoadMtx44(info, m);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_LOAD_4x4_NPARAMS);
}

void G3B_LoadMtx43 (GXDLInfo * info, const MtxFx43 * m) {
    G3BS_LoadMtx43(info, m);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_LOAD_4x3_NPARAMS);
}

void G3B_MultMtx44 (GXDLInfo * info, const MtxFx44 * m) {
    G3BS_MultMtx44(info, m);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_MULT_4x4_NPARAMS);
}

void G3B_MultMtx43 (GXDLInfo * info, const MtxFx43 * m) {
    G3BS_MultMtx43(info, m);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_MULT_4x3_NPARAMS);
}

void G3B_MultMtx33 (GXDLInfo * info, const MtxFx33 * m) {
    G3BS_MultMtx33(info, m);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_MULT_3x3_NPARAMS);
}

void G3B_MultTransMtx33 (GXDLInfo * info, const MtxFx33 * mtx, const VecFx32 * trans) {
    G3BS_MultTransMtx33(info, mtx, trans);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_MULT_4x3_NPARAMS);
}

void G3B_Scale (GXDLInfo * info, fx32 x, fx32 y, fx32 z) {
    G3BS_Scale(info, x, y, z);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_SCALE_NPARAMS);
}

void G3B_Translate (GXDLInfo * info, fx32 x, fx32 y, fx32 z) {
    G3BS_Translate(info, x, y, z);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_TRANS_NPARAMS);
}

void G3B_Color (GXDLInfo * info, GXRgb rgb) {
    G3BS_Color(info, rgb);
    G3B_UpdateGXDLInfo(info, G3OP_COLOR_NPARAMS);
}

void G3B_Normal (GXDLInfo * info, fx16 x, fx16 y, fx16 z) {
    G3BS_Normal(info, x, y, z);
    G3B_UpdateGXDLInfo(info, G3OP_NORMAL_NPARAMS);
}

void G3B_TexCoord (GXDLInfo * info, fx32 s, fx32 t) {
    G3BS_TexCoord(info, s, t);
    G3B_UpdateGXDLInfo(info, G3OP_TEXCOORD_NPARAMS);
}

void G3B_Vtx (GXDLInfo * info, fx16 x, fx16 y, fx16 z) {
    G3BS_Vtx(info, x, y, z);
    G3B_UpdateGXDLInfo(info, G3OP_VTX_16_NPARAMS);
}

void G3B_Vtx10 (GXDLInfo * info, fx16 x, fx16 y, fx16 z) {
    G3BS_Vtx10(info, x, y, z);
    G3B_UpdateGXDLInfo(info, G3OP_VTX_10_NPARAMS);
}

void G3B_VtxXY (GXDLInfo * info, fx16 x, fx16 y) {
    G3BS_VtxXY(info, x, y);
    G3B_UpdateGXDLInfo(info, G3OP_VTX_XY_NPARAMS);
}

void G3B_VtxXZ (GXDLInfo * info, fx16 x, fx16 z) {
    G3BS_VtxXZ(info, x, z);
    G3B_UpdateGXDLInfo(info, G3OP_VTX_XZ_NPARAMS);
}

void G3B_VtxYZ (GXDLInfo * info, fx16 y, fx16 z) {
    G3BS_VtxYZ(info, y, z);
    G3B_UpdateGXDLInfo(info, G3OP_VTX_YZ_NPARAMS);
}

void G3B_VtxDiff (GXDLInfo * info, fx16 x, fx16 y, fx16 z) {
    G3BS_VtxDiff(info, x, y, z);
    G3B_UpdateGXDLInfo(info, G3OP_VTX_DIFF_NPARAMS);
}

void G3B_PolygonAttr (GXDLInfo * info, int light, GXPolygonMode polyMode, GXCull cullMode, int polygonID, int alpha, int misc) {
    G3BS_PolygonAttr(info, light, polyMode, cullMode, polygonID, alpha, misc);
    G3B_UpdateGXDLInfo(info, G3OP_POLYGON_ATTR_NPARAMS);
}

void G3B_TexImageParam (GXDLInfo * info, GXTexFmt texFmt, GXTexGen texGen, GXTexSizeS s, GXTexSizeT t, GXTexRepeat repeat, GXTexFlip flip, GXTexPlttColor0 pltt0, u32 addr) {
    G3BS_TexImageParam(info, texFmt, texGen, s, t, repeat, flip, pltt0, addr);

    G3B_UpdateGXDLInfo(info, G3OP_TEXIMAGE_PARAM_NPARAMS);
}

void G3B_TexPlttBase (GXDLInfo * info, u32 addr, GXTexFmt texfmt) {
    G3BS_TexPlttBase(info, addr, texfmt);

    G3B_UpdateGXDLInfo(info, G3OP_TEXPLTT_BASE_NPARAMS);
}

void G3B_MaterialColorDiffAmb (GXDLInfo * info, GXRgb diffuse, GXRgb ambient, BOOL IsSetVtxColor) {
    G3BS_MaterialColorDiffAmb(info, diffuse, ambient, IsSetVtxColor);

    G3B_UpdateGXDLInfo(info, G3OP_DIF_AMB_NPARAMS);
}

void G3B_MaterialColorSpecEmi (GXDLInfo * info, GXRgb specular, GXRgb emission, BOOL IsShininess) {
    G3BS_MaterialColorSpecEmi(info, specular, emission, IsShininess);

    G3B_UpdateGXDLInfo(info, G3OP_SPE_EMI_NPARAMS);
}

void G3B_LightVector (GXDLInfo * info, GXLightId lightID, fx16 x, fx16 y, fx16 z) {
    G3BS_LightVector(info, lightID, x, y, z);

    G3B_UpdateGXDLInfo(info, G3OP_LIGHT_VECTOR_NPARAMS);
}

void G3B_LightColor (GXDLInfo * info, GXLightId lightID, GXRgb rgb) {
    G3BS_LightColor(info, lightID, rgb);

    G3B_UpdateGXDLInfo(info, G3OP_LIGHT_COLOR_NPARAMS);
}

void G3B_Shininess (GXDLInfo * info, const u32 * table) {
    G3BS_Shininess(info, table);
    G3B_UpdateGXDLInfo(info, G3OP_SHININESS_NPARAMS);
}

void G3B_Begin (GXDLInfo * info, GXBegin primitive) {
    G3BS_Begin(info, primitive);
    G3B_UpdateGXDLInfo(info, G3OP_BEGIN_NPARAMS);
}

void G3B_End (GXDLInfo * info) {
    G3BS_End(info);
    G3B_UpdateGXDLInfo(info, G3OP_END_NPARAMS);
}

void G3B_SwapBuffers (GXDLInfo * info, GXSortMode am, GXBufferMode zw) {
    G3BS_SwapBuffers(info, am, zw);
    G3B_UpdateGXDLInfo(info, G3OP_SWAP_BUFFERS_NPARAMS);
}

void G3B_ViewPort (GXDLInfo * info, int x1, int y1, int x2, int y2) {
    G3BS_ViewPort(info, x1, y1, x2, y2);
    G3B_UpdateGXDLInfo(info, G3OP_VIEWPORT_NPARAMS);
}

void G3B_BoxTest (GXDLInfo * info, const GXBoxTestParam * box) {
    G3BS_BoxTest(info, box);

    G3B_UpdateGXDLInfo(info, G3OP_BOX_TEST_NPARAMS);
}

void G3B_PositionTest (GXDLInfo * info, fx16 x, fx16 y, fx16 z) {
    G3BS_PositionTest(info, x, y, z);

    G3B_UpdateGXDLInfo(info, G3OP_POS_TEST_NPARAMS);
}

void G3B_VectorTest (GXDLInfo * info, fx16 x, fx16 y, fx16 z) {
    G3BS_VectorTest(info, x, y, z);

    G3B_UpdateGXDLInfo(info, G3OP_VEC_TEST_NPARAMS);
}
