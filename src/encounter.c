#include "encounter.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/heap.h"
#include "constants/pokemon.h"
#include "generated/game_records.h"
#include "generated/map_headers.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/struct_0202440C_decl.h"

#include "field/field_system.h"
#include "overlay006/roamer_after_battle.h"
#include "overlay006/wild_encounters.h"
#include "savedata/save_table.h"

#include "battle_regulation.h"
#include "catching_show.h"
#include "communication_information.h"
#include "dexmode_checker.h"
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
#include "item_use_pokemon.h"
#include "journal.h"
#include "location.h"
#include "map_object.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "pokeradar.h"
#include "save_player.h"
#include "script_manager.h"
#include "sound.h"
#include "system_flags.h"
#include "system_vars.h"
#include "trainer_data.h"
#include "tv_episode_segment.h"
#include "unk_0202F1D4.h"
#include "unk_0203D1B8.h"
#include "unk_020528D0.h"
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
static BOOL FieldTask_LinkEncounterWithRecording(FieldTask *task);
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
    Encounter *encounter = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(Encounter));
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
    Heap_Free(encounter);
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
        FieldTransition_StartEncounterEffect(task, encounter->introEffectID, encounter->battleBGM);
        (*state)++;
        break;

    case 1:
        FieldTransition_FinishMap(task);
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
            FieldSystem_SaveTVEpisodeSegment_CatchThatPokemonShow(fieldSystem, encounter->dto->captureAttempt, encounter->dto->resultMask);
        }

        if (CheckPlayerWonEncounter(encounter) == FALSE) {
            FreeEncounter(encounter);
            return TRUE;
        }

        if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData))) {
            Party_HealAllMembers(SaveData_GetParty(fieldSystem->saveData));
        }

        UpdateGameRecords(fieldSystem, encounter->dto);
        UpdateJournal(fieldSystem, encounter->dto);
        SystemVars_SetTotalTurnsForLastBattle(SaveData_GetVarsFlags(fieldSystem->saveData), encounter->dto->totalTurnsElapsed);
        FieldTransition_StartMap(task);
        (*state)++;
        break;

    case 4:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        FieldTransition_FadeIn(task);
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
        FieldTransition_StartEncounterEffect(task, encounter->introEffectID, encounter->battleBGM);
        (*state)++;
        break;

    case 1:
        FieldTransition_FinishMap(task);
        (*state)++;
        break;

    case 2:
        CallBattleTask(task, encounter->dto);
        (*state)++;
        break;

    case 3:
        SetLinkBattleResult(encounter->dto->resultMask, fieldSystem);
        FieldBattleDTO_UpdatePokedex(encounter->dto, fieldSystem);

        GameRecords *records = SaveData_GetGameRecords(fieldSystem->saveData);
        GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_FOUGHT_LINK_BATTLE);

        FieldTransition_StartMap(task);
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
        Sound_SetScene(SOUND_SCENE_NONE);
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, encounter->battleBGM, 1);
        CallBattleTask(task, encounter->dto);
        (*state)++;
        break;

    case 1:
        SetLinkBattleResult(encounter->dto->resultMask, fieldSystem);
        FieldBattleDTO_UpdatePokedex(encounter->dto, fieldSystem);

        GameRecords *records = SaveData_GetGameRecords(fieldSystem->saveData);
        GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_FOUGHT_LINK_BATTLE);

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
    WildEncounter *encounter = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(WildEncounter));
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
    Heap_Free(encounter);
}

void Encounter_NewVsWild(FieldSystem *fieldSystem, FieldBattleDTO *dto)
{
    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) != FALSE) {
        Encounter *encounter = NewEncounter(dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), NULL);
        FieldSystem_CreateTask(fieldSystem, FieldTask_SafariEncounter, encounter);
    } else {
        WildEncounter *encounter = NewWildEncounter(dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), NULL);
        FieldSystem_CreateTask(fieldSystem, FieldTask_WildEncounter, encounter);
    }
}

void Encounter_StartVsWild(FieldSystem *fieldSystem, FieldTask *task, FieldBattleDTO *dto)
{
    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) != FALSE) {
        Encounter *encounter = NewEncounter(dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), NULL);
        FieldTask_InitJump(task, FieldTask_SafariEncounter, encounter);
    } else {
        WildEncounter *encounter = NewWildEncounter(dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), NULL);
        FieldTask_InitJump(task, FieldTask_WildEncounter, encounter);
    }
}

static BOOL FieldTask_WildEncounter(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    WildEncounter *encounter = FieldTask_GetEnv(task);

    switch (encounter->state) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_WILD_BATTLES_FOUGHT);
        FieldTransition_StartEncounterEffect(task, encounter->introEffectID, encounter->battleBGM);
        encounter->state++;
        break;

    case 1:
        FieldTransition_FinishMap(task);
        encounter->state++;
        break;

    case 2:
        CallBattleTask(task, encounter->dto);
        encounter->state++;
        break;

    case 3:
        UpdateFieldSystemFromDTO(encounter->dto, fieldSystem);
        FieldSystem_SaveTVEpisodeSegment_CatchThatPokemonShow(fieldSystem, encounter->dto->captureAttempt, encounter->dto->resultMask);

        if (CheckPlayerWonBattle(encounter->dto->resultMask) == 0) {
            FreeWildEncounter(encounter);
            RadarChain_Clear(fieldSystem->chain);
            FieldTask_InitJump(task, FieldTask_BlackOutFromBattle, NULL);
            return FALSE;
        }

        if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData))) {
            Party_HealAllMembers(SaveData_GetParty(fieldSystem->saveData));
        }

        UpdateGameRecords(fieldSystem, encounter->dto);
        UpdateJournal(fieldSystem, encounter->dto);

        if (GetRadarChainActive(fieldSystem->chain)) {
            if (sub_02069798(fieldSystem->chain)) {
                if (encounter->dto->resultMask != BATTLE_RESULT_WIN
                    && encounter->dto->resultMask != BATTLE_RESULT_CAPTURED_MON) {
                    RadarChain_Clear(fieldSystem->chain);
                }
            } else {
                RadarChain_Clear(fieldSystem->chain);
            }
        }

        FieldTransition_StartMap(task);
        encounter->state++;
        break;

    case 4:
        RoamerAfterBattle_UpdateRoamers(fieldSystem, encounter->dto);
        FieldTransition_FadeIn(task);
        encounter->state++;
        break;

    case 5:
        if (GetRadarChainActive(fieldSystem->chain)) {
            SetupGrassPatches(fieldSystem, encounter->dto->resultMask, fieldSystem->chain);
            FieldSystem_CreateShakingRadarPatches(fieldSystem, fieldSystem->chain);
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
    u16 *ballCount = FieldOverworldState_GetSafariBallCount(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    switch (*state) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_WILD_BATTLES_FOUGHT);
        FieldTransition_StartEncounterEffect(task, encounter->introEffectID, encounter->battleBGM);
        (*state)++;
        break;

    case 1:
        FieldTransition_FinishMap(task);
        (*state)++;
        break;

    case 2:
        CallBattleTask(task, encounter->dto);
        (*state)++;
        break;

    case 3:
        UpdateFieldSystemFromDTO(encounter->dto, fieldSystem);

        if (encounter->dto->resultMask == BATTLE_RESULT_CAPTURED_MON) {
            TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
            Pokemon *caughtMon = Party_GetPokemonBySlotIndex(encounter->dto->parties[1], 0);

            TVBroadcast_UpdateSafariGameData(broadcast, caughtMon);
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
        FieldTransition_StartMap(task);
        (*state)++;
        break;

    case 5:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        FieldTransition_FadeIn(task);
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
            PCBoxes *pcBoxes = SaveData_GetPCBoxes(fieldSystem->saveData);
            Party *party = SaveData_GetParty(fieldSystem->saveData);

            if (PCBoxes_FirstEmptyBox(pcBoxes) == MAX_PC_BOXES && Party_GetCurrentCount(party) == MAX_PARTY_SIZE) {
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

void Encounter_NewVsHoneyTree(FieldTask *task, int *resultMaskPtr)
{
    FieldBattleDTO *dto;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    RadarChain_Clear(fieldSystem->chain);

    dto = FieldBattleDTO_New(HEAP_ID_FIELD2, BATTLE_TYPE_WILD_MON);
    FieldBattleDTO_Init(dto, fieldSystem);

    dto->background = BACKGROUND_PLAIN;
    dto->terrain = TERRAIN_PLAIN;

    CreateWildMon_HoneyTree(fieldSystem, dto);

    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_WILD_BATTLES_FOUGHT);
    StartEncounter(task, dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), resultMaskPtr);
}

void Encounter_NewVsSpeciesAtLevel(FieldTask *task, u16 species, u8 level, int *resultMaskPtr, BOOL isLegendary)
{
    FieldBattleDTO *dto;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    RadarChain_Clear(fieldSystem->chain);

    dto = FieldBattleDTO_New(HEAP_ID_FIELD2, BATTLE_TYPE_WILD_MON);
    FieldBattleDTO_Init(dto, fieldSystem);

    CreateWildMon_Scripted(fieldSystem, species, level, dto);

    if (isLegendary) {
        dto->battleStatusMask |= BATTLE_STATUS_LEGENDARY;
    }

    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_WILD_BATTLES_FOUGHT);
    StartEncounter(task, dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), resultMaskPtr);
}

void Encounter_NewFatefulVsSpeciesAtLevel(FieldTask *taskMan, u16 species, u8 level, int *resultMaskPtr, BOOL isLegendary)
{
    FieldBattleDTO *dto;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    RadarChain_Clear(fieldSystem->chain);

    dto = FieldBattleDTO_New(HEAP_ID_FIELD2, BATTLE_TYPE_WILD_MON);
    FieldBattleDTO_Init(dto, fieldSystem);

    CreateWildMon_Scripted(fieldSystem, species, level, dto);

    BOOL tmp = TRUE;
    Pokemon *wildMon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_ENEMY_1], 0);
    Pokemon_SetValue(wildMon, MON_DATA_FATEFUL_ENCOUNTER, &tmp);

    if (isLegendary) {
        dto->battleStatusMask |= BATTLE_STATUS_LEGENDARY;
    }

    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_WILD_BATTLES_FOUGHT);
    StartEncounter(taskMan, dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), resultMaskPtr);
}

static BOOL FieldTask_PalParkEncounter(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Encounter *encounter = FieldTask_GetEnv(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_WILD_BATTLES_FOUGHT);
        FieldTransition_StartEncounterEffect(task, encounter->introEffectID, encounter->battleBGM);
        (*state)++;
        break;

    case 1:
        FieldTransition_FinishMap(task);
        (*state)++;
        break;

    case 2:
        CallBattleTask(task, encounter->dto);
        (*state)++;
        break;

    case 3:
        UpdateFieldSystemFromDTO(encounter->dto, fieldSystem);
        FieldSystem_UpdateCatchingShowResult(fieldSystem, encounter->dto);
        UpdateGameRecords(fieldSystem, encounter->dto);
        (*state)++;
        break;

    case 4:
        FieldTransition_StartMap(task);
        (*state)++;
        break;

    case 5:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        FieldTransition_FadeIn(task);
        (*state)++;
        break;

    case 6:
        FreeEncounter(encounter);

        if (FieldSystem_GetParkBallCount(fieldSystem) == 0) {
            ScriptManager_Change(task, 3, NULL);
            return FALSE;
        } else {
            return TRUE;
        }
    }

    return FALSE;
}

void Encounter_NewVsPalParkTransfer(FieldSystem *fieldSystem, FieldBattleDTO *dto)
{
    Encounter *encounter = NewEncounter(dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), NULL);
    FieldSystem_CreateTask(fieldSystem, FieldTask_PalParkEncounter, encounter);
}

void Encounter_NewVsFirstBattle(FieldTask *task, int trainerID, int heapID, int *resultMaskPtr)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    FieldBattleDTO *dto = FieldBattleDTO_New(HEAP_ID_FIELD2, BATTLE_TYPE_TRAINER);
    FieldBattleDTO_Init(dto, fieldSystem);

    dto->battleStatusMask = BATTLE_STATUS_FIRST_BATTLE;
    dto->trainerIDs[BATTLER_ENEMY_1] = trainerID;
    dto->trainerIDs[BATTLER_ENEMY_2] = 0;
    dto->trainerIDs[BATTLER_PLAYER_2] = 0;

    Trainer_Encounter(dto, fieldSystem->saveData, heapID);
    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_TRAINER_BATTLES_FOUGHT);
    StartEncounter(task, dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), resultMaskPtr);
}

static BOOL FieldTask_CatchingTutorialEncounter(FieldTask *task)
{
    Encounter *encounter = FieldTask_GetEnv(task);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        FieldTransition_StartEncounterEffect(task, encounter->introEffectID, encounter->battleBGM);
        (*state)++;
        break;

    case 1:
        FieldTransition_FinishMap(task);
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
        FieldTransition_StartMap(task);
        (*state)++;
        break;

    case 5:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        FieldTransition_FadeIn(task);
        (*state)++;
        break;

    case 6:
        FreeEncounter(encounter);
        return TRUE;
    }

    return FALSE;
}

void Encounter_NewCatchingTutorial(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    FieldBattleDTO *dto = FieldBattleDTO_NewCatchingTutorial(HEAP_ID_FIELD2, fieldSystem);
    Encounter *encounter = NewEncounter(dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), NULL);

    FieldTask_InitCall(task, FieldTask_CatchingTutorialEncounter, encounter);
}

void Encounter_NewVsTrainer(FieldTask *taskMan, int enemyTrainer1ID, int enemyTrainer2ID, int partnerTrainerID, int heapID, int *resultMaskPtr)
{
    u32 battleType;
    FieldBattleDTO *dto;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    if (enemyTrainer2ID != 0 && enemyTrainer1ID != enemyTrainer2ID) {
        if (partnerTrainerID == 0) {
            battleType = BATTLE_TYPE_TAG_DOUBLES;
        } else {
            battleType = BATTLE_TYPE_TRAINER_WITH_AI_PARTNER;
        }
    } else if (enemyTrainer1ID == enemyTrainer2ID) {
        battleType = BATTLE_TYPE_TRAINER_DOUBLES;
    } else {
        battleType = BATTLE_TYPE_TRAINER;
    }

    RadarChain_Clear(fieldSystem->chain);
    dto = FieldBattleDTO_New(HEAP_ID_FIELD2, battleType);
    FieldBattleDTO_Init(dto, fieldSystem);

    if (fieldSystem->location->mapId >= MAP_HEADER_DISTORTION_WORLD_1F
        && fieldSystem->location->mapId <= MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM) {
        dto->battleStatusMask |= BATTLE_STATUS_DISTORTION;
    }

    dto->trainerIDs[BATTLER_ENEMY_1] = enemyTrainer1ID;
    dto->trainerIDs[BATTLER_ENEMY_2] = enemyTrainer2ID;
    dto->trainerIDs[BATTLER_PLAYER_2] = partnerTrainerID;

    Trainer_Encounter(dto, fieldSystem->saveData, heapID);
    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_TRAINER_BATTLES_FOUGHT);
    StartEncounter(taskMan, dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), resultMaskPtr);
}

void Encounter_NewVsLink(FieldTask *task, const u8 *partyOrder, int battleType)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Encounter *encounter;
    FieldBattleDTO *dto = FieldBattleDTO_New(HEAP_ID_FIELD2, battleType);
    FieldBattleDTO_InitWithPartyOrderFromSave(dto, fieldSystem, partyOrder);

    encounter = NewEncounter(dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), NULL);
    FieldTask_InitCall(task, FieldTask_LinkEncounter, encounter);
}

static int sub_020516C8(const BattleRegulation *regulation, int battleType)
{
    int v0;
    int v1 = BattleRegulation_GetIndex(regulation);

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

void Encounter_NewVsWiFi(FieldTask *task, int param1, int normalizedLevel, int wifiBattleType)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Encounter *encounter;
    FieldBattleDTO *dto;
    int battleType, recordingResultCode, v5;

    if (wifiBattleType == 0) {
        battleType = BATTLE_TYPE_LINK | BATTLE_TYPE_TRAINER;
        dto = FieldBattleDTO_New(HEAP_ID_FIELD2, battleType);
        v5 = (UnkEnum_0202F510_00);
    } else if (wifiBattleType == 1) {
        battleType = BATTLE_TYPE_LINK_DOUBLES;
        dto = FieldBattleDTO_New(HEAP_ID_FIELD2, battleType);
        v5 = (UnkEnum_0202F510_07);
    } else {
        battleType = BATTLE_TYPE_FRONTIER_DOUBLES | BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2;
        dto = FieldBattleDTO_New(HEAP_ID_FIELD2, battleType);
        dto->trainerIDs[BATTLER_ENEMY_1] = 1;
        dto->trainerIDs[BATTLER_ENEMY_2] = 2;

        Trainer_Encounter(dto, fieldSystem->saveData, HEAP_ID_FIELD2);

        v5 = (UnkEnum_0202F510_14);
    }

    FieldBattleDTO_InitWithNormalizedMonLevels(dto, fieldSystem, normalizedLevel);
    sub_0202F1F8(fieldSystem->saveData, HEAP_ID_FIELD2, &recordingResultCode);
    dto->unk_18A = v5;

    encounter = NewEncounter(dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), NULL);
    encounter->unk_0C = param1;

    FieldTask_InitCall(task, FieldTask_WiFiEncounter, encounter);
}

static BOOL FieldTask_LinkEncounterWithRecording(FieldTask *task)
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

void Encounter_NewVsLinkWithRecording(FieldSystem *fieldSystem, const u8 *partyOrder, int battleType)
{
    FieldBattleDTO *dto = FieldBattleDTO_New(HEAP_ID_FIELD2, battleType);
    FieldBattleDTO_InitWithPartyOrderFromSave(dto, fieldSystem, partyOrder);

    int recordingResultCode;
    sub_0202F1F8(fieldSystem->saveData, HEAP_ID_FIELD2, &recordingResultCode);
    dto->unk_18A = sub_020516C8(fieldSystem->unk_B0, battleType);

    Encounter *encounter = NewEncounter(dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), NULL);
    FieldSystem_CreateTask(fieldSystem, FieldTask_LinkEncounterWithRecording, encounter);
}

void Encounter_NewVsLinkWithRecordingAndParty(FieldSystem *fieldSystem, const Party *party, int battleType)
{
    FieldBattleDTO *dto = FieldBattleDTO_New(HEAP_ID_FIELD2, battleType);
    FieldBattleDTO_InitWithPartyOrder(dto, fieldSystem, party, NULL);

    int recordingResultCode;
    sub_0202F1F8(fieldSystem->saveData, HEAP_ID_FIELD2, &recordingResultCode);
    dto->unk_18A = sub_020516C8(fieldSystem->unk_B0, battleType);

    Encounter *encounter = NewEncounter(dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), NULL);
    FieldSystem_CreateTask(fieldSystem, FieldTask_LinkEncounterWithRecording, encounter);
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
            GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(fieldSystem->saveData), TRAINER_SCORE_EVENT_WON_WILD_BATTLE);
        } else if (resultMask == BATTLE_RESULT_CAPTURED_MON) {
            // BUG: This always chooses slot 1 of a double-wild battle when the player has an AI partner,
            // rather than choosing the Pokemon that was actually captured.
            caughtMon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_ENEMY_1], 0);

            if (GetDexNumber(0, Pokemon_GetValue(caughtMon, MON_DATA_SPECIES, NULL))) {
                GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(fieldSystem->saveData), TRAINER_SCORE_EVENT_CAPTURED_REGIONAL_MON);
            } else {
                GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(fieldSystem->saveData), TRAINER_SCORE_EVENT_CAPTURED_NATIONAL_MON);
            }
        }
    } else if ((battleType & BATTLE_TYPE_TRAINER) || (battleType & BATTLE_TYPE_TAG)) {
        if (resultMask == BATTLE_RESULT_WIN) {
            GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(fieldSystem->saveData), TRAINER_SCORE_EVENT_WON_TRAINER_BATTLE);
        }
    } else if ((battleType & BATTLE_TYPE_SAFARI) || (battleType & BATTLE_TYPE_PAL_PARK)) {
        if (resultMask == BATTLE_RESULT_CAPTURED_MON) {
            caughtMon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_ENEMY_1], 0);

            if (GetDexNumber(0, Pokemon_GetValue(caughtMon, MON_DATA_SPECIES, NULL))) {
                GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(fieldSystem->saveData), TRAINER_SCORE_EVENT_CAPTURED_REGIONAL_MON);
            } else {
                GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(fieldSystem->saveData), TRAINER_SCORE_EVENT_CAPTURED_NATIONAL_MON);
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
        JournalEntryMon *journalEntryMon;

        if (resultMask == BATTLE_RESULT_WIN) {
            fieldSystem->wildBattleMetadata.wildMonDefeated++;

            if (fieldSystem->wildBattleMetadata.wildMonDefeated >= 5) {
                caughtMon = Party_GetPokemonBySlotIndex(dto->parties[1], 0);
                journalEntryMon = JournalEntry_CreateEventMonDefeated(SaveData_GetPlayTime(fieldSystem->saveData), Pokemon_GetValue(caughtMon, MON_DATA_SPECIES, 0), Pokemon_GetValue(caughtMon, MON_DATA_GENDER, 0), dto->timeOfDay, HEAP_ID_FIELD2);
                JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryMon, JOURNAL_MON);
            }
        } else if (resultMask == BATTLE_RESULT_CAPTURED_MON) {
            int caughtBattlerIdx = dto->caughtBattlerIdx;
            caughtMon = Party_GetPokemonBySlotIndex(dto->parties[caughtBattlerIdx], 0);
            journalEntryMon = JournalEntry_CreateEventMonCaught(SaveData_GetPlayTime(fieldSystem->saveData), Pokemon_GetValue(caughtMon, MON_DATA_SPECIES, 0), Pokemon_GetValue(caughtMon, MON_DATA_GENDER, 0), dto->timeOfDay, HEAP_ID_FIELD2);

            JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryMon, JOURNAL_MON);
        }
    } else if ((battleType & BATTLE_TYPE_TRAINER) || (battleType & BATTLE_TYPE_TAG)) {
        if (resultMask == BATTLE_RESULT_WIN) {
            JournalEntry_CreateAndSaveEventTrainer(fieldSystem->journalEntry, fieldSystem->location->mapId, dto->trainerIDs[BATTLER_ENEMY_1], HEAP_ID_FIELD2);
        }
    }
}

void Encounter_NewVsGiratinaOrigin(FieldTask *task, u16 species, u8 level, int *resultMaskPtr, BOOL isLegendary)
{
    FieldBattleDTO *dto;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    RadarChain_Clear(fieldSystem->chain);

    dto = FieldBattleDTO_New(HEAP_ID_FIELD2, BATTLE_TYPE_WILD_MON);
    FieldBattleDTO_Init(dto, fieldSystem);

    CreateWildMon_Scripted(fieldSystem, species, level, dto);

    Pokemon *wildMon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_ENEMY_1], 0);
    Pokemon_SetGiratinaOriginForm(wildMon);

    if (isLegendary) {
        dto->battleStatusMask |= BATTLE_STATUS_LEGENDARY;
    }

    dto->battleStatusMask |= BATTLE_STATUS_GIRATINA | BATTLE_STATUS_DISTORTION;
    dto->terrain = TERRAIN_GIRATINA;

    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_WILD_BATTLES_FOUGHT);
    StartEncounter(task, dto, EncEffects_CutInEffect(dto), EncEffects_BGM(dto), resultMaskPtr);
}
