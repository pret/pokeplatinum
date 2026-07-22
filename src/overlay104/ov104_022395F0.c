#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "constants/battle_tower.h"
#include "generated/battle_tower_modes.h"

#include "struct_defs/battle_tower.h"
#include "struct_defs/struct_0209BBA4.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "overlay104/defs.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_02239C58.h"
#include "overlay104/ov104_0223C164.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "battle_frontier.h"
#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "battle_hall_save.h"
#include "communication_system.h"
#include "heap.h"
#include "item_use_pokemon.h"
#include "party.h"
#include "scrcmd_battle_hall.h"
#include "unk_02049D08.h"
#include "unk_0209BA80.h"
#include "wifi_battle_tower_save.h"

static BOOL ov104_02239680(FrontierScriptContext *param0);
static BOOL ov104_02239C20(FrontierScriptContext *param0);

BOOL FrontierScrCmd_AA(FrontierScriptContext *param0)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(param0->scriptMan->frontier);
    UnkStruct_0209BBA4 *v0 = ov104_02239C58(fieldData->saveData);

    BattleFrontier_SetFacilityStruct(param0->scriptMan->frontier, v0);
    return 0;
}

BOOL FrontierScrCmd_AB(FrontierScriptContext *param0)
{
    UnkStruct_0209BBA4 *v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    ov104_02239C7C(v0);

    return 0;
}

BOOL FrontierScrCmd_AC(FrontierScriptContext *param0)
{
    UnkStruct_0209BBA4 *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 v3 = FrontierScriptContext_GetVar(param0);
    u16 *v4 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    *v4 = ov104_02239C88(v0, v1, v2, v3);

    return 1;
}

BOOL FrontierScrCmd_AD(FrontierScriptContext *param0)
{
    u16 v0 = FrontierScriptContext_ReadHalfWord(param0);

    param0->data[0] = v0;
    FrontierScriptContext_Pause(param0, ov104_02239680);

    return 1;
}

static BOOL ov104_02239680(FrontierScriptContext *param0)
{
    UnkStruct_0209BBA4 *v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);

    if (v0->unk_6F >= 2) {
        v0->unk_6F = 0;
        return 1;
    }

    return 0;
}

BOOL FrontierScrCmd_AE(FrontierScriptContext *param0)
{
    UnkStruct_0209BBA4 *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);
    u16 *v2 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);

    if (v1 == v0->unk_6E) {
        *v2 = 1;
    } else {
        *v2 = 0;
    }

    return 0;
}

BOOL FrontierScrCmd_AF(FrontierScriptContext *param0)
{
    UnkStruct_0209BBA4 *v0;
    FieldFrontierDTO *fieldData;
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 v3 = FrontierScriptContext_GetVar(param0);
    u16 *v4 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    fieldData = BattleFrontier_GetFieldData(param0->scriptMan->frontier);

    v0->fieldSystem = fieldData->fieldSystem;
    v0->unk_B0 = v4;

    ov104_02239CD0(param0->scriptMan->frontier, v0, v3);

    return 1;
}

BOOL FrontierScrCmd_B0(FrontierScriptContext *param0)
{
    int v0;
    UnkStruct_0209BBA4 *v1;
    u16 v2;
    u16 *v3 = FrontierScriptContext_TryGetVarPointer(param0);
    u16 *v4 = FrontierScriptContext_TryGetVarPointer(param0);

    v1 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);

    if (v1->partyMenu->selectedMonSlot == 7) {
        *v3 = 0xff;

        for (v0 = 0; v0 < 2; v0++) {
            v1->unk_A1[v0] = 0;
        }
    } else if (v1->partyMenu->selectedMonSlot == 6) {
        *v3 = v1->partyMenu->selectionOrder[0];
        *v3 -= 1;

        *v4 = v1->partyMenu->selectionOrder[1];

        if (*v4 > 0) {
            *v4 -= 1;
        }
    }

    Heap_Free(v1->partyMenu);
    v1->partyMenu = NULL;

    return 0;
}

BOOL FrontierScrCmd_B1(FrontierScriptContext *param0)
{
    UnkStruct_0209BBA4 *v0;
    u16 *v1 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    *v1 = v0->unk_59;

    return 0;
}

BOOL FrontierScrCmd_B2(FrontierScriptContext *param0)
{
    int v0;
    u16 v1, v2;
    WifiBattleTowerRecord *record;
    UnkStruct_0209BBA4 *v4;
    FieldFrontierDTO *fieldData;
    u8 v6 = FrontierScriptContext_ReadByte(param0);
    u8 v7 = FrontierScriptContext_ReadByte(param0);
    u8 v8 = FrontierScriptContext_ReadByte(param0);
    u16 *v9 = FrontierScriptContext_TryGetVarPointer(param0);

    v4 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    fieldData = BattleFrontier_GetFieldData(param0->scriptMan->frontier);

    switch (v6) {
    case 0:
        sub_0209BA80(v4);
        break;
    case 1:
        *v9 = v4->unk_86[0];
        break;
    case 2:
        if (v7 == 1) {
            *v9 = 0;

            if ((v4->unk_76[0] == v4->unk_86[0]) || (v4->unk_76[0] == v4->unk_86[1])) {
                *v9 += 1;
            }

            if ((v4->unk_76[1] == v4->unk_86[0]) || (v4->unk_76[1] == v4->unk_86[1])) {
                *v9 += 2;
            }
        } else if (v7 == 5) {
            if (v4->unk_76[0] == v4->unk_86[0]) {
                *v9 = 0;
            } else {
                *v9 = 1;
            }
        } else if ((v7 == 4) || (v7 == 6)) {
            *v9 = 0;

            if ((v4->unk_76[0] == v4->unk_86[0]) || (v4->unk_76[0] == v4->unk_86[1])) {
                *v9 += 1;
            }

            if ((v4->unk_76[1] == v4->unk_86[0]) || (v4->unk_76[1] == v4->unk_86[1])) {
                *v9 += 2;
            }
        }

        break;

    case 3:
        *v9 = (u16)BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(fieldData->saveData), STAT_HALL_WFC_STREAK_ACTIVE);
        break;
    case 4:
        *v9 = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(fieldData->saveData), BattleFrontierStats_GetHallLatestSpeciesIndex(3));
        break;
    case 5:
        *v9 = v4->unk_76[v7];
        break;
    case 6:
        BattleHall_ClearActiveStreak(fieldData->saveData, BattleHallStreakFlags_Get(fieldData->saveData), 3);
        break;
    case 7:
        v4->unk_A0 = v7;
        break;
    case 8:
        *v9 = v4->unk_74;
        break;
    case 9:
        *v9 = v4->unk_A0;
        break;
    case 10:
        *v9 = v4->unk_71;
        break;
    case 11:
        *v9 = 1;
        v1 = ov104_0223C264(v4->unk_A0);
        v2 = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(v4->saveData), v1);

        if (v2 != v4->unk_72) {
            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(v4->saveData), v1, 0);

            v1 = ov104_0223C29C(v4->unk_A0);
            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(v4->saveData), v1, 0);

            *v9 = 0;
        }
        break;
    case 12:
        v1 = ov104_0223C29C(v4->unk_A0);
        *v9 = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(v4->saveData), v1);

        if (*v9 == 0) {
            v1 = ov104_0223C264(v4->unk_A0);
            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(v4->saveData), v1, 0);

            if (v4->unk_A0 == 1) {
                record = SaveData_GetWifiBattleTowerRecord(v4->saveData);
                WifiBattleTowerRecord_UpdateRoomNum(record, 6, 2);
            }

            if (v4->unk_A0 == 4) {
                BattleFrontierSave_SetStat(SaveData_GetBattleFrontier(v4->saveData), STAT_CASTLE_LATEST_CP_MULTI_WFC, BattleFrontierStats_GetHostFriendIdx(v1), 0);
                BattleFrontierSave_SetStat(SaveData_GetBattleFrontier(v4->saveData), STAT_CASTLE_SPENT_CP_MULTI_WFC, BattleFrontierStats_GetHostFriendIdx(v1), 0);
            }

            if (v4->unk_A0 == 2) {
                BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(v4->saveData), BattleFrontierStats_GetFactoryLatestTradeCountIndex(0, 3), 0);
            }

            if (v4->unk_A0 == 3) {
                BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(v4->saveData), BattleFrontierStats_GetFactoryLatestTradeCountIndex(1, 3), 0);
            }
        } else {
            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(v4->saveData), v1, 0);
        }
        break;
    case 13:
        for (v0 = 0; v0 < 2; v0++) {
            v4->unk_A1[v0] = 0;
        }

        v4->unk_9F = 0;
        break;
    }

    return 0;
}

BOOL FrontierScrCmd_B3(FrontierScriptContext *param0)
{
    int v0;
    BattleTower *battleTower;
    FieldFrontierDTO *fieldData;
    UnkStruct_0209BBA4 *v3;
    UnkStruct_0209BBA4 v4;

    fieldData = BattleFrontier_GetFieldData(param0->scriptMan->frontier);
    v3 = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);

    v4 = *v3;
    ov104_02239C7C(v3);

    battleTower = BattleTower_Init(fieldData->saveData, 0, BATTLE_TOWER_MODE_6);
    BattleFrontier_SetFacilityStruct(param0->scriptMan->frontier, battleTower);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        BattleFrontier_FlagGeonetLinkInfo(fieldData->saveData);
    }

    for (v0 = 0; v0 < battleTower->partySize; v0++) {
        battleTower->unk_2A[v0] = v4.unk_6A[v0];
        battleTower->unk_2E[v0] = v4.unk_76[v0];
        battleTower->unk_36[v0] = v4.unk_7E[v0];
    }

    battleTower->unk_16[0] = v4.unk_86[0];
    battleTower->unk_16[1] = v4.unk_86[1];
    battleTower->partnerGender = v4.unk_58;
    battleTower->partnerID = BT_PARTNERS_COUNT + battleTower->partnerGender;

    if (CommSys_CurNetId() == 0) {
        sub_0204A4C8(battleTower, fieldData->saveData);
    }

    Party_HealAllMembers(SaveData_GetParty(fieldData->saveData));
    sub_0209BA80(battleTower);

    battleTower->unk_8D4 = 0;

    return 0;
}

BOOL FrontierScrCmd_B4(FrontierScriptContext *param0)
{
    BattleTower *battleTower;
    u16 *v1 = FrontierScriptContext_TryGetVarPointer(param0);

    battleTower = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);
    *v1 = sub_0209BB08(battleTower);

    return 1;
}

BOOL FrontierScrCmd_B5(FrontierScriptContext *param0)
{
    FrontierScriptContext_Pause(param0, ov104_02239C20);
    return 1;
}

static BOOL ov104_02239C20(FrontierScriptContext *param0)
{
    BattleTower *battleTower = BattleFrontier_GetFacilityStruct(param0->scriptMan->frontier);

    if (battleTower->unk_8D4 < 2) {
        return 0;
    }

    battleTower->unk_8D4 = 0;
    return 1;
}

BOOL FrontierScrCmd_ClearTowerStruct(FrontierScriptContext *ctx)
{
    BattleTower *battleTower = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleTower_Free(battleTower);
    battleTower = NULL;

    return FALSE;
}
