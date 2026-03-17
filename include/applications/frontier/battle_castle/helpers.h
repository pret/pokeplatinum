#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_HELPERS_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_HELPERS_H

#include "savedata.h"
#include "string_template.h"

#define BATTLE_CASTLE_RANK_HEALING          0
#define BATTLE_CASTLE_RANK_RENTALS          1
#define BATTLE_CASTLE_RANK_OPPONENT_SUMMARY 2
#define BATTLE_CASTLE_NUM_RANK_TYPES        3

u8 BattleCastleApp_GetSelectedSlot(u8 numSlots, u8 slot);
u8 BattleCastleApp_GetSlotFromSlotID(u8 exitSlot, u8 slotID);
u8 BattleCastleApp_GetRank(SaveData *saveData, u8 challengeType, u8 rankType);
void BattleCastleApp_PlaySound(u32 input, u16 seqID);
void BattleCastleApp_SetPartnerName(StringTemplate *template, u32 idx);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_HELPERS_H
