#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "constants/battle_tower.h"
#include "generated/battle_tower_functions.h"
#include "generated/battle_tower_modes.h"
#include "generated/game_records.h"
#include "generated/object_events_gfx.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_defs/battle_tower.h"

#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_022394A4.h"
#include "overlay104/ov104_0223A0C4.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "savedata/save_table.h"

#include "communication_system.h"
#include "field_battle_data_transfer.h"
#include "game_records.h"
#include "pokemon.h"
#include "savedata.h"
#include "sound.h"
#include "tv_episode_segment.h"
#include "unk_020363E8.h"
#include "unk_02049D08.h"
#include "unk_0209B6F8.h"

#include "constdata/const_020EA358.h"

static BOOL ov104_0223942C(FrontierScriptContext *param0);
static u16 BattleTower_GetPartnerParam(BattleTower *battleTower, u8 param);
static BOOL ov104_02239464(FrontierScriptContext *param0, BattleTower *battleTower, SaveData *saveData, u16 param3, u16 param4);

BOOL FrontierScrCmd_CallBattleTowerFunction(FrontierScriptContext *ctx)
{
    TVBroadcast *broadcast;
    BattleTower *battleTower;
    u16 functionIndex, functionArgument;
    u16 *destVar;
    UnkStruct_ov104_02230BE4 *v8 = sub_0209B970(ctx->unk_00->unk_00);

    functionIndex = FrontierScriptContext_ReadHalfWord(ctx);
    functionArgument = FrontierScriptContext_GetVar(ctx);
    destVar = FrontierScriptContext_TryGetVarPointer(ctx);
    battleTower = sub_0209B978(ctx->unk_00->unk_00);

    switch (functionIndex) {
    case BT_FUNC_RESET_SYSTEM:
        BattleTower_ResetSystem();
        break;
    case BT_FUNC_UNK_46:
        *destVar = BattleTower_GiveBattlePointsReward(battleTower);
        broadcast = SaveData_GetTVBroadcast(v8->saveData);
        sub_0206D0C8(broadcast, *destVar);
        GameRecords_AddToRecordValue(SaveData_GetGameRecords(v8->saveData), RECORD_BATTLE_POINTS_RECEIVED, *destVar);
        break;
    case BT_FUNC_GET_PARTNER_PARAM:
        *destVar = BattleTower_GetPartnerParam(battleTower, functionArgument);
        break;
    case BT_FUNC_GET_NEXT_OPPONENT_NUM:
        *destVar = BattleTower_GetNextOpponentNum(battleTower);
        break;
    case BT_FUNC_UNK_34:
        *destVar = ov104_022395B4(battleTower);
        break;
    case BT_FUNC_HAS_DEFEATED_SEVEN_TRAINERS:
        *destVar = BattleTower_HasDefeatedSevenTrainers(battleTower);
        break;
    case BT_FUNC_UNK_36:
        *destVar = ov104_022395D8(battleTower);
        break;
    case BT_FUNC_GET_CHALLENGE_MODE:
        *destVar = (u16)BattleTower_GetChallengeMode(battleTower);
        break;
    case BT_FUNC_SET_OPPONENT_TEAMS:
        BattleTower_CreateOpponentParties(battleTower, v8->saveData);
        break;
    case BT_FUNC_GET_OPPONENT_OBJECT_ID:
        *destVar = BattleTower_GetObjectIDFromOpponentIDInFrontierScript(battleTower, functionArgument);
        break;
    case BT_FUNC_SET_BEAT_PALMER:
        BattleTower_SetBeatPalmer(battleTower, functionArgument);
        break;
    case BT_FUNC_UPDATE_GAME_RECORDS:
        BattleTower_UpdateGameRecords(battleTower, v8->saveData);
        break;
    case BT_FUNC_UPDATE_GAME_RECORDS_AND_JOURNAL:
        BattleTower_UpdateGameRecordsAndJournal(battleTower, v8->saveData, v8->journalEntry);
        break;
    case BT_FUNC_UNK_39:
        sub_0204A8C8(battleTower);
        break;
    case BT_FUNC_UNK_58:
        MI_CpuClear8(battleTower->unk_884, 70);
        break;
    case BT_FUNC_UNK_59:
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
        GF_ASSERT(0);
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

BOOL FrontierScrCmd_85(FrontierScriptContext *param0)
{
    u8 v0;
    u16 *v1;
    BattleTower *battleTower;
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0->unk_00->unk_00);
    u16 v4 = FrontierScriptContext_ReadByte(param0);

    battleTower = sub_0209B978(param0->unk_00->unk_00);

    if (battleTower == NULL) {
        return 0;
    }

    v1 = battleTower->opponentsDataDTO[v4].trDataDTO.unk_18;

    ov104_0223310C(param0, v1, BattleTower_GetTrainerMessagesBankID(battleTower->challengeMode));
    return 1;
}

BOOL FrontierScrCmd_86(FrontierScriptContext *param0)
{
    BattleTower *battleTower = sub_0209B978(param0->unk_00->unk_00);
    BattleTower_Free(battleTower);

    return 0;
}

BOOL FrontierScrCmd_87(FrontierScriptContext *param0)
{
    FieldBattleDTO *v0;
    BattleTower *battleTower;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_00->unk_00);

    battleTower = sub_0209B978(param0->unk_00->unk_00);
    v0 = ov104_0223A580(battleTower, v2);

    battleTower->unk_8D0 = v0;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_TRAINER, 1);
    sub_0209B988(param0->unk_00->unk_00, &gBattleApplicationTemplate, v0, 0, NULL);

    return 1;
}

BOOL FrontierScrCmd_88(FrontierScriptContext *param0)
{
    BattleTower *battleTower;
    FieldBattleDTO *v1;
    u16 *v2;

    battleTower = sub_0209B978(param0->unk_00->unk_00);
    v2 = FrontierScriptContext_TryGetVarPointer(param0);
    v1 = battleTower->unk_8D0;

    battleTower->unk_8CC = CheckPlayerWonBattle(v1->resultMask);
    *v2 = battleTower->unk_8CC;

    FieldBattleDTO_Free(v1);
    return 0;
}

BOOL FrontierScrCmd_89(FrontierScriptContext *param0)
{
    BattleTower *battleTower;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 v3 = FrontierScriptContext_GetVar(param0);
    u16 *v4 = FrontierScriptContext_TryGetVarPointer(param0);

    battleTower = sub_0209B978(param0->unk_00->unk_00);

    switch (v2) {
    case 2:
        ov104_0223A734(battleTower, v3);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (sub_02036614(CommSys_CurNetId(), battleTower->unk_83E) == 1) {
        *v4 = 1;
    } else {
        *v4 = 0;
        return 1;
    }

    return 0;
}

BOOL FrontierScrCmd_8A(FrontierScriptContext *param0)
{
    u16 v0 = FrontierScriptContext_ReadHalfWord(param0);
    u16 v1 = FrontierScriptContext_ReadHalfWord(param0);

    param0->data[0] = v0;
    param0->data[1] = v1;

    FrontierScriptContext_Pause(param0, ov104_0223942C);
    return 1;
}

static BOOL ov104_0223942C(FrontierScriptContext *param0)
{
    BattleTower *battleTower;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);

    battleTower = sub_0209B978(param0->unk_00->unk_00);

    if (ov104_02239464(param0, battleTower, v1->saveData, param0->data[0], param0->data[1]) == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov104_02239464(FrontierScriptContext *param0, BattleTower *battleTower, SaveData *saveData, u16 param3, u16 param4)
{
    u16 *v0;
    const void *v1 = sub_0203664C(1 - CommSys_CurNetId());

    if (v1 == NULL) {
        return 0;
    }

    v0 = FrontierScriptContext_GetVarPointer(param0, param4);

    switch (param3) {
    case 2:
        *v0 = ov104_0223A750(battleTower, v1);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 1;
}
