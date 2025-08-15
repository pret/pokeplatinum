#ifndef POKEPLATINUM_UNK_02054884_H
#define POKEPLATINUM_UNK_02054884_H

#include "party.h"
#include "pokemon.h"
#include "savedata.h"

#define PARTY_SLOT_NONE 0xFF

BOOL Pokemon_CanBattle(Pokemon *mon);
BOOL Pokemon_GiveMonFromScript(enum HeapID heapID, SaveData *saveData, u16 species, u8 level, u16 heldItem, int metLocation, int metTerrain);
BOOL sub_02054930(int unused, SaveData *saveData, u16 param2, u8 param3, int param4, int param5);
void sub_02054988(Party *party, int param1, int param2, u16 param3);
int Party_HasMonWithMove(Party *party, u16 moveID);
int Party_AliveMonsCount(const Party *party);
Pokemon *Party_FindFirstEligibleBattler(const Party *party);
Pokemon *Party_FindFirstHatchedMon(const Party *party);
BOOL Party_HasTwoAliveMons(const Party *party);
void Party_GiveChampionRibbons(Party *party);
int Pokemon_DoPoisonDamage(Party *party, u16 mapLabelTextID);
BOOL Pokemon_TrySurvivePoison(Pokemon *mon);

#endif // POKEPLATINUM_UNK_02054884_H
