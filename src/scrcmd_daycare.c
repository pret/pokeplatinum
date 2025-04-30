#include "scrcmd_daycare.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/daycare.h"

#include "field/field_system.h"
#include "overlay005/daycare.h"

#include "daycare_save.h"
#include "field_script_context.h"
#include "field_system.h"
#include "inlines.h"
#include "party.h"
#include "save_player.h"
#include "savedata.h"
#include "script_manager.h"
#include "trainer_info.h"

BOOL ScrCmd_BufferDaycareMonNicknames(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    ov5_021E72BC(SaveData_GetDaycare(saveData), *strTemplate);

    return FALSE;
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
    Party *party = SaveData_GetParty(fieldSystem->saveData);
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
    party = SaveData_GetParty(fieldSystem->saveData);
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

BOOL ScrCmd_BufferPartyMonNicknameReturnSpecies(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Party *party;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 unused = ScriptContext_ReadHalfWord(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    party = SaveData_GetParty(fieldSystem->saveData);
    *destVar = Party_StringTemplateSetNicknameReturnSpecies(party, partySlot, *strTemplate);

    return 0;
}

BOOL ScrCmd_StorePartyMonIntoDaycare(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    Daycare *daycare;
    Party *party;
    u8 partySlot = ScriptContext_GetVar(ctx);

    party = SaveData_GetParty(fieldSystem->saveData);
    daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);

    Daycare_MoveToEmptySlotFromParty(party, partySlot, daycare, saveData);

    return FALSE;
}

BOOL ScrCmd_BufferDaycareNicknameLevelGender(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 templateArgNickname = ScriptContext_GetVar(ctx);
    u8 templateArgLevel = ScriptContext_GetVar(ctx);
    u8 templateArgGender = ScriptContext_GetVar(ctx);
    u8 daycareSlot = ScriptContext_GetVar(ctx);

    Daycare_BufferNicknameLevelGender(SaveData_GetDaycare(saveData), templateArgNickname, templateArgLevel, templateArgGender, daycareSlot, *strTemplate);
    return FALSE;
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

BOOL ScrCmd_Dummy1A5(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *dummy = ScriptContext_GetVarPointer(ctx);

    return FALSE;
}

BOOL ScrCmd_Dummy1A6(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    return FALSE;
}

BOOL ScrCmd_Dummy1A7(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    return FALSE;
}

BOOL ScrCmd_Dummy1AD(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *dummy = ScriptContext_GetVarPointer(ctx);
    return FALSE;
}
