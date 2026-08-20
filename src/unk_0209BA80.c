#include "unk_0209BA80.h"

#include <nitro.h>

#include "constants/battle_tower.h"

#include "struct_defs/battle_tower.h"
#include "struct_defs/comm_cmd_table.h"

#include "applications/frontier/battle_arcade/main.h"
#include "applications/frontier/battle_castle/opponent_app.h"
#include "applications/frontier/battle_castle/self_app.h"
#include "applications/frontier/battle_factory/main.h"
#include "applications/frontier/battle_hall/main.h"
#include "overlay104/frontier_communication.h"
#include "overlay104/wfc_facility_selector_helpers.h"

#include "battle_frontier_save.h"
#include "communication_system.h"
#include "party.h"
#include "pokemon.h"
#include "unk_02032798.h"

static void sub_0209BA94(int param0, int param1, void *param2, void *param3);
static void BattleTower_HandleTrainerIDListCmd(int netID, int unused, void *data, void *context);
static void sub_0209BB68(int param0, int param1, void *param2, void *param3);
static void WFCFacilitySelector_HandleFacilityAndStreakCmd(int netID, int unused, void *data, void *context);
static void WFCFacilitySelector_HandleDidDropOutCmd(int netID, int unused, void *data, void *context);
static void WFCFacilitySelector_HandleSelectedMonsCmd(int netID, int unused, void *data, void *context);
static void WFCFacilitySelector_HandleStreakDeletionChoiceCmd(int netID, int unused, void *data, void *context);
static void WFCFacilitySelector_HandlePlayAgainCmd(int netID, int unused, void *data, void *context);

static const CommCmdTable Unk_020F8BF0[] = {
    { ov104_0222EF30, CommPacketSizeOf_Variable, NULL },
    { FactoryCommunication_ReceiveTrainers, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F03C, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F124, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F1C4, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F210, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F31C, CommPacketSizeOf_Variable, NULL },
    { BattleFactoryApp_DummyCommCommand, CommPacketSizeOf_Variable, NULL },
    { BattleFactoryApp_HandleSelectionUpdateCmd, CommPacketSizeOf_Variable, NULL },
    { BattleFactoryApp_DummyCommCommand2, CommPacketSizeOf_Variable, NULL },
    { BattleFactoryApp_HandleTradeResultCmd, CommPacketSizeOf_Variable, NULL },
    { FrontierCommunication_Unreachable1, CommPacketSizeOf_Variable, NULL },
    { FrontierCommunication_Unreachable3, CommPacketSizeOf_Variable, NULL },
    { HallCommunication_ReceiveTrainers, CommPacketSizeOf_Variable, NULL },
    { HallCommunication_ReceiveOpponentMons, CommPacketSizeOf_Variable, NULL },
    { ov104_0222EE38, CommPacketSizeOf_Variable, NULL },
    { HallCommunication_ReceivePartnersPokemon, CommPacketSizeOf_Variable, HallCommunication_VerifyPacketSize },
    { BattleHall_DummyCommCommand, CommPacketSizeOf_Variable, NULL },
    { BattleHall_HandleTypeSelectionMsg, CommPacketSizeOf_Variable, NULL },
    { BattleHall_HandlePartnerDecisionCmd, CommPacketSizeOf_Variable, NULL },
    { CastleCommunication_ReceivePartnersCP, CommPacketSizeOf_Variable, NULL },
    { CastleCommunications_ReceiveTrainers, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F530, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F650, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F6E8, CommPacketSizeOf_Variable, NULL },
    { FrontierCommunication_Unreachable5, CommPacketSizeOf_Variable, NULL },
    { CastleCommunication_ReceivePartnersParty, CommPacketSizeOf_Variable, CastleCommunication_VerifyPacketSize },
    { BattleCastleSelfApp_HandlePlayerInfoCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleSelfApp_HandlePurchaseInfoCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleSelfApp_HandleUpdateCursorCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleSelfApp_HandleExitAppCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleOpponentApp_HandlePlayerInfoCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleOpponentApp_HandlePurchaseInfoCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleOpponentApp_HandleUpdateCursorCmd, CommPacketSizeOf_Variable, NULL },
    { BattleCastleOpponentApp_HandleExitAppCmd, CommPacketSizeOf_Variable, NULL },
    { WFCFacilitySelector_HandleFacilityAndStreakCmd, CommPacketSizeOf_Variable, NULL },
    { WFCFacilitySelector_HandleDidDropOutCmd, CommPacketSizeOf_Variable, NULL },
    { WFCFacilitySelector_HandleSelectedMonsCmd, CommPacketSizeOf_Variable, NULL },
    { WFCFacilitySelector_HandleStreakDeletionChoiceCmd, CommPacketSizeOf_Variable, NULL },
    { WFCFacilitySelector_HandlePlayAgainCmd, CommPacketSizeOf_Variable, NULL },
    { sub_0209BA94, CommPacketSizeOf_Variable, NULL },
    { BattleTower_HandleTrainerIDListCmd, CommPacketSizeOf_Variable, NULL },
    { sub_0209BB68, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F8A0, CommPacketSizeOf_Variable, NULL },
    { ArcadeCommunication_ReceiveTrainers, CommPacketSizeOf_Variable, NULL },
    { ov104_0222F9C0, CommPacketSizeOf_Variable, NULL },
    { ov104_0222FA5C, CommPacketSizeOf_Variable, NULL },
    { ov104_0222FAA8, CommPacketSizeOf_Variable, NULL },
    { ArcadeCommunication_ReceivePartnersParty, CommPacketSizeOf_Variable, ArcadeCommunication_VerifyPacketSize },
    { BattleArcadeApp_HandleInitialLayoutCmd, CommPacketSizeOf_Variable, NULL },
    { BattleArcadeApp_HandleResultCmd, CommPacketSizeOf_Variable, NULL },
    { BattleArcadeApp_HandleUnusedCmd, CommPacketSizeOf_Variable, NULL }
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
    battleTower->msgsReceived++;

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

BOOL BattleTower_SendTrainerIDListCmd(BattleTower *battleTower)
{
    int dataSize = BT_OPPONENTS_COUNT * 2 * sizeof(u16);
    MI_CpuCopy8(battleTower->trainerIDs, battleTower->unk_83E, dataSize);

    return CommSys_SendData(63, battleTower->unk_83E, dataSize) == TRUE;
}

static void BattleTower_HandleTrainerIDListCmd(int netID, int unused, void *data, void *context)
{
    BattleTower *battleTower = context;
    const u16 *trainerIDs = data;

    battleTower->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    MI_CpuCopy8(trainerIDs, battleTower->trainerIDs, BT_OPPONENTS_COUNT * 2 * sizeof(u16));
}

static void sub_0209BB68(int param0, int param1, void *param2, void *param3)
{
    int v0;
    BattleTower *battleTower = param3;
    const u16 *v2 = param2;

    v0 = 0;

    battleTower->unk_8D8 = 0;
    battleTower->msgsReceived++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (battleTower->unk_10_3 || v2[0]) {
        battleTower->unk_8D8 = 1;
    }

    return;
}

BOOL WFCFacilitySelector_SendFacilityAndLatestStreak(WFCFacilitySelector *selector)
{
    selector->commBuffer[0] = selector->selectedFacility;

    int streakIndex = BattleFrontier_GetWFCLatestStreakIndex(selector->selectedFacility);
    selector->commBuffer[1] = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(selector->saveData), streakIndex);

    return CommSys_SendData(57, selector->commBuffer, 40) == TRUE;
}

static void WFCFacilitySelector_HandleFacilityAndStreakCmd(int netID, int unused, void *data, void *context)
{
    WFCFacilitySelector *selector = context;
    const u16 *payload = data;

    selector->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    selector->partnersSelectedFacility = payload[0];
    selector->partnersLatestStreak = payload[1];
}

BOOL WFCFacilitySelector_SendDidDropOutCmd(WFCFacilitySelector *selector, u16 didDropOut)
{
    selector->commBuffer[0] = didDropOut;
    return CommSys_SendData(58, selector->commBuffer, 40) == TRUE;
}

static void WFCFacilitySelector_HandleDidDropOutCmd(int netID, int unused, void *data, void *context)
{
    WFCFacilitySelector *selector = context;
    const u16 *payload = data;

    selector->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    selector->partnerDroppedOut = payload[0];
}

BOOL WFCFacilitySelector_SendSelectedMons(WFCFacilitySelector *selector, u16 selectedSlot1, u16 selectedSlot2)
{
    Party *party = SaveData_GetParty(selector->saveData);

    selector->selectedMonSlots[0] = selectedSlot1;
    selector->selectedMonSlots[1] = selectedSlot2;

    if (selectedSlot1 == 0xff) {
        selector->selectedSpecies[0] = 0;
        selector->selectedItems[0] = 0;
        selector->selectedSpecies[1] = 0;
        selector->selectedItems[1] = 0;
    } else {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, selectedSlot1);

        selector->selectedSpecies[0] = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        selector->selectedItems[0] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

        mon = Party_GetPokemonBySlotIndex(party, selectedSlot2);

        selector->selectedSpecies[1] = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        selector->selectedItems[1] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    }

    selector->commBuffer[0] = selector->selectedSpecies[0];
    selector->commBuffer[1] = selector->selectedItems[0];
    selector->commBuffer[2] = selector->selectedSpecies[1];
    selector->commBuffer[3] = selector->selectedItems[1];

    return CommSys_SendData(59, selector->commBuffer, 40) == TRUE;
}

static void WFCFacilitySelector_HandleSelectedMonsCmd(int netID, int unused, void *data, void *context)
{
    WFCFacilitySelector *selector = context;
    const u16 *payload = data;

    selector->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    selector->partnersSelectedSpecies[0] = payload[0];
    selector->partnersSelectedItems[0] = payload[1];
    selector->partnersSelectedSpecies[1] = payload[2];
    selector->partnersSelectedItems[1] = payload[3];
}

BOOL WFCFacilitySelector_SendStreakDeletionChoice(WFCFacilitySelector *selector, u16 streakDeletionChoice)
{
    selector->commBuffer[0] = streakDeletionChoice;
    return CommSys_SendData(60, selector->commBuffer, 40) == TRUE;
}

static void WFCFacilitySelector_HandleStreakDeletionChoiceCmd(int netID, int unused, void *data, void *context)
{
    WFCFacilitySelector *selector = context;
    const u16 *payload = data;

    selector->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    selector->partnersStreakDeletionChoice = payload[0];
}

BOOL WFCFacilitySelector_SendPlayAgainChoice(WFCFacilitySelector *selector, u16 notPlayingAgain)
{
    selector->commBuffer[0] = notPlayingAgain;
    return CommSys_SendData(61, selector->commBuffer, 40) == TRUE;
}

static void WFCFacilitySelector_HandlePlayAgainCmd(int netID, int unused, void *data, void *context)
{
    WFCFacilitySelector *selector = context;
    const u16 *payload = data;

    selector->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    selector->partnerNotPlayingAgain = payload[0];
}
