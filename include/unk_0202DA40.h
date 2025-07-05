#ifndef POKEPLATINUM_UNK_0202DA40_H
#define POKEPLATINUM_UNK_0202DA40_H

#include "struct_decls/struct_0202DA40_decl.h"

#include "pokemon.h"
#include "savedata.h"

GlobalTrade *SaveData_GetGlobalTrade(SaveData *saveData);
int GlobalTrade_SaveSize(void);
void GlobalTrade_Init(GlobalTrade *param0);
int GlobalTrade_IsPokemonListed(GlobalTrade *param0);
void GlobalTrade_SetPokemonListed(GlobalTrade *param0, int param1);
void GlobalTrade_CopyStoredPokemon(GlobalTrade *param0, Pokemon *param1);
void sub_0202DA7C(GlobalTrade *param0, Pokemon *param1, int param2);
u32 GlobalTrade_GetDepositTradeDatestamp(GlobalTrade *param0);
void GlobalTrade_SetDepositTradeDatestamp(GlobalTrade *param0, u32 param1);
u32 GlobalTrade_GetSearchTradeDatestamp(GlobalTrade *param0);
void GlobalTrade_SetSearchTradeDatestamp(GlobalTrade *param0, u32 param1);
int GlobalTrade_GetUnusedInt(GlobalTrade *param0);

#endif // POKEPLATINUM_UNK_0202DA40_H
