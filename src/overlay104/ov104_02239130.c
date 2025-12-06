#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "constants/battle_tower.h"
#include "generated/battle_tower_functions.h"
#include "generated/battle_tower_modes.h"
#include "generated/game_records.h"
#include "generated/object_events.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_defs/battle_tower.h"

#include "overlay104/ov104_0222E930.h"
#include "overlay104/ov104_0222FBE4.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_022394A4.h"
#include "overlay104/ov104_0223A0C4.h"
#include "overlay104/struct_ov104_0222E930_decl.h"
#include "overlay104/struct_ov104_0222E930_t.h"
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

BOOL ov104_02239130(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_022392C0(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239300(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239314(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239364(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_0223939C(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239400(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0223942C(UnkStruct_ov104_0222E930 *param0);
static u16 ov104_0223927C(BattleTower *battleTower, u8 param1);
static BOOL ov104_02239464(UnkStruct_ov104_0222E930 *param0, BattleTower *battleTower, SaveData *saveData, u16 param3, u16 param4);

BOOL ov104_02239130(UnkStruct_ov104_0222E930 *param0)
{
    TVBroadcast *broadcast;
    BattleTower *battleTower;
    u16 functionIndex, v6;
    u16 *v7;
    UnkStruct_ov104_02230BE4 *v8 = sub_0209B970(param0->unk_00->unk_00);

    functionIndex = ov104_0222EA48(param0);
    v6 = ov104_0222FC00(param0);
    v7 = ov104_0222FBE4(param0);
    battleTower = sub_0209B978(param0->unk_00->unk_00);

    switch (functionIndex) {
    case BATTLE_TOWER_FUNCTION_RESET_SYSTEM:
        BattleTower_ResetSystem();
        break;
    case BATTLE_TOWER_FUNCTION_UNK_46:
        *v7 = sub_0204AA04(battleTower);
        broadcast = SaveData_GetTVBroadcast(v8->saveData);
        sub_0206D0C8(broadcast, *v7);
        GameRecords_AddToRecordValue(SaveData_GetGameRecords(v8->saveData), RECORD_UNK_068, *v7);
        break;
    case BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM:
        *v7 = ov104_0223927C(battleTower, v6);
        break;
    case BATTLE_TOWER_FUNCTION_GET_NEXT_OPPONENT_NUM:
        *v7 = BattleTower_GetNextOpponentNum(battleTower);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_34:
        *v7 = ov104_022395B4(battleTower);
        break;
    case BATTLE_TOWER_FUNCTION_HAS_DEFEATED_SEVEN_TRAINERS:
        *v7 = BattleTower_HasDefeatedSevenTrainers(battleTower);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_36:
        *v7 = ov104_022395D8(battleTower);
        break;
    case BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE:
        *v7 = (u16)BattleTower_GetChallengeMode(battleTower);
        break;
    case BATTLE_TOWER_FUNCTION_SET_OPPONENT_TEAMS:
        BattleTower_CreateOpponentParties(battleTower, v8->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_GET_OPPONENT_OBJECT_ID:
        *v7 = ov104_02239588(battleTower, v6);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_44:
        ov104_022395A0(battleTower, v6);
        break;
    case BATTLE_TOWER_FUNCTION_UPDATE_GAME_RECORDS:
        BattleTower_UpdateGameRecords(battleTower, v8->saveData);
        break;
    case BATTLE_TOWER_FUNCTION_UPDATE_GAME_RECORDS_AND_JOURNAL:
        BattleTower_UpdateGameRecordsAndJournal(battleTower, v8->saveData, v8->journalEntry);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_39:
        sub_0204A8C8(battleTower);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_58:
        MI_CpuClear8(battleTower->unk_884, 70);
        break;
    case BATTLE_TOWER_FUNCTION_UNK_59:
        battleTower->unk_8D6 = 1;
        break;
    case BATTLE_TOWER_FUNCTION_CHECK_IS_NULL:
        if (battleTower == NULL) {
            *v7 = 1;
        } else {
            *v7 = 0;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return FALSE;
}

static u16 ov104_0223927C(BattleTower *battleTower, u8 param)
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

BOOL ov104_022392C0(UnkStruct_ov104_0222E930 *param0)
{
    u8 v0;
    u16 *v1;
    BattleTower *battleTower;
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0->unk_00->unk_00);
    u16 v4 = (*((param0)->unk_1C++));

    battleTower = sub_0209B978(param0->unk_00->unk_00);

    if (battleTower == NULL) {
        return 0;
    }

    v1 = battleTower->opponentsDataDTO[v4].trDataDTO.unk_18;

    ov104_0223310C(param0, v1, BattleTower_GetTrainerMessagesBankID(battleTower->challengeMode));
    return 1;
}

BOOL ov104_02239300(UnkStruct_ov104_0222E930 *param0)
{
    BattleTower *battleTower = sub_0209B978(param0->unk_00->unk_00);
    BattleTower_Free(battleTower);

    return 0;
}

BOOL ov104_02239314(UnkStruct_ov104_0222E930 *param0)
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

BOOL ov104_02239364(UnkStruct_ov104_0222E930 *param0)
{
    BattleTower *battleTower;
    FieldBattleDTO *v1;
    u16 *v2;

    battleTower = sub_0209B978(param0->unk_00->unk_00);
    v2 = ov104_0222FBE4(param0);
    v1 = battleTower->unk_8D0;

    battleTower->unk_8CC = CheckPlayerWonBattle(v1->resultMask);
    *v2 = battleTower->unk_8CC;

    FieldBattleDTO_Free(v1);
    return 0;
}

BOOL ov104_0223939C(UnkStruct_ov104_0222E930 *param0)
{
    BattleTower *battleTower;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);
    u16 *v4 = ov104_0222FBE4(param0);

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

BOOL ov104_02239400(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222EA48(param0);
    u16 v1 = ov104_0222EA48(param0);

    param0->unk_78[0] = v0;
    param0->unk_78[1] = v1;

    ov104_0222E974(param0, ov104_0223942C);
    return 1;
}

static BOOL ov104_0223942C(UnkStruct_ov104_0222E930 *param0)
{
    BattleTower *battleTower;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);

    battleTower = sub_0209B978(param0->unk_00->unk_00);

    if (ov104_02239464(param0, battleTower, v1->saveData, param0->unk_78[0], param0->unk_78[1]) == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov104_02239464(UnkStruct_ov104_0222E930 *param0, BattleTower *battleTower, SaveData *saveData, u16 param3, u16 param4)
{
    u16 *v0;
    const void *v1 = sub_0203664C(1 - CommSys_CurNetId());

    if (v1 == NULL) {
        return 0;
    }

    v0 = ov104_0222FC14(param0, param4);

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
