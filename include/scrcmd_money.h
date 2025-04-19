#ifndef POKEPLATINUM_SCRCMD_MONEY_H
#define POKEPLATINUM_SCRCMD_MONEY_H

#include "field_script_context.h"

BOOL ScrCmd_GiveMoney(ScriptContext *ctx);
BOOL ScrCmd_RemoveMoney(ScriptContext *ctx);
BOOL ScrCmd_RemoveMoney2(ScriptContext *ctx);
BOOL ScrCmd_CheckMoney(ScriptContext *ctx);
BOOL ScrCmd_CheckMoney2(ScriptContext *ctx);
BOOL ScrCmd_ShowMoney(ScriptContext *ctx);
BOOL ScrCmd_HideMoney(ScriptContext *ctx);
BOOL ScrCmd_UpdateMoneyDisplay(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_MONEY_H
