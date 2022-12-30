#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0201CFEC.h"

#include "unk_0201CED8.h"

static void sub_0201D018(const fx16 param0, const fx16 param1, const fx16 param2, const fx16 param3, const fx16 param4, const fx16 param5, GXBoxTestParam * param6);
static u32 sub_0201D03C(const GXBoxTestParam * param0);
static void sub_0201D090(const fx32 param0, fx16 * param1, int * param2);

u32 sub_0201CED8 (const NNSG3dResMdl * param0, const VecFx32 * param1, const MtxFx33 * param2, const VecFx32 * param3)
{
    u32 v0;
    GXBoxTestParam v1;
    VecFx32 v2;
    NNSG3dResMdlInfo * v3;

    v2 = *param1;
    v3 = NNS_G3dGetMdlInfo(param0);

    sub_0201D018(v3->boxX, v3->boxY, v3->boxZ, v3->boxW, v3->boxH, v3->boxD, &v1);

    NNS_G3dGlbSetBaseTrans(&v2);
    NNS_G3dGlbSetBaseRot(param2);
    NNS_G3dGlbSetBaseScale(param3);
    NNS_G3dGlbFlush();
    NNS_G3dGePushMtx();
    NNS_G3dGeScale(v3->boxPosScale, v3->boxPosScale, v3->boxPosScale);

    v0 = sub_0201D03C(&v1);
    NNS_G3dGePopMtx(1);

    return v0;
}

u32 sub_0201CF7C (const VecFx32 * param0, const UnkStruct_0201CFEC * param1)
{
    u32 v0;
    GXBoxTestParam v1;

    sub_0201D018(0, 0, 0, param1->unk_00, param1->unk_02, param1->unk_04, &v1);

    NNS_G3dGlbSetBaseTrans(param0);
    NNS_G3dGlbFlush();
    NNS_G3dGePushMtx();
    NNS_G3dGeScale(param1->unk_08 * FX32_ONE, param1->unk_0C * FX32_ONE, param1->unk_10 * FX32_ONE);

    v0 = sub_0201D03C(&v1);
    NNS_G3dGePopMtx(1);

    return v0;
}

void sub_0201CFEC (const fx32 param0, const fx32 param1, const fx32 param2, UnkStruct_0201CFEC * param3)
{
    sub_0201D090(param0, &param3->unk_00, &param3->unk_08);
    sub_0201D090(param1, &param3->unk_02, &param3->unk_0C);
    sub_0201D090(param2, &param3->unk_04, &param3->unk_10);
}

static void sub_0201D018 (const fx16 param0, const fx16 param1, const fx16 param2, const fx16 param3, const fx16 param4, const fx16 param5, GXBoxTestParam * param6)
{
    param6->x = param0;
    param6->y = param1;
    param6->z = param2;
    param6->width = param3;
    param6->height = param4;
    param6->depth = param5;
}

static u32 sub_0201D03C (const GXBoxTestParam * param0)
{
    s32 v0 = 1;

    NNS_G3dGePolygonAttr(GX_LIGHTMASK_0, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, 0, 0, GX_POLYGON_ATTR_MISC_FAR_CLIPPING | GX_POLYGON_ATTR_MISC_DISP_1DOT);
    NNS_G3dGeBegin(GX_BEGIN_TRIANGLES);
    NNS_G3dGeEnd();
    NNS_G3dGeBoxTest(param0);
    NNS_G3dGeFlushBuffer();

    while (G3X_GetBoxTestResult(&v0) != 0) {
        (void)0;
    }

    return v0;
}

static void sub_0201D090 (const fx32 param0, fx16 * param1, int * param2)
{
    int v0;
    u8 v1;
    u32 v2;
    u16 v3;

    v1 = 0;
    v2 = (u32)param0;

    while (0x7fff <= v2) {
        v2 = (v2 >> 1);
        v1++;
    }

    v3 = v2;
    *param1 = (fx16)v3;
    (*param2) = 1;

    for (v0 = 0; v0 < v1; v0++) {
        (*param2) *= 2;
    }
}
