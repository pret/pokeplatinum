#include "scrcmd_battle_hall.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_frontier.h"
#include "generated/game_records.h"

#include "struct_decls/struct_02030114_decl.h"
#include "struct_decls/struct_0203026C_decl.h"
#include "struct_decls/struct_020308A0_decl.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"

#include "bag.h"
#include "communication_system.h"
#include "dexmode_checker.h"
#include "field_script_context.h"
#include "field_system.h"
#include "field_task.h"
#include "game_records.h"
#include "heap.h"
#include "inlines.h"
#include "mail.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "script_manager.h"
#include "string_template.h"
#include "unk_0202D05C.h"
#include "unk_0202D778.h"
#include "unk_02030108.h"
#include "unk_0203061C.h"
#include "unk_02030880.h"
#include "unk_0204FA34.h"
#include "unk_0205DFC4.h"
#include "unk_02099500.h"

#include "constdata/const_020F410C.h"

typedef struct BattleHallTaskEnv {
    int subTask;
    u8 challengeType;
    u8 selectedMonSlot;
    u8 selectedChallengers[2];
    void **partyMenu;
} BattleHallTaskEnv;

enum BattleHallSelectionSubTask {
    SUBTASK_OPEN_PARTY_MENU,
    SUBTASK_PROCESS_PARTY_MENU,
    SUBTASK_OPEN_MON_SUMMARY,
    SUBTASK_PROCESS_MON_SUMMARY,
    SUBTASK_END_TASK,
};

static BOOL CheckPartyIsBattleHallEligible(u16 numPokemonNeeded, SaveData *saveData);

static void CheckSameSpeciesAsPartner(FieldTask *param0, u16 param1, u16 *param2);
static BOOL CheckSameSpeciesAsPartnerTask(FieldTask *param0);

static void SelectBattleHallChallengers(FieldTask *task, void **partySelect, u8 challengeType);
static BOOL BattleHallSelectChallengersTask(FieldTask *task);
static int SubTask_SetupPartyMenu(BattleHallTaskEnv *taskEnv, FieldSystem *fieldSystem, int unused);
static int SubTaskProcessPartyMenu(BattleHallTaskEnv *taskEnv, FieldSystem *fieldSystem);
static int SubTask_SetupMonSummary(BattleHallTaskEnv *taskEnv, FieldSystem *fieldSystem, enum HeapID heapID);
static int SubTask_ProcessMonSummary(BattleHallTaskEnv *taskEnv, FieldSystem *fieldSystem);

BOOL ScrCmd_2CC(ScriptContext *ctx)
{
    u8 challengeType;

    u16 action = ScriptContext_ReadHalfWord(ctx);
    u16 arg = ScriptContext_GetVar(ctx);
    u16 *result = FieldSystem_GetVarPointer(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));

    UnkStruct_02030114 *v10 = sub_02030114(ctx->fieldSystem->saveData);
    UnkStruct_0203026C *v11 = sub_0203026C(ctx->fieldSystem->saveData);
    void **partySelect = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_PARTY_MANAGEMENT_DATA);

    switch (action) {
    case 0:
        *result = CheckPartyIsBattleHallEligible(arg, ctx->fieldSystem->saveData);
        break;
    case 1:
        if (arg == 3) {
            *result = sub_02030698(SaveData_GetBattleFrontier(ctx->fieldSystem->saveData),
                106,
                sub_0205E6A8(106));
        } else {
            *result = sub_020302B4(v11, 5, arg, 0, NULL);
        }
        break;
    case 2:
        *result = sub_02030698(SaveData_GetBattleFrontier(ctx->fieldSystem->saveData),
            sub_0205E55C(arg),
            sub_0205E6A8(sub_0205E55C(arg)));
        break;
    case 3:
        sub_0204FA50(ctx->fieldSystem->saveData, v11, arg);
        break;
    case 4:
        if (arg == 0) {
            challengeType = FRONTIER_CHALLENGE_SINGLE;
        } else if (arg == 1) {
            challengeType = FRONTIER_CHALLENGE_DOUBLE;
        } else {
            challengeType = FRONTIER_CHALLENGE_MULTI;
        }

        SelectBattleHallChallengers(ctx->task, partySelect, challengeType);
        return TRUE;
    default:;
        GF_ASSERT(FALSE);
        *result = 0;
        break;
    }

    return FALSE;
}

static BOOL CheckPartyIsBattleHallEligible(u16 numPokemonNeeded, SaveData *saveData)
{
    u8 i, j, numEligible;
    u16 species, level;

    Party *party = SaveData_GetParty(saveData);

    u8 partyCount = Party_GetCurrentCount(party);
    if (partyCount < numPokemonNeeded) {
        return FALSE;
    }

    u16 eligibleSpecies[MAX_PARTY_SIZE];
    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        eligibleSpecies[i] = 0;
    }

    for (i = 0, numEligible = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) != FALSE) {
            continue;
        }

        if (level < 30) {
            continue;
        }

        if (Pokemon_IsOnBattleFrontierBanlist(species) == TRUE) {
            continue;
        }

        numEligible++;
        eligibleSpecies[i] = species;
    }

    if (numPokemonNeeded == 2) {
        for (j = 0; j < partyCount; j++) {
            for (i = 0; i < partyCount; i++) {
                if (j != i) {
                    if (eligibleSpecies[j] != 0) {
                        if (eligibleSpecies[j] == eligibleSpecies[i]) {
                            return TRUE;
                        }
                    }
                }
            }
        }

        return FALSE;
    }

    if (numEligible < numPokemonNeeded) {
        return FALSE;
    }

    return TRUE;
}

BOOL ScrCmd_2D1(ScriptContext *ctx)
{
    u16 challengeType = ScriptContext_GetVar(ctx);
    UnkStruct_0203026C *v0 = sub_0203026C(ctx->fieldSystem->saveData);

    sub_0204FA50(ctx->fieldSystem->saveData, v0, challengeType);
    return FALSE;
}

BOOL ScrCmd_BattleHallCheckUsingSameSpeciesAsPartner(ScriptContext *ctx)
{
    u16 species = ScriptContext_GetVar(ctx);
    u16 *result = ScriptContext_GetVarPointer(ctx);

    CheckSameSpeciesAsPartner(ctx->task, species, result);
    return TRUE;
}

static void CheckSameSpeciesAsPartner(FieldTask *task, u16 species, u16 *speciesAreDifferent)
{
    BattleHallSameSpeciesCheck *taskEnv = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleHallSameSpeciesCheck));
    memset(taskEnv, 0, sizeof(BattleHallSameSpeciesCheck));

    taskEnv->species = species;
    taskEnv->speciesAreDifferent = speciesAreDifferent;

    CommFieldCmd_Init(taskEnv);

    FieldTask_InitCall(task, CheckSameSpeciesAsPartnerTask, taskEnv);
    return;
}

static BOOL CheckSameSpeciesAsPartnerTask(FieldTask *task)
{
    BattleHallSameSpeciesCheck *data = FieldTask_GetEnv(task);

    switch (data->taskState) {
    case 0:
        if (CommSys_SendData(132, data, sizeof(BattleHallSameSpeciesCheck)) == TRUE) {
            data->taskState++;
        }
        break;

    case 1:
        if (data->receivedMessages >= 2) {
            if (data->species == data->partnersSpecies) {
                *data->speciesAreDifferent = FALSE;
            } else {
                *data->speciesAreDifferent = TRUE;
            }

            data->taskState++;
        }
        break;

    case 2:
        Heap_Free(data);
        return TRUE;
    };

    return FALSE;
}

static void SelectBattleHallChallengers(FieldTask *task, void **partySelect, u8 challengeType)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BattleHallTaskEnv *taskEnv = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleHallTaskEnv));
    MI_CpuClear8(taskEnv, sizeof(BattleHallTaskEnv));

    taskEnv->challengeType = challengeType;
    taskEnv->partyMenu = partySelect;

    FieldTask_InitCall(fieldSystem->task, BattleHallSelectChallengersTask, taskEnv);
}

static BOOL BattleHallSelectChallengersTask(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BattleHallTaskEnv *taskEnv = FieldTask_GetEnv(task);

    switch (taskEnv->subTask) {
    case SUBTASK_OPEN_PARTY_MENU:
        taskEnv->subTask = SubTask_SetupPartyMenu(taskEnv, fieldSystem, 11);
        break;
    case SUBTASK_PROCESS_PARTY_MENU:
        taskEnv->subTask = SubTaskProcessPartyMenu(taskEnv, fieldSystem);
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

static int SubTask_SetupPartyMenu(BattleHallTaskEnv *taskEnv, FieldSystem *fieldSystem, int unused)
{
    PartyMenu *partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));
    MI_CpuClearFast(partyMenu, sizeof(PartyMenu));

    partyMenu->party = SaveData_GetParty(fieldSystem->saveData);
    partyMenu->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMenu->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMenu->options = SaveData_GetOptions(fieldSystem->saveData);
    partyMenu->type = PARTY_MENU_TYPE_BASIC;
    partyMenu->mode = PARTY_MENU_MODE_BATTLE_HALL;
    partyMenu->fieldSystem = fieldSystem;
    partyMenu->selectedMonSlot = taskEnv->selectedMonSlot;

    for (u8 i = 0; i < 2; i++) {
        partyMenu->selectionOrder[i] = taskEnv->selectedChallengers[i];
    }

    partyMenu->reqLevel = 30;
    partyMenu->minSelectionSlots = 1;
    partyMenu->maxSelectionSlots = 1;

    if (taskEnv->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
        partyMenu->minSelectionSlots = 2;
        partyMenu->maxSelectionSlots = 2;
    }

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);

    *taskEnv->partyMenu = partyMenu;

    return SUBTASK_PROCESS_PARTY_MENU;
}

static int SubTaskProcessPartyMenu(BattleHallTaskEnv *taskEnv, FieldSystem *fieldSystem)
{

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return SUBTASK_PROCESS_PARTY_MENU;
    }

    PartyMenu *partyMenu = *taskEnv->partyMenu;

    switch (partyMenu->selectedMonSlot) {
    case 7:
        return SUBTASK_END_TASK;
    case 6:
        return SUBTASK_END_TASK;
    default:
        break;
    }

    MI_CpuCopy8(partyMenu->selectionOrder, taskEnv->selectedChallengers, 2);

    taskEnv->selectedMonSlot = partyMenu->selectedMonSlot;

    Heap_Free(partyMenu);
    *taskEnv->partyMenu = NULL;
    return SUBTASK_OPEN_MON_SUMMARY;
}

static int SubTask_SetupMonSummary(BattleHallTaskEnv *taskEnv, FieldSystem *fieldSystem, enum HeapID heapID)
{
    static const u8 sMonSummaryPages[] = {
        SUMMARY_PAGE_INFO,
        SUMMARY_PAGE_MEMO,
        SUMMARY_PAGE_SKILLS,
        SUMMARY_PAGE_CONDITION,
        SUMMARY_PAGE_BATTLE_MOVES,
        SUMMARY_PAGE_CONTEST_MOVES,
        SUMMARY_PAGE_RIBBONS,
        SUMMARY_PAGE_EXIT,
        SUMMARY_PAGE_MAX
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

    PokemonSummaryScreen_FlagVisiblePages(monSummary, sMonSummaryPages);
    PokemonSummaryScreen_SetPlayerProfile(monSummary, SaveData_GetTrainerInfo(saveData));

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonSummaryScreenApp, monSummary);

    *taskEnv->partyMenu = monSummary;
    return SUBTASK_PROCESS_MON_SUMMARY;
}

static int SubTask_ProcessMonSummary(BattleHallTaskEnv *taskEnv, FieldSystem *fieldSystem)
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

typedef struct BattleHallMilestone {
    u32 record;
    u32 bp;
} BattleHallMilestone;

static const BattleHallMilestone sBattleHallRecordMilestones[] = {
    { 10, 1 },
    { 30, 3 },
    { 50, 5 },
    { 100, 5 },
    { 150, 5 },
    { 200, 5 },
    { 250, 5 },
    { 300, 5 },
    { 350, 5 },
    { 400, 5 },
    { 450, 5 },
    { 500, 10 },
    { 600, 10 },
    { 700, 10 },
    { 800, 10 },
    { 900, 10 },
    { 1000, 10 },
    { 1200, 30 },
    { 1400, 30 },
    { 1600, 30 },
    { 1800, 30 },
    { 2000, 50 },
    { 2500, 50 },
    { 3000, 50 },
    { 3500, 50 },
    { 4000, 50 },
    { 4500, 50 },
    { 5000, 50 },
    { 5500, 50 },
    { 6000, 50 },
    { 6500, 50 },
    { 7000, 50 },
    { 7500, 50 },
    { 8000, 50 },
    { 8500, 50 },
    { 9000, 50 },
    { 9500, 50 },
    { 10000, 100 },
    { 20000, 200 },
    { 30000, 300 },
    { 40000, 400 },
    { 50000, 500 },
    { 60000, 600 },
    { 70000, 700 },
    { 80000, 800 },
    { 90000, 900 },
    { 100000, 1000 },
};

BOOL ScrCmd_GetBattleHallRecordKeeperStats(ScriptContext *ctx)
{
    BattleFrontierStage *frontierStage;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 curStreakStrIndex = ScriptContext_ReadByte(ctx);
    u8 passedMilestoneStrIndex = ScriptContext_ReadByte(ctx);
    u8 nextMilestoneStrIndex = ScriptContext_ReadByte(ctx);
    u8 earnedBPStrIndex = ScriptContext_ReadByte(ctx);
    u16 *nextMilestone = ScriptContext_GetVarPointer(ctx);
    u16 *recordKeepersResponse = ScriptContext_GetVarPointer(ctx);

    u32 totalWinRecord = 0;
    int loadResult = LOAD_RESULT_OK;

    if (!SaveData_MiscSaveBlock_InitFlag(fieldSystem->saveData)) {
        *recordKeepersResponse = 0;
        return FALSE;
    }

    frontierStage = sub_020308A0(fieldSystem->saveData, HEAP_ID_FIELD3, &loadResult);
    if (loadResult != LOAD_RESULT_OK) {
        totalWinRecord = 0;
    } else {
        for (u32 species = 0; species < NATIONAL_DEX_COUNT; species++) {
            totalWinRecord += sub_020308BC(fieldSystem->saveData, frontierStage, FRONTIER_CHALLENGE_SINGLE, species);
        }
    }

    if (frontierStage != NULL) {
        Heap_Free(frontierStage);
    }

    StringTemplate_SetNumber(*strTemplate, curStreakStrIndex, totalWinRecord, GetNumberDigitCount(totalWinRecord), 1, 1);

    u16 earnedBP = 0;
    u32 reachedMilestone = 0;
    u16 nextMilestoneInitial = *nextMilestone;

    for (u32 i = *nextMilestone; i < NELEMS(sBattleHallRecordMilestones); i++) {
        if (sBattleHallRecordMilestones[i].record <= totalWinRecord) {
            earnedBP += sBattleHallRecordMilestones[i].bp;
            *nextMilestone += 1;

            reachedMilestone = i;
        }
    }

    GameRecords_AddToRecordValue(SaveData_GetGameRecords(ctx->fieldSystem->saveData), RECORD_BATTLE_POINTS_RECEIVED, earnedBP);

    if (earnedBP != 0) {
        BattlePoints_ApplyFuncAndGet(
            sub_0202D750(ctx->fieldSystem->saveData), earnedBP, BATTLE_POINTS_FUNC_ADD);
    }

    if (totalWinRecord == 0) {
        *recordKeepersResponse = 0;
    } else {
        if (nextMilestoneInitial != *nextMilestone) {
            *recordKeepersResponse = 1;
        } else {
            *recordKeepersResponse = 2;
        }

        if (nextMilestoneInitial >= NELEMS(sBattleHallRecordMilestones)) {
            *recordKeepersResponse = 3;
            return FALSE;
        }
    }

    StringTemplate_SetNumber(*strTemplate, passedMilestoneStrIndex, sBattleHallRecordMilestones[reachedMilestone].record, GetNumberDigitCount(sBattleHallRecordMilestones[reachedMilestone].record), 1, 1);

    StringTemplate_SetNumber(*strTemplate, nextMilestoneStrIndex, sBattleHallRecordMilestones[*nextMilestone].record, GetNumberDigitCount(sBattleHallRecordMilestones[*nextMilestone].record), 1, 1);

    StringTemplate_SetNumber(*strTemplate, earnedBPStrIndex, earnedBP, GetNumberDigitCount(earnedBP), 1, 1);

    return FALSE;
}

BOOL ScrCmd_GetNumSpeciesWithBattleHallRecords(ScriptContext *ctx)
{
    BattleFrontierStage *frontierStage;
    u32 combinedRecord, species;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *result = ScriptContext_GetVarPointer(ctx);

    u32 numSpeciesWithRecord = 0;
    int loadResult = LOAD_RESULT_OK;

    if (!SaveData_MiscSaveBlock_InitFlag(fieldSystem->saveData)) {
        *result = 0;
        return FALSE;
    }

    frontierStage = sub_020308A0(fieldSystem->saveData, HEAP_ID_FIELD3, &loadResult);
    if (loadResult != LOAD_RESULT_OK) {
        numSpeciesWithRecord = 0;
    } else {
        for (species = 0; species < NATIONAL_DEX_COUNT; species++) {
            combinedRecord = 0;

            combinedRecord += sub_020308BC(fieldSystem->saveData, frontierStage, FRONTIER_CHALLENGE_SINGLE, species);
            combinedRecord += sub_020308BC(fieldSystem->saveData, frontierStage, FRONTIER_CHALLENGE_DOUBLE, species);
            combinedRecord += sub_020308BC(fieldSystem->saveData, frontierStage, FRONTIER_CHALLENGE_MULTI, species);

            if (combinedRecord > 0) {
                numSpeciesWithRecord++;
            }
        }
    }

    if (frontierStage != NULL) {
        Heap_Free(frontierStage);
    }

    *result = numSpeciesWithRecord;
    return FALSE;
}

BOOL ScrCmd_GetBattleHallTotalSinglesRecord(ScriptContext *ctx)
{
    BattleFrontierStage *frontierStage;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *result = ScriptContext_GetVarPointer(ctx);

    u32 totalRecord = 0;
    int loadResult = LOAD_RESULT_OK;

    if (!SaveData_MiscSaveBlock_InitFlag(fieldSystem->saveData)) {
        *result = 0;
        return FALSE;
    }

    frontierStage = sub_020308A0(fieldSystem->saveData, HEAP_ID_FIELD3, &loadResult);
    if (loadResult != LOAD_RESULT_OK) {
        totalRecord = 0;
    } else {
        for (u32 species = 0; species < NATIONAL_DEX_COUNT; species++) {
            totalRecord += sub_020308BC(fieldSystem->saveData, frontierStage, FRONTIER_CHALLENGE_SINGLE, species);
        }
    }

    if (frontierStage != NULL) {
        Heap_Free(frontierStage);
    }

    if (totalRecord > 10000) {
        totalRecord = 10000;
    }

    *result = totalRecord;
    return FALSE;
}

BOOL ScrCmd_32A(ScriptContext *ctx)
{
    u16 *v2 = ScriptContext_GetVarPointer(ctx);

    u16 v0 = sub_02030698(SaveData_GetBattleFrontier(ctx->fieldSystem->saveData),
        sub_0205E55C(0),
        0xff);

    u16 v1 = sub_02030698(SaveData_GetBattleFrontier(ctx->fieldSystem->saveData),
        sub_0205E50C(0),
        0xff);

    *v2 = 0;
    if (v1 == 50) {
        *v2 = 1;
    }

    return FALSE;
}
