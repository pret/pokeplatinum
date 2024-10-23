#include "overlay019/ov19_021D79F8.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay019/ov19_021D0D80.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/ov19_021DA270.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D4F5C.h"
#include "overlay019/struct_ov19_021D5DF8_decl.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/struct_ov19_021D8318.h"
#include "overlay019/struct_ov19_021DA384.h"
#include "overlay019/struct_ov19_021DCD18.h"

#include "cell_actor.h"
#include "font.h"
#include "heap.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_02018340.h"
#include "unk_020797C8.h"

static const struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} Unk_ov19_021E0178[] = {
    { 30, 29, 28 },
    { 33, 32, 31 },
    { 36, 35, 34 },
    { 39, 38, 37 },
    { 42, 41, 40 },
    { 45, 44, 43 },
    { 48, 47, 46 },
    { 51, 50, 49 },
    { 54, 53, 52 },
    { 57, 56, 55 },
    { 60, 59, 58 },
    { 63, 62, 61 },
    { 66, 65, 64 },
    { 69, 68, 67 },
    { 72, 71, 70 },
    { 75, 74, 73 },
    { 78, 77, 76 },
    { 81, 80, 79 },
    { 84, 83, 82 },
    { 87, 86, 85 },
    { 90, 89, 88 },
    { 93, 92, 91 },
    { 96, 95, 94 },
    { 99, 98, 97 },
    { 102, 101, 100 },
    { 105, 104, 103 },
    { 108, 107, 106 },
    { 111, 110, 109 },
    { 114, 113, 112 },
    { 117, 116, 115 },
    { 120, 119, 118 },
    { 123, 122, 121 },
};

typedef struct {
    UnkStruct_ov19_021D8318 *unk_00;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    u32 unk_0C;
} UnkStruct_ov19_021D81B8;

static void ov19_021D7AF4(const UnkStruct_ov19_021D8318 *param0, int param1, u32 *param2, u32 *param3, u32 *param4);
static void ov19_021D7BC0(UnkStruct_ov19_021D8318 *param0, const UnkStruct_ov19_021D4F5C *param1, int param2, BOOL param3);
static void ov19_021D7C58(UnkStruct_ov19_021D8318 *param0, const UnkStruct_ov19_021D4F5C *param1, int param2);
static void ov19_021D7D00(UnkStruct_ov19_021D8318 *param0, const UnkStruct_ov19_021D4F5C *param1, u32 param2, u32 param3, u32 param4);
static void ov19_021D7E24(SysTask *param0, void *param1);
static void ov19_021D7E6C(SysTask *param0, void *param1);
static void ov19_021D7F14(UnkStruct_ov19_021D8318 *param0, fx32 param1, s32 param2);
static void ov19_021D7F9C(UnkStruct_ov19_021D8318 *param0, fx32 param1);
static void ov19_021D803C(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DCD18 *param1, int param2, int param3);
static void ov19_021D8114(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DCD18 *param1, int param2);
static void ov19_021D813C(UnkStruct_ov19_021D8318 *param0, u32 param1);
static void ov19_021D81B8(UnkStruct_ov19_021D8318 *param0, int param1, int param2, u32 param3);
static void ov19_021D8210(SysTask *param0, void *param1);
static void ov19_021D826C(void *param0);
static void ov19_021D8274(SysTask *param0, void *param1);
static void ov19_021D8318(UnkStruct_ov19_021D8318 *param0);
static u32 ov19_021D85B4(u32 param0);
static void ov19_021D85C4(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DA384 *param1, u32 param2, u32 param3, s32 param4, UnkStruct_ov19_021DCD18 *param5);
static void ov19_021D865C(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2);
static void ov19_021D86B4(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2);
static void ov19_021D870C(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DCD18 *param1);
static void ov19_021D8764(u16 *param0, const u16 *param1, u32 param2, u32 param3, u32 param4);

static const u16 Unk_ov19_021E0138[] = {
    9,
    10,
};

BOOL ov19_021D79F8(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021D61B0 *param1, const UnkStruct_ov19_021D4DF0 *param2, BGL *param3, CellActorCollection *param4)
{
    param0->unk_00 = param2->unk_40.unk_00;
    param0->unk_01 = 11;
    param0->unk_02 = 0;
    param0->unk_585C = ov19_021D7820(param1);
    param0->unk_5854 = 72 + param0->unk_585C;
    param0->unk_5858 = (256 + 16) + param0->unk_585C;
    param0->unk_58F0 = ov19_021D77D8(param1);

    ov19_021DA3CC(param0->unk_58F0, param0->unk_A8[0], (5 * 6));
    ov19_021DA3CC(param0->unk_58F0, param0->unk_A8[1], (5 * 6));

    param0->unk_58F4 = param3;
    param0->unk_58F8 = param2;
    param0->unk_58FC = param1;

    return 1;
}

void ov19_021D7A74(UnkStruct_ov19_021D8318 *param0)
{
    ov19_021DA3F0(param0->unk_58F0, param0->unk_A8[0], (5 * 6));
    ov19_021DA3F0(param0->unk_58F0, param0->unk_A8[1], (5 * 6));
}

void ov19_021D7A9C(UnkStruct_ov19_021D8318 *param0)
{
    param0->unk_0C = sub_020192EC(param0->unk_58F4, 3);
    param0->unk_0C -= param0->unk_585C;
    param0->unk_0C &= (REG_G2_BG3HOFS_OFFSET_MASK);

    sub_02019184(param0->unk_58F4, 3, 0, param0->unk_0C);
    sub_02019CB8(param0->unk_58F4, 3, 0x18, 0, 0, 64, 32, 9);
}

static void ov19_021D7AF4(const UnkStruct_ov19_021D8318 *param0, int param1, u32 *param2, u32 *param3, u32 *param4)
{
    if (param1 != 0) {
        *param2 = (param0->unk_02 ^ 1) * (21 * 20);
        *param3 = (param0->unk_01 + (param1 * (21 + 2))) & 63;
        *param4 = Unk_ov19_021E0138[param0->unk_02 ^ 1];
    } else {
        *param2 = param0->unk_02 * (21 * 20);
        *param3 = param0->unk_01;
        *param4 = Unk_ov19_021E0138[param0->unk_02];
    }
}

void ov19_021D7B4C(UnkStruct_ov19_021D8318 *param0, const UnkStruct_ov19_021D4F5C *param1, int param2, BOOL param3)
{
    u32 v0, v1, v2;

    ov19_021D7AF4(param0, param2, &v0, &v1, &v2);
    ov19_021D7BC0(param0, param1, v2, param3);
    ov19_021D7C58(param0, param1, v0);
    ov19_021D7D00(param0, param1, v1, v0, v2);

    if (param3) {
        if (param2 == 0) {
            ov19_021D85C4(param0, param0->unk_58F0, param1->unk_00, param0->unk_02, param2 * ((21 + 2) * 8), param0->unk_A8[param0->unk_02]);
        }
    }
}

static void ov19_021D7BC0(UnkStruct_ov19_021D8318 *param0, const UnkStruct_ov19_021D4F5C *param1, int param2, BOOL param3)
{
    NNSG2dPaletteData *v0;
    void *v1;

    v1 = sub_02006F88(18, Unk_ov19_021E0178[param1->unk_01].unk_02, &v0, 10);

    if (v1) {
        int v2;
        fx32 v3;

        if (param3) {
            DC_FlushRange(v0->pRawData, 0x20);
            GX_LoadBGPltt(v0->pRawData, param2 * 0x20, 0x20);
        }

        for (v2 = 0, v3 = 0; v2 < 8; v2++) {
            ov19_021D78C8(v0->pRawData, param0->unk_5860[v2], 16, 0x7fff, (v3 >> FX32_SHIFT));
            v3 += ((16 << FX32_SHIFT) / 8);
        }

        ov19_021D78C8(v0->pRawData, param0->unk_5860[v2], 16, 0x7fff, 16);
        DC_FlushRange(param0->unk_5860, sizeof(param0->unk_5860));
        Heap_FreeToHeap(v1);
    }
}

static void ov19_021D7C58(UnkStruct_ov19_021D8318 *param0, const UnkStruct_ov19_021D4F5C *param1, int param2)
{
    void *v0;

    v0 = sub_02006FE8(18, Unk_ov19_021E0178[param1->unk_01].unk_01, 1, 10, 1);

    if (v0 != NULL) {
        NNSG2dCharacterData *v1;

        if (NNS_G2dGetUnpackedBGCharacterData(v0, &v1)) {
            Window *v2;

            v2 = sub_0201A778(10, 1);

            if (v2) {
                u32 v3, v4;

                v2->unk_00 = param0->unk_58F4;
                v2->unk_07 = 21;
                v2->unk_08 = 4;
                v2->unk_0C = v1->pRawData;

                v4 = Font_CalcStrbufWidth(FONT_SYSTEM, param1->unk_04, 0);
                v3 = 84 - (v4 / 2);

                Text_AddPrinterWithParamsAndColor(v2, FONT_SYSTEM, param1->unk_04, v3, 13, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(2, 1, 0), NULL);
                Heap_FreeToHeap(v2);
            }

            sub_0201958C(param0->unk_58F4, 3, v1->pRawData, v1->szByte, param2);
        }

        Heap_FreeToHeap(v0);
    }
}

static void ov19_021D7D00(UnkStruct_ov19_021D8318 *param0, const UnkStruct_ov19_021D4F5C *param1, u32 param2, u32 param3, u32 param4)
{
    void *v0;

    v0 = sub_02006FE8(18, Unk_ov19_021E0178[param1->unk_01].unk_00, 1, 10, 1);

    if (v0) {
        u16 *v1;
        NNSG2dScreenData *v2;

        NNS_G2dGetUnpackedScreenData(v0, &v2);
        v1 = sub_02019FE4(param0->unk_58F4, 3);

        if (v1) {
            ov19_021D8764(v1, (const u16 *)(v2->rawData), param2, param3, param4);
        }

        Heap_FreeToHeap(v0);
        sub_02019460(param0->unk_58F4, 3, v1, 0x1000, 0);
    }
}

void ov19_021D7D70(UnkStruct_ov19_021D8318 *param0, const UnkStruct_ov19_021D4F5C *param1, int param2)
{
    param0->unk_08 = (sub_020192EC(param0->unk_58F4, 3) & (REG_G2_BG3HOFS_OFFSET_MASK)) << FX32_SHIFT;
    param0->unk_14 = param0->unk_08 + ((((21 + 2) * 8) * param2) << FX32_SHIFT);
    param0->unk_10 = (param0->unk_14 - param0->unk_08) / (15 * 2);
    param0->unk_14 >>= FX32_SHIFT;
    param0->unk_14 &= (REG_G2_BG3HOFS_OFFSET_MASK);
    param0->unk_04 = (15 * 2);
    param0->unk_03 = param0->unk_02;
    param0->unk_01 += ((21 + 2) * param2);
    param0->unk_01 &= 63;
    param0->unk_02 ^= 1;

    {
        ov19_021D813C(param0, param1->unk_00);
        ov19_021D7F14(param0, param0->unk_10, param2 * ((21 + 2) * 8));

        param0->unk_30 = param1->unk_00;
        param0->unk_34 = param0->unk_02;
    }

    param0->unk_98 = 1;
    param0->unk_9C = 0;

    SysTask_Start(ov19_021D7E24, param0, 0);
    ov19_021D77C8(ov19_021D7E6C, param0, 1);
}

BOOL ov19_021D7E1C(UnkStruct_ov19_021D8318 *param0)
{
    return param0->unk_9C;
}

static void ov19_021D7E24(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D8318 *v0 = (UnkStruct_ov19_021D8318 *)param1;

    if (v0->unk_04) {
        if (v0->unk_98 == 2) {
            ov19_021D7F9C(v0, v0->unk_10);
            v0->unk_98 = 0;
        }

        return;
    }

    v0->unk_0C = v0->unk_14;
    v0->unk_00 = ov19_021D5E68(v0->unk_58F8);
    SysTask_Done(param0);
    v0->unk_9C = 1;
}

static void ov19_021D7E6C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D8318 *v0 = (UnkStruct_ov19_021D8318 *)param1;
    u32 v1, v2;

    v1 = v0->unk_03;
    v2 = v1 ^ 1;

    if (v0->unk_04) {
        if (v0->unk_98 < 2) {
            ov19_021D865C(v0, v0->unk_A8[v1], v0->unk_98);
            ov19_021D86B4(v0, v0->unk_A8[v2], v0->unk_98);

            v0->unk_98++;
            v0->unk_0C = (v0->unk_08 >> FX32_SHIFT) & (REG_G2_BG3HOFS_OFFSET_MASK);
            v0->unk_08 += v0->unk_10;
            sub_02019184(v0->unk_58F4, 3, 0, v0->unk_0C);
            v0->unk_04--;
        }
    } else {
        sub_02019184(v0->unk_58F4, 3, 0, v0->unk_14);
        ov19_021D870C(v0, v0->unk_A8[v2]);
        SysTask_Done(param0);
    }
}

static void ov19_021D7F14(UnkStruct_ov19_021D8318 *param0, fx32 param1, s32 param2)
{
    int v0, v1;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_68[0][v0] = (112 + param0->unk_585C + 24 * v0) * FX32_ONE;
        param0->unk_68[1][v0] = param0->unk_68[0][v0] - param1;
        param0->unk_38[0][v0] = (112 + param0->unk_585C + 24 * v0 + param2) * FX32_ONE;
        param0->unk_38[1][v0] = param0->unk_38[0][v0] - param1;

        v1 = param0->unk_38[1][v0] >> FX32_SHIFT;

        if ((v1 > param0->unk_5854) && (v1 < param0->unk_5858)) {
            int v2 = param0->unk_03 ^ 1;
            ov19_021D803C(param0, param0->unk_A8[v2], v1, v0);
        }
    }
}

static void ov19_021D7F9C(UnkStruct_ov19_021D8318 *param0, fx32 param1)
{
    int v0, v1, v2, v3;

    v3 = param0->unk_03;
    v2 = v3 ^ 1;

    for (v0 = 0; v0 < 6; v0++) {
        v1 = param0->unk_68[1][v0] >> FX32_SHIFT;

        if ((v1 <= param0->unk_5854) || (v1 >= param0->unk_5858)) {
            ov19_021D8114(param0, param0->unk_A8[v3], v0);
        }

        param0->unk_68[0][v0] = param0->unk_68[1][v0] - param1;
        param0->unk_68[1][v0] = param0->unk_68[0][v0] - param1;
        param0->unk_38[0][v0] = param0->unk_38[1][v0] - param1;
        param0->unk_38[1][v0] = param0->unk_38[0][v0] - param1;

        v1 = param0->unk_38[1][v0] >> FX32_SHIFT;

        if ((v1 > param0->unk_5854) && (v1 < param0->unk_5858)) {
            ov19_021D803C(param0, param0->unk_A8[v2], v1, v0);
        }
    }
}

static void ov19_021D803C(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DCD18 *param1, int param2, int param3)
{
    const PCBoxes *v0;
    BoxPokemon *v1;
    int v2, v3;
    u32 v4;

    v0 = ov19_021D5E90(param0->unk_58F8);
    v4 = (88 + (param0->unk_34 * 480)) + param3 * (4 * 4);
    param1 += param3;
    v3 = param3;

    for (v2 = 0; v2 < 5; v2++) {
        if (param1->unk_00 == NULL) {
            v1 = sub_02079C9C(v0, param0->unk_30, v3);

            if (BoxPokemon_GetValue(v1, MON_DATA_SPECIES_EXISTS, NULL)) {
                ov19_021DA548(param0->unk_58F0, v1, param0->unk_5814[v3], param0->unk_57D8[v3], param0->unk_CD8[v3], param2, 40 + 24 * v2, 2, ov19_021D85B4(v3), v4, param1);
            }
        }

        v4 += (6 * (4 * 4));
        param1 += 6;
        v3 += 6;
    }
}

static void ov19_021D8114(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DCD18 *param1, int param2)
{
    int v0;

    param1 += param2;

    for (v0 = 0; v0 < 5; v0++) {
        if (param1->unk_00 != NULL) {
            CellActor_Delete(param1->unk_00);
            param1->unk_00 = NULL;
        }

        param1 += 6;
    }
}

static void ov19_021D813C(UnkStruct_ov19_021D8318 *param0, u32 param1)
{
    const PCBoxes *v0;
    BoxPokemon *v1;
    u32 v2, v3;

    v0 = ov19_021D5E90(param0->unk_58F8);

    for (v2 = 0; v2 < (5 * 6); v2++) {
        v1 = sub_02079C9C(v0, param1, v2);
        v3 = BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL);

        if (v3) {
            param0->unk_5814[v2] = v3;
            param0->unk_57D8[v2] = BoxPokemon_IconSpriteIndex(v1);
            ov19_021DA744(param0->unk_58F0, param0->unk_CD8[v2], param0->unk_57D8[v2], ((4 * 4) * 0x20 + 0x80));
        }
    }
}

static void ov19_021D81B8(UnkStruct_ov19_021D8318 *param0, int param1, int param2, u32 param3)
{
    UnkStruct_ov19_021D81B8 *v0;

    param0->unk_A3 = 0;
    v0 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021D81B8));

    if (v0) {
        v0->unk_00 = param0;
        v0->unk_04 = param1;
        v0->unk_06 = param2;
        v0->unk_0C = param3;
        v0->unk_0A = 2;
        v0->unk_08 = (param2 > param1) ? 1 : -1;

        if (ov19_021D77C8(ov19_021D8210, v0, 0) != NULL) {
            param0->unk_A3 = 1;
        } else {
            Heap_FreeToHeap(v0);
        }
    }
}

static void ov19_021D8210(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D81B8 *v0 = param1;

    if (v0->unk_0A) {
        v0->unk_0A--;
    } else {
        if (v0->unk_04 != v0->unk_06) {
            v0->unk_04 += v0->unk_08;
            GX_LoadBGPltt(v0->unk_00->unk_5860[v0->unk_04], v0->unk_0C, 0x20);
            v0->unk_0A = 2;
        } else {
            ov19_021D79B8(v0, ov19_021D826C, v0->unk_00);
            SysTask_Done(param0);
        }
    }
}

static void ov19_021D826C(void *param0)
{
    UnkStruct_ov19_021D8318 *v0 = param0;
    v0->unk_A3 = 0;
}

static int Unk_ov19_021E077C = 0;

static void ov19_021D8274(SysTask *param0, void *param1)
{
    static u32 v0 = 0, v1 = 0, v2 = 0;
    static const UnkStruct_ov19_021D4F5C *v3 = NULL;
    UnkStruct_ov19_021D8318 *v4 = param1;

    switch (Unk_ov19_021E077C) {
    case 0:
        ov19_021D7AF4(v4, 0, &v0, &v1, &v2);
        v3 = ov19_021D5E8C(v4->unk_58F8);
        ov19_021D7BC0(v4, v3, v2, 0);
        Unk_ov19_021E077C++;
        break;
    case 1:
        ov19_021D7D00(v4, v3, v1, v0, v2);
        ov19_021D7C58(v4, v3, v0);
        Unk_ov19_021E077C++;
        break;
    case 2:
        v4->unk_A3 = 0;
        Unk_ov19_021E077C = 0;
        SysTask_Done(param0);
        break;
    }
}

static void ov19_021D8318(UnkStruct_ov19_021D8318 *param0)
{
    param0->unk_A3 = (SysTask_ExecuteAfterVBlank(ov19_021D8274, param0, 0) != NULL);

    if (param0->unk_A3) {
        Unk_ov19_021E077C = 0;
    }
}

void ov19_021D8350(UnkStruct_ov19_021D8318 *param0)
{
    param0->unk_A2 = 0;
    ov19_021D81B8(param0, 0, 8, Unk_ov19_021E0138[param0->unk_02] * 0x20);
}

BOOL ov19_021D8370(UnkStruct_ov19_021D8318 *param0)
{
    switch (param0->unk_A2) {
    case 0:
        if (param0->unk_A3 == 0) {
            param0->unk_A2++;
        }
        break;
    case 1:
        ov19_021D8318(param0);
        param0->unk_A2++;
        break;
    case 2:
        if (param0->unk_A3 == 0) {
            param0->unk_A2++;
        }
        break;
    case 3:
        ov19_021D81B8(param0, 8, 0, Unk_ov19_021E0138[param0->unk_02] * 0x20);
        param0->unk_A2++;
        break;
    case 4:
        if (param0->unk_A3 == 0) {
            return 1;
        }
        break;
    }

    return 0;
}

void ov19_021D8408(UnkStruct_ov19_021D8318 *param0, u32 param1, s32 param2, UnkStruct_ov19_021DCD18 *param3)
{
    ov19_021DA418(&param0->unk_A8[param0->unk_02][param1], param3, 1);
    ov19_021DA754(param0->unk_58F0, param3, param2);
    ov19_021DA3CC(param0->unk_58F0, &param0->unk_A8[param0->unk_02][param1], 1);
}

void ov19_021D845C(UnkStruct_ov19_021D8318 *param0, u32 param1, const UnkStruct_ov19_021DCD18 *param2)
{
    u32 v0;
    UnkStruct_ov19_021DCD18 *v1;

    v0 = 88 + (param0->unk_02 * 480) + ((4 * 4) * param1);
    v1 = &param0->unk_A8[param0->unk_02][param1];
    ov19_021DA418(param2, v1, 1);
    ov19_021DA7F4(param0->unk_58F0, v1, 0);
    ov19_021DA754(param0->unk_58F0, v1, v0);
    ov19_021D78AC(v1->unk_00, ov19_021D85B4(param1));

    ov19_021D89F4(param0, param1);
}

UnkStruct_ov19_021DCD18 *ov19_021D84C8(UnkStruct_ov19_021D8318 *param0, u32 param1)
{
    return &param0->unk_A8[param0->unk_02][param1];
}

void ov19_021D84E0(UnkStruct_ov19_021D8318 *param0)
{
    int v0, v1;
    BoxPokemon *v2;

    v1 = sub_0207999C(param0->unk_58F8->unk_00);

    for (v0 = 0; v0 < (5 * 6); v0++) {
        v2 = sub_02079C9C(param0->unk_58F8->unk_00, v1, v0);

        if (BoxPokemon_GetValue(v2, MON_DATA_SPECIES_EXISTS, NULL)) {
            if (param0->unk_A8[param0->unk_02][v0].unk_00 == NULL) {
                int v3, v4, v5;

                v4 = v0 / 6;
                v3 = v0 % 6;
                v5 = (88 + (param0->unk_02 * 480)) + ((4 * 4) * v0);

                ov19_021DA428(param0->unk_58F0, v2, 112 + param0->unk_585C + 24 * v3, 40 + 24 * v4, 2, ov19_021D85B4(v0), v5, &(param0->unk_A8[param0->unk_02][v0]));
            }
        }
    }
}

static u32 ov19_021D85B4(u32 param0)
{
    static const u16 v0[(5 * 6)] = {
        5,
        4,
        3,
        2,
        1,
        0,
        11,
        10,
        9,
        8,
        7,
        6,
        17,
        16,
        15,
        14,
        13,
        12,
        23,
        22,
        21,
        20,
        19,
        18,
        29,
        28,
        27,
        26,
        25,
        24,
    };

    return 11 + v0[param0];
}

static void ov19_021D85C4(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DA384 *param1, u32 param2, u32 param3, s32 param4, UnkStruct_ov19_021DCD18 *param5)
{
    BoxPokemon *v0;
    u32 v1, v2, v3, v4, v5;
    u64 v6, v7;

    v5 = (88 + (param3 * 480));
    v4 = 0;

    for (v3 = 0; v3 < 5; v3++) {
        for (v2 = 0; v2 < 6; v2++) {
            v0 = sub_02079C9C(param1->unk_40->unk_00, param2, v4);
            v1 = BoxPokemon_GetValue((BoxPokemon *)v0, MON_DATA_SPECIES, NULL);

            if (v1 != 0) {
                ov19_021DA428(param1, v0, 112 + param0->unk_585C + 24 * v2 + param4, 40 + 24 * v3, 2, ov19_021D85B4(v4), v5, param5);
            }

            param5++;
            v4++;
            v5 += (4 * 4);
        }
    }
}

static void ov19_021D865C(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2)
{
    VecFx32 v0;
    int v1, v2;

    for (v2 = 0; v2 < 5; v2++) {
        for (v1 = 0; v1 < 6; v1++) {
            if (param1->unk_00 != NULL) {
                v0 = *(CellActor_GetPosition(param1->unk_00));
                v0.x = param0->unk_68[param2][v1];
                CellActor_SetPosition(param1->unk_00, &v0);
            }

            param1++;
        }
    }
}

static void ov19_021D86B4(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DCD18 *param1, u32 param2)
{
    VecFx32 v0;
    int v1, v2;

    for (v2 = 0; v2 < 5; v2++) {
        for (v1 = 0; v1 < 6; v1++) {
            if (param1->unk_00 != NULL) {
                v0 = *(CellActor_GetPosition(param1->unk_00));
                v0.x = param0->unk_38[param2][v1];
                CellActor_SetPosition(param1->unk_00, &v0);
            }

            param1++;
        }
    }
}

static void ov19_021D870C(UnkStruct_ov19_021D8318 *param0, UnkStruct_ov19_021DCD18 *param1)
{
    VecFx32 v0;
    int v1, v2, v3;

    v0.z = 0;

    for (v2 = 0; v2 < 5; v2++) {
        v0.y = (40 + v2 * 24) * FX32_ONE;

        for (v1 = 0; v1 < 6; v1++) {
            v0.x = (112 + param0->unk_585C + v1 * 24) * FX32_ONE;

            if (param1->unk_00 != NULL) {
                CellActor_SetPosition(param1->unk_00, &v0);
            }

            param1++;
        }
    }
}

static void ov19_021D8764(u16 *param0, const u16 *param1, u32 param2, u32 param3, u32 param4)
{
    u32 v0, v1;
    u16 *v2;
    u16 v3;

    if (param2 >= 32) {
        param0 += 1024;
    }

    for (v0 = 0; v0 < 21; v0++) {
        v2 = param0 + ((32 * 0) + (param2 & 31));

        for (v1 = 0; v1 < 20; v1++) {
            v3 = param1[v1 * 21 + v0];
            v3 = ((GX_SCRFMT_TEXT_CHARNAME_MASK & v3) + param3) | ((GX_SCRFMT_TEXT_HF_MASK | GX_SCRFMT_TEXT_VF_MASK) & v3) | (param4 << GX_SCRFMT_TEXT_COLORPLTT_SHIFT);
            *v2 = v3;
            v2 += 32;
        }

        for (v1 = 0; v1 < 4; v1++) {
            *v2 = (param4 << GX_SCRFMT_TEXT_COLORPLTT_SHIFT) | (param3 + 0);
            v2 += 32;
        }

        param2 = (param2 + 1) & 63;

        if (param2 == 0) {
            param0 -= 1024;
        }

        if (param2 == 32) {
            param0 += 1024;
        }
    }

    for (v0 = 0; v0 < 2; v0++) {
        v2 = param0 + ((32 * 0) + (param2 & 31));

        for (v1 = 0; v1 < (20 + 4); v1++) {
            *v2 = (param4 << GX_SCRFMT_TEXT_COLORPLTT_SHIFT) | (param3 + 0);
            v2 += 32;
        }

        param2 = (param2 + 1) & 63;

        if (param2 == 0) {
            param0 -= 1024;
        }

        if (param2 == 32) {
            param0 += 1024;
        }
    }
}

void ov19_021D8860(UnkStruct_ov19_021D8318 *param0, u32 param1)
{
    param0->unk_A0 = param1;
    param0->unk_A4 = 0;

    ov19_021DA7B8(param0->unk_58F0, &(param0->unk_A8[param0->unk_02][param1]), 1);
}

BOOL ov19_021D8898(UnkStruct_ov19_021D8318 *param0)
{
    UnkStruct_ov19_021DCD18 *v0 = &(param0->unk_A8[param0->unk_02][param0->unk_A0]);

    switch (param0->unk_A4) {
    case 0:
        if (ov19_021DA7E0(param0->unk_58F0, v0)) {
            const UnkStruct_ov19_021D5DF8 *v1 = ov19_021D7964(param0->unk_58FC);

            if (ov19_021D3B18(v1)) {
                if (ov19_021D3B20(v1)) {
                    ov19_021DA3F0(param0->unk_58F0, v0, 1);
                    return 1;
                } else {
                    ov19_021DA7B8(param0->unk_58F0, v0, 2);
                    param0->unk_A4++;
                }
            }
        }

        break;

    case 1:
        if (ov19_021DA7E0(param0->unk_58F0, v0)) {
            return 1;
        }
        break;
    }

    return 0;
}

void ov19_021D8938(UnkStruct_ov19_021D8318 *param0)
{
    u32 v0;
    int v1;

    v0 = ov19_021D5EC8(param0->unk_58F8);

    for (v1 = 0; v1 < (5 * 6); v1++) {
        if (param0->unk_A8[param0->unk_02][v1].unk_00 != NULL) {
            ov19_021DA63C(param0->unk_58F0, &(param0->unk_A8[param0->unk_02][v1]), v0);
        }
    }
}

void ov19_021D8988(UnkStruct_ov19_021D8318 *param0, u32 param1, u32 param2)
{
    if (param0->unk_A8[param0->unk_02][param1].unk_00 != NULL) {
        ov19_021DA690(param0->unk_58F0, &(param0->unk_A8[param0->unk_02][param1]), param2);
        ov19_021DA63C(param0->unk_58F0, &(param0->unk_A8[param0->unk_02][param1]), ov19_021D5EC8(param0->unk_58F8));
        ov19_021DA694(param0->unk_58F0, &(param0->unk_A8[param0->unk_02][param1]), 1);
    }
}

void ov19_021D89F4(UnkStruct_ov19_021D8318 *param0, u32 param1)
{
    if (param0->unk_A8[param0->unk_02][param1].unk_00 != NULL) {
        ov19_021DA694(param0->unk_58F0, &(param0->unk_A8[param0->unk_02][param1]), 1);
    }
}

void ov19_021D8A24(UnkStruct_ov19_021D8318 *param0)
{
    u32 v0, v1;

    v0 = ov19_021D5E24(param0->unk_58F8);
    v1 = ov19_021D5EA0(param0->unk_58F8);

    if (param0->unk_A8[param0->unk_02][v0].unk_00 != NULL) {
        ov19_021DA68C(param0->unk_58F0, &(param0->unk_A8[param0->unk_02][v0]), v1);
    }
}

void ov19_021D8A6C(UnkStruct_ov19_021D8318 *param0)
{
    u32 v0, v1, v2, v3, v4, v5, v6;

    ov19_021D5EE8(param0->unk_58F8, &v0, &v1, &v2, &v3);

    v6 = 0;

    for (v5 = 0; v5 < 5; v5++) {
        for (v4 = 0; v4 < 6; v4++) {
            if (param0->unk_A8[param0->unk_02][v6].unk_00 != NULL) {
                if (((u32)(v4 - v0) <= (u32)(v1 - v0)) & ((u32)(v5 - v2) <= (u32)(v3 - v2))) {
                    ov19_021DA7F4(param0->unk_58F0, &(param0->unk_A8[param0->unk_02][v6]), 1);
                } else {
                    ov19_021DA7F4(param0->unk_58F0, &(param0->unk_A8[param0->unk_02][v6]), 0);
                }
            }

            v6++;
        }
    }
}

void ov19_021D8B14(UnkStruct_ov19_021D8318 *param0)
{
    int v0;

    for (v0 = 0; v0 < (5 * 6); v0++) {
        if (param0->unk_A8[param0->unk_02][v0].unk_00 != NULL) {
            ov19_021DA7F4(param0->unk_58F0, &(param0->unk_A8[param0->unk_02][v0]), 0);
        }
    }
}
