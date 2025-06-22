#ifndef POKEPLATINUM_OV5_SIZE_CONTEST_H
#define POKEPLATINUM_OV5_SIZE_CONTEST_H

#include "field/field_system_decl.h"

u8 SizeContest_CalcResultForPartyMon(FieldSystem *fieldSystem, u16 partySlot);
void SizeContest_UpdateRecordFromPartyMon(FieldSystem *fieldSystem, u16 partySlot);
void SizeContest_SetRecordSizeStrParams(FieldSystem *fieldSystem, u8 intPartIdx, u8 fracPartIdx, u16 species);
void SizeContest_SetPartyMonSizeStrParams(FieldSystem *fieldSystem, u8 intPartIdx, u8 fracPartIdx, u16 partySlot);

#endif // POKEPLATINUM_OV5_SIZE_CONTEST_H
