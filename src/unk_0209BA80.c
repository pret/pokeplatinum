#include "unk_0209BA80.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_tower.h"

#include "struct_defs/battle_tower.h"
#include "struct_defs/struct_02039A58.h"
#include "struct_defs/struct_0209BBA4.h"

#include "applications/frontier/battle_castle/opponent_app.h"
#include "applications/frontier/battle_castle/self_app.h"
#include "applications/frontier/battle_hall/main.h"
#include "overlay104/ov104_0222ECE8.h"
#include "overlay104/ov104_0223C164.h"
#include "overlay105/ov105_02241AE0.h"
#include "overlay108/ov108_02241AE0.h"

#include "communication_system.h"
#include "party.h"
#include "pokemon.h"
#include "unk_0203061C.h"
#include "unk_02032798.h"
#include "unk_0205DFC4.h"

static void sub_0209BA94(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BB08(BattleTower *battleTower);
static void sub_0209BB34(int param0, int param1, void *param2, void *param3);
static void sub_0209BB68(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BBA4(UnkStruct_0209BBA4 *param0);
void sub_0209BBEC(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BC1C(UnkStruct_0209BBA4 *param0, u16 param1);
void sub_0209BC3C(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BC64(UnkStruct_0209BBA4 *param0, u16 param1, u16 param2);
void sub_0209BD28(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BD68(UnkStruct_0209BBA4 *param0, u16 param1);
void sub_0209BD88(int param0, int param1, void *param2, void *param3);
BOOL sub_0209BDB0(UnkStruct_0209BBA4 *param0, u16 param1);
void sub_0209BDD0(int param0, int param1, void *param2, void *param3);

static const CommCmdTable Unk_020F8BF0[] = {
    { ov104_0222EF30, CommPacketSizeOf_Variable, NULL },
    { ov104_0222EF94, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F03C, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F124, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F1C4, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F210, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F31C, CommPacketSizeOf_Variable, NULL },
    { ov105_0224569C, CommPacketSizeOf_Variable, NULL },
    { ov105_02245744, CommPacketSizeOf_Variable, NULL },
    { ov105_022457B8, CommPacketSizeOf_Variable, NULL },
    { ov105_022458A4, CommPacketSizeOf_Variable, NULL },
    { ov104_0222ECE8, CommPacketSizeOf_Variable, NULL },
    { ov104_0222ED2C, CommPacketSizeOf_Variable, NULL },
    { ov104_0222ED74, CommPacketSizeOf_Variable, NULL },
    { ov104_0222EDDC, CommPacketSizeOf_Variable, NULL },
    { ov104_0222EE38, CommPacketSizeOf_Variable, NULL },
    { ov104_0222EEA8, CommPacketSizeOf_Variable, ov104_0222EED8 },
    { BattleHall_DummyCommCommand, CommPacketSizeOf_Variable, NULL },
    { BattleHall_HandleTypeSelectionMsg, CommPacketSizeOf_Variable, NULL },
    { BattleHall_HandlePartnerDecisionCmd, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F418, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F480, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F530, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F650, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F6E8, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F730, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F7BC, CommPacketSizeOf_Variable, ov104_0222F84C },
    { BattleCastleSelfApp_HandlePlayerInfoCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleSelfApp_HandlePurchaseInfoCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleSelfApp_HandleUpdateCursorCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleSelfApp_HandleExitAppCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleOpponentApp_HandlePlayerInfoCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleOpponentApp_HandlePurchaseInfoCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleOpponentApp_HandleUpdateCursorCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleOpponentApp_HandleExitAppCmd, CommPacketSizeOf_Variable, NULL },
    { sub_0209BBEC, CommPacketSizeOf_Variable, NULL },
    { sub_0209BC3C, CommPacketSizeOf_Variable, NULL },
    { sub_0209BD28, CommPacketSizeOf_Variable, NULL },
    { sub_0209BD88, CommPacketSizeOf_Variable, NULL },
    { sub_0209BDD0, CommPacketSizeOf_Variable, NULL },
    { sub_0209BA94, CommPacketSizeOf_Variable, NULL },
    { sub_0209BB34, CommPacketSizeOf_Variable, NULL },
    { sub_0209BB68, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F8A0, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F908, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F9C0, CommPacketSizeOf_Variable, NULL },
    { ov104_0222FA5C, CommPacketSizeOf_Variable, NULL },
    { ov104_0222FAA8, CommPacketSizeOf_Variable, NULL },
    { ov104_0222FB34, CommPacketSizeOf_Variable, ov104_0222FBC4 },
    { ov108_02242AB0, CommPacketSizeOf_Variable, NULL },
    { ov108_02242B24, CommPacketSizeOf_Variable, NULL },
    { ov108_02242B84, CommPacketSizeOf_Variable, NULL }
};

void sub_0209BA80(void *param0)
{
    int v0 = sizeof(Unk_020F8BF0) / sizeof(CommCmdTable);
    CommCmd_Init(Unk_020F8BF0, v0, param0);
}

static void sub_0209BA94(int param0, int param1, void *param2, void *param3)
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

    if (CommSys_SendData(63, battleTower->unk_83E, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

static void sub_0209BB34(int param0, int param1, void *param2, void *param3)
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

static void sub_0209BB68(int param0, int param1, void *param2, void *param3)
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
    param0->unk_08[1] = sub_02030698(SaveData_GetBattleFrontier(param0->saveData), v2, sub_0205E6A8(v2));

    if (CommSys_SendData(57, param0->unk_08, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void sub_0209BBEC(int param0, int param1, void *param2, void *param3)
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

    if (CommSys_SendData(58, param0->unk_08, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void sub_0209BC3C(int param0, int param1, void *param2, void *param3)
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

    if (CommSys_SendData(59, param0->unk_08, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void sub_0209BD28(int param0, int param1, void *param2, void *param3)
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

    if (CommSys_SendData(60, param0->unk_08, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void sub_0209BD88(int param0, int param1, void *param2, void *param3)
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

    if (CommSys_SendData(61, param0->unk_08, v1) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void sub_0209BDD0(int param0, int param1, void *param2, void *param3)
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
