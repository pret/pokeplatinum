#ifndef POKEPLATINUM_MOVE_TUTOR_H
#define POKEPLATINUM_MOVE_TUTOR_H

#include "field_script_context.h"

BOOL ScrCmd_HasSeenSpecies(ScriptContext *ctx);
BOOL ScrCmd_HasLearnableTutorMoves(ScriptContext *ctx);
BOOL ScrCmd_ResetMoveSlot(ScriptContext *ctx);
BOOL ScrCmd_CanAffordMove(ScriptContext *ctx);
BOOL ScrCmd_PayShardsCost(ScriptContext *ctx);
BOOL ScrCmd_ShowMoveTutorMoveSelectionMenu(ScriptContext *ctx);
BOOL ScrCmd_ShowShardsCost(ScriptContext *ctx);
BOOL ScrCmd_CloseShardCostWindow(ScriptContext *ctx);

#endif // POKEPLATINUM_MOVE_TUTOR_H
