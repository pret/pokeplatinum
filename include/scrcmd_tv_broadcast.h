#ifndef POKEPLATINUM_SCRCMD_TV_BROADCAST_H
#define POKEPLATINUM_SCRCMD_TV_BROADCAST_H

#include "field_script_context.h"

BOOL ScrCmd_CallTVBroadcast(ScriptContext *param0);
BOOL ScrCmd_SaveTVSegmentHiddenItem(ScriptContext *ctx);
BOOL ScrCmd_2B8(ScriptContext *param0);
BOOL ScrCmd_SaveTVSegmentPokemonStorageBulletin(ScriptContext *ctx);
BOOL ScrCmd_SaveTVSegmentHomeAndManorNoFurniture(ScriptContext *ctx);
BOOL ScrCmd_SaveTVSegmentHomeAndManor(ScriptContext *ctx);
BOOL ScrCmd_CallTVInterview(ScriptContext *ctx);
BOOL ScrCmd_CheckTVInterviewEligible(ScriptContext *ctx);
BOOL ScrCmd_27C(ScriptContext *param0);
BOOL ScrCmd_GetCurrentSafariGameCaughtNum(ScriptContext *ctx);
BOOL ScrCmd_GetBattleFrontierReporterPosition(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_TV_BROADCAST_H
