#include "comm_command_frontier.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_tower.h"
#include "constants/communication/comm_command.h"

#include "struct_defs/battle_tower.h"
#include "struct_defs/comm_cmd_table.h"
#include "struct_defs/struct_0209BBA4.h"

#include "applications/frontier/battle_arcade/main.h"
#include "applications/frontier/battle_castle/opponent_app.h"
#include "applications/frontier/battle_castle/self_app.h"
#include "applications/frontier/battle_factory/main.h"
#include "applications/frontier/battle_hall/main.h"
#include "overlay104/ov104_0222ECE8.h"
#include "overlay104/ov104_0223C164.h"

#include "battle_frontier_stats.h"
#include "comm_command.h"
#include "communication_system.h"
#include "party.h"
#include "pokemon.h"
#include "unk_0205DFC4.h"

static void CommCmd_Frontier_62(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BB08(BattleTower *battleTower);
static void CommCmd_Frontier_63(int param0, int param1, void *param2, void *param3);
static void CommCmd_Frontier_64(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BBA4(UnkStruct_0209BBA4 *param0);
void CommCmd_Frontier_57(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BC1C(UnkStruct_0209BBA4 *param0, u16 param1);
void CommCmd_Frontier_58(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BC64(UnkStruct_0209BBA4 *param0, u16 param1, u16 param2);
void CommCmd_Frontier_59(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BD68(UnkStruct_0209BBA4 *param0, u16 param1);
void CommCmd_Frontier_60(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BDB0(UnkStruct_0209BBA4 *param0, u16 param1);
void CommCmd_Frontier_61(int param0, int param1, void *param2, void *param3);

// clang-format off
static const CommCmdTable Unk_020F8BF0[] = {
    [COMM_CMD_F_22 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_22, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_23 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_23, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_24 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_24, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_25 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_25, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_26 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_26, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_27 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_27, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_28 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_28, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_FACTORY_DUMMY - COMM_CMD_MAX_COMMON] = { CommCmd_BattleFactoryDummy, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_FACTORY_SELECTION_UPDATE - COMM_CMD_MAX_COMMON] = { CommCmd_BattleFactoryHandleSelectionUpdate, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_FACTORY_DUMMY2 - COMM_CMD_MAX_COMMON] = { CommCmd_BattleFactoryDummy2, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_FACTORY_TRADE_RESULT - COMM_CMD_MAX_COMMON] = { CommCmd_BattleFactoryHandleTradeResult, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_33 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_33, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_34 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_34, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_35 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_35, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_36 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_36, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_37 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_37, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_38 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_38, CommPacketSizeOf_Variable, ov104_0222EED8 },
    [COMM_CMD_HALL_DUMMY - COMM_CMD_MAX_COMMON] = { CommCmd_BattleHallDummy, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_HALL_TYPE_SELECTION_MSG - COMM_CMD_MAX_COMMON] = { CommCmd_BattleHallHandleTypeSelectionMsg, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_HALL_PARTNER_DECISION - COMM_CMD_MAX_COMMON] = { CommCmd_BattleHallHandlePartnerDecision, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_42 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_42, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_43 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_43, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_44 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_44, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_45 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_45, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_46 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_46, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_47 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_47, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_48 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_48, CommPacketSizeOf_Variable, ov104_0222F84C },
    [COMM_CMD_CASTLE_PLAYER_INFO - COMM_CMD_MAX_COMMON] = { CommCmd_BattleCastleHandlePlayerInfo, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CASTLE_PURCHASE_INFO - COMM_CMD_MAX_COMMON] = { CommCmd_BattleCastlePurchaseInfo, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CASTLE_UPDATE_CURSOR - COMM_CMD_MAX_COMMON] = { CommCmd_BattleCastleHandleUpdateCursor, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CASTLE_EXIT - COMM_CMD_MAX_COMMON] = { CommCmd_BattleCastleHandleExitApp, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CASTLE_OPP_PLAYER_INFO - COMM_CMD_MAX_COMMON] = { CommCmd_BattleCastleOpponentHandlePlayerInfo, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CASTLE_OPP_PURCHASE_INFO - COMM_CMD_MAX_COMMON] = { CommCmd_BattleCastleOpponentHandlePurchaseInfo, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CASTLE_OPP_UPDATE_CURSOR - COMM_CMD_MAX_COMMON] = { CommCmd_BattleCastleOpponentUpdateCursorCmd, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CASTLE_OPP_EXIT - COMM_CMD_MAX_COMMON] = { CommCmd_BattleCastleOpponentHandleExitApp, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_57 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_57, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_58 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_58, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_59 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_59, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_60 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_60, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_61 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_61, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_62 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_62, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_63 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_63, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_64 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_64, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_65 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_65, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_66 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_66, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_67 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_67, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_68 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_68, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_69 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_69, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_F_70 - COMM_CMD_MAX_COMMON] = { CommCmd_Frontier_70, CommPacketSizeOf_Variable, ov104_0222FBC4 },
    [COMM_CMD_ARCADE_INIT_LAYOUT - COMM_CMD_MAX_COMMON] = { CommCmd_BattleArcadeHandleInitialLayout, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_ARCADE_RESULT - COMM_CMD_MAX_COMMON] = { CommCmd_BattleArcadeHandleResult, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_ARCADE_UNUSED - COMM_CMD_MAX_COMMON] = { CommCmd_BattleArcadeUnused, CommPacketSizeOf_Variable, NULL }
};
// clang-format on

void sub_0209BA80(void *param0)
{
    int v0 = sizeof(Unk_020F8BF0) / sizeof(CommCmdTable);
    CommCmdManager_Init(Unk_020F8BF0, v0, param0);
}

static void CommCmd_Frontier_62(int param0, int param1, void *param2, void *param3)
{
    u16 v0;
    int v1;
    BattleTower *battleTower = param3;
    const u16 *v3 = param2;

    v0 = 0;
    v1 = 0;
    battleTower->unk_8D4++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleTower->partnerGender = (u8)v3[0];
    battleTower->unk_16[0] = v3[1];
    battleTower->unk_16[1] = v3[2];
    battleTower->unk_14 = v3[3];
    battleTower->partnerID = BT_PARTNERS_COUNT + battleTower->partnerGender;

    if ((battleTower->unk_2E[0] == battleTower->unk_16[0]) || (battleTower->unk_2E[0] == battleTower->unk_16[1])) {
        v0 += 1;
    }

    if ((battleTower->unk_2E[1] == battleTower->unk_16[0]) || (battleTower->unk_2E[1] == battleTower->unk_16[1])) {
        v0 += 2;
    }

    battleTower->unk_8D8 = v0;
    return;
}

BOOL sub_0209BB08(BattleTower *battleTower)
{
    int v0, v1;

    v1 = (14 * 2);

    MI_CpuCopy8(battleTower->trainerIDs, battleTower->unk_83E, v1);

    if (CommSys_SendData(COMM_CMD_F_63, battleTower->unk_83E, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

static void CommCmd_Frontier_63(int param0, int param1, void *param2, void *param3)
{
    int v0;
    BattleTower *battleTower = param3;
    const u16 *v2 = param2;

    v0 = 0;
    battleTower->unk_8D4++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    MI_CpuCopy8(v2, battleTower->trainerIDs, BT_OPPONENTS_COUNT * 2 * sizeof(u16));
    return;
}

static void CommCmd_Frontier_64(int param0, int param1, void *param2, void *param3)
{
    int v0;
    BattleTower *battleTower = param3;
    const u16 *v2 = param2;

    v0 = 0;

    battleTower->unk_8D8 = 0;
    battleTower->unk_8D4++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (battleTower->unk_10_3 || v2[0]) {
        battleTower->unk_8D8 = 1;
    }

    return;
}

BOOL sub_0209BBA4(UnkStruct_0209BBA4 *param0)
{
    int v0, v1, v2;

    v1 = 40;
    param0->unk_08[0] = param0->unk_A0;

    v2 = ov104_0223C264(param0->unk_A0);
    param0->unk_08[1] = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(param0->saveData), v2, BattleFrontierStats_GetHostFriendIdx(v2));

    if (CommSys_SendData(COMM_CMD_F_57, param0->unk_08, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void CommCmd_Frontier_57(int param0, int param1, void *param2, void *param3)
{
    u16 v0;
    UnkStruct_0209BBA4 *v1 = param3;
    const u16 *v2 = param2;

    v1->unk_6F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1->unk_6E = (u8)v2[0];
    v1->unk_72 = v2[1];

    return;
}

BOOL sub_0209BC1C(UnkStruct_0209BBA4 *param0, u16 param1)
{
    int v0, v1 = 40;
    param0->unk_08[0] = param1;

    if (CommSys_SendData(COMM_CMD_F_58, param0->unk_08, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void CommCmd_Frontier_58(int param0, int param1, void *param2, void *param3)
{
    int v0;
    UnkStruct_0209BBA4 *v1 = param3;
    const u16 *v2 = param2;

    v0 = 0;
    v1->unk_6F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1->unk_59 = (u8)v2[0];
    return;
}

BOOL sub_0209BC64(UnkStruct_0209BBA4 *param0, u16 param1, u16 param2)
{
    int v0, v1;
    Pokemon *v2;
    Party *v3;

    v1 = 40;
    v3 = SaveData_GetParty(param0->saveData);

    param0->unk_6A[0] = param1;
    param0->unk_6A[1] = param2;

    if (param1 == 0xff) {
        param0->unk_76[0] = 0;
        param0->unk_7E[0] = 0;
        param0->unk_76[1] = 0;
        param0->unk_7E[1] = 0;
    } else {
        v2 = Party_GetPokemonBySlotIndex(v3, param1);

        param0->unk_76[0] = Pokemon_GetValue(v2, MON_DATA_SPECIES, NULL);
        param0->unk_7E[0] = Pokemon_GetValue(v2, MON_DATA_HELD_ITEM, NULL);

        v2 = Party_GetPokemonBySlotIndex(v3, param2);

        param0->unk_76[1] = Pokemon_GetValue(v2, MON_DATA_SPECIES, NULL);
        param0->unk_7E[1] = Pokemon_GetValue(v2, MON_DATA_HELD_ITEM, NULL);
    }

    param0->unk_08[0] = param0->unk_76[0];
    param0->unk_08[1] = param0->unk_7E[0];
    param0->unk_08[2] = param0->unk_76[1];
    param0->unk_08[3] = param0->unk_7E[1];

    if (CommSys_SendData(COMM_CMD_F_59, param0->unk_08, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void CommCmd_Frontier_59(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_0209BBA4 *v0 = param3;
    const u16 *v1 = param2;

    v0->unk_6F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_86[0] = v1[0];
    v0->unk_8E[0] = v1[1];
    v0->unk_86[1] = v1[2];
    v0->unk_8E[1] = v1[3];

    return;
}

BOOL sub_0209BD68(UnkStruct_0209BBA4 *param0, u16 param1)
{
    int v0, v1 = 40;

    param0->unk_08[0] = param1;

    if (CommSys_SendData(COMM_CMD_F_60, param0->unk_08, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void CommCmd_Frontier_60(int param0, int param1, void *param2, void *param3)
{
    int v0;
    UnkStruct_0209BBA4 *v1 = param3;
    const u16 *v2 = param2;

    v0 = 0;
    v1->unk_6F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1->unk_74 = v2[0];
    return;
}

BOOL sub_0209BDB0(UnkStruct_0209BBA4 *param0, u16 param1)
{
    int v0, v1 = 40;
    param0->unk_08[0] = param1;

    if (CommSys_SendData(COMM_CMD_F_61, param0->unk_08, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void CommCmd_Frontier_61(int param0, int param1, void *param2, void *param3)
{
    int v0;
    UnkStruct_0209BBA4 *v1 = param3;
    const u16 *v2 = param2;

    v0 = 0;
    v1->unk_6F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1->unk_71 = (u8)v2[0];
    return;
}
