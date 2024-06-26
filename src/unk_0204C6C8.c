#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "trainer_info.h"
#include "savedata.h"

#include "field/field_system.h"
#include "struct_defs/struct_0205AA50.h"

#include "save_player.h"
#include "coins.h"
#include "field_system.h"
#include "field_script_context.h"
#include "unk_0203E880.h"
#include "unk_0204C6C8.h"
#include "overlay005/ov5_021DC018.h"


BOOL ScrCmd_075 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    Window ** v3;

    v3 = sub_0203F098(fieldSystem, 38);
    *v3 = ov5_021DD020(param0->fieldSystem, v1, v2);

    return 0;
}

BOOL ScrCmd_076 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    Window ** v1 = sub_0203F098(fieldSystem, 38);

    ov5_021DD084(*v1);
    return 0;
}

BOOL ScrCmd_077 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    Window ** v1 = sub_0203F098(fieldSystem, 38);

    ov5_021DD098(param0->fieldSystem, *v1);
    return 0;
}

BOOL ScrCmd_078 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    SaveData * v1 = fieldSystem->saveData;
    u16 * v2 = SaveData_GetCoins(v1);
    u16 * v3;

    v3 = ScriptContext_GetVarPointer(param0);
    *v3 = (u16)Coins_GetValue(v2);

    return 0;
}

BOOL ScrCmd_079 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    SaveData * v1 = fieldSystem->saveData;
    u16 * v2 = SaveData_GetCoins(v1);
    u16 v3;

    v3 = ScriptContext_GetVar(param0);
    Coins_Add(v2, v3);

    return 0;
}

BOOL ScrCmd_07A (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    SaveData * v1 = fieldSystem->saveData;
    u16 * v2 = SaveData_GetCoins(v1);
    u16 v3;

    v3 = ScriptContext_GetVar(param0);
    Coins_Subtract(v2, v3);

    return 0;
}

BOOL ScrCmd_2A8 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    SaveData * v1 = fieldSystem->saveData;
    u16 * v2 = SaveData_GetCoins(v1);
    u16 * v3 = ScriptContext_GetVarPointer(param0);
    u16 v4;

    v4 = *v3;

    Coins_Subtract(v2, v4);

    return 0;
}

BOOL ScrCmd_274 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    TrainerInfo * v1 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0->fieldSystem));
    SaveData * v2 = fieldSystem->saveData;
    u16 * v3 = SaveData_GetCoins(v2);
    u32 v4, v5;
    u16 * v6 = ScriptContext_GetVarPointer(param0);

    v4 = ScriptContext_ReadWord(param0);
    v5 = Coins_GetValue(v3);

    if (v5 < v4) {
        *v6 = 0;
    } else {
        *v6 = 1;
    }

    return 0;
}

BOOL ScrCmd_2A9 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    TrainerInfo * v1 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0->fieldSystem));
    SaveData * v2 = fieldSystem->saveData;
    u16 * v3 = SaveData_GetCoins(v2);
    u16 * v4 = ScriptContext_GetVarPointer(param0);
    u16 * v5 = ScriptContext_GetVarPointer(param0);
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

BOOL ScrCmd_276 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    SaveData * v1 = fieldSystem->saveData;
    u16 * v2 = SaveData_GetCoins(v1);
    u16 * v3 = ScriptContext_GetVarPointer(param0);
    u16 v4 = ScriptContext_GetVar(param0);

    *v3 = Coins_CanAddAmount(v2, v4);
    return 0;
}
