#include "unk_02030494.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020304A0.h"
#include "struct_defs/struct_020305B8.h"
#include "struct_defs/struct_0203068C.h"

#include "savedata.h"

void sub_02030494(UnkStruct_020304A0 *param0);
BOOL sub_020304B0(UnkStruct_020304A0 *param0);
void sub_020304B8(UnkStruct_020304A0 *param0, BOOL param1);
void sub_020304CC(UnkStruct_020304A0 *param0, u8 param1, u8 param2, u8 param3, const void *param4);
u32 sub_0203054C(UnkStruct_020304A0 *param0, u8 param1, u8 param2, u8 param3, void *param4);
void sub_020305AC(UnkStruct_020305B8 *param0);
void sub_020305CC(UnkStruct_020305B8 *param0, u8 param1, u8 param2, u8 param3, const void *param4);
u32 sub_02030600(UnkStruct_020305B8 *param0, u8 param1, u8 param2, u8 param3, void *param4);

void sub_02030494(UnkStruct_020304A0 *param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_020304A0));
    return;
}

UnkStruct_020304A0 *sub_020304A0(SaveData *saveData)
{
    BattleFrontier *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &v0->unk_8E0_val5;
}

BOOL sub_020304B0(UnkStruct_020304A0 *param0)
{
    return param0->unk_00_3;
}

void sub_020304B8(UnkStruct_020304A0 *param0, BOOL param1)
{
    param0->unk_00_3 = param1;
    return;
}

void sub_020304CC(UnkStruct_020304A0 *param0, u8 param1, u8 param2, u8 param3, const void *param4)
{
    u32 *v0 = (u32 *)param4;
    u16 *v1 = (u16 *)param4;
    u8 *v2 = (u8 *)param4;

    switch (param1) {
    case 0:
        param0->unk_00_0 = v2[0];
        break;
    case 1:
        param0->unk_00_4 = v2[0];
        break;
    case 2:
        param0->unk_01 = v2[0];
        break;
    case 3:
        param0->unk_02 = v2[0];
        break;
    case 4:
        param0->unk_06[param2] = v1[0];
        break;
    case 5:
        param0->unk_0E[param2] = v1[0];
        break;
    case 6:
        param0->unk_03[param2] = v2[0];
        break;
    case 7:
        param0->unk_2A[param2] = v1[0];
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return;
}

u32 sub_0203054C(UnkStruct_020304A0 *param0, u8 param1, u8 param2, u8 param3, void *param4)
{
    switch (param1) {
    case 0:
        return (u32)param0->unk_00_0;
    case 1:
        return (u32)param0->unk_00_4;
    case 2:
        return (u32)param0->unk_01;
    case 3:
        return (u32)param0->unk_02;
    case 4:
        return (u32)param0->unk_06[param2];
    case 5:
        return (u32)param0->unk_0E[param2];
    case 6:
        return param0->unk_03[param2];
    case 7:
        return param0->unk_2A[param2];
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

void sub_020305AC(UnkStruct_020305B8 *param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_020305B8));
    return;
}

UnkStruct_020305B8 *sub_020305B8(SaveData *saveData)
{
    BattleFrontier *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &v0->unk_1620.unk_00;
}

void sub_020305CC(UnkStruct_020305B8 *param0, u8 param1, u8 param2, u8 param3, const void *param4)
{
    u32 *v0 = (u32 *)param4;
    u16 *v1 = (u16 *)param4;
    u8 *v2 = (u8 *)param4;

    switch (param1) {
    case 8:
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

u32 sub_02030600(UnkStruct_020305B8 *param0, u8 param1, u8 param2, u8 param3, void *param4)
{
    switch (param1) {
    case 8:
        return (u32)((param0->unk_00 >> param2) & 0x1);
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}
