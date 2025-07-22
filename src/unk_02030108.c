#include "unk_02030108.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/battle_frontier.h"
#include "struct_defs/struct_02030114.h"
#include "struct_defs/struct_0203026C.h"

#include "savedata.h"

void sub_02030108(UnkStruct_02030114 *param0);
BOOL sub_02030124(UnkStruct_02030114 *param0);
void sub_0203012C(UnkStruct_02030114 *param0, BOOL param1);
void sub_02030140(UnkStruct_02030114 *param0, u8 param1, u8 param2, u8 param3, const void *param4);
u32 sub_02030198(UnkStruct_02030114 *param0, u8 param1, u8 param2, u8 param3, void *param4);
u8 sub_020301E0(u8 param0, u8 *param1);
void sub_02030204(u8 param0, u8 *param1, u8 param2);
void sub_02030244(u8 *param0);
void sub_02030260(UnkStruct_0203026C *param0);
void sub_02030280(UnkStruct_0203026C *param0, u8 param1, u8 param2, u8 param3, const void *param4);
u32 sub_020302B4(UnkStruct_0203026C *param0, u8 param1, u8 param2, u8 param3, void *param4);

void sub_02030108(UnkStruct_02030114 *param0) {
    MI_CpuClear8(param0, sizeof(UnkStruct_02030114));
    return;
}

UnkStruct_02030114 *sub_02030114(SaveData *saveData) {
    BattleFrontier *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->unk_8E0_val3;
}

BOOL sub_02030124(UnkStruct_02030114 *param0) {
    return param0->unk_00_3;
}

void sub_0203012C(UnkStruct_02030114 *param0, BOOL param1) {
    param0->unk_00_3 = param1;
    return;
}

void sub_02030140(UnkStruct_02030114 *param0, u8 param1, u8 param2, u8 param3, const void *param4) {
    u32 *v0 = (u32 *)param4;
    u16 *v1 = (u16 *)param4;
    u8 *v2 = (u8 *)param4;

    switch (param1) {
    case 0:
        param0->unk_00_0 = v2[0];
        break;
    case 1:
        param0->unk_01 = v2[0];
        break;
    case 2:
        param0->unk_04[param2] = v1[0];
        break;
    case 3:
        param0->unk_02[param2] = v2[0];
        break;
    case 4:
        param0->unk_2C[param2] = v1[0];
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return;
}

u32 sub_02030198(UnkStruct_02030114 *param0, u8 param1, u8 param2, u8 param3, void *param4) {
    switch (param1) {
    case 0:
        return (u32)param0->unk_00_0;
    case 1:
        return (u32)param0->unk_01;
    case 2:
        return (u32)param0->unk_04[param2];
    case 3:
        return param0->unk_02[param2];
    case 4:
        return param0->unk_2C[param2];
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

u8 sub_020301E0(u8 param0, u8 *param1) {
    u8 v0;
    u8 v1;
    u8 v2;

    v0 = (param0 / 2);
    v1 = (param0 % 2);
    v2 = (param1[v0] >> (4 * v1)) & 0xf;

    return v2;
}

void sub_02030204(u8 param0, u8 *param1, u8 param2) {
    u8 v0;
    u8 v1;
    u8 v2;

    v0 = (param0 / 2);
    v1 = (param0 % 2);

    if (v1 == 0) {
        param1[v0] = param1[v0] & 0xf0;
    } else {
        param1[v0] = param1[v0] & 0xf;
    }

    v2 = (param2 << (4 * v1));
    param1[v0] |= v2;

    return;
}

void sub_02030244(u8 *param0) {
    int v0;

    for (v0 = 0; v0 < 18; v0++) {
        sub_02030204(v0, param0, 0);
    }

    return;
}

void sub_02030260(UnkStruct_0203026C *param0) {
    MI_CpuClear8(param0, sizeof(UnkStruct_0203026C));
    return;
}

UnkStruct_0203026C *sub_0203026C(SaveData *saveData) {
    BattleFrontier *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->unk_1618.unk_00;
}

void sub_02030280(UnkStruct_0203026C *param0, u8 param1, u8 param2, u8 param3, const void *param4) {
    u32 *v0 = (u32 *)param4;
    u16 *v1 = (u16 *)param4;
    u8 *v2 = (u8 *)param4;

    switch (param1) {
    case 5:
        if (v2[0] >= 1) {
            param0->unk_00 |= (1 << param2);
        } else {
            param0->unk_00 &= (0xff ^ (1 << param2));
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return;
}

u32 sub_020302B4(UnkStruct_0203026C *param0, u8 param1, u8 param2, u8 param3, void *param4) {
    switch (param1) {
    case 5:
        return (u32)((param0->unk_00 >> param2) & 0x1);
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}
