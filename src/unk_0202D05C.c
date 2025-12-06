#include "unk_0202D05C.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_tower.h"

#include "struct_defs/battle_frontier.h"
#include "struct_defs/sentence.h"
#include "struct_defs/struct_0202D060.h"
#include "struct_defs/struct_0202D080.h"
#include "struct_defs/struct_0202D314.h"
#include "struct_defs/struct_0202D63C.h"
#include "struct_defs/struct_0202D750.h"
#include "struct_defs/struct_0202D764.h"
#include "struct_defs/struct_02049A68.h"
#include "struct_defs/struct_0204B404.h"

#include "overlay090/struct_ov90_021D1750.h"
#include "overlay096/struct_ov96_0223B450_sub1.h"
#include "overlay096/struct_ov96_0223B450_sub2.h"

#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "savedata.h"
#include "unk_02014A84.h"

int sub_0202D05C(void)
{
    return sizeof(UnkStruct_ov96_0223B450_sub1);
}

void sub_0202D060(UnkStruct_0202D060 *param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_0202D060));
}

void sub_0202D06C(UnkStruct_0202D750 *param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_0202D750));
    param0->unk_03 = 1;
}

void sub_0202D080(UnkStruct_0202D080 *param0)
{
    sub_02014AC4(&param0->unk_00[0], 0);
    sub_02014AC4(&param0->unk_00[1], 1);
    sub_02014AC4(&param0->unk_00[2], 2);
    sub_02014AC4(&param0->unk_00[3], 3);
}

void sub_0202D0AC(UnkStruct_0202D764 *param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_0202D764));
}

u32 sub_0202D0BC(UnkStruct_0202D060 *param0, int param1, void *param2)
{
    switch (param1) {
    case 0:
        return (u32)param0->unk_00_2;
    case 1:
        return (u32)param0->unk_02;
    case 2:
        return (u32)param0->unk_03;
    case 3:
        return param0->unk_04;
    case 4:
        return param0->unk_06;
    case 5:
        MI_CpuCopy8(param0->unk_08, param2, 4);
        return 0;
    case 6:
        MI_CpuCopy8(&param0->unk_2C, param2, sizeof(UnkStruct_0204B404));
        return 0;
    case 7:
        return param0->unk_00_0;
    case 8:
        MI_CpuCopy8(param0->unk_0C, param2, BT_OPPONENTS_COUNT * 2 * sizeof(u16));
        return 0;
    case 9:
        return param0->unk_00_5;
    case 10:
        return param0->unk_28;
    }

    return 0;
}

void sub_0202D140(UnkStruct_0202D060 *param0, int param1, const void *param2)
{
    u32 *v0 = (u32 *)param2;
    u16 *v1 = (u16 *)param2;
    u8 *v2 = (u8 *)param2;

    switch (param1) {
    case 0:
        param0->unk_00_2 = v2[0];
        break;
    case 1:
        param0->unk_02 = v2[0];
        break;
    case 2:
        param0->unk_03 = v2[0];
        break;
    case 3:
        param0->unk_04 = v1[0];
        break;
    case 4:
        param0->unk_06 = v1[0];
        break;
    case 5:
        MI_CpuCopy8(v2, param0->unk_08, 4);
        break;
    case 6:
        MI_CpuCopy8(v1, &param0->unk_2C, sizeof(UnkStruct_0204B404));
        break;
    case 7:
        param0->unk_00_0 = v2[0];
        break;
    case 8:
        MI_CpuCopy8(v1, param0->unk_0C, 2 * 14);
        break;
    case 10:
        param0->unk_28 = v0[0];
        break;
    case 9:
        param0->unk_00_5 = v2[0];
        break;
    }
}

void sub_0202D1E8(UnkStruct_0202D060 *param0, u8 param1, u16 param2, u16 param3)
{
    if (param0->unk_03 + param1 < 255) {
        param0->unk_03 += param1;
    }

    if (param0->unk_04 + param2 < 65535) {
        param0->unk_04 += param2;
    }

    if (param0->unk_06 + param3 < 65535) {
        param0->unk_06 += param3;
    }
}

BOOL sub_0202D214(UnkStruct_0202D060 *param0)
{
    return param0->unk_00_1;
}

void sub_0202D21C(UnkStruct_0202D060 *param0, BOOL param1)
{
    param0->unk_00_1 = param1;
}

u16 sub_0202D230(UnkStruct_0202D750 *param0, u16 param1, int param2)
{
    switch (param2) {
    case 1:
        if (param1 > 9999) {
            param0->unk_00 = 9999;
        } else {
            param0->unk_00 = param1;
        }
        break;
    case 5:
        if (param0->unk_00 + param1 > 9999) {
            param0->unk_00 = 9999;
        } else {
            param0->unk_00 += param1;
        }
        break;
    case 6:
        if (param0->unk_00 < param1) {
            param0->unk_00 = 0;
        } else {
            param0->unk_00 -= param1;
        }
    case 0:
    default:
        break;
    }

    return param0->unk_00;
}

u8 sub_0202D288(UnkStruct_0202D750 *param0, int param1)
{
    switch (param1) {
    case 2:
        param0->unk_02 = 0;
        param0->unk_08_val1_unk_00_4 = 0;
        break;
    case 3:
        if (param0->unk_08_val1_unk_00_4) {
            param0->unk_02 += 1;
        } else {
            param0->unk_02 = 1;
            param0->unk_08_val1_unk_00_4 = 1;
        }
        break;
    }

    return param0->unk_02;
}

u8 sub_0202D2C0(UnkStruct_0202D750 *param0, int param1)
{
    switch (param1) {
    case 2:
        param0->unk_03 = 1;
        break;
    case 3:
        if (param0->unk_03 < 10) {
            param0->unk_03 += 1;
        }
        break;
    case 4:
        if (param0->unk_03 > 1) {
            param0->unk_03 -= 1;
        }
        break;
    }

    return param0->unk_03;
}

void sub_0202D2F0(UnkStruct_0202D750 *param0, int param1, FrontierPokemonDataDTO *param2)
{
    if (param1 == 0) {
        MI_CpuCopy8(param2, param0->unk_C0, sizeof(FrontierPokemonDataDTO) * 3);
    } else {
        MI_CpuCopy8(param2, param0->unk_18, sizeof(FrontierPokemonDataDTO) * 3);
    }
}

void sub_0202D314(UnkStruct_0202D750 *param0, int param1, UnkStruct_0202D314 *param2)
{
    if (param1 == 0) {
        MI_CpuCopy8(param0->unk_C0, param2, sizeof(FrontierPokemonDataDTO) * 3);
    } else {
        MI_CpuCopy8(param0->unk_18, param2, sizeof(FrontierPokemonDataDTO) * 3);
    }
}

u16 sub_0202D334(UnkStruct_0202D750 *param0, UnkStruct_0202D060 *param1)
{
    u16 v0, v1, v2, v3, v4;
    u16 v5 = 0;

    v0 = (param1->unk_02 - 1) * 1000;
    v1 = param1->unk_04 * 10;
    v2 = param1->unk_03 * 20;

    if (v1 + v2 > 950) {
        v4 = 0;
    } else {
        v4 = 950 - (v1 + v2);
    }

    if (param1->unk_06 > (1000 - 30)) {
        v3 = 0;
    } else {
        v3 = (1000 - param1->unk_06) / 30;
    }

    v5 = v0 + v4 + v3;
    param0->unk_16 = v5;

    return v5;
}

u16 sub_0202D39C(UnkStruct_0202D750 *param0)
{
    return param0->unk_16;
}

u8 sub_0202D3A0(UnkStruct_0202D750 *param0)
{
    u8 v0 = 0;

    v0 = (param0->unk_16) / 1000;
    return v0;
}

u16 sub_0202D3B4(UnkStruct_0202D750 *param0, u16 param1, int param2)
{
    u16 v0;

    if (param1 == 5) {
        return 0;
    }

    if (param1 == 6) {
        v0 = 5;
    } else {
        v0 = param1;
    }

    switch (param2) {
    case 2:
        param0->unk_0A[v0] = 0;
        break;
    case 3:
        if (param0->unk_0A[v0] < 65534) {
            param0->unk_0A[v0] += 1;
        }
        break;
    }

    return param0->unk_0A[v0];
}

u16 sub_0202D3FC(UnkStruct_0202D750 *param0, u16 param1, u16 param2)
{
    u16 v0;

    if (param1 == 5) {
        return 0;
    }

    if (param1 == 6) {
        v0 = 5;
    } else {
        v0 = param1;
    }

    param0->unk_0A[v0] = param2;
    return param0->unk_0A[v0];
}

BOOL sub_0202D414(UnkStruct_0202D750 *param0, u16 param1, int param2)
{
    u16 v0;
    u16 v1 = 1;

    if (param1 >= 16) {
        GF_ASSERT(FALSE);
        return 0;
    }

    for (v0 = 0; v0 < param1; v0++) {
        v1 <<= 1;
    }

    switch (param2) {
    case 2:
        v1 = (v1 ^ 0xFFFF);
        param0->unk_08_val2 &= v1;
        break;
    case 1:
        param0->unk_08_val2 |= v1;
        break;
    case 0:
        return (BOOL)((param0->unk_08_val2 >> param1) & 0x1);
    }

    return 0;
}

void sub_0202D470(UnkStruct_0202D750 *param0, u32 param1)
{
    param0->unk_04 = param1;
}

u32 sub_0202D474(UnkStruct_0202D750 *param0)
{
    return param0->unk_04;
}

void sub_0202D478(SaveData *saveData, int param1, Sentence *param2)
{
    BattleFrontier *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    sub_02014CC0(&(frontier->unk_950.unk_168.unk_00[param1]), param2);
}

Sentence *sub_0202D498(SaveData *saveData, int param1)
{
    BattleFrontier *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);

    return &(frontier->unk_950.unk_168.unk_00[param1]);
}

void sub_0202D4B0(UnkStruct_0202D764 *param0, u8 param1, u8 param2, RTCDate *param3)
{
    u8 v0, v1;
    u8 v2 = 1;
    u16 v3;

    if ((param2 == 0) || (param2 > 200)) {
        return;
    }

    if ((param1 == 0) || (param1 > 10)) {
        return;
    }

    v3 = (param1 - 1) * 200 + (param2 - 1);
    v0 = v3 / 8;
    v1 = v3 % 8;

    v2 <<= v1;

    param0->unk_04[v0] |= v2;
    param0->unk_00 = Date_Encode(param3);
}

void sub_0202D514(UnkStruct_0202D764 *param0)
{
    MI_CpuClear8(param0->unk_04, 250);
    MI_CpuClear8(&param0->unk_00, sizeof(u32));
}

static BOOL sub_0202D530(RTCDate *param0, RTCDate *param1)
{
    if (param0->year > param1->year) {
        return 1;
    }

    if (param0->month > param1->month) {
        return 1;
    }

    if (param0->day > param1->day) {
        return 1;
    }

    return 0;
}

BOOL sub_0202D558(UnkStruct_0202D764 *param0, u8 param1, u8 param2, RTCDate *param3)
{
    u8 v0, v1;
    u8 v2 = 1;
    u16 v3;
    RTCDate v4;

    if ((param2 > 200) || (param1 > 10)) {
        return 0;
    }

    Date_Decode(param0->unk_00, &v4);

    if (sub_0202D530(param3, &v4)) {
        sub_0202D514(param0);
        return 0;
    }

    v3 = (param1 - 1) * 200 + (param2 - 1);
    v0 = v3 / 8;
    v1 = v3 % 8;

    v2 <<= v1;

    if (param0->unk_04[v0] & v2) {
        return 1;
    }

    return 0;
}

BOOL sub_0202D5E8(UnkStruct_0202D764 *param0)
{
    return (BOOL)param0->unk_FE;
}

BOOL sub_0202D5F0(UnkStruct_0202D764 *param0)
{
    return (BOOL)param0->unk_FF;
}

void sub_0202D5F8(UnkStruct_0202D764 *param0, UnkStruct_ov96_0223B450_sub1 *param1, u8 param2, u8 param3)
{
    MI_CpuCopy8(param1, param0->unk_104, sizeof(UnkStruct_0202D63C) * 7);

    param0->unk_101 = param2;
    param0->unk_100 = param3;
    param0->unk_FE = 1;
}

void sub_0202D628(UnkStruct_0202D764 *param0, UnkStruct_02049A68 *param1)
{
    param1->unk_00 = param0->unk_101;
    param1->unk_04 = param0->unk_100;
}

void sub_0202D63C(UnkStruct_0202D764 *param0, FrontierDataDTO *param1, const u8 param2)
{
    FrontierTrainerDataDTO *v0 = &(param1->trDataDTO);
    FrontierPokemonDataDTO *v1 = param1->monDataDTO;
    UnkStruct_0202D63C *v2 = &(param0->unk_104[param2]);

    v0->trainerID = 10000;
    v0->trainerType = v2->unk_C9;

    if (v2->unk_C8_val1_unk_00_0) {
        MessageLoader *v3 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0022, HEAP_ID_FIELD2);

        MessageLoader_Get(v3, 22 + v2->unk_C8_val1_unk_00_1, v0->trainerName);
        MessageLoader_Free(v3);
    } else {
        MI_CpuCopy8(v2->unk_A8, v0->trainerName, 16);
    }

    MI_CpuCopy8(v2->unk_CA, v0->unk_18, 8);
    MI_CpuCopy8(v2->unk_D2, v0->unk_20, 8);
    MI_CpuCopy8(v2->unk_DA, v0->unk_28, 8);
    MI_CpuCopy8(v2->unk_00, v1, sizeof(FrontierPokemonDataDTO) * 3);
}

void sub_0202D6DC(UnkStruct_0202D764 *param0, UnkStruct_ov96_0223B450_sub2 *param1, u8 param2, u8 param3)
{
    MI_CpuCopy8(param1, &param0->unk_740, sizeof(UnkStruct_ov90_021D1750) * 30);

    param0->unk_103 = param2;
    param0->unk_102 = param3;
    param0->unk_FF = 1;
}

void sub_0202D708(UnkStruct_0202D764 *param0, UnkStruct_02049A68 *param1)
{
    param1->unk_00 = param0->unk_103;
    param1->unk_04 = param0->unk_102;
}

UnkStruct_ov90_021D1750 *sub_0202D71C(UnkStruct_0202D764 *param0, int heapID)
{
    UnkStruct_ov90_021D1750 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov90_021D1750) * 30);
    MI_CpuCopy8(param0->unk_740, v0, sizeof(UnkStruct_ov90_021D1750) * 30);

    return v0;
}

UnkStruct_0202D060 *sub_0202D740(SaveData *saveData)
{
    BattleFrontier *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->unk_8E0_val1;
}

UnkStruct_0202D750 *sub_0202D750(SaveData *saveData)
{
    BattleFrontier *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->unk_950.unk_00;
}

UnkStruct_0202D764 *sub_0202D764(SaveData *saveData)
{
    BattleFrontier *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->unk_950.unk_188;
}
