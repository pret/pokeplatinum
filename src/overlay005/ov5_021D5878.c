#include <nitro.h>
#include <string.h>

#include "overlay005/struct_ov5_021D5894.h"

#include "heap.h"
#include "overlay005/ov5_021D5878.h"

UnkStruct_ov5_021D5894 * ov5_021D5878 (void)
{
    UnkStruct_ov5_021D5894 * v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021D5894));
    MI_CpuClear32(v0, sizeof(UnkStruct_ov5_021D5894));

    return v0;
}

void ov5_021D5894 (UnkStruct_ov5_021D5894 ** param0)
{
    Heap_FreeToHeapExplicit(4, *param0);
    *param0 = NULL;
}

void ov5_021D58A8 (UnkStruct_ov5_021D5894 * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param1 & (1 << v0)) {
            NNS_G3dGlbLightVector(v0, param0->unk_00[v0].x, param0->unk_00[v0].y, param0->unk_00[v0].z);
        }

        if (param1 & (1 << (v0 + 4))) {
            NNS_G3dGlbLightColor(v0, param0->unk_18[v0]);
        }
    }

    if (param1 & (1 << 8 | 1 << 9)) {
        NNS_G3dGlbMaterialColorDiffAmb(
            param0->unk_20, param0->unk_22, param0->unk_28);
    }

    if (param1 & (1 << 10 | 1 << 11)) {
        NNS_G3dGlbMaterialColorSpecEmi(
            param0->unk_24, param0->unk_26, param0->unk_2C);
    }

    if (param1 >= 1 << 12) {
        NNS_G3dGlbPolygonAttr(param0->unk_30, param0->unk_34, param0->unk_38, param0->unk_3C, param0->unk_40, param0->unk_44);
    }
}

void ov5_021D5948 (UnkStruct_ov5_021D5894 * param0, NNSG3dResMdl * param1, int param2)
{
    int v0;

    if (param2 & 1 << 8) {
        NNS_G3dMdlSetMdlDiffAll(param1, param0->unk_20);
    }

    if (param2 & 1 << 9) {
        NNS_G3dMdlSetMdlAmbAll(param1, param0->unk_22);
    }

    if (param2 & 1 << 10) {
        NNS_G3dMdlSetMdlSpecAll(param1, param0->unk_24);
    }

    if (param2 & 1 << 11) {
        NNS_G3dMdlSetMdlEmiAll(param1, param0->unk_26);
    }

    if (param2 & 1 << 12) {
        NNS_G3dMdlSetMdlLightEnableFlagAll(param1, param0->unk_30);
    }

    if (param2 & 1 << 13) {
        NNS_G3dMdlSetMdlPolygonModeAll(param1, param0->unk_34);
    }

    if (param2 & 1 << 14) {
        NNS_G3dMdlSetMdlCullModeAll(param1, param0->unk_38);
    }

    if (param2 & 1 << 15) {
        NNS_G3dMdlSetMdlPolygonIDAll(param1, param0->unk_3C);
    }

    if (param2 & 1 << 16) {
        NNS_G3dMdlSetMdlAlphaAll(param1, param0->unk_40);
    }

    if (param2 & 1 << 17) {
        NNS_G3dMdlSetMdlFogEnableFlagAll(param1, param0->unk_44 & GX_POLYGON_ATTR_MISC_FOG);
    }

    if (param2 & 1 << 18) {
        NNS_G3dMdlSetMdlDepthTestCondAll(param1, param0->unk_44 & GX_POLYGON_ATTR_MISC_DEPTHTEST_DECAL);
    }

    if (param2 & 1 << 19) {
        NNS_G3dMdlSetMdl1DotAll(param1, param0->unk_44 & GX_POLYGON_ATTR_MISC_DISP_1DOT);
    }

    if (param2 & 1 << 20) {
        NNS_G3dMdlSetMdlFarClipAll(param1, param0->unk_44 & GX_POLYGON_ATTR_MISC_FAR_CLIPPING);
    }

    if (param2 & 1 << 21) {
        NNS_G3dMdlSetMdlXLDepthUpdateAll(param1, param0->unk_44 & GX_POLYGON_ATTR_MISC_XLU_DEPTH_UPDATE);
    }
}

void ov5_021D5A50 (UnkStruct_ov5_021D5894 * param0, int param1, fx16 param2, fx16 param3, fx16 param4)
{
    param0->unk_00[param1].x = param2;
    param0->unk_00[param1].y = param3;
    param0->unk_00[param1].z = param4;

    NNS_G3dGlbLightVector(param1, param0->unk_00[param1].x, param0->unk_00[param1].y, param0->unk_00[param1].z);
}

void ov5_021D5A78 (UnkStruct_ov5_021D5894 * param0, int param1, GXRgb param2)
{
    param0->unk_18[param1] = param2;
    NNS_G3dGlbLightColor(param1, param0->unk_18[param1]);
}

void ov5_021D5A8C (UnkStruct_ov5_021D5894 * param0, GXRgb param1, BOOL param2, BOOL param3)
{
    param0->unk_20 = param1;
    param0->unk_28 = param2;

    if (param3 == 1) {
        ov5_021D58A8(param0, 1 << 8);
    }
}

void ov5_021D5AA0 (UnkStruct_ov5_021D5894 * param0, GXRgb param1, BOOL param2)
{
    param0->unk_22 = param1;

    if (param2 == 1) {
        ov5_021D58A8(param0, 1 << 9);
    }
}

void ov5_021D5AB4 (UnkStruct_ov5_021D5894 * param0, GXRgb param1, BOOL param2, BOOL param3)
{
    param0->unk_24 = param1;
    param0->unk_2C = param2;

    if (param3 == 1) {
        ov5_021D58A8(param0, 1 << 10);
    }
}

void ov5_021D5AC8 (UnkStruct_ov5_021D5894 * param0, GXRgb param1, BOOL param2)
{
    param0->unk_26 = param1;

    if (param2 == 1) {
        ov5_021D58A8(param0, 1 << 11);
    }
}

void ov5_021D5ADC (UnkStruct_ov5_021D5894 * param0, GXPolygonMode param1, BOOL param2)
{
    param0->unk_34 = param1;

    if (param2 == 1) {
        ov5_021D58A8(param0, 1 << 13);
    }
}

void ov5_021D5AF0 (UnkStruct_ov5_021D5894 * param0, GXCull param1, BOOL param2)
{
    param0->unk_38 = param1;

    if (param2 == 1) {
        ov5_021D58A8(param0, 1 << 14);
    }
}

void ov5_021D5B04 (UnkStruct_ov5_021D5894 * param0, int param1, BOOL param2)
{
    param0->unk_40 = param1;

    if (param2 == 1) {
        ov5_021D58A8(param0, 1 << 16);
    }
}

void ov5_021D5B18 (UnkStruct_ov5_021D5894 * param0, int param1, BOOL param2, BOOL param3)
{
    if (param2 == 1) {
        if (param0->unk_44 & param1) {
            return;
        }
    } else {
        if (!(param0->unk_44 & param1)) {
            return;
        }
    }

    param0->unk_44 ^= param1;

    if (param3 == 1) {
        ov5_021D58A8(param0, 1 << 12);
    }
}
