#include "unk_0204FAB4.h"

#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "struct_decls/struct_020302DC_decl.h"
#include "struct_decls/struct_0203041C_decl.h"
#include "struct_defs/battle_tower.h"
#include "struct_defs/struct_0204FCF8.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"

#include "bag.h"
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
#include "unk_020302D0.h"
#include "unk_02049D08.h"
#include "unk_0205DFC4.h"
#include "unk_02099500.h"

#include "constdata/const_020F410C.h"

typedef struct {
    int unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06[3];
    void **unk_0C;
} UnkStruct_0204FE50;

BOOL ScrCmd_2D2(ScriptContext *param0);
BOOL ScrCmd_2D5(ScriptContext *param0);
static void sub_0204FBEC(SaveData *saveData, UnkStruct_0203041C *param1, u8 param2);
static void sub_0204FDB4(FieldTask *taskMan, void **param1, u8 param2);
static BOOL sub_0204FDE8(FieldTask *taskMan);
static int sub_0204FE50(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem, int param2);
static int sub_0204FF1C(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem);
static int sub_0204FF6C(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem, enum HeapID heapID);
static int sub_0204FFF4(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem);
BOOL ScrCmd_2D3(ScriptContext *param0);
static void sub_0204FCF8(FieldTask *param0, u16 param1, u16 param2, u16 *param3);
static BOOL sub_0204FD38(FieldTask *param0);

BOOL ScrCmd_2D2(ScriptContext *param0)
{
    u16 v3 = ScriptContext_ReadHalfWord(param0);
    u16 v4 = ScriptContext_GetVar(param0);
    u16 v5 = ScriptContext_ReadHalfWord(param0);
    u16 *v6 = FieldSystem_GetVarPointer(param0->fieldSystem, v5);
    UnkStruct_020302DC *v10 = sub_020302DC(param0->fieldSystem->saveData);
    UnkStruct_0203041C *v11 = sub_0203041C(param0->fieldSystem->saveData);
    void **v8 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, 19);
    u8 v0;

    switch (v3) {
    case 0:
        *v6 = sub_02049EC4(v4, param0->fieldSystem->saveData, 0);
        break;
    case 1:
        if (v4 == 3) {
            *v6 = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(param0->fieldSystem->saveData), STAT_CASTLE_WFC_STREAK_ACTIVE, BattleFrontierStats_GetHostFriendIdx(STAT_CASTLE_WFC_STREAK_ACTIVE));
        } else {
            *v6 = (u16)sub_02030470(v11, 9, v4, 0, NULL);
        }
        break;
    case 3:
        sub_0204FBEC(param0->fieldSystem->saveData, v11, v4);
        break;
    case 4:
        if (v4 == 0) {
            v0 = 0;
        } else if (v4 == 1) {
            v0 = 1;
        } else if (v4 == 2) {
            v0 = 2;
        } else {
            v0 = 2;
        }

        sub_0204FDB4(param0->task, v8, v0);
        return 1;
    default:
        GF_ASSERT(FALSE);
        *v6 = 0;
        break;
    }

    return 0;
}

BOOL ScrCmd_2D5(ScriptContext *param0)
{
    u16 v1 = ScriptContext_GetVar(param0);

    UnkStruct_0203041C *v0 = sub_0203041C(param0->fieldSystem->saveData);
    sub_0204FBEC(param0->fieldSystem->saveData, v0, v1);

    return 0;
}

static void sub_0204FBEC(SaveData *saveData, UnkStruct_0203041C *param1, u8 param2)
{
    u16 v1[4];
    u8 v2[4];

    v2[0] = 0;
    sub_02030430(param1, 9, param2, 0, v2);

    if (param2 == 3) {
        BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(saveData), STAT_CASTLE_WFC_STREAK_ACTIVE, BattleFrontierStats_GetHostFriendIdx(STAT_CASTLE_WFC_STREAK_ACTIVE), 0);
    }

    BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetCastleLatestStreakIndex(param2), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestStreakIndex(param2)), 0);
    BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetCastleLatestCPIndex(param2), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(param2)), 0);

    v1[0] = 1;

    for (int i = 0; i < 3; i++) {
        BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetCastleRankIndex(param2, i), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleRankIndex(param2, i)), 1);
    }
}

BOOL ScrCmd_2D3(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    u16 v1 = ScriptContext_GetVar(param0);
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    sub_0204FCF8(param0->task, v0, v1, v2);
    return 1;
}

static void sub_0204FCF8(FieldTask *param0, u16 param1, u16 param2, u16 *param3)
{
    UnkStruct_0204FCF8 *v0 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0204FCF8));
    memset(v0, 0, sizeof(UnkStruct_0204FCF8));

    v0->unk_04[0] = param1;
    v0->unk_04[1] = param2;
    v0->unk_0C = param3;

    CommFieldCmd_Init(v0);
    FieldTask_InitCall(param0, sub_0204FD38, v0);
}

static BOOL sub_0204FD38(FieldTask *param0)
{
    UnkStruct_0204FCF8 *v0 = FieldTask_GetEnv(param0);

    switch (v0->unk_00) {
    case 0:
        if (CommSys_SendData(133, v0, sizeof(UnkStruct_0204FCF8)) == 1) {
            v0->unk_00++;
        }
        break;
    case 1:
        if (v0->unk_01 >= 2) {
            *v0->unk_0C = 0;

            if ((v0->unk_04[0] == v0->unk_08[0]) || (v0->unk_04[0] == v0->unk_08[1])) {
                *v0->unk_0C += 1;
            }

            if ((v0->unk_04[1] == v0->unk_08[0]) || (v0->unk_04[1] == v0->unk_08[1])) {
                *v0->unk_0C += 2;
            }

            v0->unk_00++;
        }
        break;
    case 2:
        Heap_Free(v0);
        return 1;
    }

    return 0;
}

static void sub_0204FDB4(FieldTask *taskMan, void **param1, u8 param2)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_0204FE50 *v1 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0204FE50));

    MI_CpuClear8(v1, sizeof(UnkStruct_0204FE50));

    v1->unk_04 = param2;
    v1->unk_0C = param1;

    FieldTask_InitCall(fieldSystem->task, sub_0204FDE8, v1);
}

static BOOL sub_0204FDE8(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_0204FE50 *taskEnv = FieldTask_GetEnv(taskMan);

    switch (taskEnv->unk_00) {
    case 0:
        taskEnv->unk_00 = sub_0204FE50(taskEnv, fieldSystem, 11);
        break;
    case 1:
        taskEnv->unk_00 = sub_0204FF1C(taskEnv, fieldSystem);
        break;
    case 2:
        taskEnv->unk_00 = sub_0204FF6C(taskEnv, fieldSystem, HEAP_ID_FIELD2);
        break;
    case 3:
        taskEnv->unk_00 = sub_0204FFF4(taskEnv, fieldSystem);
        break;
    case 4:
        Heap_Free(taskEnv);
        return 1;
    }

    return 0;
}

static int sub_0204FE50(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem, int param2)
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
    partyMenu->selectedMonSlot = param0->unk_05;

    for (u8 i = 0; i < 3; i++) {
        partyMenu->selectionOrder[i] = param0->unk_06[i];
    }

    partyMenu->reqLevel = 100;
    partyMenu->minSelectionSlots = 3;
    partyMenu->maxSelectionSlots = 3;

    if (param0->unk_04 == 2) {
        partyMenu->minSelectionSlots = 2;
        partyMenu->maxSelectionSlots = 2;
    }

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);

    *param0->unk_0C = partyMenu;

    return 1;
}

static int sub_0204FF1C(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem)
{
    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return 1;
    }

    PartyMenu *partyMenu = *param0->unk_0C;

    switch (partyMenu->selectedMonSlot) {
    case 7:
        return 4;
    case 6:
        return 4;
    default:
        break;
    }

    MI_CpuCopy8(partyMenu->selectionOrder, param0->unk_06, 3);
    param0->unk_05 = partyMenu->selectedMonSlot;
    Heap_Free(partyMenu);

    *param0->unk_0C = NULL;
    return 2;
}

static int sub_0204FF6C(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem, enum HeapID heapID)
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
    monSummary->monIndex = param0->unk_05;
    monSummary->monMax = Party_GetCurrentCount(monSummary->monData);
    monSummary->move = 0;
    monSummary->mode = SUMMARY_MODE_NORMAL;
    monSummary->specialRibbons = SaveData_GetRibbons(saveData);

    PokemonSummaryScreen_FlagVisiblePages(monSummary, visiblePages);
    PokemonSummaryScreen_SetPlayerProfile(monSummary, SaveData_GetTrainerInfo(saveData));
    FieldSystem_StartChildProcess(fieldSystem, &gPokemonSummaryScreenApp, monSummary);

    *param0->unk_0C = monSummary;
    return 3;
}

static int sub_0204FFF4(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem)
{

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return 3;
    }

    PokemonSummary *monSummary = *param0->unk_0C;
    param0->unk_05 = monSummary->monIndex;
    Heap_Free(monSummary);
    *param0->unk_0C = NULL;

    return 0;
}
