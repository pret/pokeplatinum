#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"

#include "encounter.h"
#include "field_battle_data_transfer.h"
#include "field_script_context.h"
#include "inlines.h"
#include "map_object.h"
#include "party.h"
#include "script_manager.h"
#include "sys_task_manager.h"
#include "system_flags.h"
#include "unk_020041CC.h"
#include "unk_020528D0.h"
#include "unk_02054884.h"
#include "unk_020553DC.h"
#include "unk_02067A84.h"
#include "unk_0206AFE0.h"
#include "vars_flags.h"

BOOL ScrCmd_0B6(ScriptContext *param0);
BOOL ScrCmd_0B7(ScriptContext *param0);
BOOL ScrCmd_0B8(ScriptContext *param0);
BOOL ScrCmd_0B9(ScriptContext *param0);
BOOL ScrCmd_0E4(ScriptContext *param0);
BOOL ScrCmd_0E5(ScriptContext *param0);
BOOL ScrCmd_2A0(ScriptContext *param0);
BOOL ScrCmd_0E7(ScriptContext *param0);
BOOL ScrCmd_0E8(ScriptContext *param0);
BOOL ScrCmd_0E9(ScriptContext *param0);
BOOL ScrCmd_0EA(ScriptContext *param0);
BOOL ScrCmd_0EB(ScriptContext *param0);
BOOL ScrCmd_0EE(ScriptContext *param0);
BOOL ScrCmd_0EF(ScriptContext *param0);
BOOL ScrCmd_0F0(ScriptContext *param0);
BOOL ScrCmd_0F1(ScriptContext *param0);
BOOL ScrCmd_314(ScriptContext *param0);

BOOL ScrCmd_0B6(ScriptContext *param0)
{
    int *v0;
    int *v1;
    int *v2;
    int *v3;
    int *v4;
    SysTask **v5;
    MapObject **v6;
    PlayerAvatar *playerAvatar;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v9 = ScriptContext_GetVar(param0);

    if (v9 == 0) {
        v0 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_SIGHT_RANGE);
        v4 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_DIRECTION);
        v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_SCRIPT_ID);
        v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_ID);
        v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_TYPE);
        v6 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_MAP_OBJECT);
        v5 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_TASK);
    } else {
        v0 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_SIGHT_RANGE);
        v4 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_DIRECTION);
        v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_SCRIPT_ID);
        v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_ID);
        v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_TYPE);
        v6 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_MAP_OBJECT);
        v5 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_TASK);
    }

    playerAvatar = fieldSystem->playerAvatar;
    *v5 = sub_02067FB8(fieldSystem, *v6, playerAvatar, *v4, *v0, 0, *v3, v9);

    return 0;
}

BOOL ScrCmd_0B7(ScriptContext *param0)
{
    SysTask **v0;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    *v2 = 0;

    if (v1 == 0) {
        v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TRAINER_0_TASK);
    } else {
        v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TRAINER_1_TASK);
    }

    if (*v0 == NULL) {
        *v2 = 1;
        return 1;
    }

    if (sub_02067FD4(*v0) == 1) {
        sub_02067FE8(*v0);
        *v0 = NULL;
        *v2 = 1;
    }

    return 1;
}

BOOL ScrCmd_0B8(ScriptContext *param0)
{
    u16 *v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TRAINER_0_TYPE);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = *v0;
    return 0;
}

BOOL ScrCmd_0B9(ScriptContext *param0)
{
    u16 *v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TRAINER_0_ID);
    u16 *v1 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TRAINER_1_ID);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 *v3 = ScriptContext_GetVarPointer(param0);

    *v3 = (v2 == 0) ? (*v0) : (*v1);
    return 0;
}

BOOL ScrCmd_0E4(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    *v2 = Script_GetTrainerID(*v1);
    return 0;
}

BOOL ScrCmd_0E5(ScriptContext *param0)
{
    u32 v0;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    BOOL *v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 v4 = ScriptContext_GetVar(param0);
    u16 v5 = ScriptContext_GetVar(param0);
    u16 v6;

    v6 = 0;

    if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(param0->fieldSystem->saveData)) == 1) {
        v6 = sub_0206B034(SaveData_GetVarsFlags(fieldSystem->saveData));
    }

    sub_020515CC(param0->task, v4, v5, v6, 11, v3);
    return 1;
}

BOOL ScrCmd_2A0(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    BOOL *v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4 = ScriptContext_GetVar(param0);

    sub_020515CC(param0->task, v3, v4, v2, 11, v1);
    return 1;
}

BOOL ScrCmd_0E7(ScriptContext *param0)
{
    u16 v0, v1, v2, v3, v4;
    u16 *v5 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    u16 *v6 = ScriptContext_GetVarPointer(param0);
    u16 *v7 = ScriptContext_GetVarPointer(param0);
    u16 *v8 = ScriptContext_GetVarPointer(param0);

    v0 = Script_IsTrainerDoubleBattle(Script_GetTrainerID(*v5));

    if (v0 == 0) {
        v2 = 0;
        v3 = 2;
        v4 = 0;
    } else {
        v1 = Script_GetTrainerBattlerIndex(*v5);

        if (v1 == 0) {
            v2 = 3;
            v3 = 5;
            v4 = 6;
        } else {
            v2 = 7;
            v3 = 9;
            v4 = 10;
        }
    }

    *v6 = v2;
    *v7 = v3;
    *v8 = v4;

    return 0;
}

BOOL ScrCmd_0E8(ScriptContext *param0)
{
    u16 v0, v1, v2, v3, v4;
    u16 *v5 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    u16 *v6 = ScriptContext_GetVarPointer(param0);
    u16 *v7 = ScriptContext_GetVarPointer(param0);
    u16 *v8 = ScriptContext_GetVarPointer(param0);

    v0 = Script_IsTrainerDoubleBattle(Script_GetTrainerID(*v5));

    if (v0 == 0) {
        v2 = 17;
        v3 = 0;
        v4 = 0;
    } else {
        v1 = Script_GetTrainerBattlerIndex(*v5);

        if (v1 == 0) {
            v2 = 18;
            v3 = 0;
            v4 = 6;
        } else {
            v2 = 19;
            v3 = 0;
            v4 = 10;
        }
    }

    *v6 = v2;
    *v7 = v3;
    *v8 = v4;

    return 0;
}

BOOL ScrCmd_0E9(ScriptContext *param0)
{
    u16 *v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = Script_IsTrainerDoubleBattle(Script_GetTrainerID(*v0));
    return 0;
}

BOOL ScrCmd_0EA(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);

    sub_02004950(sub_0205560C(v0));
    return 1;
}

BOOL ScrCmd_0EB(ScriptContext *param0)
{
    sub_02052C5C(param0->task);
    return 1;
}

BOOL ScrCmd_CheckWonBattle(ScriptContext *ctx)
{
    BOOL *battleResult = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = CheckPlayerWonBattle(*battleResult);
    return TRUE;
}

BOOL ScrCmd_CheckLostBattle(ScriptContext *ctx)
{
    BOOL *battleResult = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = CheckPlayerLostBattle(*battleResult);
    return TRUE;
}

BOOL ScrCmd_CheckDidNotCapture(ScriptContext *ctx)
{
    BOOL *battleResult = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = CheckPlayerDidNotCaptureWildMon(*battleResult);
    return TRUE;
}

BOOL ScrCmd_0EE(ScriptContext *param0)
{
    u16 *v0 = ScriptContext_GetVarPointer(param0);

    *v0 = Party_HasTwoAliveMons(Party_GetFromSavedata(param0->fieldSystem->saveData));
    return 0;
}

BOOL ScrCmd_0EF(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    BOOL *v1 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);

    sub_020515CC(param0->task, 1, 0, 0, 11, v1);

    return 1;
}

BOOL ScrCmd_0F0(ScriptContext *param0)
{
    MapObject **v0;
    FieldSystem *fieldSystem = param0->fieldSystem;

    v0 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    Script_SetTrainerDefeated(MapObject_FieldSystem(*v0), MapObject_Id(*v0));

    return 0;
}

BOOL ScrCmd_0F1(ScriptContext *param0)
{
    int v0;
    s32 v1;
    MapObject **v2;
    FieldSystem *fieldSystem = param0->fieldSystem;

    v2 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    v1 = (s32)ScriptContext_ReadWord(param0);
    v0 = Script_IsTrainerDefeated(MapObject_FieldSystem(*v2), MapObject_Id(*v2));

    if (v0 == 1) {
        ScriptContext_Jump(param0, (u8 *)(param0->scriptPtr + v1));
        return 1;
    }

    return 0;
}

BOOL ScrCmd_314(ScriptContext *param0)
{
    BOOL *v0 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = *v0;
    return 1;
}
