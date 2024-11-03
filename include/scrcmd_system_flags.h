#ifndef POKEPLATINUM_SCRCMD_SYSTEM_FLAGS_H
#define POKEPLATINUM_SCRCMD_SYSTEM_FLAGS_H

#include "field_script_context.h"

BOOL ScrCmd_CheckPokedexAcquired(ScriptContext *ctx);
BOOL ScrCmd_GivePokedex(ScriptContext *ctx);
BOOL ScrCmd_CheckRunningShoesAcquired(ScriptContext *ctx);
BOOL ScrCmd_GiveRunningShoes(ScriptContext *ctx);
BOOL ScrCmd_CheckBadgeAcquired(ScriptContext *ctx);
BOOL ScrCmd_GiveBadge(ScriptContext *ctx);
BOOL ScrCmd_CountBadgesAcquired(ScriptContext *ctx);
BOOL ScrCmd_CheckBagAcquired(ScriptContext *ctx);
BOOL ScrCmd_GiveBag(ScriptContext *ctx);
BOOL ScrCmd_CheckHasPartner(ScriptContext *ctx);
BOOL ScrCmd_SetHasPartner(ScriptContext *ctx);
BOOL ScrCmd_ClearHasPartner(ScriptContext *ctx);
BOOL ScrCmd_CheckStepFlag(ScriptContext *ctx);
BOOL ScrCmd_SetStepFlag(ScriptContext *ctx);
BOOL ScrCmd_ClearStepFlag(ScriptContext *ctx);
BOOL ScrCmd_CheckGameCompleted(ScriptContext *ctx);
BOOL ScrCmd_SetGameCompleted(ScriptContext *ctx);
BOOL ScrCmd_Strength(ScriptContext *ctx);
BOOL ScrCmd_Flash(ScriptContext *ctx);
BOOL ScrCmd_Defog(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_SYSTEM_FLAGS_H
