#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_HELPERS_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_HELPERS_H

#include "savedata.h"
#include "string_template.h"

u8 BattleCastleApp_GetSelectedSlot(u8 numSlots, u8 slot);
u8 BattleCastleApp_GetSlotFromSlotID(u8 exitSlot, u8 slotID);
u8 BattleCastleApp_GetRank(SaveData *saveData, u8 challengeType, u8 rankType);
void BattleCastleApp_PlaySound(u32 input, u16 seqID);
void BattleCastleApp_SetPartnerName(StringTemplate *template, u32 idx);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_HELPERS_H
