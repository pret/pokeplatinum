#include "unk_0204B64C.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "field_script_context.h"
#include "game_records.h"
#include "inlines.h"
#include "script_manager.h"
#include "unk_02055C50.h"

BOOL ScrCmd_17D(ScriptContext *param0)
{
    MapObject **v0;
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    *v1 = sub_02055F00(param0->fieldSystem, *v0);

    return 0;
}

BOOL ScrCmd_17E(ScriptContext *param0)
{
    MapObject **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02055F40(param0->fieldSystem, *v0);
    return 0;
}

BOOL ScrCmd_17F(ScriptContext *param0)
{
    MapObject **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02055F64(param0->fieldSystem, *v0);
    return 0;
}

BOOL ScrCmd_180(ScriptContext *param0)
{
    MapObject **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02055F88(param0->fieldSystem, *v0);
    return 0;
}

BOOL ScrCmd_181(ScriptContext *param0)
{
    MapObject **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02055FA8(param0->fieldSystem, *v0);
    return 0;
}

BOOL ScrCmd_182(ScriptContext *param0)
{
    MapObject **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 v1 = ScriptContext_GetVar(param0);

    sub_02055E80(param0->fieldSystem, *v0, v1);
    return 0;
}

BOOL ScrCmd_183(ScriptContext *param0)
{
    MapObject **v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    GameRecords *v1 = SaveData_GetGameRecordsPtr(param0->fieldSystem->saveData);
    u16 v2 = ScriptContext_GetVar(param0);

    sub_02055EAC(param0->fieldSystem, *v0, v2);
    GameRecords_IncrementRecordValue(v1, RECORD_UNK_004);

    return 0;
}

BOOL ScrCmd_184(ScriptContext *param0)
{
    switch (ScriptContext_ReadHalfWord(param0)) {
    case 0:
        sub_020562AC(param0->fieldSystem);
        break;
    case 1:
        sub_020562D8(param0->fieldSystem);
        break;
    default:
        GF_ASSERT(0);
    }

    return 1;
}

BOOL ScrCmd_185(ScriptContext *param0)
{
    u16 v0;
    GameRecords *v1 = SaveData_GetGameRecordsPtr(param0->fieldSystem->saveData);
    MapObject **v2 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);

    sub_02055E00(param0->fieldSystem, *v2);
    GameRecords_IncrementTrainerScore(v1, TRAINER_SCORE_EVENT_UNK_00);

    return 0;
}
