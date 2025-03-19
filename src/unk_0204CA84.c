#include "unk_0204CA84.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/daycare.h"

#include "field/field_system.h"
#include "overlay005/ov5_021E622C.h"

#include "field_script_context.h"
#include "field_system.h"
#include "inlines.h"
#include "party.h"
#include "save_player.h"
#include "savedata.h"
#include "script_manager.h"
#include "trainer_info.h"
#include "unk_020261E4.h"

BOOL ScrCmd_16D(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    SaveData *v1 = fieldSystem->saveData;
    StringTemplate **v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    ov5_021E72BC(SaveData_GetDaycare(v1), *v2);

    return 0;
}

BOOL ScrCmd_GetDaycareState(ScriptContext *ctx)
{
    u16 *destVar;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    Daycare *daycare;

    destVar = ScriptContext_GetVarPointer(ctx);
    daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);
    *destVar = Daycare_GetState(daycare);

    return FALSE;
}

BOOL ScrCmd_ResetDaycarePersonalityAndStepCounter(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    Daycare *daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);
    Daycare_ResetPersonalityAndStepCounter(daycare);

    return FALSE;
}

BOOL ScrCmd_GiveEggFromDaycare(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    Daycare *daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);
    Party *party = Party_GetFromSavedata(fieldSystem->saveData);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));

    Daycare_GiveEggFromDaycare(daycare, party, trainerInfo);
    return FALSE;
}

BOOL ScrCmd_MoveMonToPartyFromDaycareSlot(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Daycare *daycare;
    Party *party;
    StringTemplate **template = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    SaveData *saveData = fieldSystem->saveData;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u8 daycareSlot = ScriptContext_GetVar(ctx);

    daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);
    party = Party_GetFromSavedata(fieldSystem->saveData);
    *destVar = Daycare_MoveToPartyFromDaycareSlot(party, *template, daycare, daycareSlot);

    return FALSE;
}

BOOL ScrCmd_BufferDaycarePriceBySlot(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Daycare *daycare;
    StringTemplate **template = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    SaveData *saveData = fieldSystem->saveData;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u8 daycareSlot = ScriptContext_GetVar(ctx);

    daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);
    *destVar = Daycare_BufferDaycarePriceBySlot(daycare, daycareSlot, *template);

    return FALSE;
}

BOOL ScrCmd_BufferDaycareGainedLevelsBySlot(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    Daycare *daycare;
    StringTemplate **template = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 daycareSlot = ScriptContext_GetVar(ctx);

    daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);
    *destVar = Daycare_BufferGainedLevelsInSlot(daycare, daycareSlot, *template);

    return FALSE;
}

BOOL ScrCmd_1AF(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Party *v1;
    StringTemplate **v2 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 v3 = ScriptContext_ReadHalfWord(param0);
    u16 v4 = ScriptContext_GetVar(param0);
    u16 *v5 = ScriptContext_GetVarPointer(param0);

    v1 = Party_GetFromSavedata(fieldSystem->saveData);
    *v5 = ov5_021E73A0(v1, v4, *v2);

    return 0;
}

BOOL ScrCmd_StorePartyMonIntoDaycare(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    Daycare *daycare;
    Party *party;
    u8 partySlot = ScriptContext_GetVar(ctx);

    party = Party_GetFromSavedata(fieldSystem->saveData);
    daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);

    Daycare_MoveToEmptySlotFromParty(party, partySlot, daycare, saveData);

    return FALSE;
}

BOOL ScrCmd_1BC(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    StringTemplate **v2 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v3 = ScriptContext_GetVar(ctx);
    u8 v4 = ScriptContext_GetVar(ctx);
    u8 v5 = ScriptContext_GetVar(ctx);
    u8 v6 = ScriptContext_GetVar(ctx);

    ov5_021E7308(SaveData_GetDaycare(saveData), v3, v4, v5, v6, *v2);
    return 0;
}

BOOL ScrCmd_GetDaycareCompatibilityLevel(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    Daycare *daycare;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);
    *destVar = Daycare_GetCompatibilityLevel(daycare);

    return FALSE;
}

BOOL ScrCmd_CheckDaycareHasEgg(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    Daycare *daycare;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);
    *destVar = Daycare_HasEgg(daycare);

    return FALSE;
}

BOOL ScrCmd_1A5(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    return 0;
}

BOOL ScrCmd_1A6(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    return 0;
}

BOOL ScrCmd_1A7(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    return 0;
}

BOOL ScrCmd_Dummy1AD(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *dummy = ScriptContext_GetVarPointer(ctx);
    return FALSE;
}
