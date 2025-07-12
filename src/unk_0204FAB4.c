#include "unk_0204FAB4.h"

#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "struct_decls/struct_020302DC_decl.h"
#include "struct_decls/struct_0203041C_decl.h"
#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_0204FCF8.h"
#include "struct_defs/struct_02098C44.h"

#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"

#include "bag.h"
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
#include "unk_0203061C.h"
#include "unk_02049D08.h"
#include "unk_0205DFC4.h"
#include "unk_02099500.h"

#include "constdata/const_020F1E88.h"
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
static void sub_0204FDB4(FieldTask *param0, void **param1, u8 param2);
static BOOL sub_0204FDE8(FieldTask *param0);
static int sub_0204FE50(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem, int param2);
static int sub_0204FF1C(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem);
static int sub_0204FF6C(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem, int heapID);
static int sub_0204FFF4(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem);
BOOL ScrCmd_2D3(ScriptContext *param0);
static void sub_0204FCF8(FieldTask *param0, u16 param1, u16 param2, u16 *param3);
static BOOL sub_0204FD38(FieldTask *param0);

BOOL ScrCmd_2D2(ScriptContext *param0)
{
    u8 v0;
    u8 v1[4];
    u16 v2[4];
    u16 v3, v4, v5;
    u16 *v6, *v7;
    void **v8;
    UnkStruct_0204AFC4 *v9;
    UnkStruct_020302DC *v10;
    UnkStruct_0203041C *v11;

    v3 = ScriptContext_ReadHalfWord(param0);
    v4 = ScriptContext_GetVar(param0);
    v5 = ScriptContext_ReadHalfWord(param0);
    v6 = FieldSystem_GetVarPointer(param0->fieldSystem, v5);
    v10 = sub_020302DC(param0->fieldSystem->saveData);
    v11 = sub_0203041C(param0->fieldSystem->saveData);
    v8 = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, 19);

    switch (v3) {
    case 0:
        *v6 = sub_02049EC4(v4, param0->fieldSystem->saveData, 0);
        break;
    case 1:
        if (v4 == 3) {
            *v6 = sub_02030698(SaveData_GetBattleFrontier(param0->fieldSystem->saveData), 108, sub_0205E6A8(108));
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
    UnkStruct_0203041C *v0;
    u16 v1 = ScriptContext_GetVar(param0);

    v0 = sub_0203041C(param0->fieldSystem->saveData);
    sub_0204FBEC(param0->fieldSystem->saveData, v0, v1);

    return 0;
}

static void sub_0204FBEC(SaveData *saveData, UnkStruct_0203041C *param1, u8 param2)
{
    int v0;
    u16 v1[4];
    u8 v2[4];

    v2[0] = 0;
    sub_02030430(param1, 9, param2, 0, v2);

    if (param2 == 3) {
        sub_020306E4(SaveData_GetBattleFrontier(saveData), 108, sub_0205E6A8(108), 0);
    }

    sub_020306E4(SaveData_GetBattleFrontier(saveData), sub_0205E5E0(param2), sub_0205E6A8(sub_0205E5E0(param2)), 0);
    sub_020306E4(SaveData_GetBattleFrontier(saveData), sub_0205E630(param2), sub_0205E6A8(sub_0205E630(param2)), 0);

    v1[0] = 1;

    for (v0 = 0; v0 < 3; v0++) {
        sub_020306E4(SaveData_GetBattleFrontier(saveData), sub_0205E5B4(param2, v0), sub_0205E6A8(sub_0205E5B4(param2, v0)), 1);
    }

    return;
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
    UnkStruct_0204FCF8 *v0 = Heap_Alloc(HEAP_ID_FIELDMAP, sizeof(UnkStruct_0204FCF8));
    memset(v0, 0, sizeof(UnkStruct_0204FCF8));

    v0->unk_04[0] = param1;
    v0->unk_04[1] = param2;
    v0->unk_0C = param3;

    CommFieldCmd_Init(v0);
    FieldTask_InitCall(param0, sub_0204FD38, v0);

    return;
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

static void sub_0204FDB4(FieldTask *param0, void **param1, u8 param2)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0204FE50 *v1 = Heap_Alloc(HEAP_ID_FIELDMAP, sizeof(UnkStruct_0204FE50));

    MI_CpuClear8(v1, sizeof(UnkStruct_0204FE50));

    v1->unk_04 = param2;
    v1->unk_0C = param1;

    FieldTask_InitCall(fieldSystem->task, sub_0204FDE8, v1);
    return;
}

static BOOL sub_0204FDE8(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0204FE50 *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_00) {
    case 0:
        v1->unk_00 = sub_0204FE50(v1, fieldSystem, 11);
        break;
    case 1:
        v1->unk_00 = sub_0204FF1C(v1, fieldSystem);
        break;
    case 2:
        v1->unk_00 = sub_0204FF6C(v1, fieldSystem, HEAP_ID_FIELDMAP);
        break;
    case 3:
        v1->unk_00 = sub_0204FFF4(v1, fieldSystem);
        break;
    case 4:
        Heap_Free(v1);
        return 1;
    }

    return 0;
}

static int sub_0204FE50(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem, int param2)
{
    u8 v0;
    PartyManagementData *partyMan = Heap_Alloc(HEAP_ID_FIELDMAP, sizeof(PartyManagementData));

    MI_CpuClearFast(partyMan, sizeof(PartyManagementData));

    partyMan->party = SaveData_GetParty(fieldSystem->saveData);
    partyMan->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMan->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMan->options = SaveData_GetOptions(fieldSystem->saveData);

    partyMan->unk_21 = 0;
    partyMan->unk_20 = 23;
    partyMan->fieldSystem = fieldSystem;
    partyMan->selectedMonSlot = param0->unk_05;

    for (v0 = 0; v0 < 3; v0++) {
        partyMan->unk_2C[v0] = param0->unk_06[v0];
    }

    partyMan->unk_33 = 100;
    partyMan->unk_32_0 = 3;
    partyMan->unk_32_4 = 3;

    if (param0->unk_04 == 2) {
        partyMan->unk_32_0 = 2;
        partyMan->unk_32_4 = 2;
    }

    FieldSystem_StartChildProcess(fieldSystem, &Unk_020F1E88, partyMan);

    *(param0->unk_0C) = partyMan;

    return 1;
}

static int sub_0204FF1C(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem)
{
    int v0;
    PartyManagementData *partyMan;

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return 1;
    }

    partyMan = *(param0->unk_0C);

    switch (partyMan->selectedMonSlot) {
    case 7:
        return 4;
    case 6:
        return 4;
    default:
        break;
    }

    MI_CpuCopy8(partyMan->unk_2C, param0->unk_06, 3);
    param0->unk_05 = partyMan->selectedMonSlot;
    Heap_Free(partyMan);

    *(param0->unk_0C) = NULL;
    return 2;
}

static int sub_0204FF6C(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem, int heapID)
{
    PokemonSummary *v0;
    SaveData *saveData;
    static const u8 v2[] = {
        0, 1, 2, 4, 3, 5, 6, 7, 8
    };

    saveData = fieldSystem->saveData;
    v0 = Heap_AllocAtEnd(heapID, sizeof(PokemonSummary));

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

    *(param0->unk_0C) = v0;
    return 3;
}

static int sub_0204FFF4(UnkStruct_0204FE50 *param0, FieldSystem *fieldSystem)
{
    PokemonSummary *v0;

    if (FieldSystem_IsRunningApplication(fieldSystem)) {
        return 3;
    }

    v0 = *(param0->unk_0C);
    param0->unk_05 = v0->monIndex;
    Heap_Free(v0);
    *(param0->unk_0C) = NULL;

    return 0;
}
