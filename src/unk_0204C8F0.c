#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "trainer_info.h"

#include "field/field_system.h"
#include "struct_defs/struct_0205AA50.h"

#include "save_player.h"
#include "trainer_info.h"
#include "field_system.h"
#include "field_script_context.h"
#include "unk_0203E880.h"
#include "unk_0204C8F0.h"
#include "overlay005/ov5_021DC018.h"


BOOL ScrCmd_06F (ScriptContext * param0)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0->fieldSystem));
    u32 v1;

    v1 = ScriptContext_ReadWord(param0);
    TrainerInfo_GiveMoney(v0, v1);

    return 0;
}

BOOL ScrCmd_070 (ScriptContext * param0)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0->fieldSystem));
    u32 v1;

    v1 = ScriptContext_ReadWord(param0);
    TrainerInfo_TakeMoney(v0, v1);

    return 0;
}

BOOL ScrCmd_1A3 (ScriptContext * param0)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0->fieldSystem));
    u32 v1;

    v1 = ScriptContext_GetVar(param0);
    TrainerInfo_TakeMoney(v0, v1);

    return 0;
}

BOOL ScrCmd_071 (ScriptContext * param0)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0->fieldSystem));
    u16 * v1;
    u32 v2, v3;

    v1 = ScriptContext_GetVarPointer(param0);
    v2 = ScriptContext_ReadWord(param0);
    v3 = TrainerInfo_Money(v0);

    if (v3 < v2) {
        *v1 = 0;
    } else {
        *v1 = 1;
    }

    return 0;
}

BOOL ScrCmd_1AB (ScriptContext * param0)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0->fieldSystem));
    u16 * v1;
    u32 v2, v3;

    v1 = ScriptContext_GetVarPointer(param0);
    v2 = ScriptContext_GetVar(param0);
    v3 = TrainerInfo_Money(v0);

    if (v3 < v2) {
        *v1 = 0;
    } else {
        *v1 = 1;
    }

    return 0;
}

BOOL ScrCmd_072 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    Window ** v3;

    v3 = sub_0203F098(fieldSystem, 39);
    *v3 = ov5_021DCEB0(param0->fieldSystem, v1, v2);

    return 0;
}

BOOL ScrCmd_073 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    Window ** v1 = sub_0203F098(fieldSystem, 39);

    ov5_021DCF58(*v1);
    return 0;
}

BOOL ScrCmd_074 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    Window ** v1 = sub_0203F098(fieldSystem, 39);

    ov5_021DCF6C(param0->fieldSystem, *v1);
    return 0;
}
