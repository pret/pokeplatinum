#include "scrcmd_battle_arcade.h"

#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "constants/battle_arcade_functions.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"
#include "global/utility.h"

#include "bag.h"
#include "battle_arcade_save.h"
#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "communication_system.h"
#include "dexmode_checker.h"
#include "field_script_context.h"
#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "inlines.h"
#include "mail.h"
#include "party.h"
#include "save_player.h"
#include "savedata.h"
#include "script_manager.h"
#include "unk_0202D778.h"
#include "unk_02049D08.h"
#include "unk_02099500.h"

#include "constdata/const_020F410C.h"

typedef struct BattleArcadeSpeciesCheck {
    u8 taskState;
    u8 receivedMessages;
    u16 unused;
    u16 species[ARCADE_PARTY_SIZE_MULTI];
    u16 partnerSpecies[ARCADE_PARTY_SIZE_MULTI];
    u16 *conflicts;
} BattleArcadeSpeciesCheck;

typedef struct BattleArcadeTaskEnv {
    int subTask;
    u8 challengeType;
    u8 selectedMonSlot;
    u8 selectedChallengers[3];
    void **partyMenu;
} BattleArcadeTaskEnv;

enum BattleArcadeSelectionSubTask {
    SUBTASK_OPEN_PARTY_MENU,
    SUBTASK_PROCESS_PARTY_MENU,
    SUBTASK_OPEN_MON_SUMMARY,
    SUBTASK_PROCESS_MON_SUMMARY,
    SUBTASK_END_TASK,
};

static void BattleArcade_ClearActiveStreak(SaveData *saveData, BattleArcadeStreakFlags *flags, u8 challengeType);
static void SelectBattleArcadeChallengers(FieldTask *taskMan, void **partySelect, u8 challengeType);
static BOOL BattleArcadeSelectChallengersTask(FieldTask *taskMan);
static int SubTask_SetupPartyMenu(BattleArcadeTaskEnv *taskEnv, FieldSystem *fieldSystem, int unused);
static int SubTask_ProcessPartyMenu(BattleArcadeTaskEnv *taskEnv, FieldSystem *fieldSystem);
static int SubTask_SetupMonSummary(BattleArcadeTaskEnv *taskEnv, FieldSystem *fieldSystem, enum HeapID heapID);
static int SubTask_ProcessMonSummary(BattleArcadeTaskEnv *taskEnv, FieldSystem *fieldSystem);
static void CheckPartnerUsesDifferentSpecies(FieldTask *task, u16 species1, u16 species2, u16 *speciesConflict);
static BOOL CheckPartnerUsesDifferentSpeciesTask(FieldTask *task);

BOOL ScrCmd_CallBattleArcadeLobbyFunction(ScriptContext *ctx)
{
    u16 action = ScriptContext_ReadHalfWord(ctx);
    u16 arg = ScriptContext_GetVar(ctx);
    u16 *result = FieldSystem_GetVarPointer(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));

    UNUSED(BattleArcadeSave_Get(ctx->fieldSystem->saveData));
    BattleArcadeStreakFlags *flags = BattleArcadeStreakFlags_Get(ctx->fieldSystem->saveData);
    void **partySelect = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);

    switch (action) {
    case BA_LOBBY_FUNC_CHECK_PARTY_ELIGIBLE:
        *result = sub_02049EC4(arg, ctx->fieldSystem->saveData, FALSE);
        break;
    case BA_LOBBY_FUNC_CHECK_STREAK_ACTIVE:
        if (arg == FRONTIER_CHALLENGE_MULTI_WFC) {
            *result = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(ctx->fieldSystem->saveData), STAT_ARCADE_WFC_STREAK_ACTIVE);
        } else {
            *result = BattleArcadeStreakFlags_GetFlag(flags, ARCADE_SAVE_STREAK_FLAGS, arg, 0, NULL);
        }
        break;
    case BA_LOBBY_FUNC_DELETE_ACTIVE_STREAK:
        BattleArcade_ClearActiveStreak(ctx->fieldSystem->saveData, flags, arg);
        break;
    case BA_LOBBY_FUNC_SELECT_POKEMON: {
        u8 challengeType;
        if (arg == FRONTIER_CHALLENGE_SINGLE) {
            challengeType = FRONTIER_CHALLENGE_SINGLE;
        } else if (arg == FRONTIER_CHALLENGE_DOUBLE) {
            challengeType = FRONTIER_CHALLENGE_DOUBLE;
        } else if (arg == FRONTIER_CHALLENGE_MULTI) {
            challengeType = FRONTIER_CHALLENGE_MULTI;
        } else {
            challengeType = FRONTIER_CHALLENGE_MULTI;
        }

        SelectBattleArcadeChallengers(ctx->task, partySelect, challengeType);
        return TRUE;
    }
    default:
        GF_ASSERT(FALSE);
        *result = 0;
        break;
    }

    return FALSE;
}

BOOL ScrCmd_DeleteActiveBattleArcadeStreak(ScriptContext *ctx)
{
    u16 challengeType = ScriptContext_GetVar(ctx);
    BattleArcadeStreakFlags *flags = BattleArcadeStreakFlags_Get(ctx->fieldSystem->saveData);

    BattleArcade_ClearActiveStreak(ctx->fieldSystem->saveData, flags, challengeType);
    return FALSE;
}

static void BattleArcade_ClearActiveStreak(SaveData *saveData, BattleArcadeStreakFlags *flags, u8 challengeType)
{
    u8 value[4];
    value[0] = FALSE;
    BattleArcadeStreakFlags_SetFlag(flags, ARCADE_SAVE_STREAK_FLAGS, challengeType, 0, value);

    if (challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
        BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), STAT_ARCADE_WFC_STREAK_ACTIVE, 0);
    }

    BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetArcadeLatestStreakIndex(challengeType), 0);
}

BOOL ScrCmd_CheckBattleArcadePartnerUsesDifferentSpecies(ScriptContext *ctx)
{
    u16 species1 = ScriptContext_GetVar(ctx);
    u16 species2 = ScriptContext_GetVar(ctx);
    u16 *result = ScriptContext_GetVarPointer(ctx);

    CheckPartnerUsesDifferentSpecies(ctx->task, species1, species2, result);
    return TRUE;
}

static void CheckPartnerUsesDifferentSpecies(FieldTask *task, u16 species1, u16 species2, u16 *speciesConflict)
{
    BattleArcadeSpeciesCheck *speciesCheck = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleArcadeSpeciesCheck));
    memset(speciesCheck, 0, sizeof(BattleArcadeSpeciesCheck));

    speciesCheck->species[0] = species1;
    speciesCheck->species[1] = species2;
    speciesCheck->conflicts = speciesConflict;

    CommFieldCmd_Init(speciesCheck);
    FieldTask_InitCall(task, CheckPartnerUsesDifferentSpeciesTask, speciesCheck);
}

static BOOL CheckPartnerUsesDifferentSpeciesTask(FieldTask *task)
{
    BattleArcadeSpeciesCheck *data = FieldTask_GetEnv(task);

    switch (data->taskState) {
    case 0:
        if (CommSys_SendData(134, data, sizeof(BattleArcadeSpeciesCheck)) == TRUE) {
            data->taskState++;
        }
        break;
    case 1:
        if (data->receivedMessages >= 2) {
            *data->conflicts = 0;

            if (data->species[0] == data->partnerSpecies[0] || data->species[0] == data->partnerSpecies[1]) {
                *data->conflicts += 1;
            }

            if (data->species[1] == data->partnerSpecies[0] || data->species[1] == data->partnerSpecies[1]) {
                *data->conflicts += 2;
            }

            data->taskState++;
        }
        break;
    case 2:
        Heap_Free(data);
        return TRUE;
    }

    return FALSE;
}

static void SelectBattleArcadeChallengers(FieldTask *taskMan, void **partySelect, u8 challengeType)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    BattleArcadeTaskEnv *taskEnv = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleArcadeTaskEnv));

    MI_CpuClear8(taskEnv, sizeof(BattleArcadeTaskEnv));

    taskEnv->challengeType = challengeType;
    taskEnv->partyMenu = partySelect;

    FieldTask_InitCall(fieldSystem->task, BattleArcadeSelectChallengersTask, taskEnv);
}

static BOOL BattleArcadeSelectChallengersTask(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    BattleArcadeTaskEnv *taskEnv = FieldTask_GetEnv(taskMan);

    switch (taskEnv->subTask) {
    case SUBTASK_OPEN_PARTY_MENU:
        taskEnv->subTask = SubTask_SetupPartyMenu(taskEnv, fieldSystem, HEAP_ID_FIELD2);
        break;
    case SUBTASK_PROCESS_PARTY_MENU:
        taskEnv->subTask = SubTask_ProcessPartyMenu(taskEnv, fieldSystem);
        break;
    case SUBTASK_OPEN_MON_SUMMARY:
        taskEnv->subTask = SubTask_SetupMonSummary(taskEnv, fieldSystem, HEAP_ID_FIELD2);
        break;
    case SUBTASK_PROCESS_MON_SUMMARY:
        taskEnv->subTask = SubTask_ProcessMonSummary(taskEnv, fieldSystem);
        break;
    case SUBTASK_END_TASK:
        Heap_Free(taskEnv);
        return TRUE;
    }

    return FALSE;
}

static int SubTask_SetupPartyMenu(BattleArcadeTaskEnv *taskEnv, FieldSystem *fieldSystem, int unused)
{
    PartyMenu *partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));

    MI_CpuClearFast(partyMenu, sizeof(PartyMenu));

    partyMenu->party = SaveData_GetParty(fieldSystem->saveData);
    partyMenu->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMenu->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMenu->options = SaveData_GetOptions(fieldSystem->saveData);

    partyMenu->type = PARTY_MENU_TYPE_BASIC;
    partyMenu->mode = PARTY_MENU_MODE_BATTLE_CASTLE;
    partyMenu->fieldSystem = fieldSystem;
    partyMenu->selectedMonSlot = taskEnv->selectedMonSlot;

    for (u8 i = 0; i < ARCADE_PARTY_SIZE_SOLO; i++) {
        partyMenu->selectionOrder[i] = taskEnv->selectedChallengers[i];
    }

    partyMenu->reqLevel = 100;
    partyMenu->minSelectionSlots = ARCADE_PARTY_SIZE_SOLO;
    partyMenu->maxSelectionSlots = ARCADE_PARTY_SIZE_SOLO;

    if (taskEnv->challengeType == FRONTIER_CHALLENGE_MULTI) {
        partyMenu->minSelectionSlots = CASTLE_PARTY_SIZE_MULTI;
        partyMenu->maxSelectionSlots = CASTLE_PARTY_SIZE_MULTI;
    }

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);
    *taskEnv->partyMenu = partyMenu;

    return SUBTASK_PROCESS_PARTY_MENU;
}

static int SubTask_ProcessPartyMenu(BattleArcadeTaskEnv *taskEnv, FieldSystem *fieldSystem)
{

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return SUBTASK_PROCESS_PARTY_MENU;
    }

    PartyMenu *partyMenu = *taskEnv->partyMenu;

    switch (partyMenu->selectedMonSlot) {
    case PARTY_MENU_SLOT_CANCEL:
        return SUBTASK_END_TASK;
    case MAX_PARTY_SIZE:
        return SUBTASK_END_TASK;
    default:
        break;
    }

    MI_CpuCopy8(partyMenu->selectionOrder, taskEnv->selectedChallengers, ARCADE_PARTY_SIZE_SOLO);
    taskEnv->selectedMonSlot = partyMenu->selectedMonSlot;
    Heap_Free(partyMenu);
    *taskEnv->partyMenu = NULL;

    return SUBTASK_OPEN_MON_SUMMARY;
}

static int SubTask_SetupMonSummary(BattleArcadeTaskEnv *taskEnv, FieldSystem *fieldSystem, enum HeapID heapID)
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

    SaveData *saveData = fieldSystem->saveData;
    PokemonSummary *monSummary = Heap_AllocAtEnd(heapID, sizeof(PokemonSummary));

    MI_CpuClear8(monSummary, sizeof(PokemonSummary));

    monSummary->options = SaveData_GetOptions(saveData);
    monSummary->monData = SaveData_GetParty(saveData);
    monSummary->dexMode = SaveData_GetDexMode(saveData);
    monSummary->showContest = PokemonSummaryScreen_ShowContestData(saveData);
    monSummary->dataType = SUMMARY_DATA_PARTY_MON;
    monSummary->monIndex = taskEnv->selectedMonSlot;
    monSummary->monMax = Party_GetCurrentCount(monSummary->monData);
    monSummary->move = 0;
    monSummary->mode = SUMMARY_MODE_NORMAL;
    monSummary->specialRibbons = SaveData_GetRibbons(saveData);

    PokemonSummaryScreen_FlagVisiblePages(monSummary, visiblePages);
    PokemonSummaryScreen_SetPlayerProfile(monSummary, SaveData_GetTrainerInfo(saveData));
    FieldSystem_StartChildProcess(fieldSystem, &gPokemonSummaryScreenApp, monSummary);

    *taskEnv->partyMenu = monSummary;
    return SUBTASK_PROCESS_MON_SUMMARY;
}

static int SubTask_ProcessMonSummary(BattleArcadeTaskEnv *taskEnv, FieldSystem *fieldSystem)
{
    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return SUBTASK_PROCESS_MON_SUMMARY;
    }

    PokemonSummary *monSummary = *taskEnv->partyMenu;
    taskEnv->selectedMonSlot = monSummary->monIndex;
    Heap_Free(monSummary);
    *taskEnv->partyMenu = NULL;

    return SUBTASK_OPEN_PARTY_MENU;
}

void BattleArcade_ProcessSpeciesCheckMsg(int netID, int unused, void *data, void *context)
{
    BattleArcadeSpeciesCheck *myData = context;
    const BattleArcadeSpeciesCheck *partnersData = data;

    myData->receivedMessages++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    myData->partnerSpecies[0] = partnersData->species[0];
    myData->partnerSpecies[1] = partnersData->species[1];
}
