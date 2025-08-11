#include "global_trade.h"

#include <nitro.h>
#include <string.h>

#include "pokemon.h"
#include "savedata.h"

GlobalTrade *SaveData_GetGlobalTrade(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_GLOBAL_TRADE);
}

int GlobalTrade_SaveSize(void)
{
    return sizeof(GlobalTrade);
}

void GlobalTrade_Init(GlobalTrade *globalTrade)
{
    MI_CpuClearFast(globalTrade, sizeof(GlobalTrade));
}

int GlobalTrade_IsPokemonListed(GlobalTrade *globalTrade)
{
    return globalTrade->pokemonListed;
}

void GlobalTrade_SetPokemonListed(GlobalTrade *globalTrade, int listed)
{
    globalTrade->pokemonListed = listed;
}

void GlobalTrade_CopyStoredPokemon(GlobalTrade *globalTrade, Pokemon *mon)
{
    MI_CpuCopyFast(globalTrade->storedPokemon, (void *)mon, sizeof(Pokemon));
}

void sub_0202DA7C(GlobalTrade *globalTrade, Pokemon *mon, int unused)
{
    MI_CpuCopyFast((void *)mon, globalTrade->storedPokemon, sizeof(Pokemon));
}

u32 GlobalTrade_GetDepositTradeDatestamp(GlobalTrade *globalTrade)
{
    return globalTrade->depositTradeDatestamp;
}

void GlobalTrade_SetDepositTradeDatestamp(GlobalTrade *globalTrade, u32 date)
{
    globalTrade->depositTradeDatestamp = date;
}

u32 GlobalTrade_GetSearchTradeDatestamp(GlobalTrade *globalTrade)
{
    return globalTrade->searchTradeDatestamp;
}

void GlobalTrade_SetSearchTradeDatestamp(GlobalTrade *globalTrade, u32 date)
{
    globalTrade->searchTradeDatestamp = date;
}

int GlobalTrade_GetUnusedInt(GlobalTrade *globalTrade)
{
    return globalTrade->neverSet_EE;
}
