#ifndef POKEPLATINUM_UNK_020494DC_H
#define POKEPLATINUM_UNK_020494DC_H

#include "field_script_context.h"

BOOL ScrCmd_InitBattleTower(ScriptContext *ctx);
BOOL ScrCmd_SetBattleTowerNull(ScriptContext *ctx);
BOOL ScrCmd_FreeBattleTower(ScriptContext *ctx);
BOOL ScrCmd_CallBattleTowerFunction(ScriptContext *ctx);
BOOL ScrCmd_GetBattleTowerPartnerSpeciesAndMove(ScriptContext *ctx);
BOOL ScrCmd_1DF(ScriptContext *ctx);
BOOL ScrCmd_1E0(ScriptContext *ctx);
BOOL ScrCmd_1E1(ScriptContext *ctx);
BOOL ScrCmd_1E2(ScriptContext *ctx);
BOOL ScrCmd_1E3(ScriptContext *ctx);
BOOL ScrCmd_1E4(ScriptContext *ctx);
BOOL ScrCmd_ShowBattlePoints(ScriptContext *ctx);
BOOL ScrCmd_HideBattlePoints(ScriptContext *ctx);
BOOL ScrCmd_UpdateBPDisplay(ScriptContext *ctx);
BOOL ScrCmd_GetBattlePoints(ScriptContext *ctx);
BOOL ScrCmd_GiveBattlePoints(ScriptContext *ctx);
BOOL ScrCmd_RemoveBattlePoints(ScriptContext *ctx);
BOOL ScrCmd_CheckBattlePoints(ScriptContext *ctx);
BOOL ScrCmd_GetExchangeServiceCornerItemAndCost(ScriptContext *ctx);

#endif // POKEPLATINUM_UNK_020494DC_H
