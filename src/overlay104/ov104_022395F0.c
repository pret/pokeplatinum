#include "overlay104/ov104_022395F0.h"

#include <nitro.h>
#include <nitro/code16.h>

#include "constants/battle_tower.h"
#include "constants/wfc_facility_selector_functions.h"
#include "generated/battle_tower_modes.h"

#include "struct_defs/battle_tower.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "global/utility.h"
#include "overlay104/defs.h"
#include "overlay104/frontier_opponents.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd.h"
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

static BOOL WaitForCommResponses(FrontierScriptContext *ctx);
static BOOL WaitForTowerCommResponse(FrontierScriptContext *ctx);

BOOL FrontierScrCmd_InitWFCFacilitySelector(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    WFCFacilitySelector *selector = WFCFacilitySelector_Init(fieldData->saveData);

    BattleFrontier_SetFacilityStruct(ctx->scriptMan->frontier, selector);
    return FALSE;
}

BOOL FrontierScrCmd_FreeWFCFacilitySelector(FrontierScriptContext *ctx)
{
    WFCFacilitySelector *selector = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    WFCFacilitySelector_Free(selector);

    return FALSE;
}

BOOL FrontierScrCmd_WFCFacilitySelector_SendCommMessage(FrontierScriptContext *ctx)
{
    u16 command = FrontierScriptContext_GetVar(ctx);
    u16 arg1 = FrontierScriptContext_GetVar(ctx);
    u16 arg2 = FrontierScriptContext_GetVar(ctx);
    u16 *success = FrontierScriptContext_TryGetVarPointer(ctx);

    WFCFacilitySelector *selector = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *success = WFCFacilitySelector_SendCommMessage(selector, command, arg1, arg2);

    return TRUE;
}

BOOL FrontierScrCmd_WFCFacilitySelector_WaitForCommResponses(FrontierScriptContext *ctx)
{
    ctx->data[0] = FrontierScriptContext_ReadHalfWord(ctx);
    FrontierScriptContext_Pause(ctx, WaitForCommResponses);

    return TRUE;
}

static BOOL WaitForCommResponses(FrontierScriptContext *ctx)
{
    WFCFacilitySelector *selector = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (selector->msgsReceived >= 2) {
        selector->msgsReceived = 0;
        return TRUE;
    }

    return FALSE;
}

BOOL FrontierScrCmd_CheckIfSameFacilityChosen(FrontierScriptContext *ctx)
{
    u16 facility = FrontierScriptContext_GetVar(ctx);
    u16 *returnVar = FrontierScriptContext_TryGetVarPointer(ctx);

    WFCFacilitySelector *selector = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (facility == selector->partnersSelectedFacility) {
        *returnVar = TRUE;
    } else {
        *returnVar = FALSE;
    }

    return FALSE;
}

BOOL FrontierScrCmd_ManageFacilitySelectorSubApp(FrontierScriptContext *ctx)
{
    UNUSED(FrontierScriptContext_GetVar(ctx));
    u16 action = FrontierScriptContext_GetVar(ctx);
    u16 *result = FrontierScriptContext_TryGetVarPointer(ctx);

    WFCFacilitySelector *selector = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    selector->fieldSystem = fieldData->fieldSystem;
    selector->subAppResult = result;

    WFCFacilitySelector_ManageSubApp(ctx->scriptMan->frontier, selector, action);

    return TRUE;
}

BOOL FrontierScrCmd_GetSelectedPartyMenuSlots(FrontierScriptContext *ctx)
{
    u16 *selectedSlot1 = FrontierScriptContext_TryGetVarPointer(ctx);
    u16 *selectedSlot2 = FrontierScriptContext_TryGetVarPointer(ctx);

    WFCFacilitySelector *selector = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (selector->partyMenu->selectedMonSlot == PARTY_MENU_SLOT_CANCEL) {
        *selectedSlot1 = 0xff;

        for (int i = 0; i < 2; i++) {
            selector->partyMenuSelectionOrder[i] = 0;
        }
    } else if (selector->partyMenu->selectedMonSlot == MAX_PARTY_SIZE) {
        *selectedSlot1 = selector->partyMenu->selectionOrder[0];
        *selectedSlot1 -= 1;

        *selectedSlot2 = selector->partyMenu->selectionOrder[1];

        if (*selectedSlot2 > 0) {
            *selectedSlot2 -= 1;
        }
    }

    Heap_Free(selector->partyMenu);
    selector->partyMenu = NULL;

    return FALSE;
}

BOOL FrontierScrCmd_CheckIfPartnerDroppedOut(FrontierScriptContext *ctx)
{
    u16 *partnerDroppedOut = FrontierScriptContext_TryGetVarPointer(ctx);

    WFCFacilitySelector *selector = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *partnerDroppedOut = selector->partnerDroppedOut;

    return FALSE;
}

BOOL FrontierScrCmd_CallWFCFacilitySelectorFunction(FrontierScriptContext *ctx)
{
    u8 command = FrontierScriptContext_ReadByte(ctx);
    u8 arg1 = FrontierScriptContext_ReadByte(ctx);
    u8 arg2 = FrontierScriptContext_ReadByte(ctx);
    u16 *returnVar = FrontierScriptContext_TryGetVarPointer(ctx);

    WFCFacilitySelector *selector = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    switch (command) {
    case WFCFS_FUNC_INIT_COMM_MANAGER:
        sub_0209BA80(selector);
        break;
    case WFCFS_FUNC_GET_PARTNERS_FIRST_PICK:
        *returnVar = selector->partnersSelectedSpecies[0];
        break;
    case WFCFS_FUNC_CHECK_MON_SELECTIONS_VALID:
        if (arg1 == FACILITY_TOWER) {
            *returnVar = 0;

            if (selector->selectedSpecies[0] == selector->partnersSelectedSpecies[0] || selector->selectedSpecies[0] == selector->partnersSelectedSpecies[1]) {
                *returnVar += 1;
            }

            if (selector->selectedSpecies[1] == selector->partnersSelectedSpecies[0] || selector->selectedSpecies[1] == selector->partnersSelectedSpecies[1]) {
                *returnVar += 2;
            }
        } else if (arg1 == FACILITY_HALL) {
            if (selector->selectedSpecies[0] == selector->partnersSelectedSpecies[0]) {
                *returnVar = 0;
            } else {
                *returnVar = 1;
            }
        } else if (arg1 == FACILITY_CASTLE || arg1 == FACILITY_ARCADE) {
            *returnVar = 0;

            if (selector->selectedSpecies[0] == selector->partnersSelectedSpecies[0] || selector->selectedSpecies[0] == selector->partnersSelectedSpecies[1]) {
                *returnVar += 1;
            }

            if (selector->selectedSpecies[1] == selector->partnersSelectedSpecies[0] || selector->selectedSpecies[1] == selector->partnersSelectedSpecies[1]) {
                *returnVar += 2;
            }
        }

        break;
    case WFCFS_FUNC_CHECK_HALL_STREAK_ACTIVE:
        *returnVar = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(fieldData->saveData), STAT_HALL_WFC_STREAK_ACTIVE);
        break;
    case WFCFS_FUNC_CHECK_HALL_STREAK_SPECIES:
        *returnVar = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(fieldData->saveData), BattleFrontierStats_GetHallLatestSpeciesIndex(FRONTIER_CHALLENGE_MULTI_WFC));
        break;
    case WFCFS_FUNC_GET_SELECTED_SPECIES:
        *returnVar = selector->selectedSpecies[arg1];
        break;
    case WFCFS_FUNC_CLEAR_ACTIVE_HALL_STREAK:
        BattleHall_ClearActiveStreak(fieldData->saveData, BattleHallStreakFlags_Get(fieldData->saveData), FRONTIER_CHALLENGE_MULTI_WFC);
        break;
    case WFCFS_FUNC_SET_SELECTED_FACILITY:
        selector->selectedFacility = arg1;
        break;
    case WFCFS_FUNC_GET_PARTNERS_STREAK_DELETION_CHOICE:
        *returnVar = selector->partnersStreakDeletionChoice;
        break;
    case WFCFS_FUNC_GET_SELECTED_FACILITY:
        *returnVar = selector->selectedFacility;
        break;
    case WFCFS_FUNC_CHECK_PARTNER_PLAYING_AGAIN:
        *returnVar = selector->partnerNotPlayingAgain;
        break;
    case WFCFS_FUNC_CLEAR_STREAK_IF_NOT_MATCHING: {
        *returnVar = TRUE;
        u16 index = BattleFrontier_GetWFCLatestStreakIndex(selector->selectedFacility);
        u16 latestStreak = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(selector->saveData), index);

        if (latestStreak != selector->partnersLatestStreak) {
            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(selector->saveData), index, 0);

            index = BattleFrontier_GetWFCStreakActiveIndex(selector->selectedFacility);
            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(selector->saveData), index, 0);

            *returnVar = FALSE;
        }
    } break;
    case WFCFS_FUNC_CLEAR_LATEST_STREAK: {
        u16 index = BattleFrontier_GetWFCStreakActiveIndex(selector->selectedFacility);
        *returnVar = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(selector->saveData), index);

        if (*returnVar == FALSE) {
            index = BattleFrontier_GetWFCLatestStreakIndex(selector->selectedFacility);
            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(selector->saveData), index, 0);

            if (selector->selectedFacility == FACILITY_TOWER) {
                WifiBattleTowerRecord *record = SaveData_GetWifiBattleTowerRecord(selector->saveData);
                WifiBattleTowerRecord_UpdateRoomNum(record, BATTLE_TOWER_MODE_6, 2);
            }

            if (selector->selectedFacility == FACILITY_CASTLE) {
                BattleFrontierSave_SetStat(SaveData_GetBattleFrontier(selector->saveData), STAT_CASTLE_LATEST_CP_MULTI_WFC, BattleFrontierStats_GetHostFriendIdx(index), 0);
                BattleFrontierSave_SetStat(SaveData_GetBattleFrontier(selector->saveData), STAT_CASTLE_SPENT_CP_MULTI_WFC, BattleFrontierStats_GetHostFriendIdx(index), 0);
            }

            if (selector->selectedFacility == FACILITY_FACTORY) {
                BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(selector->saveData), BattleFrontierStats_GetFactoryLatestTradeCountIndex(FALSE, FRONTIER_CHALLENGE_MULTI_WFC), 0);
            }

            if (selector->selectedFacility == FACILITY_FACTORY_OPEN) {
                BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(selector->saveData), BattleFrontierStats_GetFactoryLatestTradeCountIndex(TRUE, FRONTIER_CHALLENGE_MULTI_WFC), 0);
            }
        } else {
            BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(selector->saveData), index, 0);
        }
    } break;
    case WFCFS_FUNC_CLEAR_PARTY_MENU_SELECTIONS:
        for (int i = 0; i < 2; i++) {
            selector->partyMenuSelectionOrder[i] = 0;
        }

        selector->selectedMonSlot = 0;
        break;
    }

    return FALSE;
}

BOOL FrontierScrCmd_InitBattleTower(FrontierScriptContext *ctx)
{

    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    WFCFacilitySelector *selectorPtr = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    WFCFacilitySelector selector = *selectorPtr;
    WFCFacilitySelector_Free(selectorPtr);

    BattleTower *battleTower = BattleTower_Init(fieldData->saveData, 0, BATTLE_TOWER_MODE_6);
    BattleFrontier_SetFacilityStruct(ctx->scriptMan->frontier, battleTower);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        BattleFrontier_FlagGeonetLinkInfo(fieldData->saveData);
    }

    for (int i = 0; i < battleTower->partySize; i++) {
        battleTower->unk_2A[i] = selector.selectedMonSlots[i];
        battleTower->unk_2E[i] = selector.selectedSpecies[i];
        battleTower->unk_36[i] = selector.selectedItems[i];
    }

    battleTower->unk_16[0] = selector.partnersSelectedSpecies[0];
    battleTower->unk_16[1] = selector.partnersSelectedSpecies[1];
    battleTower->partnerGender = selector.partnerGender;
    battleTower->partnerID = BT_PARTNERS_COUNT + battleTower->partnerGender;

    if (CommSys_CurNetId() == 0) {
        sub_0204A4C8(battleTower, fieldData->saveData);
    }

    Party_HealAllMembers(SaveData_GetParty(fieldData->saveData));
    sub_0209BA80(battleTower);

    battleTower->msgsReceived = 0;

    return FALSE;
}

BOOL FrontierScrCmd_SendTowerTrainerIDList(FrontierScriptContext *ctx)
{
    u16 *success = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleTower *battleTower = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *success = BattleTower_SendTrainerIDListCmd(battleTower);

    return TRUE;
}

BOOL FrontierScrCmd_WaitForTowerTrainerIDListResponses(FrontierScriptContext *ctx)
{
    FrontierScriptContext_Pause(ctx, WaitForTowerCommResponse);
    return TRUE;
}

static BOOL WaitForTowerCommResponse(FrontierScriptContext *ctx)
{
    BattleTower *battleTower = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (battleTower->msgsReceived < 2) {
        return FALSE;
    }

    battleTower->msgsReceived = 0;
    return TRUE;
}

BOOL FrontierScrCmd_FreeBattleTower(FrontierScriptContext *ctx)
{
    BattleTower *battleTower = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleTower_Free(battleTower);
    battleTower = NULL;

    return FALSE;
}
