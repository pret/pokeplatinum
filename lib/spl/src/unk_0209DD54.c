
#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>
#include <nitro/fx/fx_mtx43.h>
#include <nitro/fx/fx_trig.h>
#include <nitro/gx/g3.h>
#include <nitro/gx/g3imm.h>

#include "spl.h"

typedef void (*RotFunc)(fx32 sin, fx32 cos, MtxFx43 *rot);
typedef void (*DrawPlaneFunc)(fx16 s, fx16 t, fx16 offsetX, fx16 offsetY);

static DrawPlaneFunc Unk_02100DA0[2] = {
    sub_020A0500,
    sub_020A0444,
};

static RotFunc Unk_02100DA8[2] = {
    sub_020A0358,
    sub_020A0398,
};

void sub_020A0500(fx16 s, fx16 t, fx16 offsetX, fx16 offsetY)
{
    G3_Begin(GX_BEGIN_QUADS);

    G3_TexCoord(0, 0);
    G3_Vtx10(offsetX - FX32_ONE, offsetY + FX32_ONE, 0);

    G3_TexCoord(s, 0);
    G3_Vtx10(offsetX + FX32_ONE, offsetY + FX32_ONE, 0);

    G3_TexCoord(s, t);
    G3_Vtx10(offsetX + FX32_ONE, offsetY - FX32_ONE, 0);

    G3_TexCoord(0, t);
    G3_Vtx10(offsetX - FX32_ONE, offsetY - FX32_ONE, 0);

    G3_End();
}

void sub_020A0444(fx16 s, fx16 t, fx16 offsetX, fx16 offsetZ)
{
    G3_Begin(GX_BEGIN_QUADS);

    G3_TexCoord(0, 0);
    G3_Vtx10(offsetX - FX32_ONE, 0, offsetZ + FX32_ONE);

    G3_TexCoord(s, 0);
    G3_Vtx10(offsetX + FX32_ONE, 0, offsetZ + FX32_ONE);

    G3_TexCoord(s, t);
    G3_Vtx10(offsetX + FX32_ONE, 0, offsetZ - FX32_ONE);

    G3_TexCoord(0, t);
    G3_Vtx10(offsetX - FX32_ONE, 0, offsetZ - FX32_ONE);

    G3_End();
}

void sub_020A0398(fx32 sin, fx32 cos, MtxFx43 *mat)
{
    fx32 C, Sm, Sp;

    C = FX_MUL(FX32_ONE - cos, FX32_CONST(1 / 3.0));
    Sm = C + FX_MUL(sin, FX32_SQRT1_3);
    Sp = C - FX_MUL(sin, FX32_SQRT1_3);
    C += cos;

    mat->_00 = C;
    mat->_10 = Sm;
    mat->_20 = Sp;
    mat->_30 = 0;
    mat->_01 = Sp;
    mat->_11 = C;
    mat->_21 = Sm;
    mat->_31 = 0;
    mat->_02 = Sm;
    mat->_12 = Sp;
    mat->_22 = C;
    mat->_32 = 0;
}

void sub_020A0358(fx32 sin, fx32 cos, MtxFx43 *mat)
{
    mat->_00 = cos;
    mat->_10 = 0;
    mat->_20 = sin;
    mat->_30 = 0;
    mat->_01 = 0;
    mat->_11 = FX32_ONE;
    mat->_21 = 0;
    mat->_31 = 0;
    mat->_02 = -sin;
    mat->_12 = 0;
    mat->_22 = cos;
    mat->_32 = 0;
}

void sub_0209FF0C(SPLManager *mgr, SPLParticle *ptcl)
{
    fx32 aspect;
    const MtxFx43 *cmr;
    VecFx32 trs;
    fx32 sclX, sclY;
    MtxFx43 load;
    fx32 sin;
    fx16 animScale;
    GXRgb ptclCol, emtrCol;
    u8 scaleAnimDirect;

    SPLEmitter *emtr = mgr->unk_40.unk_00;
    UnkSPLStruct9 *resBase = emtr->p_res->unk_00;

    cmr = mgr->unk_40.unk_04;
    aspect = mgr->unk_40.unk_00->p_res->unk_00->unk_30;
    animScale = ptcl->unk_34;

    ptclCol = ptcl->unk_36;
    emtrCol = emtr->unk_E2;

    scaleAnimDirect = resBase->unk_48.unk_07_4;

    fx32 alpha = ptcl->unk_2E.unk_00_0 * (ptcl->unk_2E.unk_00_5 + 1) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->unk_2E.unk_01_2,
        alpha,
        mgr->unk_3C);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    sclY = ptcl->unk_30;
    sclX = FX_MUL(sclY, aspect);

    if (scaleAnimDirect == 0) {
        sclX = FX_MUL(sclX, animScale);
        sclY = FX_MUL(sclY, animScale);
    } else if (scaleAnimDirect == 1) {
        sclX = FX_MUL(sclX, animScale);
    } else {
        sclY = FX_MUL(sclY, animScale);
    }

    if (!mgr->unk_40.unk_00->p_res->unk_00->unk_00.unk_06_7) {
        trs.x = ptcl->unk_08.x + ptcl->unk_38.x;
        trs.y = ptcl->unk_08.y + ptcl->unk_38.y;
        trs.z = ptcl->unk_08.z + ptcl->unk_38.z;
        MTX_MultVec43(&trs, cmr, &trs);

        sin = FX_SinIdx(ptcl->unk_20);
        fx32 cos = FX_CosIdx(ptcl->unk_20);
        load._00 = FX_MUL(cos, sclX);
        load._01 = FX_MUL(sin, sclX);
        load._02 = 0;
        load._10 = FX_MUL(-sin, sclY);
        load._11 = FX_MUL(cos, sclY);
        load._12 = 0;
        load._20 = 0;
        load._21 = 0;
        load._22 = FX32_ONE;
        load._30 = trs.x;
        load._31 = trs.y;
        load._32 = trs.z;

        G3_Identity();
        G3_MultMtx43(&load);
    } else {
        trs.x = ptcl->unk_08.x + ptcl->unk_38.x - mgr->unk_40.unk_00->p_res->unk_00->unk_04.x;
        trs.y = ptcl->unk_08.y + ptcl->unk_38.y - mgr->unk_40.unk_00->p_res->unk_00->unk_04.y;
        trs.z = ptcl->unk_08.z + ptcl->unk_38.z - mgr->unk_40.unk_00->p_res->unk_00->unk_04.z;
        MTX_MultVec43(&trs, cmr, &trs);

        sin = FX_SinIdx(ptcl->unk_20);
        fx32 cos = FX_CosIdx(ptcl->unk_20);
        load._00 = FX_MUL(cos, sclX);
        load._01 = FX_MUL(sin, sclX);
        load._02 = 0;
        load._10 = FX_MUL(-sin, sclY);
        load._11 = FX_MUL(cos, sclY);
        load._12 = 0;
        load._20 = 0;
        load._21 = 0;
        load._22 = FX32_ONE;
        load._30 = trs.x;
        load._31 = trs.y;
        load._32 = trs.z;

        G3_Identity();

        UnkSPLStruct9 *resBase = mgr->unk_40.unk_00->p_res->unk_00;
        G3_Translate(resBase->unk_04.x, resBase->unk_04.y, resBase->unk_04.z);
        G3_MultMtx43(&load);
    }

    G3_Color(GX_RGB(
        GX_RGB_R_(ptclCol) * GX_RGB_R_(emtrCol) >> 5,
        GX_RGB_G_(ptclCol) * GX_RGB_G_(emtrCol) >> 15,
        GX_RGB_B_(ptclCol) * GX_RGB_B_(emtrCol) >> 25));

    emtr = mgr->unk_40.unk_00;
    sub_020A0500(emtr->unk_E8, emtr->unk_EA, emtr->p_res->unk_00->unk_54, emtr->p_res->unk_00->unk_56);
}

void sub_0209FAB8(SPLManager *mgr, SPLParticle *ptcl)
{
    fx32 aspect;
    const MtxFx43 *cmr;
    VecFx32 trs;
    fx32 sclX, sclY;
    MtxFx43 load;
    fx32 sin;

    cmr = mgr->unk_40.unk_04;
    aspect = mgr->unk_40.unk_00->p_res->unk_00->unk_30;

    fx32 alpha = (fx32)(ptcl->unk_2E.unk_00_0 * (ptcl->unk_2E.unk_00_5 + 1)) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->unk_2E.unk_01_2,
        alpha,
        mgr->unk_3C);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    sclY = ptcl->unk_30;
    sclX = FX_MUL(sclY, aspect);

    switch (mgr->unk_40.unk_00->p_res->unk_00->unk_48.unk_07_4) {
    case 0:
        sclX = FX_MUL(sclX, ptcl->unk_34);
        sclY = FX_MUL(sclY, ptcl->unk_34);
        break;

    case 1:
        sclX = FX_MUL(sclX, ptcl->unk_34);
        break;

    case 2:
        sclY = FX_MUL(sclY, ptcl->unk_34);
        break;
    }

    if (!mgr->unk_40.unk_00->p_res->unk_00->unk_00.unk_06_7) {
        trs.x = ptcl->unk_08.x + ptcl->unk_38.x;
        trs.y = ptcl->unk_08.y + ptcl->unk_38.y;
        trs.z = ptcl->unk_08.z + ptcl->unk_38.z;
        MTX_MultVec43(&trs, cmr, &trs);

        sin = FX_SinIdx(ptcl->unk_20);
        fx32 cos = FX_CosIdx(ptcl->unk_20);
        load._00 = FX_MUL(cos, sclX);
        load._01 = FX_MUL(sin, sclX);
        load._02 = 0;
        load._10 = FX_MUL(-sin, sclY);
        load._11 = FX_MUL(cos, sclY);
        load._12 = 0;
        load._20 = 0;
        load._21 = 0;
        load._22 = FX32_ONE;
        load._30 = trs.x;
        load._31 = trs.y;
        load._32 = trs.z;

        G3_Identity();
        G3_MultMtx43(&load);
    } else {
        trs.x = ptcl->unk_08.x + ptcl->unk_38.x - mgr->unk_40.unk_00->p_res->unk_00->unk_04.x;
        trs.y = ptcl->unk_08.y + ptcl->unk_38.y - mgr->unk_40.unk_00->p_res->unk_00->unk_04.y;
        trs.z = ptcl->unk_08.z + ptcl->unk_38.z - mgr->unk_40.unk_00->p_res->unk_00->unk_04.z;
        MTX_MultVec43(&trs, cmr, &trs);

        sin = FX_SinIdx(ptcl->unk_20);
        fx32 cos = FX_CosIdx(ptcl->unk_20);
        load._00 = FX_MUL(cos, sclX);
        load._01 = FX_MUL(sin, sclX);
        load._02 = 0;
        load._10 = FX_MUL(-sin, sclY);
        load._11 = FX_MUL(cos, sclY);
        load._12 = 0;
        load._20 = 0;
        load._21 = 0;
        load._22 = FX32_ONE;
        load._30 = trs.x;
        load._31 = trs.y;
        load._32 = trs.z;

        G3_Identity();

        UnkSPLStruct9 *resBase = mgr->unk_40.unk_00->p_res->unk_00;
        G3_Translate(resBase->unk_04.x, resBase->unk_04.y, resBase->unk_04.z);
        G3_MultMtx43(&load);
    }

    GXRgb colA = ptcl->unk_36;
    GXRgb colB = mgr->unk_40.unk_00->unk_E2;
    G3_Color(GX_RGB(
        GX_RGB_R_(colA) * GX_RGB_R_(colB) >> 5,
        GX_RGB_G_(colA) * GX_RGB_G_(colB) >> 15,
        GX_RGB_B_(colA) * GX_RGB_B_(colB) >> 25));

    SPLEmitter *emtr = mgr->unk_40.unk_00;
    sub_020A0500(emtr->unk_EC, emtr->unk_EE, 0, 0);
}

void sub_0209F3D0(SPLManager *mgr, SPLParticle *ptcl)
{
    fx32 aspect;
    const MtxFx43 *cmr;
    VecFx32 vel_dir;
    fx32 dot;
    VecFx32 trs;
    fx32 sclX, sclY;
    VecFx32 dir, look;
    MtxFx33 mtx;
    MtxFx43 load;

    cmr = mgr->unk_40.unk_04;
    aspect = mgr->unk_40.unk_00->p_res->unk_00->unk_30;

    fx32 alpha = (fx32)(ptcl->unk_2E.unk_00_0 * (ptcl->unk_2E.unk_00_5 + 1)) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->unk_2E.unk_01_2,
        alpha,
        mgr->unk_3C);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    sclY = ptcl->unk_30;
    sclX = FX_MUL(sclY, aspect);

    switch (mgr->unk_40.unk_00->p_res->unk_00->unk_48.unk_07_4) {
    case 0:
        sclX = FX_MUL(sclX, ptcl->unk_34);
        sclY = FX_MUL(sclY, ptcl->unk_34);
        break;

    case 1:
        sclX = FX_MUL(sclX, ptcl->unk_34);
        break;

    case 2:
        sclY = FX_MUL(sclY, ptcl->unk_34);
        break;
    }

    if (!mgr->unk_40.unk_00->p_res->unk_00->unk_00.unk_06_7) {
        trs.x = ptcl->unk_08.x + ptcl->unk_38.x;
        trs.y = ptcl->unk_08.y + ptcl->unk_38.y;
        trs.z = ptcl->unk_08.z + ptcl->unk_38.z;

        dir = ptcl->unk_14;

        look.x = cmr->_02;
        look.y = cmr->_12;
        look.z = cmr->_22;

        VEC_CrossProduct(&dir, &look, &dir);
        if (dir.x == 0 && dir.y == 0 && dir.z == 0) {
            return;
        }

        VEC_Normalize(&dir, &dir);
        MI_Copy36B(cmr, &mtx);
        MTX_MultVec33(&dir, &mtx, &dir);
        MTX_MultVec43(&trs, cmr, &trs);

        vel_dir = ptcl->unk_14;
        VEC_Normalize(&vel_dir, &vel_dir);

        dot = FX_MUL(vel_dir.x, -cmr->_02) + FX_MUL(vel_dir.y, -cmr->_12) + FX_MUL(vel_dir.z, -cmr->_22);
        if (dot < 0) {
            dot = -dot;
        }

        dot = FX_MUL(sclY, FX_MUL(FX32_ONE - dot, (fx32)mgr->unk_40.unk_00->p_res->unk_00->unk_48.unk_05_0) + FX32_ONE);
        load._00 = FX_MUL(dir.x, sclX);
        load._10 = FX_MUL(-dir.y, dot);
        load._30 = trs.x;
        load._31 = trs.y;
        load._01 = FX_MUL(dir.y, sclX);
        load._11 = FX_MUL(dir.x, dot);
        load._20 = 0;
        load._21 = 0;
        load._02 = 0;
        load._12 = 0;
        load._22 = FX32_ONE;
        load._32 = trs.z;

        G3_Identity();
        G3_MultMtx43(&load);
    } else {
        trs.x = ptcl->unk_08.x + ptcl->unk_38.x - mgr->unk_40.unk_00->p_res->unk_00->unk_04.x;
        trs.y = ptcl->unk_08.y + ptcl->unk_38.y - mgr->unk_40.unk_00->p_res->unk_00->unk_04.y;
        trs.z = ptcl->unk_08.z + ptcl->unk_38.z - mgr->unk_40.unk_00->p_res->unk_00->unk_04.z;

        dir = ptcl->unk_14;

        look.x = cmr->_02;
        look.y = cmr->_12;
        look.z = cmr->_22;

        VEC_CrossProduct(&dir, &look, &dir);
        if (dir.x == 0 && dir.y == 0 && dir.z == 0) {
            return;
        }

        VEC_Normalize(&dir, &dir);
        MI_Copy36B(cmr, &mtx);
        MTX_MultVec33(&dir, &mtx, &dir);
        MTX_MultVec43(&trs, cmr, &trs);

        vel_dir = ptcl->unk_14;
        VEC_Normalize(&vel_dir, &vel_dir);

        dot = FX_MUL(vel_dir.x, -cmr->_02) + FX_MUL(vel_dir.y, -cmr->_12) + FX_MUL(vel_dir.z, -cmr->_22);
        if (dot < 0) {
            dot = -dot;
        }

        dot = FX_MUL(sclY, FX_MUL(FX32_ONE - dot, (fx32)mgr->unk_40.unk_00->p_res->unk_00->unk_48.unk_05_0) + FX32_ONE);
        load._00 = FX_MUL(dir.x, sclX);
        load._10 = FX_MUL(-dir.y, dot);
        load._20 = 0;
        load._30 = trs.x;
        load._01 = FX_MUL(dir.y, sclX);
        load._11 = FX_MUL(dir.x, dot);
        load._21 = 0;
        load._31 = trs.y;
        load._02 = 0;
        load._12 = 0;
        load._22 = FX32_ONE;
        load._32 = trs.z;

        G3_Identity();

        UnkSPLStruct9 *resBase = mgr->unk_40.unk_00->p_res->unk_00;
        G3_Translate(resBase->unk_04.x, resBase->unk_04.y, resBase->unk_04.z);
        G3_MultMtx43(&load);
    }

    GXRgb colA = ptcl->unk_36;
    GXRgb colB = mgr->unk_40.unk_00->unk_E2;
    G3_Color(GX_RGB(
        GX_RGB_R_(colA) * GX_RGB_R_(colB) >> 5,
        GX_RGB_G_(colA) * GX_RGB_G_(colB) >> 15,
        GX_RGB_B_(colA) * GX_RGB_B_(colB) >> 25));

    SPLEmitter *emtr = mgr->unk_40.unk_00;
    sub_020A0500(emtr->unk_E8, emtr->unk_EA, emtr->p_res->unk_00->unk_54, emtr->p_res->unk_00->unk_56);
}

void sub_0209ECF0(SPLManager *mgr, SPLParticle *ptcl)
{
    fx32 aspect;
    const MtxFx43 *cmr;
    VecFx32 vel_dir;
    fx32 dot;
    VecFx32 trs;
    fx32 sclX, sclY;
    VecFx32 dir, look;
    MtxFx33 mtx;
    MtxFx43 load;

    cmr = mgr->unk_40.unk_04;
    aspect = mgr->unk_40.unk_00->p_res->unk_00->unk_30;

    fx32 alpha = (fx32)(ptcl->unk_2E.unk_00_0 * (ptcl->unk_2E.unk_00_5 + 1)) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->unk_2E.unk_01_2,
        alpha,
        mgr->unk_3C);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    sclY = ptcl->unk_30;
    sclX = FX_MUL(sclY, aspect);

    switch (mgr->unk_40.unk_00->p_res->unk_00->unk_48.unk_07_4) {
    case 0:
        sclX = FX_MUL(sclX, ptcl->unk_34);
        sclY = FX_MUL(sclY, ptcl->unk_34);
        break;

    case 1:
        sclX = FX_MUL(sclX, ptcl->unk_34);
        break;

    case 2:
        sclY = FX_MUL(sclY, ptcl->unk_34);
        break;
    }

    if (!mgr->unk_40.unk_00->p_res->unk_00->unk_00.unk_06_7) {
        trs.x = ptcl->unk_08.x + ptcl->unk_38.x;
        trs.y = ptcl->unk_08.y + ptcl->unk_38.y;
        trs.z = ptcl->unk_08.z + ptcl->unk_38.z;

        dir = ptcl->unk_14;

        look.x = cmr->_02;
        look.y = cmr->_12;
        look.z = cmr->_22;

        VEC_CrossProduct(&dir, &look, &dir);
        if (dir.x == 0 && dir.y == 0 && dir.z == 0) {
            return;
        }

        VEC_Normalize(&dir, &dir);
        MI_Copy36B(cmr, &mtx);
        MTX_MultVec33(&dir, &mtx, &dir);
        MTX_MultVec43(&trs, cmr, &trs);

        vel_dir = ptcl->unk_14;
        VEC_Normalize(&vel_dir, &vel_dir);

        dot = FX_MUL(vel_dir.x, -cmr->_02) + FX_MUL(vel_dir.y, -cmr->_12) + FX_MUL(vel_dir.z, -cmr->_22);
        if (dot < 0) {
            dot = -dot;
        }

        dot = FX_MUL(sclY, FX_MUL(FX32_ONE - dot, (fx32)mgr->unk_40.unk_00->p_res->unk_00->unk_48.unk_05_0) + FX32_ONE);
        load._00 = FX_MUL(dir.x, sclX);
        load._10 = FX_MUL(-dir.y, dot);
        load._30 = trs.x;
        load._31 = trs.y;
        load._01 = FX_MUL(dir.y, sclX);
        load._11 = FX_MUL(dir.x, dot);
        load._20 = 0;
        load._21 = 0;
        load._02 = 0;
        load._12 = 0;
        load._22 = FX32_ONE;
        load._32 = trs.z;

        G3_Identity();
        G3_MultMtx43(&load);
    } else {
        trs.x = ptcl->unk_08.x + ptcl->unk_38.x - mgr->unk_40.unk_00->p_res->unk_00->unk_04.x;
        trs.y = ptcl->unk_08.y + ptcl->unk_38.y - mgr->unk_40.unk_00->p_res->unk_00->unk_04.y;
        trs.z = ptcl->unk_08.z + ptcl->unk_38.z - mgr->unk_40.unk_00->p_res->unk_00->unk_04.z;

        dir = ptcl->unk_14;

        look.x = cmr->_02;
        look.y = cmr->_12;
        look.z = cmr->_22;

        VEC_CrossProduct(&dir, &look, &dir);
        if (dir.x == 0 && dir.y == 0 && dir.z == 0) {
            return;
        }

        VEC_Normalize(&dir, &dir);
        MI_Copy36B(cmr, &mtx);
        MTX_MultVec33(&dir, &mtx, &dir);
        MTX_MultVec43(&trs, cmr, &trs);

        vel_dir = ptcl->unk_14;
        VEC_Normalize(&vel_dir, &vel_dir);

        dot = FX_MUL(vel_dir.x, -cmr->_02) + FX_MUL(vel_dir.y, -cmr->_12) + FX_MUL(vel_dir.z, -cmr->_22);
        if (dot < 0) {
            dot = -dot;
        }

        dot = FX_MUL(sclY, FX_MUL(FX32_ONE - dot, (fx32)mgr->unk_40.unk_00->p_res->unk_00->unk_48.unk_05_0) + FX32_ONE);
        load._00 = FX_MUL(dir.x, sclX);
        load._10 = FX_MUL(-dir.y, dot);
        load._20 = 0;
        load._30 = trs.x;
        load._01 = FX_MUL(dir.y, sclX);
        load._11 = FX_MUL(dir.x, dot);
        load._21 = 0;
        load._31 = trs.y;
        load._02 = 0;
        load._12 = 0;
        load._22 = FX32_ONE;
        load._32 = trs.z;

        G3_Identity();

        UnkSPLStruct9 *resBase = mgr->unk_40.unk_00->p_res->unk_00;
        G3_Translate(resBase->unk_04.x, resBase->unk_04.y, resBase->unk_04.z);
        G3_MultMtx43(&load);
    }

    GXRgb colA = ptcl->unk_36;
    GXRgb colB = mgr->unk_40.unk_00->unk_E2;
    G3_Color(GX_RGB(
        GX_RGB_R_(colA) * GX_RGB_R_(colB) >> 5,
        GX_RGB_G_(colA) * GX_RGB_G_(colB) >> 15,
        GX_RGB_B_(colA) * GX_RGB_B_(colB) >> 25));

    SPLEmitter *emtr = mgr->unk_40.unk_00;
    sub_020A0500(emtr->unk_EC, emtr->unk_EE, 0, 0);
}

void sub_0209E9A0(SPLManager *mgr, SPLParticle *ptcl)
{
    fx32 sclX, sclY;
    MtxFx43 load;
    MtxFx43 rotMtx;
    MtxFx43 sclMtx;
    u32 polygonID, cullMode;
    fx32 alpha;
    UnkSPLStruct9 *resBase;

    alpha = (fx32)(ptcl->unk_2E.unk_00_0 * (ptcl->unk_2E.unk_00_5 + 1)) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->unk_2E.unk_01_2,
        alpha,
        mgr->unk_3C);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    Unk_02100DA8[mgr->unk_40.unk_00->p_res->unk_00->unk_00.unk_06_1](FX_SinIdx(ptcl->unk_20), FX_CosIdx(ptcl->unk_20), &rotMtx);

    sclY = ptcl->unk_30;
    resBase = mgr->unk_40.unk_00->p_res->unk_00;
    sclX = FX_MUL(sclY, resBase->unk_30);

    switch (resBase->unk_48.unk_07_4) {
    case 0:
        sclX = FX_MUL(sclX, ptcl->unk_34);
        sclY = FX_MUL(sclY, ptcl->unk_34);
        break;

    case 1:
        sclX = FX_MUL(sclX, ptcl->unk_34);
        break;

    case 2:
        sclY = FX_MUL(sclY, ptcl->unk_34);
        break;
    }

    MTX_Scale43(&sclMtx, sclX, sclY, sclY);
    MTX_Concat43(&sclMtx, &rotMtx, &load);

    // resBase = mgr->unk_40.unk_00->p_res->unk_00;
    if (!mgr->unk_40.unk_00->p_res->unk_00->unk_00.unk_06_7) {
        load._30 = ptcl->unk_08.x + ptcl->unk_38.x;
        load._31 = ptcl->unk_08.y + ptcl->unk_38.y;
        load._32 = ptcl->unk_08.z + ptcl->unk_38.z;
        G3_LoadMtx43(mgr->unk_40.unk_04);
        G3_MultMtx43(&load);
    } else {
        load._30 = ptcl->unk_08.x + ptcl->unk_38.x - mgr->unk_40.unk_00->p_res->unk_00->unk_04.x;
        load._31 = ptcl->unk_08.y + ptcl->unk_38.y - mgr->unk_40.unk_00->p_res->unk_00->unk_04.y;
        load._32 = ptcl->unk_08.z + ptcl->unk_38.z - mgr->unk_40.unk_00->p_res->unk_00->unk_04.z;

        G3_Identity();

        resBase = mgr->unk_40.unk_00->p_res->unk_00;
        G3_Translate(resBase->unk_04.x, resBase->unk_04.y, resBase->unk_04.z);

        G3_MultMtx43(mgr->unk_40.unk_04);
        G3_MultMtx43(&load);
    }

    GXRgb colA = ptcl->unk_36;
    GXRgb colB = mgr->unk_40.unk_00->unk_E2;
    G3_Color(GX_RGB(
        GX_RGB_R_(colA) * GX_RGB_R_(colB) >> 5,
        GX_RGB_G_(colA) * GX_RGB_G_(colB) >> 15,
        GX_RGB_B_(colA) * GX_RGB_B_(colB) >> 25));

    SPLEmitter *emtr = mgr->unk_40.unk_00;
    resBase = emtr->p_res->unk_00;
    Unk_02100DA0[resBase->unk_00.unk_06_3](emtr->unk_E8, emtr->unk_EA, resBase->unk_54, resBase->unk_56);
}

void sub_0209E650(SPLManager *mgr, SPLParticle *ptcl)
{
    fx32 sclX, sclY;
    MtxFx43 load;
    MtxFx43 rotMtx;
    MtxFx43 sclMtx;
    u32 polygonID, cullMode;
    fx32 alpha;
    UnkSPLStruct9 *resBase;

    alpha = ptcl->unk_2E.unk_00_0 * (ptcl->unk_2E.unk_00_5 + 1) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->unk_2E.unk_01_2,
        alpha,
        mgr->unk_3C);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    Unk_02100DA8[mgr->unk_40.unk_00->p_res->unk_14->unk_00.unk_03_1](FX_SinIdx(ptcl->unk_20), FX_CosIdx(ptcl->unk_20), &rotMtx);

    sclY = ptcl->unk_30;
    resBase = mgr->unk_40.unk_00->p_res->unk_00;
    sclX = FX_MUL(sclY, resBase->unk_30);

    switch (resBase->unk_48.unk_07_4) {
    case 0:
        sclX = FX_MUL(sclX, ptcl->unk_34);
        sclY = FX_MUL(sclY, ptcl->unk_34);
        break;

    case 1:
        sclX = FX_MUL(sclX, ptcl->unk_34);
        break;

    case 2:
        sclY = FX_MUL(sclY, ptcl->unk_34);
        break;
    }

    MTX_Scale43(&sclMtx, sclX, sclY, sclY);
    MTX_Concat43(&rotMtx, &sclMtx, &load);

    if (!mgr->unk_40.unk_00->p_res->unk_00->unk_00.unk_06_7) {
        load._30 = ptcl->unk_08.x + ptcl->unk_38.x;
        load._31 = ptcl->unk_08.y + ptcl->unk_38.y;
        load._32 = ptcl->unk_08.z + ptcl->unk_38.z;
        G3_LoadMtx43(mgr->unk_40.unk_04);
        G3_MultMtx43(&load);
    } else {
        load._30 = ptcl->unk_08.x + ptcl->unk_38.x - mgr->unk_40.unk_00->p_res->unk_00->unk_04.x;
        load._31 = ptcl->unk_08.y + ptcl->unk_38.y - mgr->unk_40.unk_00->p_res->unk_00->unk_04.y;
        load._32 = ptcl->unk_08.z + ptcl->unk_38.z - mgr->unk_40.unk_00->p_res->unk_00->unk_04.z;

        G3_Identity();

        resBase = mgr->unk_40.unk_00->p_res->unk_00;
        G3_Translate(resBase->unk_04.x, resBase->unk_04.y, resBase->unk_04.z);
        G3_MultMtx43(mgr->unk_40.unk_04);
        G3_MultMtx43(&load);
    }

    GXRgb colA = ptcl->unk_36;
    GXRgb colB = mgr->unk_40.unk_00->unk_E2;
    G3_Color(GX_RGB(
        GX_RGB_R_(colA) * GX_RGB_R_(colB) >> 5,
        GX_RGB_G_(colA) * GX_RGB_G_(colB) >> 15,
        GX_RGB_B_(colA) * GX_RGB_B_(colB) >> 25));

    SPLEmitter *emtr = mgr->unk_40.unk_00;
    Unk_02100DA0[emtr->p_res->unk_14->unk_00.unk_03_3](emtr->unk_EC, emtr->unk_EE, 0, 0);
}

void sub_0209E1D4(SPLManager *mgr, SPLParticle *ptcl)
{
    MtxFx43 transform;
    MtxFx43 rotMat;
    MtxFx43 sclMat;
    VecFx32 vec1, vec2, vec3, vec4, axis;
    MtxFx43 mat;
    fx32 dot, scaleX, scaleY, alpha, tmp;
    UnkSPLStruct9 *resBase;
    SPLEmitter *emtr;
    GXRgb colA, colB;

    alpha = ptcl->unk_2E.unk_00_0 * (ptcl->unk_2E.unk_00_5 + 1) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->unk_2E.unk_01_2,
        alpha,
        mgr->unk_3C);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    Unk_02100DA8[mgr->unk_40.unk_00->p_res->unk_00->unk_00.unk_06_1](FX_SinIdx(ptcl->unk_20), FX_CosIdx(ptcl->unk_20), &rotMat);

    MTX_Identity43(&mat);

    if (!mgr->unk_40.unk_00->p_res->unk_00->unk_48.unk_07_7) {
        VEC_Normalize(&ptcl->unk_14, &vec1);
    } else {
        VEC_Normalize(&ptcl->unk_08, &vec1);
        vec1.x = -vec1.x;
        vec1.y = -vec1.y;
        vec1.z = -vec1.z;
    }

    axis.x = 0;
    axis.y = FX32_ONE;
    axis.z = 0;

    dot = VEC_DotProduct(&vec1, &axis);
    if (dot > FX32_CONST(0.8) || dot < FX32_CONST(-0.8)) {
        axis.x = FX32_ONE;
        axis.y = 0;
        axis.z = 0;
    }

    VEC_CrossProduct(&vec1, &axis, &vec2);
    VEC_CrossProduct(&vec1, &vec2, &vec3);

    mat._00 = vec2.x;
    mat._01 = vec2.y;
    mat._02 = vec2.z;
    mat._10 = vec1.x;
    mat._11 = vec1.y;
    mat._12 = vec1.z;
    mat._20 = vec3.x;
    mat._21 = vec3.y;
    mat._22 = vec3.z;
    MTX_Concat43(&rotMat, &mat, &rotMat);

    resBase = mgr->unk_40.unk_00->p_res->unk_00;
    scaleY = ptcl->unk_30;
    scaleX = FX_MUL(scaleY, resBase->unk_30);

    switch (resBase->unk_48.unk_07_4) {
    case 0:
        scaleX = FX_MUL(scaleX, ptcl->unk_34);
        scaleY = FX_MUL(scaleY, ptcl->unk_34);
        break;

    case 1:
        scaleX = FX_MUL(scaleX, ptcl->unk_34);
        break;

    case 2:
        scaleY = FX_MUL(scaleY, ptcl->unk_34);
        break;
    }

    MTX_Scale43(&sclMat, scaleX, scaleY, scaleY);
    MTX_Concat43(&sclMat, &rotMat, &transform);

    resBase = mgr->unk_40.unk_00->p_res->unk_00;
    if (!resBase->unk_00.unk_06_7) {
        transform._30 = ptcl->unk_08.x + ptcl->unk_38.x;
        transform._31 = ptcl->unk_08.y + ptcl->unk_38.y;
        transform._32 = ptcl->unk_08.z + ptcl->unk_38.z;
        G3_LoadMtx43(mgr->unk_40.unk_04);
        G3_MultMtx43(&transform);
    } else {
        transform._30 = ptcl->unk_08.x + ptcl->unk_38.x - resBase->unk_04.x;
        transform._31 = ptcl->unk_08.y + ptcl->unk_38.y - mgr->unk_40.unk_00->p_res->unk_00->unk_04.y;
        transform._32 = ptcl->unk_08.z + ptcl->unk_38.z - mgr->unk_40.unk_00->p_res->unk_00->unk_04.z;

        G3_Identity();

        resBase = mgr->unk_40.unk_00->p_res->unk_00;
        G3_Translate(resBase->unk_04.x, resBase->unk_04.y, resBase->unk_04.z);
        G3_MultMtx43(mgr->unk_40.unk_04);
        G3_MultMtx43(&transform);
    }

    colA = ptcl->unk_36;
    colB = mgr->unk_40.unk_00->unk_E2;
    G3_Color(GX_RGB(
        GX_RGB_R_(colA) * GX_RGB_R_(colB) >> 5,
        GX_RGB_G_(colA) * GX_RGB_G_(colB) >> 15,
        GX_RGB_B_(colA) * GX_RGB_B_(colB) >> 25));

    emtr = mgr->unk_40.unk_00;
    resBase = emtr->p_res->unk_00;
    Unk_02100DA0[resBase->unk_00.unk_06_3](emtr->unk_E8, emtr->unk_EA, resBase->unk_54, resBase->unk_56);
}

void sub_0209DD54(SPLManager *mgr, SPLParticle *ptcl)
{
    MtxFx43 transform;
    MtxFx43 rotMtx;
    MtxFx43 sclMat;
    VecFx32 vec1, vec2, vec3, vec4, axis;
    MtxFx43 mat;
    fx32 dot, scaleX, scaleY, scaleZ, alpha, tmp;
    UnkSPLStruct9 *resBase;

    alpha = ptcl->unk_2E.unk_00_0 * (ptcl->unk_2E.unk_00_5 + 1) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->unk_2E.unk_01_2,
        alpha,
        mgr->unk_3C);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    Unk_02100DA8[mgr->unk_40.unk_00->p_res->unk_14->unk_00.unk_03_1](FX_SinIdx(ptcl->unk_20), FX_CosIdx(ptcl->unk_20), &rotMtx);

    MTX_Identity43(&mat);

    if (!mgr->unk_40.unk_00->p_res->unk_14->unk_0C.unk_04_6) {
        VEC_Normalize(&ptcl->unk_14, &vec1);
    } else {
        VEC_Normalize(&ptcl->unk_08, &vec1);
        vec1.x = -vec1.x;
        vec1.y = -vec1.y;
        vec1.z = -vec1.z;
    }

    axis.x = 0;
    axis.y = FX32_ONE;
    axis.z = 0;

    dot = VEC_DotProduct(&vec1, &axis);
    if (dot > FX32_CONST(0.8) || dot < FX32_CONST(-0.8)) {
        axis.x = FX32_ONE;
        axis.y = 0;
        axis.z = 0;
    }

    VEC_CrossProduct(&vec1, &axis, &vec2);
    VEC_CrossProduct(&vec1, &vec2, &vec3);

    mat._00 = vec2.x;
    mat._01 = vec2.y;
    mat._02 = vec2.z;
    mat._10 = vec1.x;
    mat._11 = vec1.y;
    mat._12 = vec1.z;
    mat._20 = vec3.x;
    mat._21 = vec3.y;
    mat._22 = vec3.z;
    MTX_Concat43(&rotMtx, &mat, &rotMtx);

    resBase = mgr->unk_40.unk_00->p_res->unk_00;
    scaleY = ptcl->unk_30;
    scaleX = FX_MUL(scaleY, resBase->unk_30);

    switch (resBase->unk_48.unk_07_4) {
    case 0:
        scaleX = FX_MUL(scaleX, ptcl->unk_34);
        scaleY = FX_MUL(scaleY, ptcl->unk_34);
        break;

    case 1:
        scaleX = FX_MUL(scaleX, ptcl->unk_34);
        break;

    case 2:
        scaleY = FX_MUL(scaleY, ptcl->unk_34);
        break;
    }

    MTX_Scale43(&sclMat, scaleX, scaleY, scaleY);
    MTX_Concat43(&rotMtx, &sclMat, &transform);

    resBase = mgr->unk_40.unk_00->p_res->unk_00;
    if (!resBase->unk_00.unk_06_7) {
        transform._30 = ptcl->unk_08.x + ptcl->unk_38.x;
        transform._31 = ptcl->unk_08.y + ptcl->unk_38.y;
        transform._32 = ptcl->unk_08.z + ptcl->unk_38.z;
        G3_LoadMtx43(mgr->unk_40.unk_04);
        G3_MultMtx43(&transform);
    } else {
        transform._30 = ptcl->unk_08.x + ptcl->unk_38.x - resBase->unk_04.x;
        transform._31 = ptcl->unk_08.y + ptcl->unk_38.y - mgr->unk_40.unk_00->p_res->unk_00->unk_04.y;
        transform._32 = ptcl->unk_08.z + ptcl->unk_38.z - mgr->unk_40.unk_00->p_res->unk_00->unk_04.z;

        G3_Identity();

        resBase = mgr->unk_40.unk_00->p_res->unk_00;
        G3_Translate(resBase->unk_04.x, resBase->unk_04.y, resBase->unk_04.z);
        G3_MultMtx43(mgr->unk_40.unk_04);
        G3_MultMtx43(&transform);
    }

    GXRgb colA = ptcl->unk_36;
    GXRgb colB = mgr->unk_40.unk_00->unk_E2;
    G3_Color(GX_RGB(
        GX_RGB_R_(colA) * GX_RGB_R_(colB) >> 5,
        GX_RGB_G_(colA) * GX_RGB_G_(colB) >> 15,
        GX_RGB_B_(colA) * GX_RGB_B_(colB) >> 25));

    SPLEmitter *emtr = mgr->unk_40.unk_00;
    Unk_02100DA0[emtr->p_res->unk_14->unk_00.unk_03_3](emtr->unk_EC, emtr->unk_EE, 0, 0);
}
