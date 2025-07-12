#include "unk_0206B9D8.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_decls/struct_0202D060_decl.h"
#include "struct_decls/struct_0202D750_decl.h"
#include "struct_defs/battle_frontier.h"
#include "struct_defs/struct_0206BC70.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/underground.h"

#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"

#include "bag.h"
#include "communication_system.h"
#include "dexmode_checker.h"
#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "party.h"
#include "record_mixed_rng.h"
#include "save_player.h"
#include "savedata.h"
#include "script_manager.h"
#include "unk_0202854C.h"
#include "unk_0202D05C.h"
#include "unk_0202D778.h"
#include "unk_0203061C.h"
#include "unk_020363E8.h"
#include "unk_02038FFC.h"
#include "unk_0203D1B8.h"
#include "unk_0204AEE8.h"

#include "constdata/const_020F1E88.h"
#include "constdata/const_020F410C.h"

typedef struct {
    int unk_00;
    int unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E[6];
    void **unk_14;
} UnkStruct_0206B9D8;

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

static int sub_0206B9D8(UnkStruct_0206B9D8 *param0, FieldSystem *fieldSystem, int heapID)
{
    u8 v0;
    SaveData *saveData;
    PartyManagementData *partyMan = Heap_AllocFromHeapAtEnd(heapID, sizeof(PartyManagementData));

    saveData = fieldSystem->saveData;
    MI_CpuClear8(partyMan, sizeof(PartyManagementData));

    partyMan->options = SaveData_GetOptions(saveData);
    partyMan->party = SaveData_GetParty(saveData);
    partyMan->bag = SaveData_GetBag(saveData);
    partyMan->unk_21 = 0;
    partyMan->unk_20 = param0->unk_08;
    partyMan->unk_32_0 = param0->unk_0A;
    partyMan->unk_32_4 = param0->unk_0B;
    partyMan->unk_33 = param0->unk_0C;
    partyMan->selectedMonSlot = param0->unk_0D;

    for (v0 = 0; v0 < 6; v0++) {
        partyMan->unk_2C[v0] = param0->unk_0E[v0];
    }

    FieldSystem_StartChildProcess(fieldSystem, &Unk_020F1E88, partyMan);

    *(param0->unk_14) = partyMan;
    return 1;
}

static int sub_0206BA84(UnkStruct_0206B9D8 *param0, FieldSystem *fieldSystem)
{
    int v0;
    PartyManagementData *partyMan;

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return 1;
    }

    partyMan = *(param0->unk_14);

    switch (partyMan->selectedMonSlot) {
    case 7:
        param0->unk_00 = 0;
        return 4;
    case 6:
        param0->unk_00 = 1;
        return 4;
    default:
        break;
    }

    MI_CpuCopy8(partyMan->unk_2C, param0->unk_0E, 6);
    param0->unk_0D = partyMan->selectedMonSlot;
    Heap_Free(partyMan);
    *(param0->unk_14) = NULL;

    return 2;
}

static int sub_0206BAE0(UnkStruct_0206B9D8 *param0, FieldSystem *fieldSystem, int heapID)
{
    PokemonSummary *v0;
    SaveData *saveData;
    static const u8 v2[] = {
        0, 1, 2, 4, 3, 5, 6, 7, 8
    };

    saveData = fieldSystem->saveData;
    v0 = Heap_AllocFromHeapAtEnd(heapID, sizeof(PokemonSummary));
    MI_CpuClear8(v0, sizeof(PokemonSummary));

    v0->options = SaveData_GetOptions(saveData);
    v0->monData = SaveData_GetParty(saveData);
    v0->dexMode = SaveData_GetDexMode(saveData);
    v0->showContest = PokemonSummaryScreen_ShowContestData(saveData);
    v0->dataType = SUMMARY_DATA_PARTY_MON;
    v0->monIndex = param0->unk_0D;
    v0->monMax = Party_GetCurrentCount(v0->monData);
    v0->move = 0;
    v0->mode = param0->unk_09;
    v0->specialRibbons = sub_0202D79C(saveData);

    PokemonSummaryScreen_FlagVisiblePages(v0, v2);
    PokemonSummaryScreen_SetPlayerProfile(v0, SaveData_GetTrainerInfo(saveData));
    FieldSystem_StartChildProcess(fieldSystem, &gPokemonSummaryScreenApp, v0);
    *(param0->unk_14) = v0;

    return 3;
}

static int sub_0206BB6C(UnkStruct_0206B9D8 *param0, FieldSystem *fieldSystem)
{
    PokemonSummary *v0;

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return 3;
    }

    v0 = *(param0->unk_14);
    param0->unk_0D = v0->monIndex;
    Heap_Free(v0);
    *(param0->unk_14) = NULL;

    return 0;
}

static BOOL sub_0206BB94(FieldTask *param0)
{
    FieldSystem *v0 = FieldTask_GetFieldSystem(param0);
    UnkStruct_0206B9D8 *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_04) {
    case 0:
        v1->unk_04 = sub_0206B9D8(v1, v0, HEAP_ID_FIELDMAP);
        break;
    case 1:
        v1->unk_04 = sub_0206BA84(v1, v0);
        break;
    case 2:
        v1->unk_04 = sub_0206BAE0(v1, v0, HEAP_ID_FIELDMAP);
        break;
    case 3:
        v1->unk_04 = sub_0206BB6C(v1, v0);
        break;
    case 4:
        Heap_Free(v1);
        return 1;
    }

    return 0;
}

void sub_0206BBFC(FieldTask *param0, void **param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u8 param7)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0206B9D8 *v1 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_0206B9D8));

    MI_CpuClear8(v1, sizeof(UnkStruct_0206B9D8));

    v1->unk_08 = param2;
    v1->unk_09 = param3;
    v1->unk_0A = param4;
    v1->unk_0B = param5;
    v1->unk_0C = param6;
    v1->unk_0D = param7;
    v1->unk_14 = param1;

    FieldTask_InitCall(fieldSystem->task, sub_0206BB94, v1);
}

static int sub_0206BC48(UnkStruct_0206BC48 *param0, FieldSystem *fieldSystem)
{
    SaveData *saveData;

    if (WiFiList_HasValidLogin(fieldSystem->saveData)) {
        param0->unk_08 = sub_0203E1AC(fieldSystem, param0->unk_12, param0->unk_14);
        return 1;
    } else {
        param0->unk_00 = 1;
        return 2;
    }
}

static int sub_0206BC70(UnkStruct_0206BC48 *param0, FieldSystem *fieldSystem)
{
    u8 v0;
    UnkStruct_0206BC70 *v1;

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return 1;
    }

    param0->unk_00 = param0->unk_08->unk_20;
    Heap_Free(param0->unk_08);

    return 2;
}

static BOOL sub_0206BC94(FieldTask *param0)
{
    u16 *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0206BC48 *v2 = FieldTask_GetEnv(param0);

    switch (v2->unk_04) {
    case 0:
        v2->unk_04 = sub_0206BC48(v2, fieldSystem);
        break;
    case 1:
        v2->unk_04 = sub_0206BC70(v2, fieldSystem);
        break;
    case 2:
        v0 = FieldSystem_GetVarPointer(fieldSystem, v2->unk_10);
        *v0 = v2->unk_00;
        Heap_Free(v2);
        return 1;
    }

    return 0;
}

void sub_0206BCE4(FieldTask *param0, u16 param1, u16 param2, u16 param3)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0206BC48 *v1 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_0206BC48));

    MI_CpuClear8(v1, sizeof(UnkStruct_0206BC48));

    v1->unk_12 = param1;
    v1->unk_14 = param3;
    v1->unk_10 = param2;

    FieldTask_InitCall(fieldSystem->task, sub_0206BC94, v1);
}

static BOOL sub_0206BD1C(FieldTask *param0)
{
    u16 *v0;
    const void *v1;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0206BD88 *v3 = FieldTask_GetEnv(param0);

    v1 = sub_0203664C(1 - CommSys_CurNetId());

    if (v1 == NULL) {
        return 0;
    }

    v0 = FieldSystem_GetVarPointer(fieldSystem, v3->unk_02);

    switch (v3->unk_00) {
    case 0:
        *v0 = sub_0204AFC4(fieldSystem, v1);
        break;
    case 1:
        *v0 = sub_0204B020(fieldSystem, v1);
        break;
    case 2:
        *v0 = sub_0204B044(fieldSystem, v1);
    }

    Heap_Free(v3);
    return 1;
}

void sub_0206BD88(FieldTask *param0, u16 param1, u16 param2)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0206BD88 *v1 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_0206BD88));

    MI_CpuClear8(v1, sizeof(UnkStruct_0206BD88));

    v1->unk_00 = param1;
    v1->unk_02 = param2;

    FieldTask_InitCall(fieldSystem->task, sub_0206BD1C, v1);
}

u16 sub_0206BDBC(SaveData *saveData)
{
    BattleFrontier *frontier;
    UnkStruct_0202D750 *v1;
    Underground *v2;
    u16 v3;
    u8 v4, v5, v6, v7, v8, v9;

    frontier = SaveData_GetBattleFrontier(saveData);
    v3 = sub_02030698(frontier, 0, 0xff);

    if (v3 < 20) {
        return 0;
    }

    v1 = sub_0202D750(saveData);
    v4 = sub_0202D414(v1, 13, 0);
    v5 = sub_0202D414(v1, 0, 0);
    v6 = sub_0202D414(v1, 1, 0);
    v7 = sub_0202D414(v1, 14, 0);
    v8 = sub_0202D414(v1, 2, 0);
    v9 = sub_0202D414(v1, 3, 0);

    if (v4 && v5 && v6) {
        return 0;
    }

    v2 = SaveData_GetUnderground(saveData);

    if (!v4) {
        if (sub_02028984(v2, 85)) {
            sub_0202D414(v1, 13, 1);
            return 1;
        } else {
            if (!v7) {
                sub_0202D414(v1, 14, 1);
            }

            return 4;
        }
    }

    if (v3 < 50) {
        return 0;
    }

    if (!v5) {
        if (sub_02028984(v2, 86)) {
            sub_0202D414(v1, 0, 1);
            return 2;
        } else {
            if (!v8) {
                sub_0202D414(v1, 2, 1);
            }

            return 4;
        }
    }

    if ((v3 < 100) || (v6)) {
        return 0;
    }

    if (sub_02028984(v2, 87)) {
        sub_0202D414(v1, 1, 1);
        return 3;
    } else {
        if (!v9) {
            sub_0202D414(v1, 3, 1);
        }

        return 4;
    }
}

u16 sub_0206BF04(SaveData *saveData)
{
    BattleFrontier *frontier;
    UnkStruct_0202D750 *v1;
    u16 v2;
    u8 v3, v4, v5, v6, v7, v8;

    frontier = SaveData_GetBattleFrontier(saveData);
    v2 = sub_02030698(frontier, 0, 0xff);

    if (v2 < 20) {
        return 0;
    }

    v1 = sub_0202D750(saveData);
    v3 = sub_0202D414(v1, 13, 0);
    v4 = sub_0202D414(v1, 0, 0);
    v5 = sub_0202D414(v1, 1, 0);
    v6 = sub_0202D414(v1, 14, 0);
    v7 = sub_0202D414(v1, 2, 0);
    v8 = sub_0202D414(v1, 3, 0);

    if (v3 && v4 && v5) {
        return 0;
    }

    if (!v3) {
        if (v6) {
            return 4;
        }

        return 1;
    }

    if (v2 < 50) {
        return 0;
    }

    if (!v4) {
        if (v7) {
            return 5;
        }

        return 2;
    }

    if (v2 < 100) {
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

u32 sub_0206BFF0(u32 param0)
{
    return param0 * 48828125L + 1;
}

u32 sub_0206BFFC(u32 param0)
{
    return param0 * 1566083941 + 1;
}

u32 sub_0206C008(SaveData *saveData)
{
    u32 v0 = RecordMixedRNG_GetRand(SaveData_GetRecordMixedRNG(saveData));
    v0 = sub_0206BFFC(v0);

    sub_0202D470(sub_0202D750(saveData), v0);

    return v0;
}

u32 sub_0206C02C(SaveData *saveData)
{
    u32 v0, v1;
    UnkStruct_0202D750 *v2 = sub_0202D750(saveData);

    v1 = sub_0202D474(v2);
    v1 = sub_0206BFFC(v1);

    sub_0202D470(v2, v1);
    v0 = sub_0206BFF0(v1);
    sub_0202D140(sub_0202D740(saveData), 10, &v0);

    return v0;
}

u32 sub_0206C068(SaveData *saveData)
{
    int v0, v1;
    u32 v2, v3;
    UnkStruct_0202D750 *v4 = sub_0202D750(saveData);
    UnkStruct_0202D060 *v5 = sub_0202D740(saveData);

    v3 = sub_0202D474(v4);
    v2 = sub_0206BFF0(v3);
    v1 = sub_0202D3B4(v4, sub_0202D0BC(v5, 0, NULL), 0);
    v1 *= 24;

    for (v0 = 0; v0 < v1; v0++) {
        v2 = sub_0206BFF0(v2);
    }

    sub_0202D140(sub_0202D740(saveData), 10, &v2);

    return v2;
}

BOOL FieldSystem_IsInBattleTowerSalon(FieldSystem *fieldSystem)
{
    if (fieldSystem->location->mapId == MAP_HEADER_BATTLE_TOWER_BATTLE_SALON) {
        return TRUE;
    }

    return FALSE;
}
