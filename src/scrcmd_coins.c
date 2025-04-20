#include "scrcmd_coins.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/field_menu.h"

#include "bg_window.h"
#include "coins.h"
#include "field_script_context.h"
#include "field_system.h"
#include "inlines.h"
#include "save_player.h"
#include "savedata.h"
#include "script_manager.h"
#include "trainer_info.h"

BOOL ScrCmd_ShowCoins(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 tilemapLeft = ScriptContext_GetVar(ctx);
    u16 tilemapTop = ScriptContext_GetVar(ctx);
    Window **coinWindow = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SPECIAL_CURRENCY_WINDOW);
    *coinWindow = FieldMenu_DrawCoinWindow(ctx->fieldSystem, tilemapLeft, tilemapTop);

    return FALSE;
}

BOOL ScrCmd_HideCoins(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Window **coinWindow = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SPECIAL_CURRENCY_WINDOW);

    FieldMenu_DeleteSpecialCurrencyWindow(*coinWindow);
    return FALSE;
}

BOOL ScrCmd_UpdateCoinDisplay(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Window **coinWindow = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SPECIAL_CURRENCY_WINDOW);

    FieldMenu_PrintCoinsToWindow(ctx->fieldSystem, *coinWindow);
    return FALSE;
}

BOOL ScrCmd_GetCoinsAmount(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 *coins = SaveData_GetCoins(saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = (u16)Coins_GetValue(coins);

    return FALSE;
}

BOOL ScrCmd_AddCoins(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 *coins = SaveData_GetCoins(saveData);
    u16 value = ScriptContext_GetVar(ctx);
    Coins_Add(coins, value);

    return FALSE;
}

BOOL ScrCmd_SubstractCoinsFromValue(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 *coins = SaveData_GetCoins(saveData);
    u16 value = ScriptContext_GetVar(ctx);

    Coins_Subtract(coins, value);

    return FALSE;
}

BOOL ScrCmd_SubstractCoinsFromVar(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 *coins = SaveData_GetCoins(saveData);
    u16 *valueVar = ScriptContext_GetVarPointer(ctx);
    u16 value = *valueVar;

    Coins_Subtract(coins, value);

    return FALSE;
}

BOOL ScrCmd_HasCoinsFromValue(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    SaveData *saveData = fieldSystem->saveData;
    u16 *coins = SaveData_GetCoins(saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u32 value = ScriptContext_ReadWord(ctx);
    u32 currentCoins = Coins_GetValue(coins);

    if (currentCoins < value) {
        *destVar = FALSE;
    } else {
        *destVar = TRUE;
    }

    return FALSE;
}

BOOL ScrCmd_HasCoinsFromVar(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    SaveData *saveData = fieldSystem->saveData;
    u16 *coins = SaveData_GetCoins(saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 *priceVar = ScriptContext_GetVarPointer(ctx);
    u32 value = *priceVar;
    u32 currentCoins = Coins_GetValue(coins);

    if (currentCoins < value) {
        *destVar = FALSE;
    } else {
        *destVar = TRUE;
    }

    return FALSE;
}

BOOL ScrCmd_CanAddCoins(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    SaveData *saveData = fieldSystem->saveData;
    u16 *coins = SaveData_GetCoins(saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 value = ScriptContext_GetVar(ctx);

    *destVar = Coins_CanAddAmount(coins, value);
    return FALSE;
}
