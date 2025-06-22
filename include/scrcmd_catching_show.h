#ifndef POKEPLATINUM_SCRCMD_CATCHING_SHOW_H
#define POKEPLATINUM_SCRCMD_CATCHING_SHOW_H

#include "field_script_context.h"

BOOL ScrCmd_SetClearInCatchingShowFlag(ScriptContext *ctx);
BOOL ScrCmd_CheckHasEnoughMonForCatchingShow(ScriptContext *ctx);
BOOL ScrCmd_MoveCatchingShowMonsToPCBoxes(ScriptContext *ctx);
BOOL ScrCmd_CalcCatchingShowPoints(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_CATCHING_SHOW_H
