#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "generated/game_records.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_defs/struct_0204AFC4.h"

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
#include "unk_020363E8.h"
#include "unk_02049D08.h"
#include "unk_0206CCB0.h"
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
    Pokemon *v1;
    BattleTower *battleTower;
    int v3, v4;
    u16 v5, v6;
    u16 *v7;
    UnkStruct_ov104_02230BE4 *v8 = sub_0209B970(param0->unk_00->unk_00);

    v5 = ov104_0222EA48(param0);
    v6 = ov104_0222FC00(param0);
    v7 = ov104_0222FBE4(param0);
    battleTower = sub_0209B978(param0->unk_00->unk_00);

    switch (v5) {
    case 2:
        sub_02049F8C();
        break;
    case (30 + 16):
        *v7 = sub_0204AA04(battleTower);
        broadcast = SaveData_GetTVBroadcast(v8->saveData);
        sub_0206D0C8(broadcast, *v7);
        GameRecords_AddToRecordValue(SaveData_GetGameRecords(v8->saveData), RECORD_UNK_068, *v7);
        break;
    case (30 + 25):
        *v7 = ov104_0223927C(battleTower, v6);
        break;
    case (30 + 3):
        *v7 = sub_0204A578(battleTower);
        break;
    case (30 + 4):
        *v7 = ov104_022395B4(battleTower);
        break;
    case (30 + 5):
        *v7 = sub_0204A57C(battleTower);
        break;
    case (30 + 6):
        *v7 = ov104_022395D8(battleTower);
        break;
    case (30 + 13):
        *v7 = (u16)BattleTower_GetChallengeMode(battleTower);
        break;
    case (30 + 10):
        ov104_022394A4(battleTower, v8->saveData);
        break;
    case (30 + 11):
        *v7 = ov104_02239588(battleTower, v6);
        break;
    case (30 + 14):
        ov104_022395A0(battleTower, v6);
        break;
    case (30 + 7):
        sub_0204A660(battleTower, v8->saveData);
        break;
    case (30 + 8):
        sub_0204A7A4(battleTower, v8->saveData, v8->journalEntry);
        break;
    case (30 + 9):
        sub_0204A8C8(battleTower);
        break;
    case (30 + 28):
        MI_CpuClear8(battleTower->unk_884, 70);
        break;
    case (30 + 29):
        battleTower->unk_8D6 = 1;
        break;
    case 100:
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

    return 0;
}

static u16 ov104_0223927C(BattleTower *battleTower, u8 param1)
{
    static const u16 v0[] = {
        0x8d,
        0x91,
        0x8e,
        0x8f,
        0x90
    };

    if (param1 == 2) {
        return battleTower->unk_10_5;
    }

    if (param1 == 1) {
        if (battleTower->challengeMode == 2) {
            return v0[battleTower->unk_10_5];
        } else {
            if (battleTower->unk_12) {
                return 0x61;
            } else {
                return 0x0;
            }
        }
    }

    if (battleTower->unk_11) {
        return 0x61;
    } else {
        return 0x0;
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

    v1 = battleTower->unk_78[v4].unk_00.unk_18;

    ov104_0223310C(param0, v1, ov104_0223A790(battleTower->challengeMode));
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
