#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202FF58.h"
#include "struct_defs/struct_020300F4.h"
#include "struct_defs/struct_0203068C.h"

#include "unk_020244AC.h"
#include "unk_0202FF4C.h"

void sub_0202FF4C(UnkStruct_0202FF58 * param0);
UnkStruct_0202FF58 * sub_0202FF58(SaveData * param0);
void sub_020300A4(UnkStruct_020300F4 * param0);
void sub_020300B0(UnkStruct_020300F4 * param0, u8 param1, u8 param2, const void * param3);
u32 sub_020300E0(UnkStruct_020300F4 * param0, u8 param1, u8 param2, void * param3);
UnkStruct_020300F4 * sub_020300F4(SaveData * param0);
BOOL sub_0202FF68(UnkStruct_0202FF58 * param0);
void sub_0202FF70(UnkStruct_0202FF58 * param0, BOOL param1);
void sub_0202FF84(UnkStruct_0202FF58 * param0, u8 param1, u8 param2, const void * param3);
u32 sub_02030030(UnkStruct_0202FF58 * param0, u8 param1, u8 param2, void * param3);

void sub_0202FF4C (UnkStruct_0202FF58 * param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_0202FF58));
    return;
}

UnkStruct_0202FF58 * sub_0202FF58 (SaveData * param0)
{
    UnkStruct_0203068C * v0 = SaveData_SaveTable(param0, 23);
    return &v0->unk_8E0_val2;
}

BOOL sub_0202FF68 (UnkStruct_0202FF58 * param0)
{
    return param0->unk_00_4;
}

void sub_0202FF70 (UnkStruct_0202FF58 * param0, BOOL param1)
{
    param0->unk_00_4 = param1;
    return;
}

void sub_0202FF84 (UnkStruct_0202FF58 * param0, u8 param1, u8 param2, const void * param3)
{
    u32 * v0 = (u32 *)param3;
    u16 * v1 = (u16 *)param3;
    u8 * v2 = (u8 *)param3;

    switch (param1) {
    case 0:
        param0->unk_00_0 = v2[0];
        break;
    case 1:
        param0->unk_00_1 = v2[0];
        break;
    case 2:
        param0->unk_01 = v2[0];
        break;
    case 3:
        param0->unk_04[param2] = v1[0];
        break;
    case 4:
        param0->unk_20[param2] = v1[0];
        break;
    case 5:
        param0->unk_28[param2] = v2[0];
        break;
    case 6:
        param0->unk_2C[param2] = v0[0];
        break;
    case 7:
        param0->unk_3C[param2] = v1[0];
        break;
    case 8:
        param0->unk_44[param2] = v2[0];
        break;
    case 9:
        param0->unk_48[param2] = v0[0];
        break;
    }

    return;
}

u32 sub_02030030 (UnkStruct_0202FF58 * param0, u8 param1, u8 param2, void * param3)
{
    switch (param1) {
    case 1:
        return (u32)param0->unk_00_1;
    case 0:
        return (u32)param0->unk_00_0;
    case 2:
        return (u32)param0->unk_01;
    case 3:
        return (u32)param0->unk_04[param2];
    case 4:
        return (u32)param0->unk_20[param2];
    case 5:
        return (u32)param0->unk_28[param2];
    case 6:
        return (u32)param0->unk_2C[param2];
    case 7:
        return (u32)param0->unk_3C[param2];
    case 8:
        return (u32)param0->unk_44[param2];
    case 9:
        return (u32)param0->unk_48[param2];
    }

    return 0;
}

void sub_020300A4 (UnkStruct_020300F4 * param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_020300F4));
    return;
}

void sub_020300B0 (UnkStruct_020300F4 * param0, u8 param1, u8 param2, const void * param3)
{
    u32 * v0 = (u32 *)param3;
    u16 * v1 = (u16 *)param3;
    u8 * v2 = (u8 *)param3;

    switch (param1) {
    case 10:
        if (v2[0] >= 1) {
            param0->unk_00 |= (1 << param2);
        } else {
            param0->unk_00 &= (0xff ^ (1 << param2));
        }
        break;
    }

    return;
}

u32 sub_020300E0 (UnkStruct_020300F4 * param0, u8 param1, u8 param2, void * param3)
{
    switch (param1) {
    case 10:
        return (u32)((param0->unk_00 >> param2) & 0x1);
    }

    return 0;
}

UnkStruct_020300F4 * sub_020300F4 (SaveData * param0)
{
    UnkStruct_0203068C * v0 = SaveData_SaveTable(param0, 23);
    return &v0->unk_1614.unk_00;
}
