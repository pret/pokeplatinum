#include <nitro.h>
#include <string.h>

#include "pokemon.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "unk_020244AC.h"
#include "unk_0202DA40.h"

typedef struct UnkStruct_0202DA40_t {
    u8 unk_00[236];
    u16 unk_EC;
    u16 unk_EE;
    u32 unk_F0;
    u32 unk_F4;
} UnkStruct_0202DA40;

UnkStruct_0202DA40 * sub_0202DA40 (SaveData * param0)
{
    return SaveData_SaveTable(param0, 26);
}

int GlobalTrade_SaveSize (void)
{
    return sizeof(UnkStruct_0202DA40);
}

void GlobalTrade_Init (UnkStruct_0202DA40 * param0)
{
    MI_CpuClearFast(param0, sizeof(UnkStruct_0202DA40));
}

int sub_0202DA60 (UnkStruct_0202DA40 * param0)
{
    return param0->unk_EC;
}

void sub_0202DA68 (UnkStruct_0202DA40 * param0, int param1)
{
    param0->unk_EC = param1;
}

void sub_0202DA70 (UnkStruct_0202DA40 * param0, Pokemon * param1)
{
    MI_CpuCopyFast(param0->unk_00, (void *)param1, 236);
}

void sub_0202DA7C (UnkStruct_0202DA40 * param0, Pokemon * param1, int param2)
{
    MI_CpuCopyFast((void *)param1, param0->unk_00, 236);
}

u32 sub_0202DA8C (UnkStruct_0202DA40 * param0)
{
    return param0->unk_F0;
}

void sub_0202DA94 (UnkStruct_0202DA40 * param0, u32 param1)
{
    param0->unk_F0 = param1;
}

u32 sub_0202DA9C (UnkStruct_0202DA40 * param0)
{
    return param0->unk_F4;
}

void sub_0202DAA4 (UnkStruct_0202DA40 * param0, u32 param1)
{
    param0->unk_F4 = param1;
}

int sub_0202DAAC (UnkStruct_0202DA40 * param0)
{
    return param0->unk_EE;
}
