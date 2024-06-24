#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/pokemon_summary.h"
#include "struct_defs/struct_0209C194.h"
#include "struct_defs/struct_0209C194_1.h"

#include "heap.h"
#include "save_state.h"
#include "game_options.h"
#include "journal.h"
#include "game_records.h"
#include "unk_020366A0.h"
#include "field_system.h"
#include "unk_0203D1B8.h"
#include "unk_020508D4.h"
#include "unk_0209BDF8.h"
#include "unk_0209C194.h"
#include "overlay109/ov109_021D0D80.h"
#include "overlay109/ov109_021D3D50.h"

FS_EXTERN_OVERLAY(overlay109);

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_0209C194_1 unk_08;
    UnkStruct_0209C194 * unk_28;
    FieldSystem * fieldSystem;
    PartyManagementData * unk_30;
    PokemonSummary * unk_34;
} UnkStruct_0209C1EC;

static BOOL(*const Unk_020F951C[6])(UnkStruct_0209C1EC *);
static const OverlayManagerTemplate Unk_020F94FC;
static const OverlayManagerTemplate Unk_020F950C;

UnkStruct_0209C194 * sub_0209C194 (UnkStruct_0209C194_1 * param0, u32 param1)
{
    UnkStruct_0209C194 * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0209C194));
    memset(v0, 0, sizeof(UnkStruct_0209C194));
    v0->unk_14 = *param0;
    v0->unk_34 = sub_0209BDF8(v0, param1);

    return v0;
}

void sub_0209C1D0 (UnkStruct_0209C194 * param0)
{
    sub_0209BE64(param0->unk_34);
    sub_0209BE38(param0->unk_34);
    Heap_FreeToHeap(param0);
}

BOOL sub_0209C1E8 (UnkStruct_0209C194 * param0)
{
    return param0->unk_10;
}

void * sub_0209C1EC (FieldSystem * fieldSystem)
{
    UnkStruct_0209C1EC * v0;

    v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0209C1EC));
    memset(v0, 0, sizeof(UnkStruct_0209C1EC));

    v0->fieldSystem = fieldSystem;
    v0->unk_08.unk_08 = fieldSystem->saveData;
    v0->unk_08.unk_0C = fieldSystem->unk_80;
    v0->unk_08.unk_10 = SaveData_Options(fieldSystem->saveData);
    v0->unk_08.records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    v0->unk_08.unk_18 = SaveData_GetJournal(fieldSystem->saveData);
    v0->unk_08.unk_04 = Options_Frame(v0->unk_08.unk_10);
    v0->unk_08.fieldSystem = fieldSystem;

    return v0;
}

BOOL sub_0209C238 (void * param0)
{
    UnkStruct_0209C1EC * v0 = param0;

    if (Unk_020F951C[v0->unk_00](v0) == 1) {
        Heap_FreeToHeap(v0);
        return 1;
    }

    return 0;
}

static BOOL sub_0209C25C (UnkStruct_0209C1EC * param0)
{
    param0->unk_28 = sub_0209C194(&param0->unk_08, 11);
    param0->unk_00 = 1;
    sub_0203CD84(param0->fieldSystem, &Unk_020F94FC, param0->unk_28);
    return 0;
}

static BOOL sub_0209C280 (UnkStruct_0209C1EC * param0)
{
    if (sub_020509B4(param0->fieldSystem) == 0) {
        if (sub_0209C1E8(param0->unk_28) == 0) {
            param0->unk_00 = 5;
        } else {
            CommMan_SetErrorHandling(1, 1);

            param0->unk_30 = sub_0203D644(param0->fieldSystem, param0->unk_04);
            param0->unk_28->unk_00 = 1;
            param0->unk_00 = 2;
        }
    }

    return 0;
}

static BOOL sub_0209C2C0 (UnkStruct_0209C1EC * param0)
{
    if (sub_020509B4(param0->fieldSystem) == 0) {
        int v0 = param0->unk_30->unk_22;

        Heap_FreeToHeap(param0->unk_30);

        if (param0->unk_30->unk_23 == 1) {
            param0->unk_34 = sub_0203D670(param0->fieldSystem, 3, 0);
            param0->unk_04 = v0;
            param0->unk_34->pos = v0;
            sub_0203D334(param0->fieldSystem, param0->unk_34);
            param0->unk_00 = 3;
        } else {
            param0->unk_28->unk_04 = v0;
            sub_0203CD84(param0->fieldSystem, &Unk_020F950C, param0->unk_28);
            param0->unk_28->unk_00 = 3;
            param0->unk_00 = 4;
        }
    }

    return 0;
}

static BOOL sub_0209C324 (UnkStruct_0209C1EC * param0)
{
    if (sub_020509B4(param0->fieldSystem) == 0) {
        Heap_FreeToHeap(param0->unk_34);
        param0->unk_30 = sub_0203D644(param0->fieldSystem, param0->unk_04);
        param0->unk_00 = 2;
    }

    return 0;
}

static BOOL sub_0209C34C (UnkStruct_0209C1EC * param0)
{
    if (sub_020509B4(param0->fieldSystem) == 0) {
        param0->unk_00 = 5;
    }

    return 0;
}

static BOOL sub_0209C364 (UnkStruct_0209C1EC * param0)
{
    sub_0209C1D0(param0->unk_28);
    return 1;
}

static BOOL(*const Unk_020F951C[6])(UnkStruct_0209C1EC *) = {
    sub_0209C25C,
    sub_0209C280,
    sub_0209C2C0,
    sub_0209C324,
    sub_0209C34C,
    sub_0209C364,
};


static const OverlayManagerTemplate Unk_020F94FC = {
    ov109_021D3D50,
    ov109_021D3EB0,
    ov109_021D3F9C,
    FS_OVERLAY_ID(overlay109)
};

static const OverlayManagerTemplate Unk_020F950C = {
    ov109_021D0D80,
    ov109_021D0F2C,
    ov109_021D0EB4,
    FS_OVERLAY_ID(overlay109)
};
