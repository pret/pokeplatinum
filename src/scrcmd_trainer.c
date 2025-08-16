#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "generated/trainer_message_types.h"

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

BOOL ScrCmd_0B6(ScriptContext *ctx)
{
    int *sightRange;
    int *scriptID;
    int *trainerID;
    int *v3;
    int *direction;
    SysTask **task;
    MapObject **mapObj;
    PlayerAvatar *playerAvatar;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 approachNum = ScriptContext_GetVar(ctx);

    if (approachNum == 0) {
        sightRange = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_SIGHT_RANGE);
        direction = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_DIRECTION);
        scriptID = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_SCRIPT_ID);
        trainerID = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_ID);
        v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_TYPE);
        mapObj = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_MAP_OBJECT);
        task = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_0_TASK);
    } else {
        sightRange = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_SIGHT_RANGE);
        direction = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_DIRECTION);
        scriptID = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_SCRIPT_ID);
        trainerID = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_ID);
        v3 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_TYPE);
        mapObj = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_MAP_OBJECT);
        task = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TRAINER_1_TASK);
    }

    playerAvatar = fieldSystem->playerAvatar;
    *task = sub_02067FB8(fieldSystem, *mapObj, playerAvatar, *direction, *sightRange, 0, *v3, approachNum);

    return FALSE;
}

BOOL ScrCmd_CheckIsApproachingTrainerTaskDone(ScriptContext *ctx)
{
    SysTask **task;
    u16 approachNum = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = FALSE;

    if (approachNum == 0) {
        task = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TRAINER_0_TASK);
    } else {
        task = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TRAINER_1_TASK);
    }

    if (*task == NULL) {
        *destVar = TRUE;
        return TRUE;
    }

    if (sub_02067FD4(*task) == 1) {
        sub_02067FE8(*task);
        *task = NULL;
        *destVar = TRUE;
    }

    return TRUE;
}

BOOL ScrCmd_0B8(ScriptContext *ctx)
{
    u16 *v0 = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TRAINER_0_TYPE);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = *v0;
    return FALSE;
}

BOOL ScrCmd_GetApproachingTrainerID(ScriptContext *ctx)
{
    u16 *trainer0ID = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TRAINER_0_ID);
    u16 *trainer1ID = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TRAINER_1_ID);
    u16 approachNum = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = approachNum == 0 ? *trainer0ID : *trainer1ID;
    return FALSE;
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
    u16 partnerTrainer = TRAINER_NONE;

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
    u16 *destVarPreBattleMsgType = ScriptContext_GetVarPointer(ctx);
    u16 *destVarPostBattleMsgType = ScriptContext_GetVarPointer(ctx);
    u16 *destVarNotEnoughPokemonMessageType = ScriptContext_GetVarPointer(ctx);

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

    *destVarPreBattleMsgType = preBattleMsgType;
    *destVarPostBattleMsgType = postBattleMsgType;
    *destVarNotEnoughPokemonMessageType = notEnoughPokemonMessageType;

    return FALSE;
}

BOOL ScrCmd_GetTrainerRematchMessageTypes(ScriptContext *ctx)
{
    u16 isDoubleBattle, battlerIndex, preBattleMsgType, postBattleMsgType, notEnoughPokemonMessageType;
    u16 *scriptIDPtr = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_SCRIPT_ID);
    u16 *destVarPreBattleMsgType = ScriptContext_GetVarPointer(ctx);
    u16 *destVarPostBattleMsgType = ScriptContext_GetVarPointer(ctx);
    u16 *destVarNotEnoughPokemonMessageType = ScriptContext_GetVarPointer(ctx);

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

    *destVarPreBattleMsgType = preBattleMsgType;
    *destVarPostBattleMsgType = postBattleMsgType;
    *destVarNotEnoughPokemonMessageType = notEnoughPokemonMessageType;

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

BOOL ScrCmd_StartDummyTrainerBattle(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    int *battleResultMaskPtr = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    Encounter_NewVsTrainer(ctx->task, TRAINER_YOUNGSTER_TRISTAN, TRAINER_NONE, TRAINER_NONE, HEAP_ID_FIELDMAP, battleResultMaskPtr);
    return TRUE;
}

BOOL ScrCmd_SetTargetTrainerDefeated(ScriptContext *ctx)
{
    MapObject **mapObj;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    mapObj = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    Script_SetTrainerDefeated(MapObject_FieldSystem(*mapObj), MapObject_GetLocalID(*mapObj));

    return FALSE;
}

BOOL ScrCmd_GoToIfTargetTrainerDefeated(ScriptContext *ctx)
{
    int isTrainerDefeated;
    s32 offset;
    MapObject **mapObj;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    mapObj = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    offset = (s32)ScriptContext_ReadWord(ctx);
    isTrainerDefeated = Script_IsTrainerDefeated(MapObject_FieldSystem(*mapObj), MapObject_GetLocalID(*mapObj));

    if (isTrainerDefeated == TRUE) {
        ScriptContext_Jump(ctx, (u8 *)(ctx->scriptPtr + offset));
        return TRUE;
    }

    return FALSE;
}

BOOL ScrCmd_GetBattleResult(ScriptContext *ctx)
{
    BOOL *battleResult = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_BATTLE_RESULT);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = *battleResult;
    return TRUE;
}
