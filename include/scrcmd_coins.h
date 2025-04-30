#ifndef POKEPLATINUM_SCRCMD_COINS_H
#define POKEPLATINUM_SCRCMD_COINS_H

#include "field_script_context.h"

BOOL ScrCmd_ShowCoins(ScriptContext *ctx);
BOOL ScrCmd_HideCoins(ScriptContext *ctx);
BOOL ScrCmd_UpdateCoinDisplay(ScriptContext *ctx);
BOOL ScrCmd_GetCoinsAmount(ScriptContext *ctx);
BOOL ScrCmd_AddCoins(ScriptContext *ctx);
BOOL ScrCmd_SubstractCoinsFromValue(ScriptContext *ctx);
BOOL ScrCmd_SubstractCoinsFromVar(ScriptContext *ctx);
BOOL ScrCmd_HasCoinsFromValue(ScriptContext *ctx);
BOOL ScrCmd_HasCoinsFromVar(ScriptContext *ctx);
BOOL ScrCmd_CanAddCoins(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_COINS_H
