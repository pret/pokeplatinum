#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/trainer.h"

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
#include "sound.h"
#include "sys_task_manager.h"
#include "system_flags.h"
#include "system_vars.h"
#include "unk_020528D0.h"
#include "unk_02054884.h"
#include "unk_020553DC.h"
#include "unk_02067A84.h"
#include "vars_flags.h"

BOOL ScrCmd_0B6(ScriptContext *param0);
BOOL ScrCmd_0B7(ScriptContext *param0);
BOOL ScrCmd_0B8(ScriptContext *param0);
BOOL ScrCmd_0B9(ScriptContext *param0);
BOOL ScrCmd_GetTrainerID(ScriptContext *ctx);
BOOL ScrCmd_StartTrainerBattle(ScriptContext *ctx);
BOOL ScrCmd_StartTagBattle(ScriptContext *ctx);
BOOL ScrCmd_GetTrainerMessageTypes(ScriptContext *ctx);
BOOL ScrCmd_GetTrainerRematchMessageTypes(ScriptContext *ctx);
BOOL ScrCmd_CheckIsTrainerDoubleBattle(ScriptContext *ctx);
BOOL ScrCmd_BlackOutFromBattle(ScriptContext *ctx);
BOOL ScrCmd_CheckHasTwoAliveMons(ScriptContext *ctx);
BOOL ScrCmd_StartDummyTrainerBattle(ScriptContext *ctx);
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

BOOL ScrCmd_GetTrainerID(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *scriptIDPtr = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = Script_GetTrainerID(*scriptIDPtr);
    return FALSE;
}

BOOL ScrCmd_StartTrainerBattle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *scriptIDPtr = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    int *battleResultMaskPtr = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 enemyTrainer1 = ScriptContext_GetVar(ctx);
    u16 enemyTrainer2 = ScriptContext_GetVar(ctx);
    u16 partnerTrainer = 0;

    if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(ctx->fieldSystem->saveData)) == TRUE) {
        partnerTrainer = SystemVars_GetPartnerTrainerID(SaveData_GetVarsFlags(fieldSystem->saveData));
    }

    Encounter_NewVsTrainer(ctx->task,
        enemyTrainer1,
        enemyTrainer2,
        partnerTrainer,
        HEAP_ID_FIELDMAP,
        battleResultMaskPtr);
    return TRUE;
}

BOOL ScrCmd_StartTagBattle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    int *battleResultMaskPtr = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 partnerTrainer = ScriptContext_GetVar(ctx);
    u16 enemyTrainer1 = ScriptContext_GetVar(ctx);
    u16 enemyTrainer2 = ScriptContext_GetVar(ctx);

    Encounter_NewVsTrainer(ctx->task,
        enemyTrainer1,
        enemyTrainer2,
        partnerTrainer,
        HEAP_ID_FIELDMAP,
        battleResultMaskPtr);
    return TRUE;
}

BOOL ScrCmd_GetTrainerMessageTypes(ScriptContext *ctx)
{
    u16 isDoubleBattle, battlerIndex, preBattleMsgType, postBattleMsgType, notEnoughPokemonMessageType;
    u16 *scriptIDPtr = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    u16 *destVar0 = ScriptContext_GetVarPointer(ctx);
    u16 *destVar1 = ScriptContext_GetVarPointer(ctx);
    u16 *destVar2 = ScriptContext_GetVarPointer(ctx);

    isDoubleBattle = Script_IsTrainerDoubleBattle(Script_GetTrainerID(*scriptIDPtr));

    if (isDoubleBattle == FALSE) {
        preBattleMsgType = TRMSG_PRE_BATTLE;
        postBattleMsgType = TRMSG_POST_BATTLE;
        notEnoughPokemonMessageType = 0;
    } else {
        battlerIndex = Script_GetTrainerBattlerIndex(*scriptIDPtr);

        if (battlerIndex == 0) {
            preBattleMsgType = TRMSG_PRE_DOUBLE_BATTLE_1;
            postBattleMsgType = TRMSG_POST_DOUBLE_BATTLE_1;
            notEnoughPokemonMessageType = TRMSG_DOUBLE_BATTLE_NOT_ENOUGH_POKEMON_1;
        } else {
            preBattleMsgType = TRMSG_PRE_DOUBLE_BATTLE_2;
            postBattleMsgType = TRMSG_POST_DOUBLE_BATTLE_2;
            notEnoughPokemonMessageType = TRMSG_DOUBLE_BATTLE_NOT_ENOUGH_POKEMON_2;
        }
    }

    *destVar0 = preBattleMsgType;
    *destVar1 = postBattleMsgType;
    *destVar2 = notEnoughPokemonMessageType;

    return FALSE;
}

BOOL ScrCmd_GetTrainerRematchMessageTypes(ScriptContext *ctx)
{
    u16 isDoubleBattle, battlerIndex, preBattleMsgType, postBattleMsgType, notEnoughPokemonMessageType;
    u16 *scriptIDPtr = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    u16 *destVar0 = ScriptContext_GetVarPointer(ctx);
    u16 *destVar1 = ScriptContext_GetVarPointer(ctx);
    u16 *destVar2 = ScriptContext_GetVarPointer(ctx);

    isDoubleBattle = Script_IsTrainerDoubleBattle(Script_GetTrainerID(*scriptIDPtr));

    if (isDoubleBattle == FALSE) {
        preBattleMsgType = TRMSG_REMATCH;
        postBattleMsgType = 0;
        notEnoughPokemonMessageType = 0;
    } else {
        battlerIndex = Script_GetTrainerBattlerIndex(*scriptIDPtr);

        if (battlerIndex == 0) {
            preBattleMsgType = TRMSG_DOUBLE_BATTLE_REMATCH_1;
            postBattleMsgType = 0;
            notEnoughPokemonMessageType = TRMSG_DOUBLE_BATTLE_NOT_ENOUGH_POKEMON_1;
        } else {
            preBattleMsgType = TRMSG_DOUBLE_BATTLE_REMATCH_2;
            postBattleMsgType = 0;
            notEnoughPokemonMessageType = TRMSG_DOUBLE_BATTLE_NOT_ENOUGH_POKEMON_2;
        }
    }

    *destVar0 = preBattleMsgType;
    *destVar1 = postBattleMsgType;
    *destVar2 = notEnoughPokemonMessageType;

    return FALSE;
}

BOOL ScrCmd_CheckIsTrainerDoubleBattle(ScriptContext *ctx)
{
    u16 *scriptIDPtr = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = Script_IsTrainerDoubleBattle(Script_GetTrainerID(*scriptIDPtr));
    return FALSE;
}

BOOL ScrCmd_PlayTrainerEncounterBGM(ScriptContext *ctx)
{
    u16 trainerID = ScriptContext_GetVar(ctx);

    Sound_SwapBGM(Trainer_GetEncounterBGM(trainerID));
    return TRUE;
}

BOOL ScrCmd_BlackOutFromBattle(ScriptContext *ctx)
{
    sub_02052C5C(ctx->task);
    return TRUE;
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

BOOL ScrCmd_CheckHasTwoAliveMons(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = Party_HasTwoAliveMons(SaveData_GetParty(ctx->fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_StartDummyTrainerBattle(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    int *battleResultMaskPtr = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    Encounter_NewVsTrainer(param0->task, 1, 0, 0, HEAP_ID_FIELDMAP, battleResultMaskPtr);
    return TRUE;
}

BOOL ScrCmd_0F0(ScriptContext *param0)
{
    MapObject **v0;
    FieldSystem *fieldSystem = param0->fieldSystem;

    v0 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    Script_SetTrainerDefeated(MapObject_FieldSystem(*v0), MapObject_GetLocalID(*v0));

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
    v0 = Script_IsTrainerDefeated(MapObject_FieldSystem(*v2), MapObject_GetLocalID(*v2));

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
