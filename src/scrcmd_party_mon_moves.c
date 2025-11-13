#include "scrcmd_party_mon_moves.h"

#include <nitro.h>
#include <string.h>

#include "constants/moves.h"

#include "field_script_context.h"
#include "field_system.h"
#include "heap.h"
#include "inlines.h"
#include "move_reminder_data.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "scrcmd.h"
#include "script_manager.h"
#include "unk_0203D1B8.h"

BOOL ScrCmd_SelectPartyMonMove(ScriptContext *ctx)
{
    u16 partySlot = ScriptContext_GetVar(ctx);

    void **partyData = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);
    *partyData = FieldSystem_OpenSummaryScreenSelectMove(HEAP_ID_FIELD3, ctx->fieldSystem, partySlot);

    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);
    return TRUE;
}

BOOL ScrCmd_GetSelectedPartyMonMove(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    void **partyData = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);
    GF_ASSERT(*partyData != NULL);
    *destVar = PokemonSummary_GetSelectedMoveSlot(*partyData);

    if (*destVar == LEARNED_MOVES_MAX) {
        *destVar = MOVE_NOT_SELECTED;
    }

    Heap_Free(*partyData);
    *partyData = NULL;

    return FALSE;
}

BOOL ScrCmd_Dummy21E(ScriptContext *ctx)
{
    return FALSE;
}

BOOL ScrCmd_CheckHasLearnableReminderMoves(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(ctx->fieldSystem->saveData), partySlot);
    u16 *moves = MoveReminderData_GetMoves(mon, HEAP_ID_FIELD3);
    *destVar = MoveReminderData_HasMoves(moves);

    Heap_Free(moves);
    return FALSE;
}

static void OpenMenu(ScriptContext *ctx, u16 isMoveTutor, Pokemon *mon, u16 *moves)
{
    void **partyManagementData = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);
    MoveReminderData *data = MoveReminderData_Alloc(HEAP_ID_FIELD3);
    *partyManagementData = data;

    data->mon = mon;
    data->trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    data->options = SaveData_GetOptions(ctx->fieldSystem->saveData);
    data->moves = moves;
    data->isMoveTutor = isMoveTutor;

    FieldSystem_OpenMoveReminderMenu(ctx->fieldSystem, data);
    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);
    Heap_Free(moves);
}

BOOL ScrCmd_220(ScriptContext *ctx)
{
    return TRUE;
}

BOOL ScrCmd_OpenMoveReminderMenu(ScriptContext *ctx)
{
    u16 partySlot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(ctx->fieldSystem->saveData), partySlot);
    u16 *moves = MoveReminderData_GetMoves(mon, HEAP_ID_FIELD3);

    OpenMenu(ctx, TRUE, mon, moves);

    return TRUE;
}

BOOL ScrCmd_OpenMoveTutorMenu(ScriptContext *ctx)
{
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 move = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(ctx->fieldSystem->saveData), partySlot);
    u16 *moves = Heap_Alloc(HEAP_ID_FIELD3, 2 * sizeof(u16));

    moves[0] = move;
    moves[1] = LEVEL_UP_MOVESET_TERMINATOR;

    OpenMenu(ctx, FALSE, mon, moves);

    return TRUE;
}

BOOL ScrCmd_222(ScriptContext *ctx)
{
    return FALSE;
}

BOOL ScrCmd_CheckLearnedReminderMove(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    void **partyManagementData = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);
    MoveReminderData *data = *partyManagementData;
    GF_ASSERT(*partyManagementData != NULL);

    *destVar = data->keepOldMove == FALSE ? 0 : 0xff;

    MoveReminderData_Free(data);

    return FALSE;
}

BOOL ScrCmd_CheckLearnedTutorMove(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    void **partyManagementData = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);
    MoveReminderData *data = *partyManagementData;
    GF_ASSERT(*partyManagementData != NULL);

    *destVar = data->keepOldMove == FALSE ? 0 : 0xff;

    MoveReminderData_Free(data);

    return FALSE;
}
