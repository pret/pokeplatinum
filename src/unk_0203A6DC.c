#include <nitro.h>
#include <string.h>

#include "savedata.h"

#include "field/field_system.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_0205EC34.h"
#include "struct_defs/struct_02061D3C.h"

#include "savedata.h"
#include "unk_0203A6DC.h"
#include "unk_0203A7D8.h"
#include "unk_020556C4.h"
#include "player_avatar.h"
#include "map_object.h"

typedef struct UnkStruct_0203A790_t {
    Location unk_00;
    Location unk_14;
    Location unk_28;
    Location unk_3C;
    Location unk_50;
    u16 unk_64;
    u16 unk_66;
    u16 unk_68;
    u8 unk_6A;
    UnkStruct_020556C4 unk_6C;
    PlayerData unk_8C;
    u16 unk_94;
    u16 unk_96;
    u16 unk_98;
    u16 unk_9A;
    u16 unk_9C;
} UnkStruct_0203A790;

typedef struct UnkStruct_0203A79C_t {
    MapObjectSave unk_00[64];
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
    PlayerData_Init(&param0->unk_8C);

    param0->unk_68 = sub_0203A7EC();
}

Location * sub_0203A720 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_00;
}

Location * sub_0203A724 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_14;
}

Location * sub_0203A728 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_28;
}

Location * sub_0203A72C (UnkStruct_0203A790 * param0)
{
    return &param0->unk_50;
}

Location * sub_0203A730 (UnkStruct_0203A790 * param0)
{
    return &param0->unk_3C;
}

void sub_0203A734 (UnkStruct_0203A790 * param0, Location * param1)
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

PlayerData * sub_0203A780 (UnkStruct_0203A790 * param0)
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

void sub_0203A7A8 (FieldSystem * fieldSystem)
{
    MapObjectSave * v0;

    v0 = ((UnkStruct_0203A79C *)sub_0203A79C(fieldSystem->saveData))->unk_00;
    MapObjectMan_SaveAll(fieldSystem, fieldSystem->mapObjMan, v0, 64);
}

void sub_0203A7C0 (FieldSystem * fieldSystem)
{
    MapObjectSave * v0;

    v0 = ((UnkStruct_0203A79C *)sub_0203A79C(fieldSystem->saveData))->unk_00;
    MapObjectMan_LoadAllObjects(fieldSystem->mapObjMan, v0, 64);
}
