#include "overlay104/frscrcmd_battle_tower.h"

#include <nitro.h>
#include <nitro/code16.h>

#include "constants/battle_tower.h"
#include "constants/battle_tower_functions.h"
#include "generated/battle_tower_modes.h"
#include "generated/game_records.h"
#include "generated/object_events_gfx.h"

#include "struct_decls/tv_broadcast.h"
#include "struct_defs/battle_tower.h"

#include "overlay104/battle_tower.h"
#include "overlay104/battle_tower_helpers.h"
#include "overlay104/defs.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "savedata/save_table.h"

#include "battle_frontier.h"
#include "battle_tower.h"
#include "communication_system.h"
#include "field_battle_data_transfer.h"
#include "game_records.h"
#include "savedata.h"
#include "sound.h"
#include "tv_segment.h"
#include "unk_020363E8.h"

#include "constdata/const_020EA358.h"

static BOOL WaitForCommResponse(FrontierScriptContext *ctx);
static u16 BattleTower_GetPartnerParam(BattleTower *battleTower, u8 param);
static BOOL CheckPartnerIsRetiring(FrontierScriptContext *ctx, BattleTower *battleTower, SaveData *saveData, u16 param3, u16 param4);

BOOL FrontierScrCmd_CallBattleTowerFunction(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    u16 functionIndex = FrontierScriptContext_ReadHalfWord(ctx);
    u16 functionArgument = FrontierScriptContext_GetVar(ctx);
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);
    BattleTower *battleTower = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    switch (functionIndex) {
    case BT_FUNC_RESET_SYSTEM:
        BattleTower_ResetSystem();
        break;
    case BT_FUNC_UNK_46:
        *destVar = BattleTower_GiveBattlePointsReward(battleTower);
        TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldData->saveData);
        sub_0206D0C8(broadcast, *destVar);
        GameRecords_AddToRecordValue(SaveData_GetGameRecords(fieldData->saveData), RECORD_BATTLE_POINTS_RECEIVED, *destVar);
        break;
    case BT_FUNC_GET_PARTNER_PARAM:
        *destVar = BattleTower_GetPartnerParam(battleTower, functionArgument);
        break;
    case BT_FUNC_GET_NEXT_OPPONENT_NUM:
        *destVar = BattleTower_GetNextOpponentNum(battleTower);
        break;
    case BT_FUNC_INCREMENT_CURRENT_BATTLE:
        *destVar = BattleTower_IncrementCurrentBattle(battleTower);
        break;
    case BT_FUNC_HAS_DEFEATED_SEVEN_TRAINERS:
        *destVar = BattleTower_HasDefeatedSevenTrainers(battleTower);
        break;
    case BT_FUNC_GET_CURRENT_STREAK:
        *destVar = BattleTower_GetCurrentStreak(battleTower);
        break;
    case BT_FUNC_GET_CHALLENGE_MODE:
        *destVar = BattleTower_GetChallengeMode(battleTower);
        break;
    case BT_FUNC_SET_OPPONENT_TEAMS:
        BattleTower_CreateOpponentParties(battleTower, fieldData->saveData);
        break;
    case BT_FUNC_GET_OPPONENT_OBJECT_ID:
        *destVar = BattleTower_GetObjectIDFromOpponentIDInFrontierScript(battleTower, functionArgument);
        break;
    case BT_FUNC_SET_BEAT_PALMER:
        BattleTower_SetBeatPalmer(battleTower, functionArgument);
        break;
    case BT_FUNC_UPDATE_GAME_RECORDS:
        BattleTower_UpdateGameRecords(battleTower, fieldData->saveData);
        break;
    case BT_FUNC_UPDATE_GAME_RECORDS_AND_JOURNAL:
        BattleTower_UpdateGameRecordsAndJournal(battleTower, fieldData->saveData, fieldData->journalEntry);
        break;
    case BT_FUNC_QUICKSAVE:
        BattleTower_Save(battleTower);
        break;
    case BT_FUNC_CLEAR_BUFFER:
        MI_CpuClear8(battleTower->commBuffer, 70);
        break;
    case BT_FUNC_SET_UNUSED_FLAG:
        battleTower->unk_8D6 = 1;
        break;
    case BT_FUNC_CHECK_IS_NULL:
        if (battleTower == NULL) {
            *destVar = TRUE;
        } else {
            *destVar = FALSE;
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return FALSE;
}

static u16 BattleTower_GetPartnerParam(BattleTower *battleTower, u8 param)
{
    static const u16 partnerGraphics[] = {
        OBJ_EVENT_GFX_CHERYL,
        OBJ_EVENT_GFX_MIRA,
        OBJ_EVENT_GFX_RILEY,
        OBJ_EVENT_GFX_MARLEY,
        OBJ_EVENT_GFX_BUCK
    };

    if (param == BT_PARAM_PARTNER_ID) {
        return battleTower->partnerID;
    }

    if (param == BT_PARAM_PARTNER_GRAPHICS_ID) {
        if (battleTower->challengeMode == BATTLE_TOWER_MODE_MULTI) {
            return partnerGraphics[battleTower->partnerID];
        } else {
            if (battleTower->partnerGender) {
                return OBJ_EVENT_GFX_PLAYER_F;
            } else {
                return OBJ_EVENT_GFX_PLAYER_M;
            }
        }
    }

    if (battleTower->playerGender) {
        return OBJ_EVENT_GFX_PLAYER_F;
    } else {
        return OBJ_EVENT_GFX_PLAYER_M;
    }
}

BOOL FrontierScrCmd_BattleTower_PrintTrainerIntro(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    u16 index = FrontierScriptContext_ReadByte(ctx);

    BattleTower *battleTower = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (battleTower == NULL) {
        return FALSE;
    }

    u16 *introMsg = battleTower->opponents[index].trainer.introMsg;

    BattleFrontier_PrintTrainerMessage(ctx, introMsg, BattleTower_GetTrainerMessagesBankID(battleTower->challengeMode));
    return TRUE;
}

BOOL FrontierScrCmd_FreeTowerStruct(FrontierScriptContext *ctx)
{
    BattleTower *battleTower = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleTower_Free(battleTower);

    return FALSE;
}

BOOL FrontierScrCmd_BattleTower_StartBattle(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleTower *battleTower = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    FieldBattleDTO *dto = BattleTower_SetupBattle(battleTower, fieldData);
    battleTower->dto = dto;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, BATTLE_TRAINER_sseq, 1);
    BattleFrontier_RunSubApp(ctx->scriptMan->frontier, &gBattleApplicationTemplate, dto, 0, NULL);

    return TRUE;
}

BOOL FrontierScrCmd_BattleTower_CheckWonBattle(FrontierScriptContext *ctx)
{
    BattleTower *battleTower = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);
    FieldBattleDTO *dto = battleTower->dto;

    battleTower->wonBattle = CheckPlayerWonBattle(dto->resultMask);
    *destVar = battleTower->wonBattle;

    FieldBattleDTO_Free(dto);
    return FALSE;
}

BOOL FrontierScrCmd_BattleTower_SendRetireMessage(FrontierScriptContext *ctx)
{
    BattleTower *battleTower;
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    u16 command = FrontierScriptContext_GetVar(ctx);
    u16 isRetiring = FrontierScriptContext_GetVar(ctx);
    u16 *success = FrontierScriptContext_TryGetVarPointer(ctx);

    battleTower = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    switch (command) {
    case 2:
        BattleTower_SetIsRetiringFlag(battleTower, isRetiring);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    if (sub_02036614(CommSys_CurNetId(), battleTower->commPayload) == TRUE) {
        *success = TRUE;
    } else {
        *success = FALSE;
        return TRUE;
    }

    return FALSE;
}

BOOL FrontierScrCmd_BattleTower_WaitForRetireMessage(FrontierScriptContext *ctx)
{
    u16 cmd = FrontierScriptContext_ReadHalfWord(ctx);
    u16 destVar = FrontierScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = cmd;
    ctx->data[1] = destVar;

    FrontierScriptContext_Pause(ctx, WaitForCommResponse);
    return TRUE;
}

static BOOL WaitForCommResponse(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleTower *battleTower = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (CheckPartnerIsRetiring(ctx, battleTower, fieldData->saveData, ctx->data[0], ctx->data[1]) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

static BOOL CheckPartnerIsRetiring(FrontierScriptContext *ctx, BattleTower *battleTower, SaveData *saveData, u16 cmd, u16 destVar)
{
    const void *payload = sub_0203664C(1 - CommSys_CurNetId());

    if (payload == NULL) {
        return FALSE;
    }

    u16 *isRetiring = FrontierScriptContext_GetVarPointer(ctx, destVar);

    switch (cmd) {
    case 2:
        *isRetiring = BattleTower_CheckIsRetiring(battleTower, payload);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return TRUE;
}
