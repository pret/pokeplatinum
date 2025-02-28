#include "unk_0204C6C8.h"

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

BOOL ScrCmd_075(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    Window **v3;

    v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_COIN_WINDOW);
    *v3 = FieldMenu_CreateCoinsWindow(param0->fieldSystem, v1, v2);

    return 0;
}

BOOL ScrCmd_076(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Window **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_COIN_WINDOW);

    FieldMenu_DeleteCoinsBPWindow(*v1);
    return 0;
}

BOOL ScrCmd_077(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Window **v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_COIN_WINDOW);

    FieldMenu_PrintCoinsToWindow(param0->fieldSystem, *v1);
    return 0;
}

BOOL ScrCmd_078(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    SaveData *v1 = fieldSystem->saveData;
    u16 *v2 = SaveData_GetCoins(v1);
    u16 *v3;

    v3 = ScriptContext_GetVarPointer(param0);
    *v3 = (u16)Coins_GetValue(v2);

    return 0;
}

BOOL ScrCmd_079(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    SaveData *v1 = fieldSystem->saveData;
    u16 *v2 = SaveData_GetCoins(v1);
    u16 v3;

    v3 = ScriptContext_GetVar(param0);
    Coins_Add(v2, v3);

    return 0;
}

BOOL ScrCmd_07A(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    SaveData *v1 = fieldSystem->saveData;
    u16 *v2 = SaveData_GetCoins(v1);
    u16 v3;

    v3 = ScriptContext_GetVar(param0);
    Coins_Subtract(v2, v3);

    return 0;
}

BOOL ScrCmd_2A8(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    SaveData *v1 = fieldSystem->saveData;
    u16 *v2 = SaveData_GetCoins(v1);
    u16 *v3 = ScriptContext_GetVarPointer(param0);
    u16 v4;

    v4 = *v3;

    Coins_Subtract(v2, v4);

    return 0;
}

BOOL ScrCmd_274(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    TrainerInfo *v1 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(param0->fieldSystem));
    SaveData *v2 = fieldSystem->saveData;
    u16 *v3 = SaveData_GetCoins(v2);
    u32 v4, v5;
    u16 *v6 = ScriptContext_GetVarPointer(param0);

    v4 = ScriptContext_ReadWord(param0);
    v5 = Coins_GetValue(v3);

    if (v5 < v4) {
        *v6 = 0;
    } else {
        *v6 = 1;
    }

    return 0;
}

BOOL ScrCmd_2A9(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    TrainerInfo *v1 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(param0->fieldSystem));
    SaveData *v2 = fieldSystem->saveData;
    u16 *v3 = SaveData_GetCoins(v2);
    u16 *v4 = ScriptContext_GetVarPointer(param0);
    u16 *v5 = ScriptContext_GetVarPointer(param0);
    u32 v6, v7;

    v6 = *v5;
    v7 = Coins_GetValue(v3);

    if (v7 < v6) {
        *v4 = 0;
    } else {
        *v4 = 1;
    }

    return 0;
}

BOOL ScrCmd_276(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    SaveData *v1 = fieldSystem->saveData;
    u16 *v2 = SaveData_GetCoins(v1);
    u16 *v3 = ScriptContext_GetVarPointer(param0);
    u16 v4 = ScriptContext_GetVar(param0);

    *v3 = Coins_CanAddAmount(v2, v4);
    return 0;
}
