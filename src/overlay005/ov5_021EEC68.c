#include "overlay005/ov5_021EEC68.h"

#include <nitro.h>
#include <string.h>

#include "overlay005/bdhc.h"
#include "overlay005/struct_ov5_021EED20.h"

#include "fx_util.h"

static BOOL ov5_021EED38(const BDHCStrip *param0, const u16 param1, const fx32 param2, u16 *param3);

static BOOL ov5_021EEC68(const BDHCPoint *param0, const BDHCPoint *param1, const BDHCPoint *param2)
{
    const fx32 *v0, *v1, *v2, *v3;

    if (param0->x <= param1->x) {
        v0 = &param0->x;
        v1 = &param1->x;
    } else {
        v0 = &param1->x;
        v1 = &param0->x;
    }

    if (param0->y <= param1->y) {
        v2 = &param0->y;
        v3 = &param1->y;
    } else {
        v2 = &param1->y;
        v3 = &param0->y;
    }

    if (((*v0 <= param2->x) && (param2->x <= *v1)) && ((*v2 <= param2->y) && (param2->y <= *v3))) {
        return 1;
    }

    return 0;
}

static void ov5_021EECB8(const BDHC *param0, u16 param1, BDHCPoint *param2)
{
    param2[0] = param0->points[param0->plates[param1].firstPointIndex];
    param2[1] = param0->points[param0->plates[param1].secondPointIndex];
}

static void ov5_021EECE8(const BDHC *param0, u16 param1, VecFx32 *param2)
{
    *param2 = param0->slopes[param0->plates[param1].normalIndex];
}

static void ov5_021EED08(const BDHC *param0, u16 param1, fx32 *param2)
{
    *param2 = param0->heights[param0->plates[param1].heightIndex];
}

static void ov5_021EED20(UnkStruct_ov5_021EED20 *param0)
{
    int v0;

    for (v0 = 0; v0 < 10; v0++) {
        param0[v0].unk_00 = 0;
        param0[v0].unk_04 = -1;
        param0[v0].unk_08 = -1;
    }
}

static BOOL ov5_021EED38(const BDHCStrip *param0, const u16 param1, const fx32 param2, u16 *param3)
{
    int v0, v1;
    u32 v2;
    fx32 v3;

    if (param1 == 0) {
        return 0;
    } else if (param1 == 1) {
        *param3 = 0;
        return 1;
    }

    v0 = 0;
    v1 = param1 - 1;
    v2 = v1 / 2;

    do {
        v3 = param0[v2].lowerBound;

        if (v3 > param2) {
            if (v1 - 1 > v0) {
                v1 = v2;
                v2 = (v0 + v1) / 2;
            } else {
                *param3 = v2;
                return 1;
            }
        } else {
            if (v0 + 1 < v1) {
                v0 = v2;
                v2 = (v0 + v1) / 2;
            } else {
                *param3 = v2 + 1;
                return 1;
            }
        }
    } while (TRUE);

    return 0;
}

BOOL ov5_021EED9C(const fx32 param0, const fx32 param1, const fx32 param2, const BDHC *param3, fx32 *param4)
{
    BDHCPoint v0[2];
    BDHCPoint v1;
    VecFx32 v2;
    fx32 v3, v4;
    BOOL v5;
    u16 v6, v7;
    fx32 v8, v9;
    int v10;
    u32 v11, v12, v13, v14;
    UnkStruct_ov5_021EED20 v15[10];
    fx32 v16, v17;
    u32 v18;
    u16 v19;
    u16 v20;
    u16 v21;
    const BDHCStrip *v22;

    if (param3->loaded == 0) {
        return 0;
    }

    v5 = 0;

    v1.x = param1;
    v1.y = param2;

    v10 = 0;
    ov5_021EED20(v15);
    v11 = param3->stripsSize;
    v22 = param3->strips;

    if (ov5_021EED38(v22, v11, v1.y, &v20) == 0) {
        return 0;
    }

    v21 = v22[v20].accessListElementCount;
    v18 = v22[v20].accessListStartIndex;

    for (v6 = 0; v6 < v21; v6++) {
        v7 = param3->accessList[v18 + v6];
        ov5_021EECB8(param3, v7, v0);
        v5 = ov5_021EEC68(&v0[0], &v0[1], &v1);

        if (v5 == 1) {
            ov5_021EECE8(param3, v7, &v2);
            ov5_021EED08(param3, v7, &v8);

            v9 = -(FX_Mul(v2.x, v1.x) + FX_Mul(v2.z, v1.y) + v8);
            v9 = FX_Div(v9, v2.y);
            v15[v10].unk_00 = v9;
            v10++;

            if (v10 >= 10) {
                break;
            }
        }
    }

    if (v10 > 1) {
        v7 = 0;
        v3 = FX_Max(param0, v15[0].unk_00) - FX_Min(param0, v15[0].unk_00);

        for (v6 = 1; v6 < v10; v6++) {
            v4 = FX_Max(param0, v15[v6].unk_00) - FX_Min(param0, v15[v6].unk_00);

            if (v3 > v4) {
                v3 = v4;
                v7 = v6;
            }
        }

        *param4 = v15[v7].unk_00;
        return 1;
    } else if (v10 == 1) {
        *param4 = v15[0].unk_00;
        return 1;
    }

    if (v10 != 0) {
        *param4 = v15[0].unk_00;
        return 1;
    }

    return 0;
}
