#include "overlay013/ov13_02228128.h"

#include <nitro.h>
#include <string.h>

#include "overlay013/battle_bag_utils.h"
#include "overlay013/struct_ov13_02227244.h"

#include "bg_window.h"
#include "heap.h"
#include "sprite_system.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov13_02229D7C;

static void ov13_02228460(u16 *param0, u16 *param1, u8 param2, u8 param3, u8 param4, u8 param5);

static const UnkStruct_ov13_02229D7C Unk_ov13_02229D7C[] = {
    { 0x0, 0x1, 0x10, 0x9 },
    { 0x0, 0xA, 0x10, 0x9 },
    { 0x10, 0x1, 0x10, 0x9 },
    { 0x10, 0xA, 0x10, 0x9 },
    { 0x0, 0x13, 0x1A, 0x5 },
    { 0x1B, 0x13, 0x5, 0x5 },
    { 0x20, 0x1, 0x10, 0x6 },
    { 0x30, 0x1, 0x10, 0x6 },
    { 0x20, 0x7, 0x10, 0x6 },
    { 0x30, 0x7, 0x10, 0x6 },
    { 0x20, 0xD, 0x10, 0x6 },
    { 0x30, 0xD, 0x10, 0x6 },
    { 0x20, 0x13, 0x5, 0x5 },
    { 0x25, 0x13, 0x5, 0x5 },
    { 0x3B, 0x13, 0x5, 0x5 },
    { 0x0, 0x33, 0x1A, 0x5 },
    { 0x1B, 0x33, 0x5, 0x5 }
};

static const u8 Unk_ov13_02229D48[] = {
    0x0,
    0xFF
};

static const u8 Unk_ov13_02229D3C[] = {
    0x1,
    0xFF
};

static const u8 Unk_ov13_02229D44[] = {
    0x2,
    0xFF
};

static const u8 Unk_ov13_02229D34[] = {
    0x3,
    0xFF
};

static const u8 Unk_ov13_02229D40[] = {
    0x4,
    0xFF
};

static const u8 Unk_ov13_02229D64[] = {
    0x0,
    0x1,
    0xFF
};

static const u8 Unk_ov13_02229D60[] = {
    0x2,
    0x3,
    0xFF
};

static const u8 Unk_ov13_02229D5C[] = {
    0x4,
    0x5,
    0xFF
};

static const u8 Unk_ov13_02229D58[] = {
    0x6,
    0x7,
    0xFF
};

static const u8 Unk_ov13_02229D68[] = {
    0x8,
    0x9,
    0xFF
};

static const u8 Unk_ov13_02229D70[] = {
    0xA,
    0xB,
    0xFF
};

static const u8 Unk_ov13_02229D74[] = {
    0xC,
    0xD,
    0xFF
};

static const u8 Unk_ov13_02229D4C[] = {
    0xE,
    0xF,
    0xFF
};

static const u8 Unk_ov13_02229D50[] = {
    0x10,
    0x11,
    0xFF
};

static const u8 Unk_ov13_02229D6C[] = {
    0x12,
    0x13,
    0xFF
};

static const u8 Unk_ov13_02229D78[] = {
    0x14,
    0x15,
    0xFF
};

static const u8 Unk_ov13_02229D54[] = {
    0x16,
    0x17,
    0xFF
};

static const u8 Unk_ov13_02229D38[] = {
    0x3,
    0xFF
};

static const u8 *const Unk_ov13_02229DC0[] = {
    Unk_ov13_02229D48,
    Unk_ov13_02229D3C,
    Unk_ov13_02229D44,
    Unk_ov13_02229D34,
    Unk_ov13_02229D40,
    NULL,
    Unk_ov13_02229D64,
    Unk_ov13_02229D60,
    Unk_ov13_02229D5C,
    Unk_ov13_02229D58,
    Unk_ov13_02229D68,
    Unk_ov13_02229D70,
    NULL,
    NULL,
    NULL,
    Unk_ov13_02229D38,
    NULL,
    Unk_ov13_02229D74,
    Unk_ov13_02229D4C,
    Unk_ov13_02229D50,
    Unk_ov13_02229D6C,
    Unk_ov13_02229D78,
    Unk_ov13_02229D54
};

void ov13_02228128(UnkStruct_ov13_02227244 *param0, u16 *param1)
{
    ov13_02228460(param0->unk_328[0], param1, 0, 0, 16, 9);
    ov13_02228460(param0->unk_328[1], param1, 0, (0 + 9), 16, 9);
    ov13_02228460(param0->unk_328[2], param1, 0, ((0 + 9) + 9), 16, 9);

    ov13_02228460(param0->unk_688[0], param1, 0, 27, 26, 5);
    ov13_02228460(param0->unk_688[1], param1, 0, (27 + 5), 26, 5);
    ov13_02228460(param0->unk_688[2], param1, 0, ((27 + 5) + 5), 26, 5);
    ov13_02228460(param0->unk_688[3], param1, 0, ((27 + 5) + 5), 26, 5);

    ov13_02228460(param0->unk_A98[0], param1, 0, 57, 5, 5);
    ov13_02228460(param0->unk_A98[1], param1, (0 + 5), 57, 5, 5);
    ov13_02228460(param0->unk_A98[2], param1, ((0 + 5) + 5), 57, 5, 5);

    ov13_02228460(param0->unk_B2E[0], param1, 16, 0, 16, 6);
    ov13_02228460(param0->unk_B2E[1], param1, 16, (0 + 6), 16, 6);
    ov13_02228460(param0->unk_B2E[2], param1, 16, ((0 + 6) + 6), 16, 6);
    ov13_02228460(param0->unk_B2E[3], param1, 16, (((0 + 6) + 6) + 6), 16, 6);

    ov13_02228460(param0->unk_E2E[0], param1, 0, 47, 5, 5);
    ov13_02228460(param0->unk_E2E[1], param1, (0 + 5), 47, 5, 5);
    ov13_02228460(param0->unk_E2E[2], param1, ((0 + 5) + 5), 47, 5, 5);
    ov13_02228460(param0->unk_E2E[3], param1, (((0 + 5) + 5) + 5), 47, 5, 5);

    ov13_02228460(param0->unk_EF6[0], param1, 0, 52, 5, 5);
    ov13_02228460(param0->unk_EF6[1], param1, (0 + 5), 52, 5, 5);
    ov13_02228460(param0->unk_EF6[2], param1, ((0 + 5) + 5), 52, 5, 5);
    ov13_02228460(param0->unk_EF6[3], param1, (((0 + 5) + 5) + 5), 52, 5, 5);

    ov13_02228460(param0->unk_FBE[0], param1, 20, 47, 4, 4);
    ov13_02228460(param0->unk_FBE[1], param1, (20 + 4), 47, 4, 4);
    ov13_02228460(param0->unk_FBE[2], param1, ((20 + 4) + 4), 47, 4, 4);

    ov13_02228460(param0->unk_101E[0], param1, 20, (47 + 4), 4, 4);
    ov13_02228460(param0->unk_101E[1], param1, (20 + 4), (47 + 4), 4, 4);
    ov13_02228460(param0->unk_101E[2], param1, ((20 + 4) + 4), (47 + 4), 4, 4);

    ov13_02228460(param0->unk_107E[0], param1, 20, ((47 + 4) + 4), 4, 4);
    ov13_02228460(param0->unk_107E[1], param1, (20 + 4), ((47 + 4) + 4), 4, 4);
    ov13_02228460(param0->unk_107E[2], param1, ((20 + 4) + 4), ((47 + 4) + 4), 4, 4);

    ov13_02228460(param0->unk_10DE[0], param1, 20, (((47 + 4) + 4) + 4), 4, 4);
    ov13_02228460(param0->unk_10DE[1], param1, (20 + 4), (((47 + 4) + 4) + 4), 4, 4);
    ov13_02228460(param0->unk_10DE[2], param1, ((20 + 4) + 4), (((47 + 4) + 4) + 4), 4, 4);
}

static void ov13_02228460(u16 *param0, u16 *param1, u8 param2, u8 param3, u8 param4, u8 param5)
{
    u16 v0, v1;

    for (v0 = 0; v0 < param5; v0++) {
        for (v1 = 0; v1 < param4; v1++) {
            param0[v0 * param4 + v1] = param1[(param3 + v0) * 32 + param2 + v1];
        }
    }
}

static u16 *ov13_022284B0(UnkStruct_ov13_02227244 *param0, u8 param1, u8 param2)
{
    switch (param1) {
    case 0:
    case 1:
    case 2:
    case 3:
        return param0->unk_328[param2];
    case 4:
        return param0->unk_688[param2];
    case 5:
    case 14:
    case 16:
        return param0->unk_A98[param2];
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
        return param0->unk_B2E[param2];
    case 12:
        return param0->unk_E2E[param2];
    case 13:
        return param0->unk_EF6[param2];
    case 15:
        return param0->unk_688[param2];
    }

    return NULL;
}

static u16 ov13_02228558(UnkStruct_ov13_02227244 *param0, u8 param1, u8 param2, u8 param3)
{
    if (param2 == 3) {
        return 5;
    }

    switch (param1) {
    case 0:
    case 1:
    case 2:
    case 3:
        return 0;
    case 4:
        return 3;
    case 5:
    case 14:
    case 16:
    case 12:
    case 13:
        return 2;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
        return 8 + param0->currentBattleBagPocket;
    case 15:
        if (param3 == 2) {
            return 8 + param0->currentBattleBagPocket;
        } else {
            return 1;
        }
    }

    return 0;
}

static void ov13_022285C8(UnkStruct_ov13_02227244 *param0, u16 *param1, u8 param2, u8 param3)
{
    u16 *v0;
    u16 v1, v2;

    if (param2 == 0) {
        v0 = param0->unk_FBE[param3];
    } else if (param2 == 1) {
        v0 = param0->unk_101E[param3];
    } else if (param2 == 2) {
        v0 = param0->unk_107E[param3];
    } else if (param2 == 3) {
        v0 = param0->unk_10DE[param3];
    } else {
        return;
    }

    for (v1 = 0; v1 < 4; v1++) {
        for (v2 = 0; v2 < 4; v2++) {
            param1[16 * (0 + v1) + 6 + v2] = v0[4 * v1 + v2];
        }
    }
}

static void ov13_0222863C(UnkStruct_ov13_02227244 *param0, u16 *param1, u8 param2, u8 param3, u8 param4)
{
    u16 *v0;
    u16 v1;
    u16 v2;

    v0 = ov13_022284B0(param0, param2, param3);
    v1 = ov13_02228558(param0, param2, param3, param4) << 12;

    for (v2 = 0; v2 < Unk_ov13_02229D7C[param2].unk_02 * Unk_ov13_02229D7C[param2].unk_03; v2++) {
        param1[v2] = v1 | (v0[v2] & 0xfff);
    }

    ov13_022285C8(param0, param1, param2, param3);
}

static void ov13_022286B8(UnkStruct_ov13_02227244 *param0, u8 param1, u8 param2, u8 param3)
{
    u16 *v0 = Heap_AllocFromHeap(param0->unk_00->heapID, Unk_ov13_02229D7C[param1].unk_02 * Unk_ov13_02229D7C[param1].unk_03 * 2);

    ov13_0222863C(param0, v0, param1, param2, param3);

    Bg_LoadToTilemapRect(param0->unk_04, 6, v0, Unk_ov13_02229D7C[param1].unk_00, Unk_ov13_02229D7C[param1].unk_01, Unk_ov13_02229D7C[param1].unk_02, Unk_ov13_02229D7C[param1].unk_03);
    Bg_ScheduleTilemapTransfer(param0->unk_04, 6);
    Heap_FreeToHeap(v0);
}

static void ov13_0222872C(UnkStruct_ov13_02227244 *param0, u8 param1, u8 param2)
{
    const u8 *v0;
    u16 v1;
    u8 v2, v3;

    if ((param1 >= 6) && (param1 <= 11) && (param0->unk_31 == 0)) {
        v0 = Unk_ov13_02229DC0[(16 + 1) + param1 - 6];
    } else {
        v0 = Unk_ov13_02229DC0[param1];
    }

    if (v0 == NULL) {
        return;
    }

    switch (param2) {
    case 0:
    case 2:
        v2 = 1;
        v3 = 2;
        break;
    case 1:
        v2 = 0;
        v3 = 4;
        break;
    }

    for (v1 = 0; v1 < 8; v1++) {
        if (v0[v1] == 0xff) {
            break;
        }

        Window_Scroll(&param0->unk_2C[v0[v1]], v2, v3, 0);
        Window_ScheduleCopyToVRAM(&param0->unk_2C[v0[v1]]);
    }
}

static void ov13_022287A4(UnkStruct_ov13_02227244 *param0, u8 param1, u8 param2)
{
    ManagedSprite *v0;
    u8 v1;

    if ((param1 >= 6) && (param1 <= 11)) {
        v0 = param0->unk_310[param1 - 6];
    } else if (param1 == 4) {
        for (v1 = 0; v1 < 6; v1++) {
            v0 = param0->unk_310[v1];

            if (ManagedSprite_GetDrawFlag(v0) != 0) {
                break;
            }
        }
    } else {
        return;
    }

    switch (param2) {
    case 0:
    case 2:
        ManagedSprite_OffsetPositionXY(v0, 0, 2);
        break;
    case 1:
        ManagedSprite_OffsetPositionXY(v0, 0, -4);
        break;
    }
}

void ov13_0222880C(UnkStruct_ov13_02227244 *param0, u8 param1, u8 param2)
{
    param0->unk_113E = 0;
    param0->unk_113F = 0;
    param0->unk_1140 = param1;
    param0->unk_1141_4 = param2;
    param0->unk_1141_0 = 1;
}

void ov13_02228848(UnkStruct_ov13_02227244 *param0)
{
    if (param0->unk_1141_0 == 0) {
        return;
    }

    switch (param0->unk_113E) {
    case 0:
        ov13_022286B8(param0, param0->unk_1140, 1, param0->unk_114C);
        ov13_0222872C(param0, param0->unk_1140, 1);
        ov13_022287A4(param0, param0->unk_1140, 1);
        param0->unk_113F = 0;
        param0->unk_113E = 1;
        break;
    case 1:
        ov13_022286B8(param0, param0->unk_1140, 2, param0->unk_114C);
        ov13_0222872C(param0, param0->unk_1140, 2);
        ov13_022287A4(param0, param0->unk_1140, 2);
        param0->unk_113F = 0;
        param0->unk_113E = 2;
        break;
    case 2:
        ov13_022286B8(param0, param0->unk_1140, 0, param0->unk_114C);
        ov13_0222872C(param0, param0->unk_1140, 0);
        ov13_022287A4(param0, param0->unk_1140, 0);
        param0->unk_113F = 0;
        param0->unk_113E = 0;
        param0->unk_1141_0 = 0;
        break;
    }
}

void ov13_02228924(UnkStruct_ov13_02227244 *param0, u8 param1)
{
    switch (param1) {
    case 0:
        ov13_022286B8(param0, 0, 0, param1);
        ov13_022286B8(param0, 1, 0, param1);
        ov13_022286B8(param0, 2, 0, param1);
        ov13_022286B8(param0, 3, 0, param1);

        if (param0->unk_00->lastUsedItem == ITEM_NONE) {
            ov13_022286B8(param0, 4, 3, param1);
        } else {
            ov13_022286B8(param0, 4, 0, param1);
        }

        ov13_022286B8(param0, 5, 0, param1);
        break;
    case 1: {
        u32 v0;

        for (v0 = 0; v0 < BATTLE_BAG_ITEMS_PER_POCKET_PAGE; v0++) {
            if (GetBattleBagItem(param0, v0) == ITEM_NONE) {
                ov13_022286B8(param0, 6 + v0, 3, param1);
            } else {
                ov13_022286B8(param0, 6 + v0, 0, param1);
            }
        }
    }

        if (param0->numBattleBagPocketPages[param0->currentBattleBagPocket] == 0) {
            ov13_022286B8(param0, 12, 3, param1);
            ov13_022286B8(param0, 13, 3, param1);
        } else {
            ov13_022286B8(param0, 12, 0, param1);
            ov13_022286B8(param0, 13, 0, param1);
        }

        ov13_022286B8(param0, 14, 0, param1);
        break;
    case 2:
        ov13_022286B8(param0, 15, 0, param1);
        ov13_022286B8(param0, 16, 0, param1);
    }
}
