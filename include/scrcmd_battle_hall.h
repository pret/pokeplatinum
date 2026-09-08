#ifndef POKEPLATINUM_SCRCMD_BATTLE_HALL_H
#define POKEPLATINUM_SCRCMD_BATTLE_HALL_H

#include "battle_hall_save.h"
#include "field_script_context.h"
#include "savedata.h"

BOOL ScrCmd_CallBattleHallLobbyFunction(ScriptContext *ctx);
BOOL ScrCmd_DeleteActiveBattleHallStreak(ScriptContext *ctx);
BOOL ScrCmd_CheckBattleHallPartnerUsesDifferentSpecies(ScriptContext *ctx);
BOOL ScrCmd_GetBattleHallRecordKeeperStats(ScriptContext *ctx);
BOOL ScrCmd_GetNumSpeciesWithBattleHallRecords(ScriptContext *ctx);
BOOL ScrCmd_GetBattleHallTotalSinglesRecord(ScriptContext *ctx);
BOOL ScrCmd_CheckIfBattleHallStreakIs50(ScriptContext *ctx);

void BattleHall_ProcessSelectedSpeciesMsg(int netID, int unused, void *data, void *context);
void BattleHall_ClearActiveStreak(SaveData *saveData, BattleHallStreakFlags *streakFlags, u8 challengeType);

#endif // POKEPLATINUM_SCRCMD_BATTLE_HALL_H
