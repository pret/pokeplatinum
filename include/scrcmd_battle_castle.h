#ifndef POKEPLATINUM_SCRCMD_BATTLE_CASTLE_H
#define POKEPLATINUM_SCRCMD_BATTLE_CASTLE_H

#include "field_script_context.h"

BOOL ScrCmd_CallBattleCastleLobbyFunction(ScriptContext *ctx);
BOOL ScrCmd_DeleteActiveBattleCastleStreak(ScriptContext *ctx);
BOOL ScrCmd_CheckBattleCastlePartnerUsesDifferentSpecies(ScriptContext *ctx);
void BattleCastle_ProcessSpeciesCheckMsg(int netID, int unused, void *data, void *context);

#endif // POKEPLATINUM_SCRCMD_BATTLE_CASTLE_H
