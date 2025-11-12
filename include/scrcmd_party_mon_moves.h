#ifndef POKEPLATINUM_PARTY_MON_MOVES_H
#define POKEPLATINUM_PARTY_MON_MOVES_H

#include "field_script_context.h"

BOOL ScrCmd_SelectPartyMonMove(ScriptContext *ctx);
BOOL ScrCmd_GetSelectedPartyMonMove(ScriptContext *ctx);
BOOL ScrCmd_Dummy21E(ScriptContext *ctx);
BOOL ScrCmd_CheckHasLearnableReminderMoves(ScriptContext *ctx);
BOOL ScrCmd_220(ScriptContext *ctx);
BOOL ScrCmd_OpenMoveReminderMenu(ScriptContext *ctx);
BOOL ScrCmd_222(ScriptContext *ctx);
BOOL ScrCmd_CheckLearnedReminderMove(ScriptContext *ctx);
BOOL ScrCmd_OpenMoveTutorMenu(ScriptContext *ctx);
BOOL ScrCmd_CheckLearnedTutorMove(ScriptContext *ctx);

#endif // POKEPLATINUM_PARTY_MON_MOVES_H
