#include "overlay104/wfc_facility_selector.h"

#include <nitro.h>

#include "constants/battle_frontier.h"

#include "struct_decls/battle_frontier_decl.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"

#include "bag.h"
#include "battle_frontier.h"
#include "dexmode_checker.h"
#include "heap.h"
#include "mail.h"
#include "party.h"
#include "save_player.h"
#include "savedata.h"
#include "unk_0202D778.h"
#include "unk_0209BA80.h"

#include "constdata/const_020F410C.h"

static void SetupPartyMenu(BattleFrontier *frontier, WFCFacilitySelector *selector, FieldSystem *fieldSystem, enum HeapID heapID);
static void ProcessPartyMenuResults(BattleFrontier *frontier, WFCFacilitySelector *selector, FieldSystem *fieldSystem, enum HeapID heapID);
static void SetupSummaryApp(BattleFrontier *frontier, WFCFacilitySelector *selector, FieldSystem *fieldSystem, enum HeapID heapID);
static void ProcessSummaryAppResults(BattleFrontier *frontier, WFCFacilitySelector *selector, FieldSystem *fieldSystem, enum HeapID heapID);

WFCFacilitySelector *WFCFacilitySelector_Init(SaveData *saveData)
{
    static WFCFacilitySelector *selector;

    selector = Heap_Alloc(HEAP_ID_FIELD2, sizeof(WFCFacilitySelector));
    MI_CpuClear8(selector, sizeof(WFCFacilitySelector));

    selector->saveData = saveData;
    return selector;
}

void WFCFacilitySelector_Free(WFCFacilitySelector *selector)
{
    if (selector == NULL) {
        return;
    }

    Heap_Free(selector);
    selector = NULL;
}

BOOL WFCFacilitySelector_SendCommMessage(WFCFacilitySelector *selector, u16 command, u16 arg1, u16 arg2)
{
    int success;

    switch (command) {
    case WFC_SELECTOR_COMM_FACILITY_AND_STREAK:
        success = WFCFacilitySelector_SendFacilityAndLatestStreak(selector);
        break;
    case WFC_SELECTOR_COMM_DID_DROP_OUT:
        success = WFCFacilitySelector_SendDidDropOutCmd(selector, arg1);
        break;
    case WFC_SELECTOR_COMM_SELECTED_MONS:
        success = WFCFacilitySelector_SendSelectedMons(selector, arg1, arg2);
        break;
    case WFC_SELECTOR_COMM_STREAK_DELETION_CHOICE:
        success = WFCFacilitySelector_SendStreakDeletionChoice(selector, arg1);
        break;
    case WFC_SELECTOR_COMM_PLAY_AGAIN_CHOICE:
        success = WFCFacilitySelector_SendPlayAgainChoice(selector, arg1);
        break;
    }

    return success;
}

void WFCFacilitySelector_ManageSubApp(BattleFrontier *frontier, WFCFacilitySelector *selector, u16 action)
{
    FieldSystem *fieldSystem = selector->fieldSystem;

    switch (action) {
    case WFC_SELECTOR_SETUP_PARTY_MENU:
        SetupPartyMenu(frontier, selector, fieldSystem, HEAP_ID_FIELD2);
        break;
    case WFC_SELECTOR_PROCESS_PARTY_MENU:
        ProcessPartyMenuResults(frontier, selector, fieldSystem, HEAP_ID_FIELD2);
        break;
    case WFC_SELECTOR_SETUP_MON_SUMMARY:
        SetupSummaryApp(frontier, selector, fieldSystem, HEAP_ID_FIELD2);
        break;
    case WFC_SELECTOR_PROCESS_MON_SUMMARY:
        ProcessSummaryAppResults(frontier, selector, fieldSystem, HEAP_ID_FIELD2);
        break;
    case 4:
        return;
    }
}

static void SetupPartyMenu(BattleFrontier *frontier, WFCFacilitySelector *selector, FieldSystem *fieldSystem, enum HeapID heapID)
{
    selector->partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));
    MI_CpuClearFast(selector->partyMenu, sizeof(PartyMenu));

    selector->partyMenu->party = SaveData_GetParty(selector->saveData);
    selector->partyMenu->bag = SaveData_GetBag(selector->saveData);
    selector->partyMenu->mailbox = SaveData_GetMailbox(selector->saveData);
    selector->partyMenu->options = SaveData_GetOptions(selector->saveData);
    selector->partyMenu->type = PARTY_MENU_TYPE_BASIC;

    if (selector->selectedFacility == FACILITY_TOWER) {
        selector->partyMenu->mode = PARTY_MENU_MODE_BATTLE_TOWER;
    } else if (selector->selectedFacility == FACILITY_HALL) {
        selector->partyMenu->mode = PARTY_MENU_MODE_BATTLE_HALL;
    } else if (selector->selectedFacility == FACILITY_CASTLE) {
        selector->partyMenu->mode = PARTY_MENU_MODE_BATTLE_CASTLE;
    } else if (selector->selectedFacility == FACILITY_ARCADE) {
        selector->partyMenu->mode = PARTY_MENU_MODE_BATTLE_CASTLE;
    } else {
        GF_ASSERT(FALSE);
    }

    selector->partyMenu->fieldSystem = fieldSystem;
    selector->partyMenu->selectedMonSlot = selector->selectedMonSlot;

    for (u8 i = 0; i < 2; i++) {
        selector->partyMenu->selectionOrder[i] = selector->partyMenuSelectionOrder[i];
    }

    if (selector->selectedFacility == FACILITY_TOWER) {
        selector->partyMenu->minSelectionSlots = 2;
        selector->partyMenu->maxSelectionSlots = 2;
        selector->partyMenu->reqLevel = 100;
    } else if (selector->selectedFacility == FACILITY_HALL) {
        selector->partyMenu->minSelectionSlots = 1;
        selector->partyMenu->maxSelectionSlots = 1;
        selector->partyMenu->reqLevel = 30;
    } else if (selector->selectedFacility == FACILITY_CASTLE) {
        selector->partyMenu->minSelectionSlots = 2;
        selector->partyMenu->maxSelectionSlots = 2;
        selector->partyMenu->reqLevel = 100;
    } else if (selector->selectedFacility == FACILITY_ARCADE) {
        selector->partyMenu->minSelectionSlots = 2;
        selector->partyMenu->maxSelectionSlots = 2;
        selector->partyMenu->reqLevel = 100;
    } else {
        GF_ASSERT(FALSE);
    }

    sub_0209B988(frontier, &gPokemonPartyAppTemplate, selector->partyMenu, 0, NULL);
}

static void ProcessPartyMenuResults(BattleFrontier *frontier, WFCFacilitySelector *selector, FieldSystem *fieldSystem, enum HeapID heapID)
{
    switch (selector->partyMenu->selectedMonSlot) {
    case PARTY_MENU_SLOT_CANCEL:
        *selector->subAppResult = 4;
        selector->dummy = 4;
        return;
    case MAX_PARTY_SIZE:
        *selector->subAppResult = 4;
        selector->dummy = 4;
        return;
    default:
        break;
    }

    MI_CpuCopy8(selector->partyMenu->selectionOrder, selector->partyMenuSelectionOrder, 2);
    selector->selectedMonSlot = selector->partyMenu->selectedMonSlot;
    Heap_Free(selector->partyMenu);

    selector->partyMenu = NULL;
    *selector->subAppResult = 2;
    selector->dummy = 2;
}

static void SetupSummaryApp(BattleFrontier *frontier, WFCFacilitySelector *selector, FieldSystem *fieldSystem, enum HeapID heapID)
{
    static const u8 visiblePages[] = {
        SUMMARY_PAGE_INFO,
        SUMMARY_PAGE_MEMO,
        SUMMARY_PAGE_SKILLS,
        SUMMARY_PAGE_CONDITION,
        SUMMARY_PAGE_BATTLE_MOVES,
        SUMMARY_PAGE_CONTEST_MOVES,
        SUMMARY_PAGE_RIBBONS,
        SUMMARY_PAGE_EXIT,
        SUMMARY_PAGE_MAX,
    };

    selector->summaryApp = Heap_AllocAtEnd(heapID, sizeof(PokemonSummary));
    MI_CpuClear8(selector->summaryApp, sizeof(PokemonSummary));

    selector->summaryApp->options = SaveData_GetOptions(selector->saveData);
    selector->summaryApp->monData = SaveData_GetParty(selector->saveData);
    selector->summaryApp->dexMode = SaveData_GetDexMode(selector->saveData);
    selector->summaryApp->showContest = PokemonSummaryScreen_ShowContestData(selector->saveData);
    selector->summaryApp->dataType = SUMMARY_DATA_PARTY_MON;
    selector->summaryApp->monIndex = selector->selectedMonSlot;
    selector->summaryApp->monMax = Party_GetCurrentCount(selector->summaryApp->monData);
    selector->summaryApp->move = 0;
    selector->summaryApp->mode = SUMMARY_MODE_NORMAL;
    selector->summaryApp->specialRibbons = SaveData_GetRibbons(selector->saveData);

    PokemonSummaryScreen_FlagVisiblePages(selector->summaryApp, visiblePages);
    PokemonSummaryScreen_SetPlayerProfile(selector->summaryApp, SaveData_GetTrainerInfo(selector->saveData));
    sub_0209B988(frontier, &gPokemonSummaryScreenApp, selector->summaryApp, 0, NULL);
}

static void ProcessSummaryAppResults(BattleFrontier *frontier, WFCFacilitySelector *selector, FieldSystem *fieldSystem, enum HeapID heapID)
{
    selector->selectedMonSlot = selector->summaryApp->monIndex;
    Heap_Free(selector->summaryApp);
    selector->summaryApp = NULL;
    *selector->subAppResult = 0;
    selector->dummy = 0;
}
