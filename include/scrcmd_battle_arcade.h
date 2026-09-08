#ifndef POKEPLATINUM_SCRCMD_BATTLE_ARCADE_H
#define POKEPLATINUM_SCRCMD_BATTLE_ARCADE_H

#include "field_script_context.h"

BOOL ScrCmd_CallBattleArcadeLobbyFunction(ScriptContext *ctx);
BOOL ScrCmd_DeleteActiveBattleArcadeStreak(ScriptContext *ctx);
BOOL ScrCmd_CheckBattleArcadePartnerUsesDifferentSpecies(ScriptContext *ctx);
void BattleArcade_ProcessSpeciesCheckMsg(int netID, int unused, void *data, void *context);

#endif // POKEPLATINUM_SCRCMD_BATTLE_ARCADE_H
