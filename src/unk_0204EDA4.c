#include "unk_0204EDA4.h"

#include <nitro.h>
#include <string.h>

#include "constants/moves.h"

#include "struct_defs/struct_020997B8.h"

#include "field_script_context.h"
#include "field_system.h"
#include "heap.h"
#include "inlines.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "scrcmd.h"
#include "script_manager.h"
#include "unk_0203D1B8.h"
#include "unk_020997B8.h"

static void sub_0204EE90(ScriptContext *param0, u16 param1, Pokemon *param2, u16 *param3);

BOOL ScrCmd_SelectPartyMonMove(ScriptContext *ctx)
{
    u16 partySlot = ScriptContext_GetVar(ctx);
    void **partyData = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);
    *partyData = FieldSystem_OpenSummaryScreenSelectMove(HEAP_ID_FIELD_TASK, ctx->fieldSystem, partySlot);

    ScriptContext_Pause(ctx, ScriptContext_WaitForApplicationExit);
    return TRUE;
}

BOOL ScrCmd_GetSelectedPartyMonMove(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    void **partyData = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);
    GF_ASSERT(*partyData != 0);
    *destVar = PokemonSummary_GetSelectedMoveSlot(*partyData);

    if (*destVar == LEARNED_MOVES_MAX) {
        *destVar = MOVE_NOT_SELECTED;
    }

    Heap_FreeToHeap(*partyData);
    *partyData = NULL;

    return FALSE;
}

BOOL ScrCmd_Dummy21E(ScriptContext *ctx)
{
    return FALSE;
}

BOOL ScrCmd_21F(ScriptContext *param0)
{
    Pokemon *mon;
    u16 *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->fieldSystem->saveData), v3);
    v1 = sub_020997D8(mon, HEAP_ID_FIELD_TASK);
    *v2 = sub_020998D8(v1);

    Heap_FreeToHeap(v1);
    return 0;
}

static void sub_0204EE90(ScriptContext *param0, u16 param1, Pokemon *param2, u16 *param3)
{
    void **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, 19);
    UnkStruct_020997B8 *v1 = sub_020997B8(HEAP_ID_FIELD_TASK);
    *v0 = v1;

    v1->unk_00 = param2;
    v1->unk_04 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(param0->fieldSystem));
    v1->unk_08 = SaveData_Options(param0->fieldSystem->saveData);
    v1->unk_0C = param3;
    v1->unk_15 = param1;

    sub_0203E284(param0->fieldSystem, v1);
    ScriptContext_Pause(param0, ScriptContext_WaitForApplicationExit);
    Heap_FreeToHeap(param3);
}

BOOL ScrCmd_220(ScriptContext *param0)
{
    return 1;
}

BOOL ScrCmd_221(ScriptContext *param0)
{
    Pokemon *mon;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 *v2;

    mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->fieldSystem->saveData), v1);
    v2 = sub_020997D8(mon, HEAP_ID_FIELD_TASK);

    sub_0204EE90(param0, 1, mon, v2);

    return 1;
}

BOOL ScrCmd_224(ScriptContext *param0)
{
    Pokemon *v0;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 *v3;

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->fieldSystem->saveData), v1);
    v3 = Heap_AllocFromHeap(HEAP_ID_FIELD_TASK, (1 + 1) * 2);

    *(v3 + 0) = v2;
    *(v3 + 1) = 0xffff;

    sub_0204EE90(param0, 0, v0, v3);

    return 1;
}

BOOL ScrCmd_222(ScriptContext *param0)
{
    return 0;
}

BOOL ScrCmd_223(ScriptContext *param0)
{
    UnkStruct_020997B8 *v0;
    u16 *v1 = ScriptContext_GetVarPointer(param0);
    void **v2 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, 19);

    v0 = *v2;

    GF_ASSERT(*v2 != 0);

    if ((v0->unk_16) == 0) {
        *v1 = 0;
    } else {
        *v1 = 0xff;
    }

    sub_020997D0(v0);

    return 0;
}

BOOL ScrCmd_225(ScriptContext *param0)
{
    UnkStruct_020997B8 *v0;
    u16 *v1 = ScriptContext_GetVarPointer(param0);
    void **v2 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, 19);

    v0 = *v2;

    GF_ASSERT(*v2 != 0);

    if ((v0->unk_16) == 0) {
        *v1 = 0;
    } else {
        *v1 = 0xff;
    }

    sub_020997D0(v0);

    return 0;
}
