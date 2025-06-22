#include "overlay063/ov63_0222D1C0.h"

#include <nitro.h>
#include <string.h>

#include "overlay063/ov63_0222D160.h"
#include "overlay063/struct_ov63_0222CC3C.h"
#include "overlay063/struct_ov63_0222D160.h"
#include "overlay065/struct_ov65_0223582C.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sprite_util.h"

typedef struct UnkStruct_ov63_0222D1C0_t {
    G2dRenderer *unk_00;
    BgConfig *unk_04;
    void *unk_08;
    NNSG2dScreenData *unk_0C;
    u32 unk_10;
    u32 unk_14;
    u16 unk_18;
    u16 unk_1A;
} UnkStruct_ov63_0222D1C0;

static void ov63_0222D31C(BgConfig *param0, int param1, const UnkStruct_ov65_0223582C *param2);
static void ov63_0222D378(UnkStruct_ov63_0222D1C0 *param0, s16 param1, s16 param2);
static void ov63_0222D408(BgConfig *param0, int param1, const NNSG2dScreenData *param2, s16 param3, s16 param4);
static void ov63_0222D4F8(BgConfig *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, const void *param6, u8 param7, u8 param8, u8 param9, u8 param10);
static u8 ov63_0222D688(u8 param0, u8 param1);
static const void *ov63_0222D6BC(const u8 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, UnkStruct_ov63_0222CC3C *param6);

UnkStruct_ov63_0222D1C0 *ov63_0222D1C0(G2dRenderer *param0, BgConfig *param1, const UnkStruct_ov65_0223582C *param2, u32 heapID)
{
    UnkStruct_ov63_0222D1C0 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov63_0222D1C0));
    memset(v0, 0, sizeof(UnkStruct_ov63_0222D1C0));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_10 = param2->unk_00;
    v0->unk_14 = param2->unk_01;

    ov63_0222D31C(v0->unk_04, v0->unk_14, param2);

    v0->unk_08 = Graphics_GetScrnData(param2->narcID, param2->unk_09, param2->unk_0A, &v0->unk_0C, heapID);

    return v0;
}

void ov63_0222D214(UnkStruct_ov63_0222D1C0 *param0)
{
    Heap_FreeToHeap(param0->unk_08);
    Heap_FreeToHeap(param0);
}

void ov63_0222D228(UnkStruct_ov63_0222D1C0 *param0, const UnkStruct_ov63_0222D160 *param1)
{
    s16 v0;
    s16 v1 = ov63_0222D1B0(param1);
    v0 = ov63_0222D1B8(param1);

    if (param0->unk_10 == 0) {
        SetMainScreenViewRect(param0->unk_00, FX32_CONST(v0), FX32_CONST(v1));
    } else {
        SetSubScreenViewRect(param0->unk_00, FX32_CONST(v0), FX32_CONST(v1) + (192 << FX32_SHIFT));
    }

    ov63_0222D378(param0, v0, v1);
}

static void ov63_0222D31C(BgConfig *param0, int param1, const UnkStruct_ov65_0223582C *param2)
{
    BgTemplate v0 = {
        0,
        0,
        0x1000,
        0,
        3,
    };

    v0.colorMode = param2->unk_02;
    v0.screenBase = param2->unk_03;
    v0.charBase = param2->unk_04;
    v0.bgExtPltt = param2->unk_05;
    v0.priority = param2->unk_06;
    v0.areaOver = 0;
    v0.mosaic = param2->unk_07;

    Bg_FreeTilemapBuffer(param0, param1);
    Bg_InitFromTemplate(param0, param1, &v0, 0);
}

static void ov63_0222D378(UnkStruct_ov63_0222D1C0 *param0, s16 param1, s16 param2)
{
    s16 v0;
    s16 v1;
    s16 v2;
    s16 v3;

    v0 = param1 / 8;
    v1 = param2 / 8;
    v2 = param1 % 8;
    v3 = param2 % 8;

    if ((v0 != param0->unk_18) || (v1 != param0->unk_1A)) {
        param0->unk_18 = v0;
        param0->unk_1A = v1;

        ov63_0222D408(param0->unk_04, param0->unk_14, param0->unk_0C, -v0, -v1);
        Bg_ScheduleTilemapTransfer(param0->unk_04, param0->unk_14);
    }

    Bg_ScheduleScroll(param0->unk_04, param0->unk_14, 0, v2);
    Bg_ScheduleScroll(param0->unk_04, param0->unk_14, 3, v3);
}

static void ov63_0222D408(BgConfig *param0, int param1, const NNSG2dScreenData *param2, s16 param3, s16 param4)
{
    s16 v0, v1;
    s16 v2, v3;
    s16 v4, v5;
    s16 v6 = (param2->screenWidth / 8);
    s16 v7 = (param2->screenHeight / 8);

    if (param3 < 0) {
        v2 = -param3;
    } else {
        v2 = 0;
    }

    if (param4 < 0) {
        v3 = -param4;
    } else {
        v3 = 0;
    }

    if (param3 > 0) {
        v4 = param3;
    } else {
        v4 = 0;
    }

    if (param4 > 0) {
        v5 = param4;
    } else {
        v5 = 0;
    }

    v0 = 33 - v4;
    v1 = 25 - v5;

    if (v6 < (v2 + v0)) {
        v0 -= (v2 + v0) - v6;
    }

    if (v7 < (v3 + v1)) {
        v1 -= (v3 + v1) - v7;
    }

    Bg_FillTilemapRect(param0, param1, 0, 0, 0, 33, 25, 17);
    ov63_0222D4F8(param0, param1, v4, v5, v0, v1, param2->rawData, v2, v3, v6, v7);
}

static void ov63_0222D4F8(BgConfig *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, const void *param6, u8 param7, u8 param8, u8 param9, u8 param10)
{
    s8 v0, v1;
    s8 v2, v3;
    const u16 *v4;
    UnkStruct_ov63_0222CC3C v5;
    s8 v6, v7;
    u8 v8;
    s8 v9, v10;

    v8 = ov63_0222D688(param9, param10);

    if (v8 == 0) {
        Bg_CopyToTilemapRect(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10);
        return;
    }

    v1 = param5;

    while (v1 > 0) {
        if ((((param8) % 32) + v1) <= 32) {
            v3 = v1;
            v1 = 0;
        } else {
            v3 = 32 - (param8 % 32);
            v1 -= v3;
        }

        v7 = param8 / 32;
        v0 = param4;
        v9 = param7;
        v10 = param2;

        while (v0 > 0) {
            if ((((v9) % 32) + v0) <= 32) {
                v2 = v0;
                v0 = 0;
            } else {
                v2 = 32 - (v9 % 32);
                v0 -= v2;
            }

            v6 = v9 / 32;
            v4 = ov63_0222D6BC(param6, v6, v7, v8, param9, param10, &v5);

            Bg_CopyToTilemapRect(param0, param1, v10, param3, v2, v3, v4, v9 % 32, param8 % 32, v5.unk_00, v5.unk_02);

            v9 += v2;
            v10 += v2;
        }

        param8 += v3;
        param3 += v3;
    }
}

static u8 ov63_0222D688(u8 param0, u8 param1)
{
    GF_ASSERT(param0 <= 64);
    GF_ASSERT(param1 <= 64);

    if (param0 <= 32) {
        if (param1 <= 32) {
            return 0;
        } else {
            return 2;
        }
    } else {
        if (param1 <= 32) {
            return 1;
        } else {
            return 3;
        }
    }

    GF_ASSERT(0);
    return 0;
}

static const void *ov63_0222D6BC(const u8 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, UnkStruct_ov63_0222CC3C *param6)
{
    s16 v0;
    u16 v1;

    switch (param3) {
    case 0:
        param6->unk_00 = param4;
        param6->unk_02 = param5;
        return param0;

    case 1:
        if (((param1 + 1) * 32) <= param4) {
            param6->unk_00 = 32;
        } else {
            param6->unk_00 = param4 - (param1 * 32);
        }

        param6->unk_02 = param5;
        v0 = param5 * (2 * 32);

        return &param0[(param1 * v0)];
    case 2:
        param6->unk_00 = param4;

        if (((param2 + 1) * 32) <= param5) {
            param6->unk_02 = 32;
        } else {
            param6->unk_02 = param5 - (param2 * 32);
        }

        v0 = (param4 * 2) * 32;
        return &param0[(param2 * v0)];
    case 3:
        if (((param1 + 1) * 32) <= param4) {
            param6->unk_00 = 32;
        } else {
            param6->unk_00 = param4 - (param1 * 32);
        }

        if (((param2 + 1) * 32) <= param5) {
            param6->unk_02 = 32;
        } else {
            param6->unk_02 = param5 - (param2 * 32);
        }

        if (param2 == 0) {
            v1 = 0;

            if (param1 > 0) {
                v1 += (32 * 2) * 32;
            }
        } else {
            v1 = (param4 * 2) * 32;

            if (param1 > 0) {
                v1 += (32 * 2) * param5;
            }
        }
        return &param0[v1];
    default:
        GF_ASSERT(0);
        break;
    }

    GF_ASSERT(0);
    return NULL;
}
