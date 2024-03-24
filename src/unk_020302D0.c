#include <nitro.h>
#include <string.h>

#include "savedata.h"

#include "struct_defs/struct_020302DC.h"
#include "struct_defs/struct_0203041C.h"
#include "struct_defs/struct_0203068C.h"

#include "savedata.h"
#include "unk_020302D0.h"

void sub_020302D0(UnkStruct_020302DC * param0);
UnkStruct_020302DC * sub_020302DC(SaveData * param0);
BOOL sub_020302EC(UnkStruct_020302DC * param0);
void sub_020302F4(UnkStruct_020302DC * param0, BOOL param1);
void sub_02030308(UnkStruct_020302DC * param0, u8 param1, u8 param2, u8 param3, const void * param4);
u32 sub_02030398(UnkStruct_020302DC * param0, u8 param1, u8 param2, u8 param3, void * param4);
void sub_02030410(UnkStruct_0203041C * param0);
UnkStruct_0203041C * sub_0203041C(SaveData * param0);
void sub_02030430(UnkStruct_0203041C * param0, u8 param1, u8 param2, u8 param3, const void * param4);
u32 sub_02030470(UnkStruct_0203041C * param0, u8 param1, u8 param2, u8 param3, void * param4);

void sub_020302D0 (UnkStruct_020302DC * param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_020302DC));
    return;
}

UnkStruct_020302DC * sub_020302DC (SaveData * param0)
{
    UnkStruct_0203068C * v0 = SaveData_SaveTable(param0, 23);
    return &v0->unk_8E0_val4;
}

BOOL sub_020302EC (UnkStruct_020302DC * param0)
{
    return param0->unk_00_3;
}

void sub_020302F4 (UnkStruct_020302DC * param0, BOOL param1)
{
    param0->unk_00_3 = param1;
    return;
}

void sub_02030308 (UnkStruct_020302DC * param0, u8 param1, u8 param2, u8 param3, const void * param4)
{
    u32 * v0 = (u32 *)param4;
    u16 * v1 = (u16 *)param4;
    u8 * v2 = (u8 *)param4;

    switch (param1) {
    case 0:
        param0->unk_00_0 = v2[0];
        break;
    case 1:
        param0->unk_01 = v2[0];
        break;
    case 2:
        param0->unk_22[param2] = v1[0];
        break;
    case 3:
        param0->unk_2A[param2][param3] = v2[0];
        break;
    case 4:
        param0->unk_3C[param2] = v0[0];
        break;
    case 5:
        param0->unk_4C[param2] = v1[0];
        break;
    case 6:
        param0->unk_06[param2] = v1[0];
        break;
    case 7:
        param0->unk_03[param2] = v2[0];
        break;
    case 8:
        param0->unk_54[param2] = v1[0];
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return;
}

u32 sub_02030398 (UnkStruct_020302DC * param0, u8 param1, u8 param2, u8 param3, void * param4)
{
    switch (param1) {
    case 0:
        return (u32)param0->unk_00_0;
    case 1:
        return (u32)param0->unk_01;
    case 2:
        return (u32)param0->unk_22[param2];
    case 3:
        return (u32)param0->unk_2A[param2][param3];
    case 4:
        return (u32)param0->unk_3C[param2];
    case 5:
        return (u32)param0->unk_4C[param2];
    case 6:
        return (u32)param0->unk_06[param2];
    case 7:
        return param0->unk_03[param2];
    case 8:
        return param0->unk_54[param2];
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

void sub_02030410 (UnkStruct_0203041C * param0)
{
    int v0, v1;

    MI_CpuClear8(param0, sizeof(UnkStruct_0203041C));

    return;
}

UnkStruct_0203041C * sub_0203041C (SaveData * param0)
{
    UnkStruct_0203068C * v0 = SaveData_SaveTable(param0, 23);
    return &v0->unk_161C.unk_00;
}

void sub_02030430 (UnkStruct_0203041C * param0, u8 param1, u8 param2, u8 param3, const void * param4)
{
    u32 * v0 = (u32 *)param4;
    u16 * v1 = (u16 *)param4;
    u8 * v2 = (u8 *)param4;

    switch (param1) {
    case 9:
        if (v2[0] >= 1) {
            param0->unk_00 |= (1 << param2);
        } else {
            param0->unk_00 &= (0xff ^ (1 << param2));
        }
        break;
    case 10:
        param0->unk_01 = 1;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return;
}

u32 sub_02030470 (UnkStruct_0203041C * param0, u8 param1, u8 param2, u8 param3, void * param4)
{
    switch (param1) {
    case 9:
        return (u32)((param0->unk_00 >> param2) & 0x1);
    case 10:
        return (u32)param0->unk_01;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}
