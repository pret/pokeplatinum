#ifndef POKEPLATINUM_SCRCMD_ITEM_H
#define POKEPLATINUM_SCRCMD_ITEM_H

#include "field_script_context.h"

BOOL ScrCmd_AddItem(ScriptContext *ctx);
BOOL ScrCmd_RemoveItem(ScriptContext *ctx);
BOOL ScrCmd_CanFitItem(ScriptContext *ctx);
BOOL ScrCmd_CheckItem(ScriptContext *ctx);
BOOL ScrCmd_GetItemQuantity(ScriptContext *ctx);
BOOL ScrCmd_IsItemTMHM(ScriptContext *ctx);
BOOL ScrCmd_GetItemPocket(ScriptContext *ctx);
BOOL ScrCmd_Dummy081(ScriptContext *ctx);
BOOL ScrCmd_Dummy082(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_ITEM_H
