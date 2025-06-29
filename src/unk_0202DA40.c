#include "unk_0202DA40.h"

#include <nitro.h>
#include <string.h>

#include "pokemon.h"
#include "savedata.h"

typedef struct GlobalTrade_t {
    u8 storedPokemon[sizeof(Pokemon)];
    u16 pokemonListed;
    u16 neverSet_EE;
    u32 depositTradeDatestamp;
    u32 searchTradeDatestamp;
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

int GlobalTrade_IsPokemonListed(GlobalTrade *param0)
{
    return param0->pokemonListed;
}

void GlobalTrade_SetPokemonListed(GlobalTrade *globalTrade, int listed)
{
    globalTrade->pokemonListed = listed;
}

void GlobalTrade_CopyStoredPokemon(GlobalTrade *param0, Pokemon *param1)
{
    MI_CpuCopyFast(param0->storedPokemon, (void *)param1, sizeof(Pokemon));
}

void sub_0202DA7C(GlobalTrade *param0, Pokemon *param1, int param2)
{
    MI_CpuCopyFast((void *)param1, param0->storedPokemon, sizeof(Pokemon));
}

u32 GlobalTrade_GetDepositTradeDatestamp(GlobalTrade *param0)
{
    return param0->depositTradeDatestamp;
}

void GlobalTrade_SetDepositTradeDatestamp(GlobalTrade *param0, u32 date)
{
    param0->depositTradeDatestamp = date;
}

u32 GlobalTrade_GetSearchTradeDatestamp(GlobalTrade *param0)
{
    return param0->searchTradeDatestamp;
}

void GlobalTrade_SetSearchTradeDatestamp(GlobalTrade *param0, u32 date)
{
    param0->searchTradeDatestamp = date;
}

int GlobalTrade_GetUnusedInt(GlobalTrade *param0)
{
    return param0->neverSet_EE;
}
