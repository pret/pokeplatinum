#include "unk_0206B9D8.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_defs/battle_frontier.h"
#include "struct_defs/struct_0206BC70.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"

#include "bag.h"
#include "battle_frontier_save.h"
#include "battle_tower_save.h"
#include "battle_tower_trainers.h"
#include "communication_system.h"
#include "dexmode_checker.h"
#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "party.h"
#include "record_mixed_rng.h"
#include "ribbon_save_data.h"
#include "save_player.h"
#include "savedata.h"
#include "script_manager.h"
#include "underground.h"
#include "unk_020363E8.h"
#include "unk_02038FFC.h"
#include "unk_0203D1B8.h"

#include "constdata/const_020F410C.h"

typedef struct {
    int success;
    int subTask;
    u8 partyMenuMode;
    u8 summaryMode;
    u8 minSelectionSpots;
    u8 maxSelectionSpots;
    u8 reqLevel;
    u8 selectedMonSlot;
    u8 selectedSlots[6];
    void **partyMenu;
} BattleTowerSelectPokemonTask;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_0206BC70 *unk_08;
    u16 **unk_0C;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
} UnkStruct_0206BC48;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0206BD88;

enum BattleTowerSelectionSubTask {
    SUBTASK_OPEN_PARTY_MENU,
    SUBTASK_PROCESS_PARTY_MENU,
    SUBTASK_OPEN_MON_SUMMARY,
    SUBTASK_PROCESS_MON_SUMMARY,
    SUBTASK_END_TASK,
};

static int SubTask_SetupPartyMenu(BattleTowerSelectPokemonTask *taskEnv, FieldSystem *fieldSystem, enum HeapID heapID)
{
    PartyMenu *partyMenu = Heap_AllocAtEnd(heapID, sizeof(PartyMenu));

    SaveData *saveData = fieldSystem->saveData;
    MI_CpuClear8(partyMenu, sizeof(PartyMenu));

    partyMenu->options = SaveData_GetOptions(saveData);
    partyMenu->party = SaveData_GetParty(saveData);
    partyMenu->bag = SaveData_GetBag(saveData);
    partyMenu->type = PARTY_MENU_TYPE_BASIC;
    partyMenu->mode = taskEnv->partyMenuMode;
    partyMenu->minSelectionSlots = taskEnv->minSelectionSpots;
    partyMenu->maxSelectionSlots = taskEnv->maxSelectionSpots;
    partyMenu->reqLevel = taskEnv->reqLevel;
    partyMenu->selectedMonSlot = taskEnv->selectedMonSlot;

    for (u8 i = 0; i < MAX_PARTY_SIZE; i++) {
        partyMenu->selectionOrder[i] = taskEnv->selectedSlots[i];
    }

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);

    *taskEnv->partyMenu = partyMenu;
    return SUBTASK_PROCESS_PARTY_MENU;
}

static int SubTask_ProcessPartyMenu(BattleTowerSelectPokemonTask *taskEnv, FieldSystem *fieldSystem)
{
    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return SUBTASK_PROCESS_PARTY_MENU;
    }

    PartyMenu *partyMenu = *taskEnv->partyMenu;

    switch (partyMenu->selectedMonSlot) {
    case PARTY_MENU_SLOT_CANCEL:
        taskEnv->success = FALSE;
        return SUBTASK_END_TASK;
    case MAX_PARTY_SIZE:
        taskEnv->success = TRUE;
        return SUBTASK_END_TASK;
    default:
        break;
    }

    MI_CpuCopy8(partyMenu->selectionOrder, taskEnv->selectedSlots, 6);
    taskEnv->selectedMonSlot = partyMenu->selectedMonSlot;
    Heap_Free(partyMenu);
    *taskEnv->partyMenu = NULL;

    return SUBTASK_OPEN_MON_SUMMARY;
}

static int SubTask_SetupMonSummary(BattleTowerSelectPokemonTask *taskEnv, FieldSystem *fieldSystem, enum HeapID heapID)
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
    monSummary->mode = taskEnv->summaryMode;
    monSummary->specialRibbons = SaveData_GetRibbons(saveData);

    PokemonSummaryScreen_FlagVisiblePages(monSummary, visiblePages);
    PokemonSummaryScreen_SetPlayerProfile(monSummary, SaveData_GetTrainerInfo(saveData));
    FieldSystem_StartChildProcess(fieldSystem, &gPokemonSummaryScreenApp, monSummary);
    *taskEnv->partyMenu = monSummary;

    return SUBTASK_PROCESS_MON_SUMMARY;
}

static int SubTask_ProcessMonSummary(BattleTowerSelectPokemonTask *taskEnv, FieldSystem *fieldSystem)
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

static BOOL BattleTowerSelectChallengersTask(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BattleTowerSelectPokemonTask *taskEnv = FieldTask_GetEnv(task);

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

void BattleTower_SelectPokemon(FieldTask *task, void **partyMenu, u8 partyMenuMode, u8 summaryMode, u8 minSpots, u8 maxSpots, u8 reqLevel, u8 selectedMonSlot)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BattleTowerSelectPokemonTask *taskEnv = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleTowerSelectPokemonTask));

    MI_CpuClear8(taskEnv, sizeof(BattleTowerSelectPokemonTask));

    taskEnv->partyMenuMode = partyMenuMode;
    taskEnv->summaryMode = summaryMode;
    taskEnv->minSelectionSpots = minSpots;
    taskEnv->maxSelectionSpots = maxSpots;
    taskEnv->reqLevel = reqLevel;
    taskEnv->selectedMonSlot = selectedMonSlot;
    taskEnv->partyMenu = partyMenu;

    FieldTask_InitCall(fieldSystem->task, BattleTowerSelectChallengersTask, taskEnv);
}

static int sub_0206BC48(UnkStruct_0206BC48 *param0, FieldSystem *fieldSystem)
{
    if (WiFiList_HasValidLogin(fieldSystem->saveData)) {
        param0->unk_08 = sub_0203E1AC(fieldSystem, param0->unk_12, param0->unk_14);
        return 1;
    }

    param0->unk_00 = 1;
    return 2;
}

static int sub_0206BC70(UnkStruct_0206BC48 *param0, FieldSystem *fieldSystem)
{
    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return 1;
    }

    param0->unk_00 = param0->unk_08->unk_20;
    Heap_Free(param0->unk_08);

    return 2;
}

static BOOL sub_0206BC94(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_0206BC48 *v2 = FieldTask_GetEnv(taskMan);

    switch (v2->unk_04) {
    case 0:
        v2->unk_04 = sub_0206BC48(v2, fieldSystem);
        break;
    case 1:
        v2->unk_04 = sub_0206BC70(v2, fieldSystem);
        break;
    case 2:
        u16 *v0 = FieldSystem_GetVarPointer(fieldSystem, v2->unk_10);
        *v0 = v2->unk_00;
        Heap_Free(v2);
        return 1;
    }

    return 0;
}

void sub_0206BCE4(FieldTask *taskMan, u16 param1, u16 param2, u16 param3)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_0206BC48 *v1 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0206BC48));

    MI_CpuClear8(v1, sizeof(UnkStruct_0206BC48));

    v1->unk_12 = param1;
    v1->unk_14 = param3;
    v1->unk_10 = param2;

    FieldTask_InitCall(fieldSystem->task, sub_0206BC94, v1);
}

static BOOL sub_0206BD1C(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0206BD88 *v3 = FieldTask_GetEnv(param0);

    const void *v1 = sub_0203664C(1 - CommSys_CurNetId());

    if (v1 == NULL) {
        return 0;
    }

    u16 *v0 = FieldSystem_GetVarPointer(fieldSystem, v3->unk_02);

    switch (v3->unk_00) {
    case 0:
        *v0 = BattleTower_ReceivePlayerData(fieldSystem, v1);
        break;
    case 1:
        *v0 = BattleTower_ReceiveTrainers(fieldSystem, v1);
        break;
    case 2:
        *v0 = BattleTower_ReceiveShouldRetire(fieldSystem, v1);
    }

    Heap_Free(v3);
    return 1;
}

void sub_0206BD88(FieldTask *param0, u16 param1, u16 param2)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0206BD88 *v1 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0206BD88));

    MI_CpuClear8(v1, sizeof(UnkStruct_0206BD88));

    v1->unk_00 = param1;
    v1->unk_02 = param2;

    FieldTask_InitCall(fieldSystem->task, sub_0206BD1C, v1);
}

u16 sub_0206BDBC(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_GetBattleFrontier(saveData);
    u16 v3 = BattleFrontierSave_GetStat(frontier, STAT_TOWER_RECORD_STREAK_SINGLE, 0xff);

    if (v3 < 20) {
        return 0;
    }

    WifiBattleTowerRecord *record = SaveData_GetWifiBattleTowerRecord(saveData);
    u8 v4 = WifiBattleTowerRecord_UpdateBitFlag(record, 13, 0);
    u8 v5 = WifiBattleTowerRecord_UpdateBitFlag(record, 0, 0);
    u8 v6 = WifiBattleTowerRecord_UpdateBitFlag(record, 1, 0);
    u8 v7 = WifiBattleTowerRecord_UpdateBitFlag(record, 14, 0);
    u8 v8 = WifiBattleTowerRecord_UpdateBitFlag(record, 2, 0);
    u8 v9 = WifiBattleTowerRecord_UpdateBitFlag(record, 3, 0);

    if (v4 && v5 && v6) {
        return 0;
    }

    Underground *v2 = SaveData_GetUnderground(saveData);

    if (!v4) {
        if (Underground_IsRoomForGoodsInPC(v2, 85)) {
            WifiBattleTowerRecord_UpdateBitFlag(record, 13, 1);
            return 1;
        }

        if (!v7) {
            WifiBattleTowerRecord_UpdateBitFlag(record, 14, 1);
        }

        return 4;
    }

    if (v3 < 50) {
        return 0;
    }

    if (!v5) {
        if (Underground_IsRoomForGoodsInPC(v2, 86)) {
            WifiBattleTowerRecord_UpdateBitFlag(record, 0, 1);
            return 2;
        }

        if (!v8) {
            WifiBattleTowerRecord_UpdateBitFlag(record, 2, 1);
        }

        return 4;
    }

    if ((v3 < 100) || v6) {
        return 0;
    }

    if (Underground_IsRoomForGoodsInPC(v2, 87)) {
        WifiBattleTowerRecord_UpdateBitFlag(record, 1, 1);
        return 3;
    }

    if (!v9) {
        WifiBattleTowerRecord_UpdateBitFlag(record, 3, 1);
    }

    return 4;
}

u16 sub_0206BF04(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_GetBattleFrontier(saveData);
    u16 frontierStats = BattleFrontierSave_GetStat(frontier, STAT_TOWER_RECORD_STREAK_SINGLE, 0xff);

    if (frontierStats < 20) {
        return 0;
    }

    WifiBattleTowerRecord *record = SaveData_GetWifiBattleTowerRecord(saveData);
    u8 v3 = WifiBattleTowerRecord_UpdateBitFlag(record, 13, 0);
    u8 v4 = WifiBattleTowerRecord_UpdateBitFlag(record, 0, 0);
    u8 v5 = WifiBattleTowerRecord_UpdateBitFlag(record, 1, 0);
    u8 v6 = WifiBattleTowerRecord_UpdateBitFlag(record, 14, 0);
    u8 v7 = WifiBattleTowerRecord_UpdateBitFlag(record, 2, 0);
    u8 v8 = WifiBattleTowerRecord_UpdateBitFlag(record, 3, 0);

    if (v3 && v4 && v5) {
        return 0;
    }

    if (!v3) {
        if (v6) {
            return 4;
        }

        return 1;
    }

    if (frontierStats < 50) {
        return 0;
    }

    if (!v4) {
        if (v7) {
            return 5;
        }

        return 2;
    }

    if (frontierStats < 100) {
        return 0;
    }

    if (v5) {
        return 0;
    }

    if (v8) {
        return 6;
    }

    return 3;
}

u32 BattleTower_RngNext(u32 rng)
{
    return rng * 48828125L + 1;
}

u32 BattleTower_RngNext2(u32 rng)
{
    return rng * 1566083941 + 1;
}

u32 sub_0206C008(SaveData *saveData)
{
    u32 rng = RecordMixedRNG_GetRand(SaveData_GetRecordMixedRNG(saveData));
    rng = BattleTower_RngNext2(rng);

    WifiBattleTowerRecord_SetRngState(SaveData_GetWifiBattleTowerRecord(saveData), rng);

    return rng;
}

u32 sub_0206C02C(SaveData *saveData)
{
    WifiBattleTowerRecord *record = SaveData_GetWifiBattleTowerRecord(saveData);

    u32 v1 = BattleTower_RngNext2(WifiBattleTowerRecord_GetRngState(record));

    WifiBattleTowerRecord_SetRngState(record, v1);
    u32 v0 = BattleTower_RngNext(v1);
    BattleTowerSave_SetField(SaveData_GetBattleTowerSave(saveData), BT_WIFI_SAVE_FIELD_RNG_SEED, &v0);

    return v0;
}

u32 sub_0206C068(SaveData *saveData)
{
    WifiBattleTowerRecord *record = SaveData_GetWifiBattleTowerRecord(saveData);
    BattleTowerSave *save = SaveData_GetBattleTowerSave(saveData);

    int i;
    u32 rng = BattleTower_RngNext(WifiBattleTowerRecord_GetRngState(record));
    int round = WifiBattleTowerRecord_UpdateRoomNum(record, BattleTowerSave_GetField(save, BT_WIFI_SAVE_FIELD_CHALLENGE_MODE, NULL), 0);
    round *= 24;

    for (i = 0; i < round; i++) {
        rng = BattleTower_RngNext(rng);
    }

    BattleTowerSave_SetField(SaveData_GetBattleTowerSave(saveData), BT_WIFI_SAVE_FIELD_RNG_SEED, &rng);

    return rng;
}

BOOL FieldSystem_IsInBattleTowerSalon(FieldSystem *fieldSystem)
{
    if (fieldSystem->location->mapHeaderID == MAP_HEADER_BATTLE_TOWER_BATTLE_SALON) {
        return TRUE;
    }

    return FALSE;
}
