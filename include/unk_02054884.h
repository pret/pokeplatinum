#ifndef POKEPLATINUM_UNK_02054884_H
#define POKEPLATINUM_UNK_02054884_H

#include "struct_decls/struct_party_decl.h"

#include "pokemon.h"
#include "savedata.h"

#define PARTY_SLOT_NONE 0xFF

BOOL Pokemon_CanBattle(Pokemon *mon);
BOOL sub_020548B0(int param0, SaveData *param1, u16 param2, u8 param3, u16 param4, int param5, int param6);
BOOL sub_02054930(int param0, SaveData *param1, u16 param2, u8 param3, int param4, int param5);
void sub_02054988(Party *param0, int param1, int param2, u16 param3);
int Party_HasMonWithMove(Party *party, u16 moveID);
int Party_AliveMonsCount(const Party *party);
Pokemon *Party_FindFirstEligibleBattler(const Party *party);
Pokemon *Party_FindFirstHatchedMon(const Party *party);
BOOL Party_HasTwoAliveMons(const Party *party);
void Party_GiveChampionRibbons(Party *party);
int sub_02054B04(Party *param0, u16 param1);
BOOL sub_02054B94(Pokemon *param0);

#endif // POKEPLATINUM_UNK_02054884_H
