#include "unk_0205003C.h"

#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "struct_decls/struct_020304A0_decl.h"
#include "struct_decls/struct_020305B8_decl.h"
#include "struct_defs/battle_tower.h"
#include "struct_defs/struct_02050224.h"

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
#include "unk_02030494.h"
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
} UnkStruct_0205037C;

BOOL ScrCmd_2D9(ScriptContext *param0);
BOOL ScrCmd_2DC(ScriptContext *param0);
static void sub_02050174(SaveData *saveData, UnkStruct_020305B8 *param1, u8 param2);
void sub_020502E0(FieldTask *param0, void **param1, u8 param2);
static BOOL sub_02050314(FieldTask *param0);
static int sub_0205037C(UnkStruct_0205037C *param0, FieldSystem *fieldSystem, int param2);
static int sub_02050448(UnkStruct_0205037C *param0, FieldSystem *fieldSystem);
static int sub_02050498(UnkStruct_0205037C *param0, FieldSystem *fieldSystem, enum HeapID heapID);
static int sub_02050520(UnkStruct_0205037C *param0, FieldSystem *fieldSystem);
BOOL ScrCmd_2DA(ScriptContext *param0);
void sub_02050224(FieldTask *param0, u16 param1, u16 param2, u16 *param3);
static BOOL sub_02050264(FieldTask *param0);

BOOL ScrCmd_2D9(ScriptContext *param0)
{
    u8 v0;
    u16 v3 = ScriptContext_ReadHalfWord(param0);
    u16 v4 = ScriptContext_GetVar(param0);
    u16 v5 = ScriptContext_ReadHalfWord(param0);
    u16 *v6 = FieldSystem_GetVarPointer(param0->fieldSystem, v5);
    UnkStruct_020304A0 *v10 = sub_020304A0(param0->fieldSystem->saveData);
    UnkStruct_020305B8 *v11 = sub_020305B8(param0->fieldSystem->saveData);
    void **v8 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, 19);

    switch (v3) {
    case 0:
        *v6 = sub_02049EC4(v4, param0->fieldSystem->saveData, 0);
        break;
    case 1:
        if (v4 == 3) {
            *v6 = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(param0->fieldSystem->saveData), STAT_ARCADE_WFC_STREAK_ACTIVE, BattleFrontierStats_GetHostFriendIdx(STAT_ARCADE_WFC_STREAK_ACTIVE));
        } else {
            *v6 = (u16)sub_02030600(v11, 8, v4, 0, NULL);
        }
        break;
    case 3:
        sub_02050174(param0->fieldSystem->saveData, v11, v4);
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

        sub_020502E0(param0->task, v8, v0);
        return 1;
    default:
        GF_ASSERT(FALSE);
        *v6 = 0;
        break;
    }

    return 0;
}

BOOL ScrCmd_2DC(ScriptContext *param0)
{
    u16 v1 = ScriptContext_GetVar(param0);

    UnkStruct_020305B8 *v0 = sub_020305B8(param0->fieldSystem->saveData);
    sub_02050174(param0->fieldSystem->saveData, v0, v1);

    return 0;
}

static void sub_02050174(SaveData *saveData, UnkStruct_020305B8 *param1, u8 param2)
{
    u8 v2[4];

    v2[0] = 0;
    sub_020305CC(param1, 8, param2, 0, v2);

    if (param2 == 3) {
        BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(saveData), STAT_ARCADE_WFC_STREAK_ACTIVE, BattleFrontierStats_GetHostFriendIdx(STAT_ARCADE_WFC_STREAK_ACTIVE), 0);
    }

    BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetArcadeLatestStreakIndex(param2), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetArcadeLatestStreakIndex(param2)), 0);
}

BOOL ScrCmd_2DA(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    u16 v1 = ScriptContext_GetVar(param0);
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    sub_02050224(param0->task, v0, v1, v2);
    return 1;
}

void sub_02050224(FieldTask *param0, u16 param1, u16 param2, u16 *param3)
{
    UnkStruct_02050224 *v0 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_02050224));
    memset(v0, 0, sizeof(UnkStruct_02050224));

    v0->unk_04[0] = param1;
    v0->unk_04[1] = param2;
    v0->unk_0C = param3;

    CommFieldCmd_Init(v0);
    FieldTask_InitCall(param0, sub_02050264, v0);
}

static BOOL sub_02050264(FieldTask *param0)
{
    UnkStruct_02050224 *v0 = FieldTask_GetEnv(param0);

    switch (v0->unk_00) {
    case 0:
        if (CommSys_SendData(134, v0, sizeof(UnkStruct_02050224)) == 1) {
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

void sub_020502E0(FieldTask *param0, void **param1, u8 param2)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0205037C *v1 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0205037C));

    MI_CpuClear8(v1, sizeof(UnkStruct_0205037C));

    v1->unk_04 = param2;
    v1->unk_0C = param1;

    FieldTask_InitCall(fieldSystem->task, sub_02050314, v1);
}

static BOOL sub_02050314(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0205037C *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_00) {
    case 0:
        v1->unk_00 = sub_0205037C(v1, fieldSystem, 11);
        break;
    case 1:
        v1->unk_00 = sub_02050448(v1, fieldSystem);
        break;
    case 2:
        v1->unk_00 = sub_02050498(v1, fieldSystem, HEAP_ID_FIELD2);
        break;
    case 3:
        v1->unk_00 = sub_02050520(v1, fieldSystem);
        break;
    case 4:
        Heap_Free(v1);
        return 1;
    }

    return 0;
}

static int sub_0205037C(UnkStruct_0205037C *param0, FieldSystem *fieldSystem, int param2)
{
    u8 v0;
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

    for (v0 = 0; v0 < 3; v0++) {
        partyMenu->selectionOrder[v0] = param0->unk_06[v0];
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

static int sub_02050448(UnkStruct_0205037C *param0, FieldSystem *fieldSystem)
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

static int sub_02050498(UnkStruct_0205037C *param0, FieldSystem *fieldSystem, enum HeapID heapID)
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
    monSummary->dataType = 1;
    monSummary->monIndex = param0->unk_05;
    monSummary->monMax = (u8)Party_GetCurrentCount(monSummary->monData);
    monSummary->move = 0;
    monSummary->mode = SUMMARY_MODE_NORMAL;
    monSummary->specialRibbons = SaveData_GetRibbons(saveData);

    PokemonSummaryScreen_FlagVisiblePages(monSummary, visiblePages);
    PokemonSummaryScreen_SetPlayerProfile(monSummary, SaveData_GetTrainerInfo(saveData));
    FieldSystem_StartChildProcess(fieldSystem, &gPokemonSummaryScreenApp, monSummary);

    *param0->unk_0C = monSummary;
    return 3;
}

static int sub_02050520(UnkStruct_0205037C *param0, FieldSystem *fieldSystem)
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
