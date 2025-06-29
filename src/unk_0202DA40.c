#include "unk_0202DA40.h"

#include <nitro.h>
#include <string.h>

#include "pokemon.h"
#include "savedata.h"

typedef struct GlobalTrade_t {
    u8 storedPokemon[236];
    u16 unk_EC;
    u16 unk_EE;
    u32 unk_F0;
    u32 unk_F4;
} GlobalTrade;

GlobalTrade *SaveData_GetGlobalTrade(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_GLOBAL_TRADE);
}

int GlobalTrade_SaveSize(void)
{
    return sizeof(GlobalTrade);
}

void GlobalTrade_Init(GlobalTrade *param0)
{
    MI_CpuClearFast(param0, sizeof(GlobalTrade));
}

int sub_0202DA60(GlobalTrade *param0)
{
    return param0->unk_EC;
}

void sub_0202DA68(GlobalTrade *param0, int param1)
{
    param0->unk_EC = param1;
}

void sub_0202DA70(GlobalTrade *param0, Pokemon *param1)
{
    MI_CpuCopyFast(param0->storedPokemon, (void *)param1, 236);
}

void sub_0202DA7C(GlobalTrade *param0, Pokemon *param1, int param2)
{
    MI_CpuCopyFast((void *)param1, param0->storedPokemon, 236);
}

u32 sub_0202DA8C(GlobalTrade *param0)
{
    return param0->unk_F0;
}

void sub_0202DA94(GlobalTrade *param0, u32 param1)
{
    param0->unk_F0 = param1;
}

u32 sub_0202DA9C(GlobalTrade *param0)
{
    return param0->unk_F4;
}

void sub_0202DAA4(GlobalTrade *param0, u32 param1)
{
    param0->unk_F4 = param1;
}

int sub_0202DAAC(GlobalTrade *param0)
{
    return param0->unk_EE;
}
