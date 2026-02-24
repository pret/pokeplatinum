#include "overlay104/ov104_02239C58.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0209B75C_decl.h"
#include "struct_defs/struct_0209BBA4.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"

#include "bag.h"
#include "dexmode_checker.h"
#include "heap.h"
#include "mail.h"
#include "party.h"
#include "save_player.h"
#include "savedata.h"
#include "unk_0202D778.h"
#include "unk_0209B6F8.h"
#include "unk_0209BA80.h"

#include "constdata/const_020F410C.h"

void ov104_02239C7C(UnkStruct_0209BBA4 *param0);
BOOL ov104_02239C88(UnkStruct_0209BBA4 *param0, u16 param1, u16 param2, u16 param3);
void ov104_02239CD0(UnkStruct_0209B75C *param0, UnkStruct_0209BBA4 *param1, u16 param2);
static void ov104_02239D1C(UnkStruct_0209B75C *param0, UnkStruct_0209BBA4 *param1, FieldSystem *fieldSystem, int param3);
static void ov104_02239F38(UnkStruct_0209B75C *param0, UnkStruct_0209BBA4 *param1, FieldSystem *fieldSystem, int param3);
static void ov104_02239FB0(UnkStruct_0209B75C *param0, UnkStruct_0209BBA4 *param1, FieldSystem *fieldSystem, enum HeapID heapID);
static void ov104_0223A090(UnkStruct_0209B75C *param0, UnkStruct_0209BBA4 *param1, FieldSystem *fieldSystem, int param3);

UnkStruct_0209BBA4 *ov104_02239C58(SaveData *saveData)
{
    static UnkStruct_0209BBA4 *v0;

    v0 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0209BBA4));
    MI_CpuClear8(v0, sizeof(UnkStruct_0209BBA4));

    v0->saveData = saveData;
    return v0;
}

void ov104_02239C7C(UnkStruct_0209BBA4 *param0)
{
    if (param0 == NULL) {
        return;
    }

    Heap_Free(param0);
    param0 = NULL;

    return;
}

BOOL ov104_02239C88(UnkStruct_0209BBA4 *param0, u16 param1, u16 param2, u16 param3)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = sub_0209BBA4(param0);
        break;
    case 1:
        v0 = sub_0209BC1C(param0, param2);
        break;
    case 2:
        v0 = sub_0209BC64(param0, param2, param3);
        break;
    case 4:
        v0 = sub_0209BD68(param0, param2);
        break;
    case 5:
        v0 = sub_0209BDB0(param0, param2);
        break;
    }

    return v0;
}

void ov104_02239CD0(UnkStruct_0209B75C *param0, UnkStruct_0209BBA4 *param1, u16 param2)
{
    FieldSystem *fieldSystem = param1->fieldSystem;

    switch (param2) {
    case 0:
        ov104_02239D1C(param0, param1, fieldSystem, 11);
        break;
    case 1:
        ov104_02239F38(param0, param1, fieldSystem, 11);
        break;
    case 2:
        ov104_02239FB0(param0, param1, fieldSystem, HEAP_ID_FIELD2);
        break;
    case 3:
        ov104_0223A090(param0, param1, fieldSystem, 11);
        break;
    case 4:
        return;
    }

    return;
}

static void ov104_02239D1C(UnkStruct_0209B75C *param0, UnkStruct_0209BBA4 *param1, FieldSystem *fieldSystem, int param3)
{
    u8 v0;

    param1->partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));
    MI_CpuClearFast(param1->partyMenu, sizeof(PartyMenu));

    param1->partyMenu->party = SaveData_GetParty(param1->saveData);
    param1->partyMenu->bag = SaveData_GetBag(param1->saveData);
    param1->partyMenu->mailbox = SaveData_GetMailbox(param1->saveData);
    param1->partyMenu->options = SaveData_GetOptions(param1->saveData);
    param1->partyMenu->type = PARTY_MENU_TYPE_BASIC;

    if (param1->unk_A0 == 1) {
        param1->partyMenu->mode = PARTY_MENU_MODE_BATTLE_TOWER;
    } else if (param1->unk_A0 == 5) {
        param1->partyMenu->mode = PARTY_MENU_MODE_BATTLE_HALL;
    } else if (param1->unk_A0 == 4) {
        param1->partyMenu->mode = PARTY_MENU_MODE_BATTLE_CASTLE;
    } else if (param1->unk_A0 == 6) {
        param1->partyMenu->mode = PARTY_MENU_MODE_BATTLE_CASTLE;
    } else {
        GF_ASSERT(0);
    }

    param1->partyMenu->fieldSystem = fieldSystem;
    param1->partyMenu->selectedMonSlot = param1->unk_9F;

    for (v0 = 0; v0 < 2; v0++) {
        param1->partyMenu->selectionOrder[v0] = param1->unk_A1[v0];
    }

    if (param1->unk_A0 == 1) {
        param1->partyMenu->minSelectionSlots = 2;
        param1->partyMenu->maxSelectionSlots = 2;
        param1->partyMenu->reqLevel = 100;
    } else if (param1->unk_A0 == 5) {
        param1->partyMenu->minSelectionSlots = 1;
        param1->partyMenu->maxSelectionSlots = 1;
        param1->partyMenu->reqLevel = 30;
    } else if (param1->unk_A0 == 4) {
        param1->partyMenu->minSelectionSlots = 2;
        param1->partyMenu->maxSelectionSlots = 2;
        param1->partyMenu->reqLevel = 100;
    } else if (param1->unk_A0 == 6) {
        param1->partyMenu->minSelectionSlots = 2;
        param1->partyMenu->maxSelectionSlots = 2;
        param1->partyMenu->reqLevel = 100;
    } else {
        GF_ASSERT(0);
    }

    sub_0209B988(param0, &gPokemonPartyAppTemplate, param1->partyMenu, 0, NULL);
    return;
}

static void ov104_02239F38(UnkStruct_0209B75C *param0, UnkStruct_0209BBA4 *param1, FieldSystem *fieldSystem, int param3)
{
    int v0;

    switch (param1->partyMenu->selectedMonSlot) {
    case 7:
        *param1->unk_B0 = 4;
        param1->unk_9D = 4;
        return;
    case 6:
        *param1->unk_B0 = 4;
        param1->unk_9D = 4;
        return;
    default:
        break;
    }

    MI_CpuCopy8(param1->partyMenu->selectionOrder, param1->unk_A1, 2);
    param1->unk_9F = param1->partyMenu->selectedMonSlot;
    Heap_Free(param1->partyMenu);

    param1->partyMenu = NULL;
    *param1->unk_B0 = 2;
    param1->unk_9D = 2;

    return;
}

static void ov104_02239FB0(UnkStruct_0209B75C *param0, UnkStruct_0209BBA4 *param1, FieldSystem *fieldSystem, enum HeapID heapID)
{
    static const u8 v0[] = {
        0, 1, 2, 4, 3, 5, 6, 7, 8
    };

    param1->unk_AC = Heap_AllocAtEnd(heapID, sizeof(PokemonSummary));
    MI_CpuClear8(param1->unk_AC, sizeof(PokemonSummary));

    param1->unk_AC->options = SaveData_GetOptions(param1->saveData);
    param1->unk_AC->monData = SaveData_GetParty(param1->saveData);
    param1->unk_AC->dexMode = SaveData_GetDexMode(param1->saveData);
    param1->unk_AC->showContest = PokemonSummaryScreen_ShowContestData(param1->saveData);
    param1->unk_AC->dataType = SUMMARY_DATA_PARTY_MON;
    param1->unk_AC->monIndex = param1->unk_9F;
    param1->unk_AC->monMax = (u8)Party_GetCurrentCount(param1->unk_AC->monData);
    param1->unk_AC->move = 0;
    param1->unk_AC->mode = SUMMARY_MODE_NORMAL;
    param1->unk_AC->specialRibbons = SaveData_GetRibbons(param1->saveData);

    PokemonSummaryScreen_FlagVisiblePages(param1->unk_AC, v0);
    PokemonSummaryScreen_SetPlayerProfile(param1->unk_AC, SaveData_GetTrainerInfo(param1->saveData));
    sub_0209B988(param0, &gPokemonSummaryScreenApp, param1->unk_AC, 0, NULL);

    return;
}

static void ov104_0223A090(UnkStruct_0209B75C *param0, UnkStruct_0209BBA4 *param1, FieldSystem *fieldSystem, int param3)
{
    param1->unk_9F = param1->unk_AC->monIndex;
    Heap_Free(param1->unk_AC);
    param1->unk_AC = NULL;
    *param1->unk_B0 = 0;
    param1->unk_9D = 0;

    return;
}
