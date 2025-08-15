#include "unk_0204F13C.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"
#include "generated/game_records.h"

#include "struct_decls/struct_02030114_decl.h"
#include "struct_decls/struct_0203026C_decl.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_defs/battle_frontier.h"
#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_0204F3D0.h"
#include "struct_defs/struct_02098C44.h"

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

#include "constdata/const_020F1E88.h"
#include "constdata/const_020F410C.h"

typedef struct UnkStruct_0204F470_t {
    int unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06[2];
    void **unk_08;
} UnkStruct_0204F470;

enum {
    UnkEnum_0204F13C_1,
    UnkEnum_0204F13C_2,
    UnkEnum_0204F13C_3,
    UnkEnum_0204F13C_4,
    UnkEnum_0204F13C_5,
};

BOOL ScrCmd_2CC(ScriptContext *param0);
static BOOL sub_0204F268(u16 param0, SaveData *saveData);
BOOL ScrCmd_2D1(ScriptContext *param0);

BOOL ScrCmd_2CF(ScriptContext *param0);
void sub_0204F3D0(FieldTask *param0, u16 param1, u16 *param2);
static BOOL sub_0204F414(FieldTask *param0);

void sub_0204F470(FieldTask *param0, void **param1, u8 param2);
static BOOL sub_0204F4A4(FieldTask *param0);
static int sub_0204F50C(UnkStruct_0204F470 *param0, FieldSystem *fieldSystem, int param2);
static int sub_0204F5D8(UnkStruct_0204F470 *param0, FieldSystem *fieldSystem);
static int sub_0204F628(UnkStruct_0204F470 *param0, FieldSystem *fieldSystem, int heapID);
static int sub_0204F6B0(UnkStruct_0204F470 *param0, FieldSystem *fieldSystem);

BOOL ScrCmd_2CC(ScriptContext *param0)
{
    u8 v0;
    u8 v1[4];
    u16 v2[4];
    u16 v3, v4, v5;
    u16 *v6, *v7;
    void **v8;
    UnkStruct_0204AFC4 *v9;
    UnkStruct_02030114 *v10;
    UnkStruct_0203026C *v11;

    v3 = ScriptContext_ReadHalfWord(param0);
    v4 = ScriptContext_GetVar(param0);
    v5 = ScriptContext_ReadHalfWord(param0);
    v6 = FieldSystem_GetVarPointer(param0->fieldSystem, v5);

    v10 = sub_02030114(param0->fieldSystem->saveData);
    v11 = sub_0203026C(param0->fieldSystem->saveData);
    v8 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, 19);

    switch (v3) {
    case 0:
        *v6 = sub_0204F268(v4, param0->fieldSystem->saveData);
        break;

    case 1:

        if (v4 == 3) {
            *v6 = sub_02030698(SaveData_GetBattleFrontier(param0->fieldSystem->saveData),
                106,
                sub_0205E6A8(106));
        } else {
            *v6 = (u16)sub_020302B4(v11, 5, v4, 0, NULL);
        }
        break;

    case 2:
        *v6 = sub_02030698(SaveData_GetBattleFrontier(param0->fieldSystem->saveData),
            sub_0205E55C(v4),
            sub_0205E6A8(sub_0205E55C(v4)));
        break;

    case 3:
        sub_0204FA50(param0->fieldSystem->saveData, v11, v4);
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

        ;
        sub_0204F470(param0->task, v8, v0);
        return 1;

    default:;
        GF_ASSERT(FALSE);
        *v6 = 0;
        break;
    }

    return 0;
}

static BOOL sub_0204F268(u16 param0, SaveData *saveData)
{
    u8 v0, v1, v2, v3;
    u16 v4, v5;
    Party *v6;
    Pokemon *v7;
    u16 v8[6];

    v6 = SaveData_GetParty(saveData);
    v3 = Party_GetCurrentCount(v6);

    if (v3 < param0) {
        return 0;
    }

    for (v0 = 0; v0 < 6; v0++) {
        v8[v0] = 0;
    }

    for (v0 = 0, v2 = 0; v0 < v3; v0++) {
        v7 = Party_GetPokemonBySlotIndex(v6, v0);
        v4 = Pokemon_GetValue(v7, MON_DATA_SPECIES, NULL);
        v5 = Pokemon_GetValue(v7, MON_DATA_LEVEL, NULL);

        if (Pokemon_GetValue(v7, MON_DATA_IS_EGG, NULL) != 0) {
            continue;
        }

        if (v5 < 30) {
            continue;
        }

        if (sub_02078804(v4) == 1) {
            continue;
        }

        v2++;
        v8[v0] = v4;
    }

    if (param0 == 2) {
        for (v1 = 0; v1 < v3; v1++) {
            for (v0 = 0; v0 < v3; v0++) {
                if (v1 != v0) {
                    if (v8[v1] != 0) {
                        if (v8[v1] == v8[v0]) {
                            return 1;
                        }
                    }
                }
            }
        }

        return 0;
    }

    if (v2 < param0) {
        return 0;
    }

    return 1;
}

BOOL ScrCmd_2D1(ScriptContext *param0)
{
    UnkStruct_0203026C *v0;
    u16 v1 = ScriptContext_GetVar(param0);

    v0 = sub_0203026C(param0->fieldSystem->saveData);

    sub_0204FA50(param0->fieldSystem->saveData, v0, v1);
    return 0;
}

BOOL ScrCmd_2CF(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    ;
    ;

    sub_0204F3D0(param0->task, v0, v1);
    return 1;
}

void sub_0204F3D0(FieldTask *param0, u16 param1, u16 *param2)
{
    UnkStruct_0204F3D0 *v0 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_0204F3D0));
    memset(v0, 0, sizeof(UnkStruct_0204F3D0));

    v0->unk_04 = param1;
    v0->unk_08 = param2;

    CommFieldCmd_Init(v0);

    FieldTask_InitCall(param0, sub_0204F414, v0);
    return;
}

static BOOL sub_0204F414(FieldTask *param0)
{
    UnkStruct_0204F3D0 *v0 = FieldTask_GetEnv(param0);

    switch (v0->unk_00) {
    case 0:
        if (CommSys_SendData(132, v0, sizeof(UnkStruct_0204F3D0)) == 1) {
            v0->unk_00++;
        }
        break;

    case 1:
        if (v0->unk_01 >= 2) {
            if (v0->unk_04 == v0->unk_06) {
                *v0->unk_08 = 0;
            } else {
                *v0->unk_08 = 1;
            }

            ;
            ;
            ;
            v0->unk_00++;
        }
        break;

    case 2:
        Heap_Free(v0);
        return 1;
    };

    return 0;
}

void sub_0204F470(FieldTask *param0, void **param1, u8 param2)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0204F470 *v1 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_0204F470));
    MI_CpuClear8(v1, sizeof(UnkStruct_0204F470));

    v1->unk_04 = param2;
    v1->unk_08 = param1;

    FieldTask_InitCall(fieldSystem->task, sub_0204F4A4, v1);
    return;
}

static BOOL sub_0204F4A4(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0204F470 *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_00) {
    case UnkEnum_0204F13C_1:
        v1->unk_00 = sub_0204F50C(v1, fieldSystem, 11);
        break;

    case UnkEnum_0204F13C_2:
        v1->unk_00 = sub_0204F5D8(v1, fieldSystem);
        break;

    case UnkEnum_0204F13C_3:
        v1->unk_00 = sub_0204F628(v1, fieldSystem, HEAP_ID_FIELDMAP);
        break;

    case UnkEnum_0204F13C_4:
        v1->unk_00 = sub_0204F6B0(v1, fieldSystem);
        break;

    case UnkEnum_0204F13C_5:
        Heap_Free(v1);
        return 1;
    }

    return 0;
}

static int sub_0204F50C(UnkStruct_0204F470 *param0, FieldSystem *fieldSystem, int param2)
{
    u8 v0;

    PartyManagementData *partyMan = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(PartyManagementData));
    MI_CpuClearFast(partyMan, sizeof(PartyManagementData));

    partyMan->party = SaveData_GetParty(fieldSystem->saveData);
    partyMan->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMan->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMan->options = SaveData_GetOptions(fieldSystem->saveData);

    partyMan->unk_21 = 0;

    partyMan->unk_20 = 22;
    partyMan->fieldSystem = fieldSystem;

    partyMan->selectedMonSlot = param0->unk_05;

    for (v0 = 0; v0 < 2; v0++) {
        partyMan->unk_2C[v0] = param0->unk_06[v0];
    }

    partyMan->unk_33 = 30;

    partyMan->unk_32_0 = 1;
    partyMan->unk_32_4 = 1;

    if (param0->unk_04 == 1) {
        partyMan->unk_32_0 = 2;
        partyMan->unk_32_4 = 2;
    }

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMan);

    *(param0->unk_08) = partyMan;

    return UnkEnum_0204F13C_2;
}

static int sub_0204F5D8(UnkStruct_0204F470 *param0, FieldSystem *fieldSystem)
{
    int v0;
    PartyManagementData *partyMan;

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return UnkEnum_0204F13C_2;
    }

    partyMan = *(param0->unk_08);

    switch (partyMan->selectedMonSlot) {
    case 7:
        return UnkEnum_0204F13C_5;

    case 6:
        return UnkEnum_0204F13C_5;

    default:
        break;
    }

    MI_CpuCopy8(partyMan->unk_2C, param0->unk_06, 2);

    param0->unk_05 = partyMan->selectedMonSlot;

    Heap_Free(partyMan);
    *(param0->unk_08) = NULL;
    return UnkEnum_0204F13C_3;
}

static int sub_0204F628(UnkStruct_0204F470 *param0, FieldSystem *fieldSystem, int heapID)
{
    PokemonSummary *v0;
    SaveData *saveData;

    static const u8 v2[] = {
        0,
        1,
        2,
        4,
        3,
        5,
        6,
        7,
        8
    };

    saveData = fieldSystem->saveData;

    v0 = Heap_AllocFromHeapAtEnd(heapID, sizeof(PokemonSummary));
    MI_CpuClear8(v0, sizeof(PokemonSummary));

    v0->options = SaveData_GetOptions(saveData);
    v0->monData = SaveData_GetParty(saveData);
    v0->dexMode = SaveData_GetDexMode(saveData);
    v0->showContest = PokemonSummaryScreen_ShowContestData(saveData);
    v0->dataType = SUMMARY_DATA_PARTY_MON;
    v0->monIndex = param0->unk_05;
    v0->monMax = Party_GetCurrentCount(v0->monData);
    v0->move = 0;
    v0->mode = SUMMARY_MODE_NORMAL;
    v0->specialRibbons = sub_0202D79C(saveData);

    PokemonSummaryScreen_FlagVisiblePages(v0, v2);
    PokemonSummaryScreen_SetPlayerProfile(v0, SaveData_GetTrainerInfo(saveData));

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonSummaryScreenApp, v0);

    *(param0->unk_08) = v0;
    return UnkEnum_0204F13C_4;
}

static int sub_0204F6B0(UnkStruct_0204F470 *param0, FieldSystem *fieldSystem)
{
    PokemonSummary *v0;

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return UnkEnum_0204F13C_4;
    }

    v0 = *(param0->unk_08);

    param0->unk_05 = v0->monIndex;

    Heap_Free(v0);
    *(param0->unk_08) = NULL;

    return UnkEnum_0204F13C_1;
}

BOOL ScrCmd_324(ScriptContext *param0);

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_020EC078;

static const UnkStruct_020EC078 Unk_020EC078[] = {
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

BOOL ScrCmd_324(ScriptContext *param0)
{
    int v0;
    int v1;
    BattleFrontierStage *v2;
    BattleFrontier *frontier;
    u32 v4, v5, v6;
    u16 v7, v8;
    FieldSystem *fieldSystem = param0->fieldSystem;
    StringTemplate **v10 = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u8 v11 = ScriptContext_ReadByte(param0);
    u8 v12 = ScriptContext_ReadByte(param0);
    u8 v13 = ScriptContext_ReadByte(param0);
    u8 v14 = ScriptContext_ReadByte(param0);
    u16 *v15 = ScriptContext_GetVarPointer(param0);
    u16 *v16 = ScriptContext_GetVarPointer(param0);

    v4 = 0;
    v0 = 1;
    v1 = 2;

    if (SaveData_MiscSaveBlock_InitFlag(fieldSystem->saveData) == 0) {
        *v16 = 0;
        return 0;
    }

    v2 = sub_020308A0(fieldSystem->saveData, 32, &v0);
    if (v0 != 1) {
        v4 = 0;
    } else {
        for (v5 = 0; v5 < NATIONAL_DEX_COUNT; v5++) {
            v4 += sub_020308BC(fieldSystem->saveData, v2, 0, v5);
            ;
        }
    }

    ;

    if (v2 != NULL) {
        Heap_Free(v2);
    }

    StringTemplate_SetNumber(*v10, v11, v4, GetNumberDigitCount(v4), 1, 1);

    v7 = 0;
    v6 = 0;
    v8 = *v15;

    for (v5 = (*v15); v5 < (NELEMS(Unk_020EC078)); v5++) {
        if (Unk_020EC078[v5].unk_00 <= v4) {
            v7 += Unk_020EC078[v5].unk_04;
            *v15 += 1;

            v6 = v5;
        }
    }

    GameRecords_AddToRecordValue(SaveData_GetGameRecords(param0->fieldSystem->saveData), RECORD_UNK_068, v7);

    if (v7 != 0) {
        sub_0202D230(
            sub_0202D750(param0->fieldSystem->saveData), v7, 5);
    }

    if (v4 == 0) {
        *v16 = 0;
    } else {
        if (v8 != (*v15)) {
            *v16 = 1;
        } else {
            *v16 = 2;
        }

        if (v8 >= (NELEMS(Unk_020EC078))) {
            *v16 = 3;
            return 0;
        }
    }

    StringTemplate_SetNumber(*v10, v12, Unk_020EC078[v6].unk_00, GetNumberDigitCount(Unk_020EC078[v6].unk_00), 1, 1);

    StringTemplate_SetNumber(*v10, v13, Unk_020EC078[*v15].unk_00, GetNumberDigitCount(Unk_020EC078[*v15].unk_00), 1, 1);

    StringTemplate_SetNumber(*v10, v14, v7, GetNumberDigitCount(v7), 1, 1);

    return 0;
}

BOOL ScrCmd_325(ScriptContext *param0);
BOOL ScrCmd_325(ScriptContext *param0)
{
    int v0;
    BattleFrontierStage *v1;
    u32 v2, v3, v4;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v6 = ScriptContext_GetVarPointer(param0);

    v4 = 0;
    v0 = 1;

    if (SaveData_MiscSaveBlock_InitFlag(fieldSystem->saveData) == 0) {
        *v6 = 0;
        return 0;
    }

    v1 = sub_020308A0(fieldSystem->saveData, 32, &v0);
    if (v0 != 1) {
        v4 = 0;
    } else {
        for (v3 = 0; v3 < NATIONAL_DEX_COUNT; v3++) {
            v2 = 0;

            v2 += sub_020308BC(fieldSystem->saveData, v1, 0, v3);

            v2 += sub_020308BC(fieldSystem->saveData, v1, 1, v3);

            v2 += sub_020308BC(fieldSystem->saveData, v1, 2, v3);

            if (v2 > 0) {
                v4++;
            }
        }
    }

    ;

    if (v1 != NULL) {
        Heap_Free(v1);
    }

    *v6 = v4;
    return 0;
}

BOOL ScrCmd_326(ScriptContext *param0);
BOOL ScrCmd_326(ScriptContext *param0)
{
    int v0;
    int v1;
    BattleFrontierStage *v2;
    BattleFrontier *frontier;
    u32 v4, v5;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v7 = ScriptContext_GetVarPointer(param0);

    v4 = 0;
    v0 = 1;
    v1 = 2;

    if (SaveData_MiscSaveBlock_InitFlag(fieldSystem->saveData) == 0) {
        *v7 = 0;
        return 0;
    }

    v2 = sub_020308A0(fieldSystem->saveData, 32, &v0);
    if (v0 != 1) {
        v4 = 0;
    } else {
        for (v5 = 0; v5 < NATIONAL_DEX_COUNT; v5++) {
            v4 += sub_020308BC(fieldSystem->saveData, v2, 0, v5);
            ;
        }
    }

    ;

    if (v2 != NULL) {
        Heap_Free(v2);
    }

    if (v4 > 10000) {
        v4 = 10000;
    }

    *v7 = v4;
    return 0;
}

BOOL ScrCmd_32A(ScriptContext *param0);
BOOL ScrCmd_32A(ScriptContext *param0)
{
    u16 v0, v1;

    u16 *v2 = ScriptContext_GetVarPointer(param0);

    v0 = sub_02030698(SaveData_GetBattleFrontier(param0->fieldSystem->saveData),
        sub_0205E55C(0),
        0xff);

    v1 = sub_02030698(SaveData_GetBattleFrontier(param0->fieldSystem->saveData),
        sub_0205E50C(0),
        0xff);

    *v2 = 0;
    if (v1 == 50) {
        *v2 = 1;
    }

    ;
    ;
    return 0;
}
