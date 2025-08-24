#ifndef POKEPLATINUM_GLOBAL_TRADE_H
#define POKEPLATINUM_GLOBAL_TRADE_H

#include "pokemon.h"
#include "savedata.h"

typedef struct GlobalTrade {
    u8 storedPokemon[sizeof(Pokemon)];
    u16 pokemonListed;
    u16 neverSet_EE;
    u32 depositTradeDatestamp;
    u32 searchTradeDatestamp;
} GlobalTrade;

GlobalTrade *SaveData_GetGlobalTrade(SaveData *saveData);
int GlobalTrade_SaveSize(void);
void GlobalTrade_Init(GlobalTrade *globalTrade);
int GlobalTrade_IsPokemonListed(GlobalTrade *globalTrade);
void GlobalTrade_SetPokemonListed(GlobalTrade *globalTrade, int listed);
void GlobalTrade_CopyStoredPokemon(GlobalTrade *globalTrade, Pokemon *mon);
void sub_0202DA7C(GlobalTrade *globalTrade, Pokemon *mon, int unused);
u32 GlobalTrade_GetDepositTradeDatestamp(GlobalTrade *globalTrade);
void GlobalTrade_SetDepositTradeDatestamp(GlobalTrade *globalTrade, u32 date);
u32 GlobalTrade_GetSearchTradeDatestamp(GlobalTrade *globalTrade);
void GlobalTrade_SetSearchTradeDatestamp(GlobalTrade *globalTrade, u32 date);
int GlobalTrade_GetUnusedInt(GlobalTrade *globalTrade);

#endif // POKEPLATINUM_GLOBAL_TRADE_H
