#include "overlay019/ov19_021D603C.h"

#include <nitro.h>
#include <string.h>

#include "overlay019/struct_ov19_021D6104.h"

#include "touch_screen.h"

static void ov19_021D60FC(UnkStruct_ov19_021D6104 *param0, int (*func)(UnkStruct_ov19_021D6104 *, BOOL, BOOL));
static int ov19_021D6104(UnkStruct_ov19_021D6104 *param0, BOOL param1, BOOL param2);
static int ov19_021D6134(UnkStruct_ov19_021D6104 *param0, BOOL param1, BOOL param2);
static u16 ov19_021D6164(const UnkStruct_ov19_021D6104 *param0, u32 param1, u32 param2);
static int ov19_021D617C(const UnkStruct_ov19_021D6104 *param0, u16 param1, u16 param2);

void ov19_021D603C(UnkStruct_ov19_021D6104 *param0, int param1, int param2, int param3, int param4)
{
    param0->unk_30 = ov19_021D6104;
    param0->unk_1C = 0;
    param0->unk_0C = param1;
    param0->unk_10 = param2;
    param0->unk_14 = param1;
    param0->unk_18 = param2;
    param0->unk_04 = param1;
    param0->unk_08 = param2;
    param0->unk_28.circle.code = TOUCHSCREEN_USE_CIRCLE;
    param0->unk_28.circle.x = param1;
    param0->unk_28.circle.y = param2;
    param0->unk_28.circle.r = param3;
    param0->unk_2C.circle.code = TOUCHSCREEN_USE_CIRCLE;
    param0->unk_2C.circle.x = param1;
    param0->unk_2C.circle.y = param2;
    param0->unk_2C.circle.r = param4;

    if (param1 < 128) {
        param0->unk_24 = 1;
    } else {
        param0->unk_24 = -1;
    }
}

int ov19_021D60A8(UnkStruct_ov19_021D6104 *param0)
{
    BOOL v0, v1;

    if ((TouchScreen_LocationHeld(&param0->unk_2C) == 1) && (TouchScreen_LocationHeld(&param0->unk_28) == 0)) {
        u32 v2, v3;

        v0 = 1;
        v1 = (param0->unk_1C == 0);

        if (TouchScreen_GetHoldState(&v2, &v3)) {
            param0->unk_14 = v2;
            param0->unk_18 = v3;
        }
    } else {
        v0 = 0;
        v1 = 0;
    }

    param0->unk_1C = v0;
    return param0->unk_30(param0, v0, v1);
}

static void ov19_021D60FC(UnkStruct_ov19_021D6104 *param0, int (*func)(UnkStruct_ov19_021D6104 *, BOOL, BOOL))
{
    param0->unk_00 = 0;
    param0->unk_30 = func;
}

static int ov19_021D6104(UnkStruct_ov19_021D6104 *param0, BOOL param1, BOOL param2)
{
    if (param1 && param2) {
        param0->unk_04 = param0->unk_14;
        param0->unk_08 = param0->unk_18;
        param0->unk_20 = ov19_021D6164(param0, param0->unk_04, param0->unk_08);
        ov19_021D60FC(param0, ov19_021D6134);
        return 1;
    }

    return 0;
}

static int ov19_021D6134(UnkStruct_ov19_021D6104 *param0, BOOL param1, BOOL param2)
{
    if (param1 == 0) {
        ov19_021D60FC(param0, ov19_021D6104);
        return 3;
    }

    return 2;
}

int ov19_021D614C(const UnkStruct_ov19_021D6104 *param0)
{
    int v0;
    u16 v1;

    v1 = ov19_021D6164(param0, param0->unk_14, param0->unk_18);
    v0 = ov19_021D617C(param0, param0->unk_20, v1);

    return v0;
}

static u16 ov19_021D6164(const UnkStruct_ov19_021D6104 *param0, u32 param1, u32 param2)
{
    fx32 v0, v1;

    v0 = ((int)(param1 - param0->unk_0C)) << FX32_SHIFT;
    v1 = ((int)(param2 - param0->unk_10)) << FX32_SHIFT;

    return FX_Atan2Idx(v1, v0);
}

static int ov19_021D617C(const UnkStruct_ov19_021D6104 *param0, u16 param1, u16 param2)
{
    static const u16 v0[] = {
        0x300,
        0x1800,
    };
    int v1, v2, v3, v4;

    v1 = param2 - param1;

    if (v1 < 0) {
        v3 = -1;
        v1 *= -1;
    } else {
        v3 = 1;
    }

    for (v2 = 0; v2 < NELEMS(v0); v2++) {
        if (v1 < v0[v2]) {
            break;
        }
    }

    v2 = v2 * v3 * param0->unk_24;

    return v2;
}
