
#include "nitro/types.h"
#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>
#include <nitro/fx/fx_mtx43.h>
#include <nitro/fx/fx_trig.h>
#include <nitro/gx/g3.h>
#include <nitro/gx/g3imm.h>

#include "spl_particle.h"
#include "spl_manager.h"
#include "spl_internal.h"
#include "spl_resource.h"

typedef void (*RotFunc)(fx32 sin, fx32 cos, MtxFx43 *rot);
typedef void (*DrawPlaneFunc)(fx16 s, fx16 t, fx16 offsetX, fx16 offsetY);

void SPLDraw_Child_Billboard(SPLManager *mgr, SPLParticle *ptcl); // spl_draw_chld_bb
void SPLDraw_Child_DirectionalBillboard(SPLManager *mgr, SPLParticle *ptcl); // spl_draw_chld_dbb
void sub_0209E650(SPLManager *mgr, SPLParticle *ptcl); // spl_draw_chld_pol
void sub_0209DD54(SPLManager *mgr, SPLParticle *ptcl); // spl_draw_chld_dpl

void SPLDraw_Billboard(SPLManager *mgr, SPLParticle *ptcl); // spl_draw_bb
void SPLDraw_DirectionalBillboard(SPLManager *mgr, SPLParticle *ptcl); // spl_draw_dbb
void sub_0209E9A0(SPLManager *mgr, SPLParticle *ptcl); // spl_draw_pol
void sub_0209E1D4(SPLManager *mgr, SPLParticle *ptcl); // spl_draw_dpl

static void SPLUtil_DrawXYPlane(fx16 s, fx16 t, fx16 offsetX, fx16 offsetY);
static void SPLUtil_DrawXZPlane(fx16 s, fx16 t, fx16 offsetX, fx16 offsetZ);

static void SPLUtil_RotateXYZ(fx32 sin, fx32 cos, MtxFx43 *mat);
static void SPLUtil_RotateY(fx32 sin, fx32 cos, MtxFx43 *mat);

static DrawPlaneFunc sPlaneDrawingFunctions[2] = {
    SPLUtil_DrawXYPlane,
    SPLUtil_DrawXZPlane,
};

static RotFunc sRotationFunctions[2] = {
    SPLUtil_RotateY,
    SPLUtil_RotateXYZ,
};

// Returns `TRUE` if the particle should not be drawn
static inline BOOL SPLDraw_Setup(const SPLParticle *ptcl, const SPLManager *mgr)
{
    fx32 alpha = (fx32)(ptcl->visibility.baseAlpha * (ptcl->visibility.animAlpha + 1)) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->visibility.currentPolygonID,
        alpha,
        mgr->miscPolygonAttr);

    reg_G3_POLYGON_ATTR; // No idea why but this is needed to match

    return alpha == 0;
}

static void SPLUtil_DrawXYPlane(fx16 s, fx16 t, fx16 x, fx16 y)
{
    G3_Begin(GX_BEGIN_QUADS);

    G3_TexCoord(0, 0);
    G3_Vtx10(x - FX32_ONE, y + FX32_ONE, 0);

    G3_TexCoord(s, 0);
    G3_Vtx10(x + FX32_ONE, y + FX32_ONE, 0);

    G3_TexCoord(s, t);
    G3_Vtx10(x + FX32_ONE, y - FX32_ONE, 0);

    G3_TexCoord(0, t);
    G3_Vtx10(x - FX32_ONE, y - FX32_ONE, 0);

    G3_End();
}

static void SPLUtil_DrawXZPlane(fx16 s, fx16 t, fx16 x, fx16 z)
{
    G3_Begin(GX_BEGIN_QUADS);

    G3_TexCoord(0, 0);
    G3_Vtx10(x - FX32_ONE, 0, z + FX32_ONE);

    G3_TexCoord(s, 0);
    G3_Vtx10(x + FX32_ONE, 0, z + FX32_ONE);

    G3_TexCoord(s, t);
    G3_Vtx10(x + FX32_ONE, 0, z - FX32_ONE);

    G3_TexCoord(0, t);
    G3_Vtx10(x - FX32_ONE, 0, z - FX32_ONE);

    G3_End();
}

static void SPLUtil_RotateXYZ(fx32 sin, fx32 cos, MtxFx43 *mat)
{
    fx32 C, Sm, Sp;

    C = FX_MUL(FX32_ONE - cos, FX32_CONST(1 / 3.0));
    Sm = C + FX_MUL(sin, FX32_SQRT1_3);
    Sp = C - FX_MUL(sin, FX32_SQRT1_3);
    C += cos;

    mat->m[0][0] = C;   mat->m[1][0] = Sm;  mat->m[2][0] = Sp;  mat->m[3][0] = 0;
    mat->m[0][1] = Sp;  mat->m[1][1] = C;   mat->m[2][1] = Sm;  mat->m[3][1] = 0;
    mat->m[0][2] = Sm;  mat->m[1][2] = Sp;  mat->m[2][2] = C;   mat->m[3][2] = 0;
}

static void SPLUtil_RotateY(fx32 sin, fx32 cos, MtxFx43 *mat)
{
    mat->m[0][0] = cos;     mat->m[1][0] = 0;           mat->m[2][0] = sin;     mat->m[3][0] = 0;
    mat->m[0][1] = 0;       mat->m[1][1] = FX32_ONE;    mat->m[2][1] = 0;       mat->m[3][1] = 0;
    mat->m[0][2] = -sin;    mat->m[1][2] = 0;           mat->m[2][2] = cos;     mat->m[3][2] = 0;
}

void SPLDraw_Billboard(SPLManager *mgr, SPLParticle *ptcl)
{
    VecFx32 trs;
    fx32 sclX, sclY;
    MtxFx43 load;

    const MtxFx43 *cmr = mgr->renderState.viewMatrix;
    fx32 aspect = mgr->renderState.emitter->resource->header->aspectRatio;
    fx16 animScale = ptcl->animScale;
    GXRgb ptclCol = ptcl->color;
    GXRgb emtrCol = mgr->renderState.emitter->color;
    u8 scaleAnimDir = mgr->renderState.emitter->resource->header->misc.scaleAnimDir;

    if (SPLDraw_Setup(ptcl, mgr)) {
        return;
    }

    sclY = ptcl->baseScale;
    sclX = FX_MUL(sclY, aspect);

    if (scaleAnimDir == SPL_SCALE_ANIM_DIR_XY) {
        sclX = FX_MUL(sclX, animScale);
        sclY = FX_MUL(sclY, animScale);
    } else if (scaleAnimDir == SPL_SCALE_ANIM_DIR_X) {
        sclX = FX_MUL(sclX, animScale);
    } else { // SPL_SCALE_ANIM_DIR_Y
        sclY = FX_MUL(sclY, animScale);
    }

    if (!mgr->renderState.emitter->resource->header->flags.useViewSpace) {
        trs.x = ptcl->position.x + ptcl->emitterPos.x;
        trs.y = ptcl->position.y + ptcl->emitterPos.y;
        trs.z = ptcl->position.z + ptcl->emitterPos.z;
        MTX_MultVec43(&trs, cmr, &trs);

        fx32 sin = FX_SinIdx(ptcl->rotation);
        fx32 cos = FX_CosIdx(ptcl->rotation);
        load.m[0][0] = FX_MUL(cos, sclX);
        load.m[0][1] = FX_MUL(sin, sclX);
        load.m[0][2] = 0;
        load.m[1][0] = FX_MUL(-sin, sclY);
        load.m[1][1] = FX_MUL(cos, sclY);
        load.m[1][2] = 0;
        load.m[2][0] = 0;
        load.m[2][1] = 0;
        load.m[2][2] = FX32_ONE;
        load.m[3][0] = trs.x;
        load.m[3][1] = trs.y;
        load.m[3][2] = trs.z;

        G3_Identity();
        G3_MultMtx43(&load);
    } else {
        trs.x = ptcl->position.x + ptcl->emitterPos.x - mgr->renderState.emitter->resource->header->emitterBasePos.x;
        trs.y = ptcl->position.y + ptcl->emitterPos.y - mgr->renderState.emitter->resource->header->emitterBasePos.y;
        trs.z = ptcl->position.z + ptcl->emitterPos.z - mgr->renderState.emitter->resource->header->emitterBasePos.z;
        MTX_MultVec43(&trs, cmr, &trs);

        fx32 sin = FX_SinIdx(ptcl->rotation);
        fx32 cos = FX_CosIdx(ptcl->rotation);
        load.m[0][0] = FX_MUL(cos, sclX);
        load.m[0][1] = FX_MUL(sin, sclX);
        load.m[0][2] = 0;
        load.m[1][0] = FX_MUL(-sin, sclY);
        load.m[1][1] = FX_MUL(cos, sclY);
        load.m[1][2] = 0;
        load.m[2][0] = 0;
        load.m[2][1] = 0;
        load.m[2][2] = FX32_ONE;
        load.m[3][0] = trs.x;
        load.m[3][1] = trs.y;
        load.m[3][2] = trs.z;

        G3_Identity();
        G3_Translate(
            mgr->renderState.emitter->resource->header->emitterBasePos.x, 
            mgr->renderState.emitter->resource->header->emitterBasePos.y, 
            mgr->renderState.emitter->resource->header->emitterBasePos.z);
        G3_MultMtx43(&load);
    }

    G3_Color(GX_RGB(
        GX_RGB_R_(ptclCol) * GX_RGB_R_(emtrCol) >> 5,
        GX_RGB_G_(ptclCol) * GX_RGB_G_(emtrCol) >> 15,
        GX_RGB_B_(ptclCol) * GX_RGB_B_(emtrCol) >> 25));

    SPLUtil_DrawXYPlane(
        mgr->renderState.emitter->textureS, 
        mgr->renderState.emitter->textureT, 
        mgr->renderState.emitter->resource->header->polygonX, 
        mgr->renderState.emitter->resource->header->polygonY);
}

void SPLDraw_Child_Billboard(SPLManager *mgr, SPLParticle *ptcl)
{
    VecFx32 trs;
    fx32 sclX, sclY;
    MtxFx43 load;

    const MtxFx43 *cmr = mgr->renderState.viewMatrix;
    fx32 aspect = mgr->renderState.emitter->resource->header->aspectRatio;

    if (SPLDraw_Setup(ptcl, mgr)) {
        return;
    }

    sclY = ptcl->baseScale;
    sclX = FX_MUL(sclY, aspect);

    switch (mgr->renderState.emitter->resource->header->misc.scaleAnimDir) {
    case SPL_SCALE_ANIM_DIR_XY:
        sclX = FX_MUL(sclX, ptcl->animScale);
        sclY = FX_MUL(sclY, ptcl->animScale);
        break;

    case SPL_SCALE_ANIM_DIR_X:
        sclX = FX_MUL(sclX, ptcl->animScale);
        break;

    case SPL_SCALE_ANIM_DIR_Y:
        sclY = FX_MUL(sclY, ptcl->animScale);
        break;
    }

    if (!mgr->renderState.emitter->resource->header->flags.useViewSpace) {
        trs.x = ptcl->position.x + ptcl->emitterPos.x;
        trs.y = ptcl->position.y + ptcl->emitterPos.y;
        trs.z = ptcl->position.z + ptcl->emitterPos.z;
        MTX_MultVec43(&trs, cmr, &trs);

        fx32 sin = FX_SinIdx(ptcl->rotation);
        fx32 cos = FX_CosIdx(ptcl->rotation);
        load.m[0][0] = FX_MUL(cos, sclX);
        load.m[0][1] = FX_MUL(sin, sclX);
        load.m[0][2] = 0;
        load.m[1][0] = FX_MUL(-sin, sclY);
        load.m[1][1] = FX_MUL(cos, sclY);
        load.m[1][2] = 0;
        load.m[2][0] = 0;
        load.m[2][1] = 0;
        load.m[2][2] = FX32_ONE;
        load.m[3][0] = trs.x;
        load.m[3][1] = trs.y;
        load.m[3][2] = trs.z;

        G3_Identity();
        G3_MultMtx43(&load);
    } else {
        trs.x = ptcl->position.x + ptcl->emitterPos.x - mgr->renderState.emitter->resource->header->emitterBasePos.x;
        trs.y = ptcl->position.y + ptcl->emitterPos.y - mgr->renderState.emitter->resource->header->emitterBasePos.y;
        trs.z = ptcl->position.z + ptcl->emitterPos.z - mgr->renderState.emitter->resource->header->emitterBasePos.z;
        MTX_MultVec43(&trs, cmr, &trs);

        fx32 sin = FX_SinIdx(ptcl->rotation);
        fx32 cos = FX_CosIdx(ptcl->rotation);
        load.m[0][0] = FX_MUL(cos, sclX);
        load.m[0][1] = FX_MUL(sin, sclX);
        load.m[0][2] = 0;
        load.m[1][0] = FX_MUL(-sin, sclY);
        load.m[1][1] = FX_MUL(cos, sclY);
        load.m[1][2] = 0;
        load.m[2][0] = 0;
        load.m[2][1] = 0;
        load.m[2][2] = FX32_ONE;
        load.m[3][0] = trs.x;
        load.m[3][1] = trs.y;
        load.m[3][2] = trs.z;

        G3_Identity();
        G3_Translate(
            mgr->renderState.emitter->resource->header->emitterBasePos.x, 
            mgr->renderState.emitter->resource->header->emitterBasePos.y, 
            mgr->renderState.emitter->resource->header->emitterBasePos.z);
        G3_MultMtx43(&load);
    }

    G3_Color(GX_RGB(
        GX_RGB_R_(ptcl->color) * GX_RGB_R_(mgr->renderState.emitter->color) >> 5,
        GX_RGB_G_(ptcl->color) * GX_RGB_G_(mgr->renderState.emitter->color) >> 15,
        GX_RGB_B_(ptcl->color) * GX_RGB_B_(mgr->renderState.emitter->color) >> 25));

    SPLUtil_DrawXYPlane(mgr->renderState.emitter->childTextureS, mgr->renderState.emitter->childTextureT, 0, 0);
}

void SPLDraw_DirectionalBillboard(SPLManager *mgr, SPLParticle *ptcl)
{
    VecFx32 vel_dir;
    VecFx32 trs;
    fx32 sclX, sclY;
    VecFx32 dir, look;
    MtxFx33 mtx;
    MtxFx43 load;

    const MtxFx43 *cmr = mgr->renderState.viewMatrix;
    fx32 aspect = mgr->renderState.emitter->resource->header->aspectRatio;

    if (SPLDraw_Setup(ptcl, mgr)) {
        return;
    }

    sclY = ptcl->baseScale;
    sclX = FX_MUL(sclY, aspect);

    switch (mgr->renderState.emitter->resource->header->misc.scaleAnimDir) {
    case SPL_SCALE_ANIM_DIR_XY:
        sclX = FX_MUL(sclX, ptcl->animScale);
        sclY = FX_MUL(sclY, ptcl->animScale);
        break;

    case SPL_SCALE_ANIM_DIR_X:
        sclX = FX_MUL(sclX, ptcl->animScale);
        break;

    case SPL_SCALE_ANIM_DIR_Y:
        sclY = FX_MUL(sclY, ptcl->animScale);
        break;
    }

    if (!mgr->renderState.emitter->resource->header->flags.useViewSpace) {
        trs.x = ptcl->position.x + ptcl->emitterPos.x;
        trs.y = ptcl->position.y + ptcl->emitterPos.y;
        trs.z = ptcl->position.z + ptcl->emitterPos.z;

        dir = ptcl->velocity;

        look.x = cmr->m[0][2];
        look.y = cmr->m[1][2];
        look.z = cmr->m[2][2];

        VEC_CrossProduct(&dir, &look, &dir);
        if (dir.x == 0 && dir.y == 0 && dir.z == 0) {
            return;
        }

        VEC_Normalize(&dir, &dir);
        MTX_Copy43To33(cmr, &mtx);
        MTX_MultVec33(&dir, &mtx, &dir);
        MTX_MultVec43(&trs, cmr, &trs);

        vel_dir = ptcl->velocity;
        VEC_Normalize(&vel_dir, &vel_dir);

        fx32 dot = FX_MUL(vel_dir.x, -cmr->m[0][2]) + FX_MUL(vel_dir.y, -cmr->m[1][2]) + FX_MUL(vel_dir.z, -cmr->m[2][2]);
        if (dot < 0) {
            dot = -dot;
        }

        dot = FX_MUL(sclY, FX_MUL(FX32_ONE - dot, (fx32)mgr->renderState.emitter->resource->header->misc.dbbScale) + FX32_ONE);
        load.m[0][0] = FX_MUL(dir.x, sclX);
        load.m[1][0] = FX_MUL(-dir.y, dot);
        load.m[2][0] = 0;
        load.m[3][0] = trs.x;
        load.m[0][1] = FX_MUL(dir.y, sclX);
        load.m[1][1] = FX_MUL(dir.x, dot);
        load.m[2][1] = 0;
        load.m[3][1] = trs.y;
        load.m[0][2] = 0;
        load.m[1][2] = 0;
        load.m[2][2] = FX32_ONE;
        load.m[3][2] = trs.z;

        G3_Identity();
        G3_MultMtx43(&load);
    } else {
        trs.x = ptcl->position.x + ptcl->emitterPos.x - mgr->renderState.emitter->resource->header->emitterBasePos.x;
        trs.y = ptcl->position.y + ptcl->emitterPos.y - mgr->renderState.emitter->resource->header->emitterBasePos.y;
        trs.z = ptcl->position.z + ptcl->emitterPos.z - mgr->renderState.emitter->resource->header->emitterBasePos.z;

        dir = ptcl->velocity;

        look.x = cmr->m[0][2];
        look.y = cmr->m[1][2];
        look.z = cmr->m[2][2];

        VEC_CrossProduct(&dir, &look, &dir);
        if (dir.x == 0 && dir.y == 0 && dir.z == 0) {
            return;
        }

        VEC_Normalize(&dir, &dir);
        MTX_Copy43To33(cmr, &mtx);
        MTX_MultVec33(&dir, &mtx, &dir);
        MTX_MultVec43(&trs, cmr, &trs);

        vel_dir = ptcl->velocity;
        VEC_Normalize(&vel_dir, &vel_dir);

        fx32 dot = FX_MUL(vel_dir.x, -cmr->m[0][2]) + FX_MUL(vel_dir.y, -cmr->m[1][2]) + FX_MUL(vel_dir.z, -cmr->m[2][2]);
        if (dot < 0) {
            dot = -dot;
        }

        dot = FX_MUL(sclY, FX_MUL(FX32_ONE - dot, (fx32)mgr->renderState.emitter->resource->header->misc.dbbScale) + FX32_ONE);
        load.m[0][0] = FX_MUL(dir.x, sclX);
        load.m[1][0] = FX_MUL(-dir.y, dot);
        load.m[2][0] = 0;
        load.m[3][0] = trs.x;
        load.m[0][1] = FX_MUL(dir.y, sclX);
        load.m[1][1] = FX_MUL(dir.x, dot);
        load.m[2][1] = 0;
        load.m[3][1] = trs.y;
        load.m[0][2] = 0;
        load.m[1][2] = 0;
        load.m[2][2] = FX32_ONE;
        load.m[3][2] = trs.z;

        G3_Identity();
        G3_Translate(
            mgr->renderState.emitter->resource->header->emitterBasePos.x, 
            mgr->renderState.emitter->resource->header->emitterBasePos.y, 
            mgr->renderState.emitter->resource->header->emitterBasePos.z);
        G3_MultMtx43(&load);
    }

    G3_Color(GX_RGB(
        GX_RGB_R_(ptcl->color) * GX_RGB_R_(mgr->renderState.emitter->color) >> 5,
        GX_RGB_G_(ptcl->color) * GX_RGB_G_(mgr->renderState.emitter->color) >> 15,
        GX_RGB_B_(ptcl->color) * GX_RGB_B_(mgr->renderState.emitter->color) >> 25));

    SPLEmitter *emtr = mgr->renderState.emitter;
    SPLUtil_DrawXYPlane(
        emtr->textureS, 
        emtr->textureT, 
        emtr->resource->header->polygonX, 
        emtr->resource->header->polygonY);
}

void SPLDraw_Child_DirectionalBillboard(SPLManager *mgr, SPLParticle *ptcl)
{
    VecFx32 vel_dir;
    VecFx32 trs;
    fx32 sclX, sclY;
    VecFx32 dir, look;
    MtxFx33 mtx;
    MtxFx43 load;

    const MtxFx43 *cmr = mgr->renderState.viewMatrix;
    fx32 aspect = mgr->renderState.emitter->resource->header->aspectRatio;

    if (SPLDraw_Setup(ptcl, mgr)) {
        return;
    }

    sclY = ptcl->baseScale;
    sclX = FX_MUL(sclY, aspect);

    switch (mgr->renderState.emitter->resource->header->misc.scaleAnimDir) {
    case SPL_SCALE_ANIM_DIR_XY:
        sclX = FX_MUL(sclX, ptcl->animScale);
        sclY = FX_MUL(sclY, ptcl->animScale);
        break;

    case SPL_SCALE_ANIM_DIR_X:
        sclX = FX_MUL(sclX, ptcl->animScale);
        break;

    case SPL_SCALE_ANIM_DIR_Y:
        sclY = FX_MUL(sclY, ptcl->animScale);
        break;
    }

    if (!mgr->renderState.emitter->resource->header->flags.useViewSpace) {
        trs.x = ptcl->position.x + ptcl->emitterPos.x;
        trs.y = ptcl->position.y + ptcl->emitterPos.y;
        trs.z = ptcl->position.z + ptcl->emitterPos.z;

        dir = ptcl->velocity;

        look.x = cmr->m[0][2];
        look.y = cmr->m[1][2];
        look.z = cmr->m[2][2];

        VEC_CrossProduct(&dir, &look, &dir);
        if (dir.x == 0 && dir.y == 0 && dir.z == 0) {
            return;
        }

        VEC_Normalize(&dir, &dir);
        MTX_Copy43To33(cmr, &mtx);
        MTX_MultVec33(&dir, &mtx, &dir);
        MTX_MultVec43(&trs, cmr, &trs);

        vel_dir = ptcl->velocity;
        VEC_Normalize(&vel_dir, &vel_dir);

        fx32 dot = FX_MUL(vel_dir.x, -cmr->m[0][2]) + FX_MUL(vel_dir.y, -cmr->m[1][2]) + FX_MUL(vel_dir.z, -cmr->m[2][2]);
        if (dot < 0) {
            dot = -dot;
        }

        dot = FX_MUL(sclY, FX_MUL(FX32_ONE - dot, (fx32)mgr->renderState.emitter->resource->header->misc.dbbScale) + FX32_ONE);
        load.m[0][0] = FX_MUL(dir.x, sclX);
        load.m[1][0] = FX_MUL(-dir.y, dot);
        load.m[2][0] = 0;
        load.m[3][0] = trs.x;
        load.m[0][1] = FX_MUL(dir.y, sclX);
        load.m[1][1] = FX_MUL(dir.x, dot);
        load.m[2][1] = 0;
        load.m[3][1] = trs.y;
        load.m[0][2] = 0;
        load.m[1][2] = 0;
        load.m[2][2] = FX32_ONE;
        load.m[3][2] = trs.z;

        G3_Identity();
        G3_MultMtx43(&load);
    } else {
        trs.x = ptcl->position.x + ptcl->emitterPos.x - mgr->renderState.emitter->resource->header->emitterBasePos.x;
        trs.y = ptcl->position.y + ptcl->emitterPos.y - mgr->renderState.emitter->resource->header->emitterBasePos.y;
        trs.z = ptcl->position.z + ptcl->emitterPos.z - mgr->renderState.emitter->resource->header->emitterBasePos.z;

        dir = ptcl->velocity;

        look.x = cmr->m[0][2];
        look.y = cmr->m[1][2];
        look.z = cmr->m[2][2];

        VEC_CrossProduct(&dir, &look, &dir);
        if (dir.x == 0 && dir.y == 0 && dir.z == 0) {
            return;
        }

        VEC_Normalize(&dir, &dir);
        MTX_Copy43To33(cmr, &mtx);
        MTX_MultVec33(&dir, &mtx, &dir);
        MTX_MultVec43(&trs, cmr, &trs);

        vel_dir = ptcl->velocity;
        VEC_Normalize(&vel_dir, &vel_dir);

        fx32 dot = FX_MUL(vel_dir.x, -cmr->m[0][2]) + FX_MUL(vel_dir.y, -cmr->m[1][2]) + FX_MUL(vel_dir.z, -cmr->m[2][2]);
        if (dot < 0) {
            dot = -dot;
        }

        dot = FX_MUL(sclY, FX_MUL(FX32_ONE - dot, (fx32)mgr->renderState.emitter->resource->header->misc.dbbScale) + FX32_ONE);
        load.m[0][0] = FX_MUL(dir.x, sclX);
        load.m[1][0] = FX_MUL(-dir.y, dot);
        load.m[2][0] = 0;
        load.m[3][0] = trs.x;
        load.m[0][1] = FX_MUL(dir.y, sclX);
        load.m[1][1] = FX_MUL(dir.x, dot);
        load.m[2][1] = 0;
        load.m[3][1] = trs.y;
        load.m[0][2] = 0;
        load.m[1][2] = 0;
        load.m[2][2] = FX32_ONE;
        load.m[3][2] = trs.z;

        G3_Identity();
        G3_Translate(
            mgr->renderState.emitter->resource->header->emitterBasePos.x, 
            mgr->renderState.emitter->resource->header->emitterBasePos.y, 
            mgr->renderState.emitter->resource->header->emitterBasePos.z);
        G3_MultMtx43(&load);
    }

    G3_Color(GX_RGB(
        GX_RGB_R_(ptcl->color) * GX_RGB_R_(mgr->renderState.emitter->color) >> 5,
        GX_RGB_G_(ptcl->color) * GX_RGB_G_(mgr->renderState.emitter->color) >> 15,
        GX_RGB_B_(ptcl->color) * GX_RGB_B_(mgr->renderState.emitter->color) >> 25));

    SPLUtil_DrawXYPlane(mgr->renderState.emitter->childTextureS, mgr->renderState.emitter->childTextureT, 0, 0);
}

void sub_0209E9A0(SPLManager *mgr, SPLParticle *ptcl)
{
    fx32 sclX, sclY;
    MtxFx43 load;
    MtxFx43 rotMtx;
    MtxFx43 sclMtx;
    u32 polygonID, cullMode;
    fx32 alpha;
    SPLResourceHeader *resBase;

    alpha = (fx32)(ptcl->visibility.baseAlpha * (ptcl->visibility.animAlpha + 1)) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->visibility.currentPolygonID,
        alpha,
        mgr->miscPolygonAttr);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    sRotationFunctions[mgr->renderState.emitter->resource->header->flags.unk_06_1](FX_SinIdx(ptcl->rotation), FX_CosIdx(ptcl->rotation), &rotMtx);

    sclY = ptcl->baseScale;
    resBase = mgr->renderState.emitter->resource->header;
    sclX = FX_MUL(sclY, resBase->aspectRatio);

    switch (resBase->misc.scaleAnimDir) {
    case 0:
        sclX = FX_MUL(sclX, ptcl->animScale);
        sclY = FX_MUL(sclY, ptcl->animScale);
        break;

    case 1:
        sclX = FX_MUL(sclX, ptcl->animScale);
        break;

    case 2:
        sclY = FX_MUL(sclY, ptcl->animScale);
        break;
    }

    MTX_Scale43(&sclMtx, sclX, sclY, sclY);
    MTX_Concat43(&sclMtx, &rotMtx, &load);

    // resBase = mgr->unk_40.unk_00->p_res->header;
    if (!mgr->renderState.emitter->resource->header->flags.useViewSpace) {
        load.m[3][0] = ptcl->position.x + ptcl->emitterPos.x;
        load.m[3][1] = ptcl->position.y + ptcl->emitterPos.y;
        load.m[3][2] = ptcl->position.z + ptcl->emitterPos.z;
        G3_LoadMtx43(mgr->renderState.viewMatrix);
        G3_MultMtx43(&load);
    } else {
        load.m[3][0] = ptcl->position.x + ptcl->emitterPos.x - mgr->renderState.emitter->resource->header->emitterBasePos.x;
        load.m[3][1] = ptcl->position.y + ptcl->emitterPos.y - mgr->renderState.emitter->resource->header->emitterBasePos.y;
        load.m[3][2] = ptcl->position.z + ptcl->emitterPos.z - mgr->renderState.emitter->resource->header->emitterBasePos.z;

        G3_Identity();

        resBase = mgr->renderState.emitter->resource->header;
        G3_Translate(resBase->emitterBasePos.x, resBase->emitterBasePos.y, resBase->emitterBasePos.z);

        G3_MultMtx43(mgr->renderState.viewMatrix);
        G3_MultMtx43(&load);
    }

    GXRgb colA = ptcl->color;
    GXRgb colB = mgr->renderState.emitter->color;
    G3_Color(GX_RGB(
        GX_RGB_R_(colA) * GX_RGB_R_(colB) >> 5,
        GX_RGB_G_(colA) * GX_RGB_G_(colB) >> 15,
        GX_RGB_B_(colA) * GX_RGB_B_(colB) >> 25));

    SPLEmitter *emtr = mgr->renderState.emitter;
    resBase = emtr->resource->header;
    sPlaneDrawingFunctions[resBase->flags.unk_06_3](emtr->textureS, emtr->textureT, resBase->polygonX, resBase->polygonY);
}

void sub_0209E650(SPLManager *mgr, SPLParticle *ptcl)
{
    fx32 sclX, sclY;
    MtxFx43 load;
    MtxFx43 rotMtx;
    MtxFx43 sclMtx;
    u32 polygonID, cullMode;
    fx32 alpha;
    SPLResourceHeader *resBase;

    alpha = ptcl->visibility.baseAlpha * (ptcl->visibility.animAlpha + 1) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->visibility.currentPolygonID,
        alpha,
        mgr->miscPolygonAttr);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    sRotationFunctions[mgr->renderState.emitter->resource->childResource->flags.unk_03_1](FX_SinIdx(ptcl->rotation), FX_CosIdx(ptcl->rotation), &rotMtx);

    sclY = ptcl->baseScale;
    resBase = mgr->renderState.emitter->resource->header;
    sclX = FX_MUL(sclY, resBase->aspectRatio);

    switch (resBase->misc.scaleAnimDir) {
    case 0:
        sclX = FX_MUL(sclX, ptcl->animScale);
        sclY = FX_MUL(sclY, ptcl->animScale);
        break;

    case 1:
        sclX = FX_MUL(sclX, ptcl->animScale);
        break;

    case 2:
        sclY = FX_MUL(sclY, ptcl->animScale);
        break;
    }

    MTX_Scale43(&sclMtx, sclX, sclY, sclY);
    MTX_Concat43(&rotMtx, &sclMtx, &load);

    if (!mgr->renderState.emitter->resource->header->flags.useViewSpace) {
        load.m[3][0] = ptcl->position.x + ptcl->emitterPos.x;
        load.m[3][1] = ptcl->position.y + ptcl->emitterPos.y;
        load.m[3][2] = ptcl->position.z + ptcl->emitterPos.z;
        G3_LoadMtx43(mgr->renderState.viewMatrix);
        G3_MultMtx43(&load);
    } else {
        load.m[3][0] = ptcl->position.x + ptcl->emitterPos.x - mgr->renderState.emitter->resource->header->emitterBasePos.x;
        load.m[3][1] = ptcl->position.y + ptcl->emitterPos.y - mgr->renderState.emitter->resource->header->emitterBasePos.y;
        load.m[3][2] = ptcl->position.z + ptcl->emitterPos.z - mgr->renderState.emitter->resource->header->emitterBasePos.z;

        G3_Identity();

        resBase = mgr->renderState.emitter->resource->header;
        G3_Translate(resBase->emitterBasePos.x, resBase->emitterBasePos.y, resBase->emitterBasePos.z);
        G3_MultMtx43(mgr->renderState.viewMatrix);
        G3_MultMtx43(&load);
    }

    GXRgb colA = ptcl->color;
    GXRgb colB = mgr->renderState.emitter->color;
    G3_Color(GX_RGB(
        GX_RGB_R_(colA) * GX_RGB_R_(colB) >> 5,
        GX_RGB_G_(colA) * GX_RGB_G_(colB) >> 15,
        GX_RGB_B_(colA) * GX_RGB_B_(colB) >> 25));

    SPLEmitter *emtr = mgr->renderState.emitter;
    sPlaneDrawingFunctions[emtr->resource->childResource->flags.unk_03_3](emtr->childTextureS, emtr->childTextureT, 0, 0);
}

void sub_0209E1D4(SPLManager *mgr, SPLParticle *ptcl)
{
    MtxFx43 transform;
    MtxFx43 rotMat;
    MtxFx43 sclMat;
    VecFx32 vec1, vec2, vec3, vec4, axis;
    MtxFx43 mat;
    fx32 dot, scaleX, scaleY, alpha, tmp;
    SPLResourceHeader *resBase;
    SPLEmitter *emtr;
    GXRgb colA, colB;

    alpha = ptcl->visibility.baseAlpha * (ptcl->visibility.animAlpha + 1) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->visibility.currentPolygonID,
        alpha,
        mgr->miscPolygonAttr);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    sRotationFunctions[mgr->renderState.emitter->resource->header->flags.unk_06_1](FX_SinIdx(ptcl->rotation), FX_CosIdx(ptcl->rotation), &rotMat);

    MTX_Identity43(&mat);

    if (!mgr->renderState.emitter->resource->header->misc.unk_07_7) {
        VEC_Normalize(&ptcl->velocity, &vec1);
    } else {
        VEC_Normalize(&ptcl->position, &vec1);
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

    mat.m[0][0] = vec2.x;
    mat.m[0][1] = vec2.y;
    mat.m[0][2] = vec2.z;
    mat.m[1][0] = vec1.x;
    mat.m[1][1] = vec1.y;
    mat.m[1][2] = vec1.z;
    mat.m[2][0] = vec3.x;
    mat.m[2][1] = vec3.y;
    mat.m[2][2] = vec3.z;
    MTX_Concat43(&rotMat, &mat, &rotMat);

    resBase = mgr->renderState.emitter->resource->header;
    scaleY = ptcl->baseScale;
    scaleX = FX_MUL(scaleY, resBase->aspectRatio);

    switch (resBase->misc.scaleAnimDir) {
    case 0:
        scaleX = FX_MUL(scaleX, ptcl->animScale);
        scaleY = FX_MUL(scaleY, ptcl->animScale);
        break;

    case 1:
        scaleX = FX_MUL(scaleX, ptcl->animScale);
        break;

    case 2:
        scaleY = FX_MUL(scaleY, ptcl->animScale);
        break;
    }

    MTX_Scale43(&sclMat, scaleX, scaleY, scaleY);
    MTX_Concat43(&sclMat, &rotMat, &transform);

    resBase = mgr->renderState.emitter->resource->header;
    if (!resBase->flags.useViewSpace) {
        transform.m[3][0] = ptcl->position.x + ptcl->emitterPos.x;
        transform.m[3][1] = ptcl->position.y + ptcl->emitterPos.y;
        transform.m[3][2] = ptcl->position.z + ptcl->emitterPos.z;
        G3_LoadMtx43(mgr->renderState.viewMatrix);
        G3_MultMtx43(&transform);
    } else {
        transform.m[3][0] = ptcl->position.x + ptcl->emitterPos.x - resBase->emitterBasePos.x;
        transform.m[3][1] = ptcl->position.y + ptcl->emitterPos.y - mgr->renderState.emitter->resource->header->emitterBasePos.y;
        transform.m[3][2] = ptcl->position.z + ptcl->emitterPos.z - mgr->renderState.emitter->resource->header->emitterBasePos.z;

        G3_Identity();

        resBase = mgr->renderState.emitter->resource->header;
        G3_Translate(resBase->emitterBasePos.x, resBase->emitterBasePos.y, resBase->emitterBasePos.z);
        G3_MultMtx43(mgr->renderState.viewMatrix);
        G3_MultMtx43(&transform);
    }

    colA = ptcl->color;
    colB = mgr->renderState.emitter->color;
    G3_Color(GX_RGB(
        GX_RGB_R_(colA) * GX_RGB_R_(colB) >> 5,
        GX_RGB_G_(colA) * GX_RGB_G_(colB) >> 15,
        GX_RGB_B_(colA) * GX_RGB_B_(colB) >> 25));

    emtr = mgr->renderState.emitter;
    resBase = emtr->resource->header;
    sPlaneDrawingFunctions[resBase->flags.unk_06_3](emtr->textureS, emtr->textureT, resBase->polygonX, resBase->polygonY);
}

void sub_0209DD54(SPLManager *mgr, SPLParticle *ptcl)
{
    MtxFx43 transform;
    MtxFx43 rotMtx;
    MtxFx43 sclMat;
    VecFx32 vec1, vec2, vec3, vec4, axis;
    MtxFx43 mat;
    fx32 dot, scaleX, scaleY, scaleZ, alpha, tmp;
    SPLResourceHeader *resBase;

    alpha = ptcl->visibility.baseAlpha * (ptcl->visibility.animAlpha + 1) >> 5;

    G3_PolygonAttr(
        GX_LIGHTMASK_NONE,
        GX_POLYGONMODE_MODULATE,
        GX_CULL_NONE,
        ptcl->visibility.currentPolygonID,
        alpha,
        mgr->miscPolygonAttr);

    reg_G3_POLYGON_ATTR;

    if (alpha == 0) {
        return;
    }

    sRotationFunctions[mgr->renderState.emitter->resource->childResource->flags.unk_03_1](FX_SinIdx(ptcl->rotation), FX_CosIdx(ptcl->rotation), &rotMtx);

    MTX_Identity43(&mat);

    if (!mgr->renderState.emitter->resource->childResource->misc.unk_04_6) {
        VEC_Normalize(&ptcl->velocity, &vec1);
    } else {
        VEC_Normalize(&ptcl->position, &vec1);
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

    mat.m[0][0] = vec2.x;
    mat.m[0][1] = vec2.y;
    mat.m[0][2] = vec2.z;
    mat.m[1][0] = vec1.x;
    mat.m[1][1] = vec1.y;
    mat.m[1][2] = vec1.z;
    mat.m[2][0] = vec3.x;
    mat.m[2][1] = vec3.y;
    mat.m[2][2] = vec3.z;
    MTX_Concat43(&rotMtx, &mat, &rotMtx);

    resBase = mgr->renderState.emitter->resource->header;
    scaleY = ptcl->baseScale;
    scaleX = FX_MUL(scaleY, resBase->aspectRatio);

    switch (resBase->misc.scaleAnimDir) {
    case 0:
        scaleX = FX_MUL(scaleX, ptcl->animScale);
        scaleY = FX_MUL(scaleY, ptcl->animScale);
        break;

    case 1:
        scaleX = FX_MUL(scaleX, ptcl->animScale);
        break;

    case 2:
        scaleY = FX_MUL(scaleY, ptcl->animScale);
        break;
    }

    MTX_Scale43(&sclMat, scaleX, scaleY, scaleY);
    MTX_Concat43(&rotMtx, &sclMat, &transform);

    resBase = mgr->renderState.emitter->resource->header;
    if (!resBase->flags.useViewSpace) {
        transform.m[3][0] = ptcl->position.x + ptcl->emitterPos.x;
        transform.m[3][1] = ptcl->position.y + ptcl->emitterPos.y;
        transform.m[3][2] = ptcl->position.z + ptcl->emitterPos.z;
        G3_LoadMtx43(mgr->renderState.viewMatrix);
        G3_MultMtx43(&transform);
    } else {
        transform.m[3][0] = ptcl->position.x + ptcl->emitterPos.x - resBase->emitterBasePos.x;
        transform.m[3][1] = ptcl->position.y + ptcl->emitterPos.y - mgr->renderState.emitter->resource->header->emitterBasePos.y;
        transform.m[3][2] = ptcl->position.z + ptcl->emitterPos.z - mgr->renderState.emitter->resource->header->emitterBasePos.z;

        G3_Identity();

        resBase = mgr->renderState.emitter->resource->header;
        G3_Translate(resBase->emitterBasePos.x, resBase->emitterBasePos.y, resBase->emitterBasePos.z);
        G3_MultMtx43(mgr->renderState.viewMatrix);
        G3_MultMtx43(&transform);
    }

    GXRgb colA = ptcl->color;
    GXRgb colB = mgr->renderState.emitter->color;
    G3_Color(GX_RGB(
        GX_RGB_R_(colA) * GX_RGB_R_(colB) >> 5,
        GX_RGB_G_(colA) * GX_RGB_G_(colB) >> 15,
        GX_RGB_B_(colA) * GX_RGB_B_(colB) >> 25));

    SPLEmitter *emtr = mgr->renderState.emitter;
    sPlaneDrawingFunctions[emtr->resource->childResource->flags.unk_03_3](emtr->childTextureS, emtr->childTextureT, 0, 0);
}
