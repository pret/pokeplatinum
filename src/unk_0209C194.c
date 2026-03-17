#include "unk_0209C194.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0209C194.h"
#include "struct_defs/struct_0209C194_1.h"

#include "applications/party_menu/defs.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"
#include "overlay109/ov109_021D0D80.h"
#include "overlay109/ov109_021D3D50.h"

#include "field_system.h"
#include "field_task.h"
#include "game_options.h"
#include "game_records.h"
#include "heap.h"
#include "journal.h"
#include "save_player.h"
#include "unk_020366A0.h"
#include "unk_0203D1B8.h"
#include "unk_0209BDF8.h"

FS_EXTERN_OVERLAY(overlay109);

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_0209C194_1 unk_08;
    UnkStruct_0209C194 *unk_28;
    FieldSystem *fieldSystem;
    PartyMenu *partyMenu;
    PokemonSummary *unk_34;
} UnkStruct_0209C1EC;

static BOOL (*const Unk_020F951C[6])(UnkStruct_0209C1EC *);
static const ApplicationManagerTemplate Unk_020F94FC;
static const ApplicationManagerTemplate Unk_020F950C;

UnkStruct_0209C194 *sub_0209C194(UnkStruct_0209C194_1 *param0, enum HeapID heapID)
{
    UnkStruct_0209C194 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_0209C194));
    memset(v0, 0, sizeof(UnkStruct_0209C194));
    v0->unk_14 = *param0;
    v0->unk_34 = sub_0209BDF8(v0, heapID);

    return v0;
}

void sub_0209C1D0(UnkStruct_0209C194 *param0)
{
    sub_0209BE64(param0->unk_34);
    sub_0209BE38(param0->unk_34);
    Heap_Free(param0);
}

BOOL sub_0209C1E8(UnkStruct_0209C194 *param0)
{
    return param0->unk_10;
}

void *sub_0209C1EC(FieldSystem *fieldSystem)
{
    UnkStruct_0209C1EC *v0 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0209C1EC));
    memset(v0, 0, sizeof(UnkStruct_0209C1EC));

    v0->fieldSystem = fieldSystem;
    v0->unk_08.saveData = fieldSystem->saveData;
    v0->unk_08.unk_0C = fieldSystem->unk_80;
    v0->unk_08.options = SaveData_GetOptions(fieldSystem->saveData);
    v0->unk_08.records = SaveData_GetGameRecords(fieldSystem->saveData);
    v0->unk_08.unk_18 = SaveData_GetJournal(fieldSystem->saveData);
    v0->unk_08.unk_04 = Options_Frame(v0->unk_08.options);
    v0->unk_08.fieldSystem = fieldSystem;

    return v0;
}

BOOL sub_0209C238(void *param0)
{
    UnkStruct_0209C1EC *v0 = param0;

    if (Unk_020F951C[v0->unk_00](v0) == 1) {
        Heap_Free(v0);
        return 1;
    }

    return 0;
}

static BOOL sub_0209C25C(UnkStruct_0209C1EC *param0)
{
    param0->unk_28 = sub_0209C194(&param0->unk_08, HEAP_ID_FIELD2);
    param0->unk_00 = 1;
    FieldSystem_StartChildProcess(param0->fieldSystem, &Unk_020F94FC, param0->unk_28);
    return 0;
}

static BOOL sub_0209C280(UnkStruct_0209C1EC *param0)
{
    if (FieldSystem_IsRunningApplication(param0->fieldSystem) == 0) {
        if (sub_0209C1E8(param0->unk_28) == 0) {
            param0->unk_00 = 5;
        } else {
            CommMan_SetErrorHandling(1, 1);

            param0->partyMenu = FieldSystem_OpenPartyMenu_SelectForSpinTrade(param0->fieldSystem, param0->unk_04);
            param0->unk_28->unk_00 = 1;
            param0->unk_00 = 2;
        }
    }

    return 0;
}

static BOOL sub_0209C2C0(UnkStruct_0209C1EC *param0)
{
    if (FieldSystem_IsRunningApplication(param0->fieldSystem) == 0) {
        int v0 = param0->partyMenu->selectedMonSlot;

        Heap_Free(param0->partyMenu);

        if (param0->partyMenu->menuSelectionResult == 1) {
            param0->unk_34 = sub_0203D670(param0->fieldSystem, HEAP_ID_APPLICATION, SUMMARY_MODE_NORMAL);
            param0->unk_04 = v0;
            param0->unk_34->monIndex = v0;
            FieldSystem_OpenSummaryScreen(param0->fieldSystem, param0->unk_34);
            param0->unk_00 = 3;
        } else {
            param0->unk_28->unk_04 = v0;
            FieldSystem_StartChildProcess(param0->fieldSystem, &Unk_020F950C, param0->unk_28);
            param0->unk_28->unk_00 = 3;
            param0->unk_00 = 4;
        }
    }

    return 0;
}

static BOOL sub_0209C324(UnkStruct_0209C1EC *param0)
{
    if (FieldSystem_IsRunningApplication(param0->fieldSystem) == 0) {
        Heap_Free(param0->unk_34);
        param0->partyMenu = FieldSystem_OpenPartyMenu_SelectForSpinTrade(param0->fieldSystem, param0->unk_04);
        param0->unk_00 = 2;
    }

    return 0;
}

static BOOL sub_0209C34C(UnkStruct_0209C1EC *param0)
{
    if (FieldSystem_IsRunningApplication(param0->fieldSystem) == 0) {
        param0->unk_00 = 5;
    }

    return 0;
}

static BOOL sub_0209C364(UnkStruct_0209C1EC *param0)
{
    sub_0209C1D0(param0->unk_28);
    return 1;
}

static BOOL (*const Unk_020F951C[6])(UnkStruct_0209C1EC *) = {
    sub_0209C25C,
    sub_0209C280,
    sub_0209C2C0,
    sub_0209C324,
    sub_0209C34C,
    sub_0209C364,
};

static const ApplicationManagerTemplate Unk_020F94FC = {
    ov109_021D3D50,
    ov109_021D3EB0,
    ov109_021D3F9C,
    FS_OVERLAY_ID(overlay109)
};

static const ApplicationManagerTemplate Unk_020F950C = {
    ov109_021D0D80,
    ov109_021D0F2C,
    ov109_021D0EB4,
    FS_OVERLAY_ID(overlay109)
};
