#include <nitro.h>
#include <string.h>

#include "savedata.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_0205EC34.h"
#include "struct_defs/struct_02061D3C.h"

#include "savedata.h"
#include "unk_0203A6DC.h"
#include "unk_0203A7D8.h"
#include "unk_020556C4.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"

typedef struct UnkStruct_0203A790_t {
    UnkStruct_02049FA8 unk_00;
    UnkStruct_02049FA8 unk_14;
    UnkStruct_02049FA8 unk_28;
    UnkStruct_02049FA8 unk_3C;
    UnkStruct_02049FA8 unk_50;
    u16 unk_64;
    u16 unk_66;
    u16 unk_68;
    u8 unk_6A;
    UnkStruct_020556C4 unk_6C;
    UnkStruct_0205EC34 unk_8C;
    u16 unk_94;
    u16 unk_96;
    u16 unk_98;
    u16 unk_9A;
    u16 unk_9C;
} UnkStruct_0203A790;

typedef struct UnkStruct_0203A79C_t {
    UnkStruct_02061D3C unk_00[64];
} UnkStruct_0203A79C;

int FieldPlayerState_SaveSize (void)
{
    return sizeof(UnkStruct_0203A790);
}

int FieldOWState_SaveSize (void)
{
    return sizeof(UnkStruct_0203A79C);
}

void FieldOWState_Init (UnkStruct_0203A79C * param0)
{
    MI_CpuClear32(param0, sizeof(UnkStruct_0203A79C));
}

void FieldPlayerState_Init (UnkStruct_0203A790 * param0)
{
    memset(param0, 0, sizeof(UnkStruct_0203A790));

    sub_020556C4(&param0->unk_6C);
    sub_0205EC34(&param0->unk_8C);

    param0->unk_68 = sub_0203A7EC();
}

UnkStruct_02049FA8 * sub_0203A720 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_00;
}

UnkStruct_02049FA8 * sub_0203A724 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_14;
}

UnkStruct_02049FA8 * sub_0203A728 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_28;
}

UnkStruct_02049FA8 * sub_0203A72C (UnkStruct_0203A790 * param0)
{
    return &param0->unk_50;
}

UnkStruct_02049FA8 * sub_0203A730 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_3C;
}

void sub_0203A734 (UnkStruct_0203A790 * param0, UnkStruct_02049FA8 * param1)
{
    param0->unk_3C = *param1;
    return;
}

u16 * sub_0203A748 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_64;
}

u16 sub_0203A74C (const UnkStruct_0203A790 * param0)
{
    return param0->unk_66;
}

void sub_0203A754 (UnkStruct_0203A790 * param0, u16 param1)
{
    param0->unk_66 = param1;
}

u16 sub_0203A75C (const UnkStruct_0203A790 * param0)
{
    return param0->unk_68;
}

void sub_0203A764 (UnkStruct_0203A790 * param0, u16 param1)
{
    param0->unk_68 = param1;
}

UnkStruct_020556C4 * sub_0203A76C (UnkStruct_0203A790 * param0)
{
    return &param0->unk_6C;
}

int sub_0203A770 (const UnkStruct_0203A790 * param0)
{
    return param0->unk_6A;
}

void sub_0203A778 (UnkStruct_0203A790 * param0, int param1)
{
    param0->unk_6A = param1;
}

UnkStruct_0205EC34 * sub_0203A780 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_8C;
}

u16 * sub_0203A784 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_98;
}

u16 * sub_0203A788 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_96;
}

u16 * sub_0203A78C (UnkStruct_0203A790 * param0)
{
    return &param0->unk_94;
}

UnkStruct_0203A790 * sub_0203A790 (SaveData * param0)
{
    UnkStruct_0203A790 * v0;

    v0 = SaveData_SaveTable(param0, 6);
    return v0;
}

UnkStruct_0203A79C * sub_0203A79C (SaveData * param0)
{
    UnkStruct_0203A79C * v0;

    v0 = SaveData_SaveTable(param0, 11);
    return v0;
}

void sub_0203A7A8 (FieldSystem * param0)
{
    UnkStruct_02061D3C * v0;

    v0 = ((UnkStruct_0203A79C *)sub_0203A79C(param0->unk_0C))->unk_00;
    sub_02061CA8(param0, param0->unk_38, v0, 64);
}

void sub_0203A7C0 (FieldSystem * param0)
{
    UnkStruct_02061D3C * v0;

    v0 = ((UnkStruct_0203A79C *)sub_0203A79C(param0->unk_0C))->unk_00;
    sub_02061D04(param0->unk_38, v0, 64);
}
