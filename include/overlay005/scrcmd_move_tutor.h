#ifndef POKEPLATINUM_SCRCMD_MOVE_TUTOR_H
#define POKEPLATINUM_SCRCMD_MOVE_TUTOR_H

#include "field_script_context.h"

BOOL ScrCmd_CheckHasSeenSpecies(ScriptContext *ctx);
BOOL ScrCmd_CheckHasLearnableTutorMoves(ScriptContext *ctx);
BOOL ScrCmd_ResetMoveSlot(ScriptContext *ctx);
BOOL ScrCmd_CheckCanAffordMove(ScriptContext *ctx);
BOOL ScrCmd_PayShardsCost(ScriptContext *ctx);
BOOL ScrCmd_ShowMoveTutorMoveSelectionMenu(ScriptContext *ctx);
BOOL ScrCmd_ShowShardsCost(ScriptContext *ctx);
BOOL ScrCmd_CloseShardCostWindow(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_MOVE_TUTOR_H
