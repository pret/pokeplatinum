#include "encounter.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/heap.h"
#include "constants/pokemon.h"
#include "consts/battle.h"
#include "consts/game_records.h"
#include "consts/map.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_0202610C.h"
#include "struct_defs/struct_0202BE38.h"

#include "field/field_system.h"
#include "overlay006/ov6_02240C9C.h"
#include "overlay006/ov6_02246034.h"
#include "savedata/save_table.h"

#include "communication_information.h"
#include "enc_effects.h"
#include "enums.h"
#include "field_battle_data_transfer.h"
#include "field_comm_manager.h"
#include "field_map_change.h"
#include "field_overworld_state.h"
#include "field_task.h"
#include "field_transition.h"
#include "game_records.h"
#include "heap.h"
#include "journal.h"
#include "location.h"
#include "map_object.h"
#include "party.h"
#include "pokemon.h"
#include "pokeradar.h"
#include "save_player.h"
#include "script_manager.h"
#include "system_flags.h"
#include "trainer_data.h"
#include "unk_020041CC.h"
#include "unk_02026150.h"
#include "unk_0202F1D4.h"
#include "unk_0203D1B8.h"
#include "unk_020528D0.h"
#include "unk_020562F8.h"
#include "unk_0206AFE0.h"
#include "unk_0206CCB0.h"
#include "unk_020797C8.h"
#include "unk_0207A274.h"
#include "unk_02096420.h"
#include "vars_flags.h"

typedef struct Encounter {
    int *resultMaskPtr;
    int introEffectID;
    int battleBGM;
    int unk_0C;
    FieldBattleDTO *dto;
} Encounter;

typedef struct WildEncounter {
    int state;
    int introEffectID;
    int battleBGM;
    int *resultMaskPtr;
    FieldBattleDTO *dto;
} WildEncounter;

static Encounter *NewEncounter(FieldBattleDTO *dto, int introEffectID, int battleBGM, int *resultMaskPtr);
static WildEncounter *NewWildEncounter(FieldBattleDTO *dto, int introEffectID, int battleBGM, int *resultMaskPtr);
static void FreeEncounter(Encounter *encounter);
static void FreeWildEncounter(WildEncounter *encounter);

static void CallBattleTask(FieldTask *task, FieldBattleDTO *dto);
static BOOL CheckPlayerWonEncounter(Encounter *encounter);
static void UpdateFieldSystemFromDTO(const FieldBattleDTO *dto, FieldSystem *fieldSystem);
static void StartEncounter(FieldTask *task, FieldBattleDTO *dto, int introEffectID, int battleBGM, int *resultMaskPtr);
static void SetLinkBattleResult(int resultMask, FieldSystem *fieldSystem);
static int sub_020516C8(const BattleRegulation *regulation, int battleType);
static void UpdateGameRecords(FieldSystem *fieldSystem, FieldBattleDTO *dto);
static void UpdateJournal(FieldSystem *fieldSystem, FieldBattleDTO *dto);

static BOOL FieldTask_RunBattle(FieldTask *task);
static BOOL FieldTask_Encounter(FieldTask *task);
static BOOL FieldTask_LinkEncounter(FieldTask *task);
static BOOL FieldTask_WiFiEncounter(FieldTask *task);
static BOOL FieldTask_SafariEncounter(FieldTask *task);
static BOOL FieldTask_PalParkEncounter(FieldTask *task);
static BOOL FieldTask_CatchingTutorialEncounter(FieldTask *task);
static BOOL FieldTask_UnionRoomEncounter(FieldTask *task);
static BOOL FieldTask_WildEncounter(FieldTask *task);

static BOOL FieldTask_RunBattle(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    FieldBattleDTO *dto = FieldTask_GetEnv(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        FieldSystem_StartBattleProcess(fieldSystem, dto);
        (*state)++;
        break;

    case 1:
        if (FieldSystem_IsRunningApplication(fieldSystem)) {
            break;
        }

        return TRUE;
    }

    return FALSE;
}

static void CallBattleTask(FieldTask *task, FieldBattleDTO *dto)
{
    FieldTask_InitCall(task, FieldTask_RunBattle, dto);
}

static Encounter *NewEncounter(FieldBattleDTO *dto, int introEffectID, int battleBGM, int *resultMaskPtr)
{
    Encounter *encounter = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(Encounter));
    encounter->resultMaskPtr = resultMaskPtr;
    if (resultMaskPtr != NULL) {
        *resultMaskPtr = BATTLE_IN_PROGRESS;
    }

    encounter->introEffectID = introEffectID;
    encounter->battleBGM = battleBGM;
    encounter->dto = dto;

    return encounter;
}

static void FreeEncounter(Encounter *encounter)
{
    FieldBattleDTO_Free(encounter->dto);
    Heap_FreeToHeap(encounter);
}

static BOOL CheckPlayerWonEncounter(Encounter *encounter)
{
    if (encounter->resultMaskPtr != NULL) {
        *(encounter->resultMaskPtr) = encounter->dto->resultMask;
    }

    return CheckPlayerWonBattle(encounter->dto->resultMask);
}

static void UpdateFieldSystemFromDTO(const FieldBattleDTO *dto, FieldSystem *fieldSystem)
{
    if (dto->battleType & BATTLE_TYPE_DEBUG) {
        return;
    }

    FieldBattleDTO_UpdateFieldSystem(dto, fieldSystem);
}

static BOOL FieldTask_Encounter(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Encounter *encounter = FieldTask_GetEnv(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        sub_020557DC(task, encounter->introEffectID, encounter->battleBGM);
        (*state)++;
        break;

    case 1:
        FieldTask_FinishFieldMap(task);
        (*state)++;
        break;

    case 2:
        CallBattleTask(task, encounter->dto);
        (*state)++;
        break;

    case 3:
        UpdateFieldSystemFromDTO(encounter->dto, fieldSystem);

        if (encounter->dto->battleType == BATTLE_TYPE_WILD_MON
            || encounter->dto->battleType == BATTLE_TYPE_ROAMER
            || encounter->dto->battleType == BATTLE_TYPE_AI_PARTNER) {
            sub_0206D1B8(fieldSystem, encounter->dto->unk_10C, encounter->dto->resultMask);
        }

        if (CheckPlayerWonEncounter(encounter) == FALSE) {
            FreeEncounter(encounter);
            return TRUE;
        }

        if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData))) {
            HealAllPokemonInParty(Party_GetFromSavedata(fieldSystem->saveData));
        }

        UpdateGameRecords(fieldSystem, encounter->dto);
        UpdateJournal(fieldSystem, encounter->dto);
        sub_0206B48C(SaveData_GetVarsFlags(fieldSystem->saveData), encounter->dto->totalTurnsElapsed);
        FieldTask_StartFieldMap(task);
        (*state)++;
        break;

    case 4:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        sub_020558F0(task);
        (*state)++;
        break;

    case 5:
        FreeEncounter(encounter);
        return TRUE;
        break;
    }

    return FALSE;
}

static void StartEncounter(FieldTask *task, FieldBattleDTO *dto, int introEffectID, int battleBGM, int *resultMaskPtr)
{
    Encounter *encounter = NewEncounter(dto, introEffectID, battleBGM, resultMaskPtr);
    FieldTask_InitCall(task, FieldTask_Encounter, encounter);
}

static void SetLinkBattleResult(int resultMask, FieldSystem *fieldSystem)
{
    switch (resultMask & 0xF) {
    case BATTLE_RESULT_WIN:
    case BATTLE_RESULT_ENEMY_FLED:
        sub_020331B4(fieldSystem->saveData, 1);
        break;

    case BATTLE_RESULT_LOSE:
    case BATTLE_RESULT_PLAYER_FLED:
        sub_020331B4(fieldSystem->saveData, -1);
        break;
    }
}

static BOOL FieldTask_LinkEncounter(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Encounter *encounter = FieldTask_GetEnv(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        sub_020557DC(task, encounter->introEffectID, encounter->battleBGM);
        (*state)++;
        break;

    case 1:
        FieldTask_FinishFieldMap(task);
        (*state)++;
        break;

    case 2:
        CallBattleTask(task, encounter->dto);
        (*state)++;
        break;

    case 3:
        SetLinkBattleResult(encounter->dto->resultMask, fieldSystem);
        FieldBattleDTO_UpdatePokedex(encounter->dto, fieldSystem);

        GameRecords *records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
        GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_UNK_21);

        FieldTask_StartFieldMap(task);
        (*state)++;
        break;

    case 4:
    case 5:
        FreeEncounter(encounter);
        return TRUE;
    }

    return FALSE;
}

static BOOL FieldTask_WiFiEncounter(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Encounter *encounter = FieldTask_GetEnv(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        sub_02004234(0);
        sub_02004550(5, encounter->battleBGM, 1);
        CallBattleTask(task, encounter->dto);
        (*state)++;
        break;

    case 1:
        SetLinkBattleResult(encounter->dto->resultMask, fieldSystem);
        FieldBattleDTO_UpdatePokedex(encounter->dto, fieldSystem);

        GameRecords *records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
        GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_UNK_21);

        (*state)++;
        break;

    case 2:
        FreeEncounter(encounter);
        sub_0202F22C();
        return TRUE;
    }

    return FALSE;
}

static WildEncounter *NewWildEncounter(FieldBattleDTO *dto, int introEffectID, int battleBGM, int *resultMaskPtr)
{
    WildEncounter *encounter = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(WildEncounter));
    encounter->resultMaskPtr = resultMaskPtr;

    if (resultMaskPtr != NULL) {
        *resultMaskPtr = BATTLE_IN_PROGRESS;
    }

    encounter->introEffectID = introEffectID;
    encounter->battleBGM = battleBGM;
    encounter->dto = dto;
    encounter->state = 0;

    return encounter;
}

static void FreeWildEncounter(WildEncounter *encounter)
{
    FieldBattleDTO_Free(encounter->dto);
    Heap_FreeToHeap(encounter);
}

void sub_02050E10(FieldSystem *fieldSystem, FieldBattleDTO *param1)
{
    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        Encounter *v0;

        v0 = NewEncounter(param1, EncEffects_CutInEffect(param1), EncEffects_BGM(param1), NULL);
        FieldSystem_CreateTask(fieldSystem, FieldTask_SafariEncounter, v0);
    } else {
        WildEncounter *v1;

        v1 = NewWildEncounter(param1, EncEffects_CutInEffect(param1), EncEffects_BGM(param1), NULL);
        FieldSystem_CreateTask(fieldSystem, FieldTask_WildEncounter, v1);
    }
}

void sub_02050E78(FieldSystem *fieldSystem, FieldTask *param1, FieldBattleDTO *param2)
{
    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        Encounter *v0;

        v0 = NewEncounter(param2, EncEffects_CutInEffect(param2), EncEffects_BGM(param2), NULL);
        FieldTask_InitJump(param1, FieldTask_SafariEncounter, v0);
    } else {
        WildEncounter *v1;

        v1 = NewWildEncounter(param2, EncEffects_CutInEffect(param2), EncEffects_BGM(param2), NULL);
        FieldTask_InitJump(param1, FieldTask_WildEncounter, v1);
    }
}

static BOOL FieldTask_WildEncounter(FieldTask *task)
{
    FieldSystem *fieldSystem;
    WildEncounter *encounter;

    fieldSystem = FieldTask_GetFieldSystem(task);
    encounter = FieldTask_GetEnv(task);

    switch (encounter->state) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(fieldSystem->saveData), RECORD_UNK_007);
        sub_020557DC(task, encounter->introEffectID, encounter->battleBGM);
        encounter->state++;
        break;

    case 1:
        FieldTask_FinishFieldMap(task);
        encounter->state++;
        break;

    case 2:
        CallBattleTask(task, encounter->dto);
        encounter->state++;
        break;

    case 3:
        UpdateFieldSystemFromDTO(encounter->dto, fieldSystem);
        sub_0206D1B8(fieldSystem, encounter->dto->unk_10C, encounter->dto->resultMask);

        if (CheckPlayerWonBattle(encounter->dto->resultMask) == 0) {
            FreeWildEncounter(encounter);
            RadarChain_Clear(fieldSystem->chain);
            FieldTask_InitJump(task, sub_02052B2C, NULL);
            return FALSE;
        }

        if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData))) {
            HealAllPokemonInParty(Party_GetFromSavedata(fieldSystem->saveData));
        }

        UpdateGameRecords(fieldSystem, encounter->dto);
        UpdateJournal(fieldSystem, encounter->dto);

        if (GetRadarChainActive(fieldSystem->chain)) {
            if (sub_02069798(fieldSystem->chain)) {
                if ((!(encounter->dto->resultMask == BATTLE_RESULT_WIN)) && (!(encounter->dto->resultMask == BATTLE_RESULT_CAPTURED_MON))) {
                    RadarChain_Clear(fieldSystem->chain);
                }
            } else {
                RadarChain_Clear(fieldSystem->chain);
            }
        }

        FieldTask_StartFieldMap(task);
        encounter->state++;
        break;

    case 4:
        ov6_02246034(fieldSystem, encounter->dto);
        sub_020558F0(task);
        encounter->state++;
        break;

    case 5:
        if (GetRadarChainActive(fieldSystem->chain)) {
            SetupGrassPatches(fieldSystem, encounter->dto->resultMask, fieldSystem->chain);
            sub_02069638(fieldSystem, fieldSystem->chain);
        }

        encounter->state++;
        break;

    case 6:
        if (sub_02069690(fieldSystem->chain)) {
            MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
            FreeWildEncounter(encounter);
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL FieldTask_SafariEncounter(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Encounter *encounter = FieldTask_GetEnv(task);
    int *state = FieldTask_GetState(task);
    u16 *ballCount = sub_0203A784(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    switch (*state) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(fieldSystem->saveData), RECORD_UNK_007);
        sub_020557DC(task, encounter->introEffectID, encounter->battleBGM);
        (*state)++;
        break;

    case 1:
        FieldTask_FinishFieldMap(task);
        (*state)++;
        break;

    case 2:
        CallBattleTask(task, encounter->dto);
        (*state)++;
        break;

    case 3:
        UpdateFieldSystemFromDTO(encounter->dto, fieldSystem);

        if (encounter->dto->resultMask == BATTLE_RESULT_CAPTURED_MON) {
            TVBroadcast *broadcast = SaveData_TVBroadcast(fieldSystem->saveData);
            Pokemon *caughtMon = Party_GetPokemonBySlotIndex(encounter->dto->parties[1], 0);

            sub_0206D018(broadcast, caughtMon);
        }

        UpdateGameRecords(fieldSystem, encounter->dto);

        if (*ballCount == 0 && encounter->dto->resultMask != BATTLE_RESULT_CAPTURED_MON) {
            Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));
            FieldTask_ChangeMapByLocation(task, location);
        }

        UpdateJournal(fieldSystem, encounter->dto);
        (*state)++;
        break;

    case 4:
        FieldTask_StartFieldMap(task);
        (*state)++;
        break;

    case 5:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        sub_020558F0(task);
        (*state)++;
        break;

    case 6:
        if (*ballCount == 0) {
            if (encounter->dto->resultMask == BATTLE_RESULT_CAPTURED_MON) {
                ScriptManager_Start(task, 8802, NULL, NULL);
            } else {
                ScriptManager_Start(task, 8809, NULL, NULL);
            }
        } else {
            PCBoxes *boxes = SaveData_PCBoxes(fieldSystem->saveData);
            Party *party = Party_GetFromSavedata(fieldSystem->saveData);

            if (PCBoxes_FirstEmptyBox(boxes) == 18 && Party_GetCurrentCount(party) == MAX_PARTY_SIZE) {
                ScriptManager_Start(task, 8822, NULL, NULL);
            }
        }

        (*state)++;
        break;

    case 7:
        FreeEncounter(encounter);
        return TRUE;
    }

    return FALSE;
}

void sub_0205120C(FieldTask *taskMan, int *param1)
{
    Encounter *v0;
    FieldBattleDTO *v1;
    FieldSystem *fieldSystem;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    RadarChain_Clear(fieldSystem->chain);

    v1 = FieldBattleDTO_New(11, (0x0 | 0x0));
    FieldBattleDTO_Init(v1, fieldSystem);

    v1->background = 0;
    v1->terrain = TERRAIN_PLAIN;

    ov6_02242034(fieldSystem, v1);

    GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(fieldSystem->saveData), RECORD_UNK_007);
    StartEncounter(taskMan, v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), param1);
}

void sub_02051270(FieldTask *taskMan, u16 param1, u8 param2, int *param3, BOOL param4)
{
    Encounter *v0;
    FieldBattleDTO *v1;
    FieldSystem *fieldSystem;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    RadarChain_Clear(fieldSystem->chain);

    v1 = FieldBattleDTO_New(11, (0x0 | 0x0));
    FieldBattleDTO_Init(v1, fieldSystem);

    ov6_022420D4(fieldSystem, param1, param2, v1);

    if (param4) {
        v1->battleStatusMask |= BATTLE_STATUS_LEGENDARY;
    }

    GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(fieldSystem->saveData), RECORD_UNK_007);
    StartEncounter(taskMan, v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), param3);
}

void sub_020512E4(FieldTask *taskMan, u16 param1, u8 param2, int *param3, BOOL param4)
{
    Encounter *v0;
    FieldBattleDTO *v1;
    FieldSystem *fieldSystem;
    Pokemon *v3;
    int v4;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    RadarChain_Clear(fieldSystem->chain);

    v1 = FieldBattleDTO_New(11, (0x0 | 0x0));
    FieldBattleDTO_Init(v1, fieldSystem);

    ov6_022420D4(fieldSystem, param1, param2, v1);

    v4 = 1;
    v3 = Party_GetPokemonBySlotIndex(v1->parties[1], 0);

    Pokemon_SetValue(v3, MON_DATA_FATEFUL_ENCOUNTER, &v4);

    if (param4) {
        v1->battleStatusMask |= BATTLE_STATUS_LEGENDARY;
    }

    GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(fieldSystem->saveData), RECORD_UNK_007);
    StartEncounter(taskMan, v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), param3);
}

static BOOL FieldTask_PalParkEncounter(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Encounter *encounter = FieldTask_GetEnv(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(fieldSystem->saveData), RECORD_UNK_007);
        sub_020557DC(task, encounter->introEffectID, encounter->battleBGM);
        (*state)++;
        break;

    case 1:
        FieldTask_FinishFieldMap(task);
        (*state)++;
        break;

    case 2:
        CallBattleTask(task, encounter->dto);
        (*state)++;
        break;

    case 3:
        UpdateFieldSystemFromDTO(encounter->dto, fieldSystem);
        sub_020563AC(fieldSystem, encounter->dto);
        UpdateGameRecords(fieldSystem, encounter->dto);
        (*state)++;
        break;

    case 4:
        FieldTask_StartFieldMap(task);
        (*state)++;
        break;

    case 5:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        sub_020558F0(task);
        (*state)++;
        break;

    case 6:
        FreeEncounter(encounter);

        if (sub_020563BC(fieldSystem) == 0) {
            ScriptManager_Change(task, 3, NULL);
            return FALSE;
        } else {
            return TRUE;
        }
    }

    return FALSE;
}

void sub_02051450(FieldSystem *fieldSystem, FieldBattleDTO *param1)
{
    Encounter *v0;

    v0 = NewEncounter(param1, EncEffects_CutInEffect(param1), EncEffects_BGM(param1), NULL);
    FieldSystem_CreateTask(fieldSystem, FieldTask_PalParkEncounter, v0);
}

void sub_02051480(FieldTask *taskMan, int param1, int param2, int *param3)
{
    Encounter *v0;
    FieldBattleDTO *v1;
    FieldSystem *fieldSystem;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    v1 = FieldBattleDTO_New(11, 0x1);

    FieldBattleDTO_Init(v1, fieldSystem);

    v1->battleStatusMask = BATTLE_STATUS_FIRST_BATTLE;
    v1->trainerIDs[1] = param1;
    v1->trainerIDs[3] = 0;
    v1->trainerIDs[2] = 0;

    TrainerData_Encounter(v1, fieldSystem->saveData, param2);
    GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(fieldSystem->saveData), RECORD_UNK_008);
    StartEncounter(taskMan, v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), param3);
}

static BOOL FieldTask_CatchingTutorialEncounter(FieldTask *task)
{
    Encounter *encounter = FieldTask_GetEnv(task);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        sub_020557DC(task, encounter->introEffectID, encounter->battleBGM);
        (*state)++;
        break;

    case 1:
        FieldTask_FinishFieldMap(task);
        (*state)++;
        break;

    case 2:
        CallBattleTask(task, encounter->dto);
        (*state)++;
        break;

    case 3:
        (*state)++;
        break;

    case 4:
        FieldTask_StartFieldMap(task);
        (*state)++;
        break;

    case 5:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        sub_020558F0(task);
        (*state)++;
        break;

    case 6:
        FreeEncounter(encounter);
        return TRUE;
    }

    return FALSE;
}

void sub_02051590(FieldTask *taskMan)
{
    Encounter *v0;
    FieldBattleDTO *v1;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    v1 = FieldBattleDTO_NewCatchingTutorial(11, fieldSystem);
    v0 = NewEncounter(v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), NULL);

    FieldTask_InitCall(taskMan, FieldTask_CatchingTutorialEncounter, v0);
}

void sub_020515CC(FieldTask *taskMan, int param1, int param2, int param3, int param4, int *param5)
{
    u32 v0;
    Encounter *v1;
    FieldBattleDTO *v2;
    FieldSystem *fieldSystem;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);

    if ((param2 != 0) && (param1 != param2)) {
        if (param3 == 0) {
            v0 = ((0x2 | 0x1) | 0x10);
        } else {
            v0 = ((0x2 | 0x1) | 0x8 | 0x40);
        }
    } else if (param1 == param2) {
        v0 = (0x2 | 0x1);
    } else {
        v0 = 0x1;
    }

    RadarChain_Clear(fieldSystem->chain);
    v2 = FieldBattleDTO_New(11, v0);
    FieldBattleDTO_Init(v2, fieldSystem);

    if ((fieldSystem->location->mapId >= MAP_HEADER_DISTORTION_WORLD_1F) && (fieldSystem->location->mapId <= MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM)) {
        v2->battleStatusMask |= BATTLE_STATUS_DISTORTION;
    }

    v2->trainerIDs[1] = param1;
    v2->trainerIDs[3] = param2;
    v2->trainerIDs[2] = param3;

    TrainerData_Encounter(v2, fieldSystem->saveData, param4);
    GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(fieldSystem->saveData), RECORD_UNK_008);
    StartEncounter(taskMan, v2, EncEffects_CutInEffect(v2), EncEffects_BGM(v2), param5);
}

void sub_0205167C(FieldTask *taskMan, const u8 *param1, int param2)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    Encounter *v1;
    FieldBattleDTO *v2;

    v2 = FieldBattleDTO_New(11, param2);
    FieldBattleDTO_InitWithPartyOrderFromSave(v2, fieldSystem, param1);

    v1 = NewEncounter(v2, EncEffects_CutInEffect(v2), EncEffects_BGM(v2), NULL);
    FieldTask_InitCall(taskMan, FieldTask_LinkEncounter, v1);
}

static int sub_020516C8(const BattleRegulation *regulation, int battleType)
{
    int v0;
    int v1 = sub_020261B0(regulation);

    if (battleType & BATTLE_TYPE_2vs2) {
        v0 = (UnkEnum_0202F510_14);
    } else if (battleType & BATTLE_TYPE_DOUBLES) {
        v0 = (UnkEnum_0202F510_07);
    } else {
        v0 = (UnkEnum_0202F510_00);
    }

    if (v1 != 0xFF) {
        v0 += 1 + v1;
    }

    return v0;
}

void sub_020516F4(FieldTask *taskMan, int param1, int param2, int param3)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    Encounter *v1;
    FieldBattleDTO *v2;
    int v3;
    int v4, v5;

    if (param3 == 0) {
        v4 = (0x4 | 0x1);
        v2 = FieldBattleDTO_New(11, (0x4 | 0x1));
        v5 = (UnkEnum_0202F510_00);
    } else if (param3 == 1) {
        v4 = ((0x4 | 0x1) | 0x2);
        v2 = FieldBattleDTO_New(11, ((0x4 | 0x1) | 0x2));
        v5 = (UnkEnum_0202F510_07);
    } else {
        v4 = ((((0x4 | 0x1) | 0x2) | 0x8) | 0x80);
        v2 = FieldBattleDTO_New(11, ((((0x4 | 0x1) | 0x2) | 0x8) | 0x80));

        v2->trainerIDs[1] = 1;
        v2->trainerIDs[3] = 2;

        TrainerData_Encounter(v2, fieldSystem->saveData, 11);

        v5 = (UnkEnum_0202F510_14);
    }

    FieldBattleDTO_InitWithNormalizedMonLevels(v2, fieldSystem, param2);
    sub_0202F1F8(fieldSystem->saveData, 11, &v3);

    v2->unk_18A = v5;

    v1 = NewEncounter(v2, EncEffects_CutInEffect(v2), EncEffects_BGM(v2), NULL);
    v1->unk_0C = param1;

    FieldTask_InitCall(taskMan, FieldTask_WiFiEncounter, v1);
}

static BOOL FieldTask_UnionRoomEncounter(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Encounter *encounter = FieldTask_GetEnv(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        FieldTask_InitCall(task, FieldTask_LinkEncounter, encounter);
        (*state)++;
        break;

    case 1:
        if (sub_0202F250() == 1) {
            sub_0202F22C();
        }

        FieldCommMan_EnterBattleRoom(fieldSystem);
        return TRUE;
    }

    return FALSE;
}

void sub_020517E8(FieldSystem *fieldSystem, const u8 *param1, int param2)
{
    Encounter *v0;
    FieldBattleDTO *v1;
    int v2;

    v1 = FieldBattleDTO_New(11, param2);

    FieldBattleDTO_InitWithPartyOrderFromSave(v1, fieldSystem, param1);
    sub_0202F1F8(fieldSystem->saveData, 11, &v2);

    v1->unk_18A = sub_020516C8(fieldSystem->unk_B0, param2);
    v0 = NewEncounter(v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), NULL);

    FieldSystem_CreateTask(fieldSystem, FieldTask_UnionRoomEncounter, v0);
}

void sub_0205184C(FieldSystem *fieldSystem, const Party *param1, int param2)
{
    Encounter *v0;
    FieldBattleDTO *v1;
    int v2;

    v1 = FieldBattleDTO_New(11, param2);

    FieldBattleDTO_InitWithPartyOrder(v1, fieldSystem, param1, NULL);
    sub_0202F1F8(fieldSystem->saveData, 11, &v2);

    v1->unk_18A = sub_020516C8(fieldSystem->unk_B0, param2);
    v0 = NewEncounter(v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), NULL);

    FieldSystem_CreateTask(fieldSystem, FieldTask_UnionRoomEncounter, v0);
}

static void UpdateGameRecords(FieldSystem *fieldSystem, FieldBattleDTO *dto)
{
    Pokemon *caughtMon;
    u32 battleType = dto->battleType;
    int resultMask = dto->resultMask;

    if (battleType & BATTLE_TYPE_LINK) {
        return;
    }

    if (battleType & BATTLE_TYPE_FRONTIER) {
        return;
    }

    if (battleType == BATTLE_TYPE_WILD_MON
        || battleType == BATTLE_TYPE_ROAMER
        || battleType == BATTLE_TYPE_AI_PARTNER) {
        if (resultMask == BATTLE_RESULT_WIN) {
            GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_08);
        } else if (resultMask == BATTLE_RESULT_CAPTURED_MON) {
            caughtMon = Party_GetPokemonBySlotIndex(dto->parties[1], 0);

            if (sub_0207A294(0, Pokemon_GetValue(caughtMon, MON_DATA_SPECIES, 0))) {
                GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_09);
            } else {
                GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_10);
            }
        }
    } else if ((battleType & BATTLE_TYPE_TRAINER) || (battleType & BATTLE_TYPE_TAG)) {
        if (resultMask == BATTLE_RESULT_WIN) {
            GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_11);
        }
    } else if ((battleType & BATTLE_TYPE_SAFARI) || (battleType & BATTLE_TYPE_PAL_PARK)) {
        if (resultMask == BATTLE_RESULT_CAPTURED_MON) {
            caughtMon = Party_GetPokemonBySlotIndex(dto->parties[1], 0);

            if (sub_0207A294(0, Pokemon_GetValue(caughtMon, MON_DATA_SPECIES, 0))) {
                GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_09);
            } else {
                GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_10);
            }
        }
    }
}

static void UpdateJournal(FieldSystem *fieldSystem, FieldBattleDTO *dto)
{
    Pokemon *caughtMon;
    u32 battleType = dto->battleType;
    int resultMask = dto->resultMask;

    if (battleType & BATTLE_TYPE_LINK) {
        return;
    }

    if (battleType & BATTLE_TYPE_FRONTIER) {
        return;
    }

    if (battleType & BATTLE_TYPE_PAL_PARK) {
        return;
    }

    if (battleType == BATTLE_TYPE_WILD_MON
        || battleType == BATTLE_TYPE_ROAMER
        || battleType == BATTLE_TYPE_AI_PARTNER
        || battleType == BATTLE_TYPE_SAFARI) {
        UnkStruct_0202BE38 *journalMon;

        if (resultMask == BATTLE_RESULT_WIN) {
            fieldSystem->unk_78.unk_02++;

            if (fieldSystem->unk_78.unk_02 >= 5) {
                caughtMon = Party_GetPokemonBySlotIndex(dto->parties[1], 0);
                journalMon = sub_0202BECC(SaveData_GetPlayTime(fieldSystem->saveData), Pokemon_GetValue(caughtMon, MON_DATA_SPECIES, 0), Pokemon_GetValue(caughtMon, MON_DATA_GENDER, 0), dto->timeOfDay, 11);
                Journal_SaveData(fieldSystem->journal, journalMon, 2);
            }
        } else if (resultMask == BATTLE_RESULT_CAPTURED_MON) {
            int caughtBattlerIdx = dto->caughtBattlerIdx;
            caughtMon = Party_GetPokemonBySlotIndex(dto->parties[caughtBattlerIdx], 0);
            journalMon = sub_0202BE4C(SaveData_GetPlayTime(fieldSystem->saveData), Pokemon_GetValue(caughtMon, MON_DATA_SPECIES, 0), Pokemon_GetValue(caughtMon, MON_DATA_GENDER, 0), dto->timeOfDay, 11);

            Journal_SaveData(fieldSystem->journal, journalMon, 2);
        }
    } else if ((battleType & BATTLE_TYPE_TRAINER) || (battleType & BATTLE_TYPE_TAG)) {
        if (resultMask == BATTLE_RESULT_WIN) {
            sub_0202C720(fieldSystem->journal, fieldSystem->location->mapId, dto->trainerIDs[1], 11);
        }
    }
}

void sub_02051ABC(FieldTask *taskMan, u16 param1, u8 param2, int *param3, BOOL param4)
{
    Encounter *v0;
    FieldBattleDTO *v1;
    FieldSystem *fieldSystem;

    fieldSystem = FieldTask_GetFieldSystem(taskMan);
    RadarChain_Clear(fieldSystem->chain);

    v1 = FieldBattleDTO_New(11, (0x0 | 0x0));
    FieldBattleDTO_Init(v1, fieldSystem);

    ov6_022420D4(fieldSystem, param1, param2, v1);

    {
        Pokemon *v3;

        v3 = Party_GetPokemonBySlotIndex(v1->parties[1], 0);
        Pokemon_SetGiratinaOriginForm(v3);
    }

    if (param4) {
        v1->battleStatusMask |= BATTLE_STATUS_LEGENDARY;
    }

    v1->battleStatusMask |= BATTLE_STATUS_GIRATINA | BATTLE_STATUS_DISTORTION;
    v1->terrain = TERRAIN_GIRATINA;

    GameRecords_IncrementRecordValue(SaveData_GetGameRecordsPtr(fieldSystem->saveData), RECORD_UNK_007);
    StartEncounter(taskMan, v1, EncEffects_CutInEffect(v1), EncEffects_BGM(v1), param3);
}
