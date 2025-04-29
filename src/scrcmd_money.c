#include "scrcmd_money.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/field_menu.h"

#include "bg_window.h"
#include "field_script_context.h"
#include "field_system.h"
#include "inlines.h"
#include "save_player.h"
#include "script_manager.h"
#include "trainer_info.h"

BOOL ScrCmd_GiveMoney(ScriptContext *ctx)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u32 value = ScriptContext_ReadWord(ctx);
    TrainerInfo_GiveMoney(trainerInfo, value);

    return FALSE;
}

BOOL ScrCmd_RemoveMoney(ScriptContext *ctx)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u32 value = ScriptContext_ReadWord(ctx);
    TrainerInfo_TakeMoney(trainerInfo, value);

    return FALSE;
}

BOOL ScrCmd_RemoveMoney2(ScriptContext *ctx)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u32 var = ScriptContext_GetVar(ctx);
    TrainerInfo_TakeMoney(trainerInfo, var);

    return FALSE;
}

BOOL ScrCmd_CheckMoney(ScriptContext *ctx)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u16 *destVar;
    u32 value, currentMoney;

    destVar = ScriptContext_GetVarPointer(ctx);
    value = ScriptContext_ReadWord(ctx);
    currentMoney = TrainerInfo_Money(trainerInfo);

    if (currentMoney < value) {
        *destVar = FALSE;
    } else {
        *destVar = TRUE;
    }

    return FALSE;
}

BOOL ScrCmd_CheckMoney2(ScriptContext *ctx)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u16 *destVar;
    u32 value, currentMoney;

    destVar = ScriptContext_GetVarPointer(ctx);
    value = ScriptContext_GetVar(ctx);
    currentMoney = TrainerInfo_Money(trainerInfo);

    if (currentMoney < value) {
        *destVar = FALSE;
    } else {
        *destVar = TRUE;
    }

    return FALSE;
}

BOOL ScrCmd_ShowMoney(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 tilemapLeft = ScriptContext_GetVar(ctx);
    u16 tilemapTop = ScriptContext_GetVar(ctx);
    Window **moneyWindow = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MONEY_WINDOW);
    *moneyWindow = FieldMenu_CreateMoneyWindow(ctx->fieldSystem, tilemapLeft, tilemapTop);

    return FALSE;
}

BOOL ScrCmd_HideMoney(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Window **moneyWindow = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MONEY_WINDOW);

    FieldMenu_DeleteMoneyWindow(*moneyWindow);
    return FALSE;
}

BOOL ScrCmd_UpdateMoneyDisplay(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Window **moneyWindow = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_MONEY_WINDOW);

    FieldMenu_PrintMoneyToWindow(ctx->fieldSystem, *moneyWindow);
    return FALSE;
}
