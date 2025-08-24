#ifndef POKEPLATINUM_UNK_02048614_H
#define POKEPLATINUM_UNK_02048614_H

#include "field_script_context.h"

BOOL ScrCmd_0B6(ScriptContext *ctx);
BOOL ScrCmd_CheckIsApproachingTrainerTaskDone(ScriptContext *ctx);
BOOL ScrCmd_0B8(ScriptContext *ctx);
BOOL ScrCmd_GetApproachingTrainerID(ScriptContext *ctx);
BOOL ScrCmd_GetTrainerID(ScriptContext *ctx);
BOOL ScrCmd_StartTrainerBattle(ScriptContext *ctx);
BOOL ScrCmd_StartTagBattle(ScriptContext *ctx);
BOOL ScrCmd_GetTrainerMessageTypes(ScriptContext *ctx);
BOOL ScrCmd_GetTrainerRematchMessageTypes(ScriptContext *ctx);
BOOL ScrCmd_CheckIsTrainerDoubleBattle(ScriptContext *ctx);
BOOL ScrCmd_PlayTrainerEncounterBGM(ScriptContext *ctx);
BOOL ScrCmd_BlackOutFromBattle(ScriptContext *ctx);
BOOL ScrCmd_CheckWonBattle(ScriptContext *ctx);
BOOL ScrCmd_CheckLostBattle(ScriptContext *ctx);
BOOL ScrCmd_CheckDidNotCapture(ScriptContext *ctx);
BOOL ScrCmd_CheckHasTwoAliveMons(ScriptContext *ctx);
BOOL ScrCmd_StartDummyTrainerBattle(ScriptContext *ctx);
BOOL ScrCmd_SetTargetTrainerDefeated(ScriptContext *ctx);
BOOL ScrCmd_GoToIfTargetTrainerDefeated(ScriptContext *ctx);
BOOL ScrCmd_GetBattleResult(ScriptContext *ctx);

#endif // POKEPLATINUM_UNK_02048614_H
