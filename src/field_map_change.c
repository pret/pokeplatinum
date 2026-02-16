#include "field_map_change.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_load.h"
#include "constants/heap.h"
#include "constants/overworld_weather.h"

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_defs/map_load_mode.h"
#include "struct_defs/struct_0205EC34.h"

#include "field/field_system.h"
#include "overlay005/map_name_popup.h"
#include "overlay005/ov5_021E135C.h"
#include "overlay005/save_info_window.h"
#include "overlay005/struct_ov5_021D432C_decl.h"
#include "overlay006/field_warp.h"
#include "overlay006/hm_cut_in.h"
#include "overlay023/secret_bases.h"
#include "overlay023/underground_comm_manager.h"
#include "overlay023/underground_top_screen.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "communication_system.h"
#include "field_message.h"
#include "field_overworld_state.h"
#include "field_overworld_weather.h"
#include "field_system.h"
#include "field_task.h"
#include "field_transition.h"
#include "game_overlay.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "location.h"
#include "map_header.h"
#include "map_header_data.h"
#include "map_matrix.h"
#include "map_object.h"
#include "menu.h"
#include "message.h"
#include "persisted_map_features.h"
#include "player_avatar.h"
#include "pokeradar.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "screen_fade.h"
#include "script_manager.h"
#include "sound.h"
#include "sound_playback.h"
#include "spawn_locations.h"
#include "string_gf.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_flags.h"
#include "system_vars.h"
#include "terrain_attributes.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "unk_0203D1B8.h"
#include "unk_020553DC.h"
#include "unk_020559DC.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205CA94.h"
#include "unk_02070428.h"
#include "vars_flags.h"

FS_EXTERN_OVERLAY(overlay23);

typedef struct MapChangeData {
    int state;
    Location nextLocation;
    UnkStruct_ov5_021D432C *unk_18;
} MapChangeData;

typedef struct MapChangeSubData {
    int state;
    Location nextLocation;
} MapChangeSubData;

typedef struct MapChangeFlyData {
    int state;
    SysTask *task;
    Location location;
    UnkStruct_ov5_021D432C *unk_1C;
} MapChangeFlyData;

typedef struct MapChangeFromErrorData {
    BOOL finishedFlag;
    Location location;
} MapChangeFromErrorData;

typedef struct MapChangeFieldWarpData {
    int state;
    enum FieldWarpType fieldWarpType;
    SysTask *task;
    Location location;
} MapChangeFieldWarpData;

typedef struct MapChangeWarpData {
    int state;
    BOOL warpFinished;
    Location nextLocation;
} MapChangeWarpData;

typedef struct MapChangeUndergroundData {
    int state;
    int unk_04;
    int mapId;
    int unk_0C;
    int unk_10;
    int unk_14;
    BOOL unk_18;
    u16 unk_1C;
    SaveInfoWindow *saveInfoWin;
    Window unk_24;
    String *unk_34;
    u8 unk_38;
    Menu *unk_3C;
} MapChangeUndergroundData;

typedef struct MapChangeUnionData {
    int state;
    BOOL unk_04;
    Location location;
} MapChangeUnionData;

static BOOL FieldTask_ChangeMap(FieldTask *task);
static BOOL FieldTask_LoadNewGameSpawn(FieldTask *task);
static void FieldMapChange_SetNewLocation(FieldSystem *fieldSystem, const Location *param1);
static void FieldMapChange_InitTerrainCollisionManager(FieldSystem *fieldSystem);
static void FieldMapChange_RemoveTerrainCollisionManager(FieldSystem *fieldSystem);
static void FieldMapChange_CreatePlayerObject(FieldSystem *fieldSystem);
static void sub_02053374(FieldSystem *fieldSystem);
static void sub_020534BC(FieldSystem *fieldSystem);
static BOOL FieldTask_MapChangeFly(FieldTask *task);
static void FieldTask_FinishFly(FieldTask *task);
static BOOL FieldTransition_FinishMapFly(FieldTask *task);
static void FieldTransition_StartMapAndFadeInFly(FieldTask *task);
static BOOL FieldTransition_StartMapAndFadeInFlySub(FieldTask *task);
static void FieldTask_FadeInFly(FieldTask *task);
static BOOL FieldTask_WaitFadeInFly(FieldTask *task);
static BOOL FieldTask_MapChangeByFieldWarp(FieldTask *task);
static void FieldTask_StartFinishFieldMapFieldWarp(FieldTask *task);
static BOOL FieldTransition_FinishMapFieldWarp(FieldTask *task);
static void FieldTransition_StartMapAndFadeInFieldWarp(FieldTask *task);
static BOOL FieldTransition_StartMapAndFadeInFieldWarpSub(FieldTask *task);
static void FieldTask_FadeInFieldWarp(FieldTask *task);
static BOOL sub_0205444C(FieldTask *task, int param1);

static const MapLoadMode sMapLoadMode[] = {
    { 0x1, FALSE, FALSE, 0x0, FALSE, 0x1, 0x0, 0xC4000 },
    { 0x2, TRUE, TRUE, 0x1, TRUE, 0x0, 0x10, 0xC4000 },
    { 0x3, FALSE, FALSE, 0x0, FALSE, 0x1, 0x0, 0xC4000 },
    { 0x4, TRUE, TRUE, 0x0, TRUE, 0x1, 0x1, 0xC4000 },
    { 0x1, TRUE, TRUE, 0x0, TRUE, 0x1, 0x1, 0xA0000 }
};

static const WindowTemplate Unk_020EC3A0 = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static void sub_020530C8(FieldSystem *fieldSystem)
{
    BOOL inBattleTower;

    switch (fieldSystem->location->mapId) {
    case MAP_HEADER_BATTLE_TOWER:
    case MAP_HEADER_BATTLE_TOWER_ELEVATOR:
    case MAP_HEADER_BATTLE_TOWER_CORRIDOR:
    case MAP_HEADER_BATTLE_TOWER_CORRIDOR_MULTI:
    case MAP_HEADER_BATTLE_TOWER_BATTLE_ROOM:
    case MAP_HEADER_BATTLE_TOWER_MULTI_BATTLE_ROOM:
    case MAP_HEADER_BATTLE_TOWER_BATTLE_SALON:
        inBattleTower = TRUE;
        break;
    default:
        inBattleTower = FALSE;
    }

    if (!inBattleTower && fieldSystem->mapLoadType == MAP_LOAD_TYPE_BATTLE_TOWER) {
        fieldSystem->mapLoadType = MAP_LOAD_TYPE_OVERWORLD;
    }

    if (inBattleTower) {
        fieldSystem->mapLoadType = MAP_LOAD_TYPE_BATTLE_TOWER;
    }
}

static void FieldMapChange_SetNewLocation(FieldSystem *fieldSystem, const Location *nextLocation)
{
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    Location *location = FieldOverworldState_GetPrevLocation(fieldState);

    if (nextLocation != NULL) {
        *location = *fieldSystem->location;
        *(fieldSystem->location) = *nextLocation;
    }

    MapHeaderData_Load(fieldSystem, fieldSystem->location->mapId);

    if (fieldSystem->location->warpId != WARP_ID_NONE) {
        const WarpEvent *warpEvent = MapHeaderData_GetWarpEventByIndex(fieldSystem, fieldSystem->location->warpId);

        fieldSystem->location->x = warpEvent->x;
        fieldSystem->location->z = warpEvent->z;

        if (warpEvent->destWarpID == 0x100) {
            Location *v3, *entrance;

            v3 = FieldOverworldState_GetSpecialLocation(fieldState);
            entrance = FieldOverworldState_GetEntranceLocation(fieldState);
            *v3 = *entrance;
        }
    }
}

void FieldMapChange_Set3DDisplay(FieldSystem *fieldSystem)
{
    GF_ASSERT(fieldSystem->mapLoadType < MAP_LOAD_TYPE_MAX);
    gSystem.whichScreenIs3D = fieldSystem->mapLoadMode->unk_00_12;
}

void FieldMapChange_UpdateGameData(FieldSystem *fieldSystem, BOOL noWarp)
{
    int mapId = fieldSystem->location->mapId;
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);

    Sound_ClearSpecialBGM(fieldSystem);
    FieldSystem_ClearLocalFlags(fieldSystem);

    if (!noWarp) {
        FieldSystem_InitFlagsWarp(fieldSystem);
    } else {
        FieldSystem_InitFlagsOnMapChange(fieldSystem);
    }

    SystemVars_ResetVsSeeker(SaveData_GetVarsFlags(fieldSystem->saveData));

    if (!noWarp) {
        sub_020559DC(fieldSystem);
    }

    if (!noWarp) {
        PersistedMapFeatures_Init(MiscSaveBlock_GetPersistedMapFeatures(fieldSystem->saveData));
    }

    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    u16 weather = FieldSystem_GetWeather(fieldSystem, mapId);

    if ((weather == OVERWORLD_WEATHER_FOG && SystemFlag_CheckDefogActive(varsFlags) == TRUE)
        || (weather == OVERWORLD_WEATHER_DARK_FLASH && SystemFlag_CheckFlashActive(varsFlags) == TRUE)) {
        weather = OVERWORLD_WEATHER_CLEAR;
    }

    FieldOverworldState_SetWeather(fieldState, weather);

    if (noWarp) {
        int cam1 = FieldOverworldState_GetCameraType(fieldState);
        int cam2 = MapHeader_GetCameraType(mapId);

        GF_ASSERT(cam1 == cam2);
    } else {
        FieldOverworldState_SetCameraType(fieldState, MapHeader_GetCameraType(mapId));
    }

    if (!noWarp) {
        u16 warpId = GetMapBlackOutWarpId(mapId);

        if (warpId != 0) {
            FieldOverworldState_SetWarpId(fieldState, warpId);
        }
    }

    FieldSystem_RunInitScript(fieldSystem, INIT_SCRIPT_ON_TRANSITION);

    fieldSystem->wildBattleMetadata.encounterAttempts = 0;
    fieldSystem->wildBattleMetadata.wildMonDefeated = 0;
}

void FieldMapChange_UpdateGameDataDistortionWorld(FieldSystem *fieldSystem, BOOL param1)
{
    int mapId = fieldSystem->location->mapId;
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);

    Sound_ClearSpecialBGM(fieldSystem);
    FieldSystem_ClearLocalFlags(fieldSystem);

    if (!param1) {
        FieldSystem_InitFlagsWarp(fieldSystem);
    } else {
        FieldSystem_InitFlagsOnMapChange(fieldSystem);
    }

    SystemVars_ResetVsSeeker(SaveData_GetVarsFlags(fieldSystem->saveData));

    if (!param1) {
        sub_020559DC(fieldSystem);
    }

    if (!param1) {
        PersistedMapFeatures_Init(MiscSaveBlock_GetPersistedMapFeatures(fieldSystem->saveData));
    }

    if (!param1) {
        u16 warpId = GetMapBlackOutWarpId(mapId);

        if (warpId != 0) {
            FieldOverworldState_SetWarpId(fieldState, warpId);
        }
    }

    fieldSystem->wildBattleMetadata.encounterAttempts = 0;
    fieldSystem->wildBattleMetadata.wildMonDefeated = 0;
}

static void FieldMapChange_CreateObjects(FieldSystem *fieldSystem)
{
    int gender;
    FieldOverworldState *fieldState;
    PlayerData *playerData;

    fieldSystem->mapObjMan = MapObjectMan_New(fieldSystem, 64, 5);

    gender = TrainerInfo_Gender(SaveData_GetTrainerInfo(fieldSystem->saveData));
    fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    playerData = FieldOverworldState_GetPlayerData(fieldState);

    fieldSystem->playerAvatar = PlayerAvatar_Init(fieldSystem->mapObjMan, fieldSystem->location->x, fieldSystem->location->z, fieldSystem->location->faceDirection, playerData->form, gender, 0, playerData);

    sub_0203A418(fieldSystem);
    MapObjectMan_StopAllMovement(fieldSystem->mapObjMan);
}

static void FieldMapChange_DeleteObjects(FieldSystem *fieldSystem)
{
    Player_Delete(fieldSystem->playerAvatar);
    MapObjectMan_DeleteAll(fieldSystem->mapObjMan);
    MapObjectMan_Delete(fieldSystem->mapObjMan);
}

static void FieldMapChange_LoadObjects(FieldSystem *fieldSystem)
{
    fieldSystem->mapObjMan = MapObjectMan_New(fieldSystem, 64, 5);
    FieldSystem_LoadObjects(fieldSystem);

    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    PlayerData *playerData = FieldOverworldState_GetPlayerData(fieldState);
    int gender = TrainerInfo_Gender(SaveData_GetTrainerInfo(fieldSystem->saveData));

    fieldSystem->playerAvatar = sub_0205E820(fieldSystem->mapObjMan, playerData, gender);

    MapObjectMan_StopAllMovement(fieldSystem->mapObjMan);
}

static void FieldMapChange_InitTerrainCollisionManager(FieldSystem *fieldSystem)
{
    sub_020530C8(fieldSystem);
    GF_ASSERT(fieldSystem->terrainCollisionMan == NULL);
    MapMatrix_Load(fieldSystem->location->mapId, fieldSystem->mapMatrix);

    if (SystemVars_CheckHiddenLocation(SaveData_GetVarsFlags(fieldSystem->saveData), HIDDEN_LOCATION_SEABREAK_PATH)) {
        MapMatrix_RevealSeabreakPath(fieldSystem->mapMatrix); // reveal Seabreak Path if Oak's Letter has been used
    }

    if (!SystemVars_CheckHiddenLocation(SaveData_GetVarsFlags(fieldSystem->saveData), HIDDEN_LOCATION_SPRING_PATH)) {
        MapMatrix_RevealSpringPath(fieldSystem->mapMatrix);
    }

    GF_ASSERT(fieldSystem->mapLoadType < MAP_LOAD_TYPE_MAX);

    fieldSystem->mapLoadMode = &sMapLoadMode[fieldSystem->mapLoadType];
    fieldSystem->skipMapAttributes = fieldSystem->mapLoadMode->skipMapAttributes;
    fieldSystem->bottomScreen = fieldSystem->mapLoadMode->fieldBottomScreen;

    TerrainCollisionManager_Init(&fieldSystem->terrainCollisionMan, fieldSystem->mapLoadMode->useSimpleTerrainCollisions);

    if (fieldSystem->mapLoadMode->useSeparateTerrainAttributes) {
        TerrainAttributes_New(fieldSystem, fieldSystem->mapLoadMode->separateTerrainAttributesBlockCount);
    }
}

static void FieldMapChange_RemoveTerrainCollisionManager(FieldSystem *fieldSystem)
{
    GF_ASSERT(fieldSystem->terrainCollisionMan != NULL);

    fieldSystem->terrainCollisionMan = NULL;
    fieldSystem->bottomScreen = 5;

    if (fieldSystem->mapLoadMode->useSeparateTerrainAttributes) {
        TerrainAttributes_Free(fieldSystem);
    }

    fieldSystem->mapLoadMode = NULL;
}

void sub_02053494(FieldSystem *fieldSystem)
{
    if (fieldSystem->journalEntry != NULL) {
        void *v0 = JournalEntry_CreateTitle(fieldSystem->location->mapId, 11);
        JournalEntry_SaveData(fieldSystem->journalEntry, v0, JOURNAL_TITLE);
    }
}

static void sub_020534BC(FieldSystem *fieldSystem)
{
    if (fieldSystem->journalEntry != NULL) {
        FieldOverworldState *owState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
        Location *location = FieldOverworldState_GetSpecialLocation(owState);
        void *v2 = JournalEntry_CreateTitle(location->mapId, 11);
        JournalEntry_SaveData(fieldSystem->journalEntry, v2, JOURNAL_TITLE);
    }
}

static void Location_SetToPlayerLocation(Location *location, const FieldSystem *fieldSystem)
{
    Location_Set(location, fieldSystem->location->mapId, -1, Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), 1);
}

static BOOL FieldSystem_IsSaveInUnionRoom(const FieldSystem *fieldSystem)
{
    return MapHeader_IsPokemonCenter2F(fieldSystem->location->mapId)
        && fieldSystem->location->x == 7
        && fieldSystem->location->z == 6;
}

static void FieldSystem_SetLocationToUnionRoomExit(FieldSystem *fieldSystem)
{
    Location *exit = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    Location_Set(exit, fieldSystem->location->mapId, -1, 8, 2, 1);
}

static BOOL FieldTask_LoadNewGameSpawn(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        FieldMapChange_SetNewLocation(fieldSystem, fieldSystem->location);
        FieldMapChange_InitTerrainCollisionManager(fieldSystem);
        FieldMapChange_UpdateGameData(fieldSystem, 0);
        FieldMapChange_CreateObjects(fieldSystem);
        (*state)++;
        break;
    case 1:
        FieldTransition_StartMapAndFadeIn(task);
        (*state)++;
        break;
    case 2:
        return TRUE;
    }

    return FALSE;
}

void FieldSystem_SetLoadNewGameSpawnTask(FieldSystem *fieldSystem)
{
    fieldSystem->mapLoadType = MAP_LOAD_TYPE_OVERWORLD;
    FieldSystem_InitNewGameState(fieldSystem);
    FieldSystem_CreateTask(fieldSystem, FieldTask_LoadNewGameSpawn, NULL);
}

static inline BOOL CheckJournalAcquired(VarsFlags *varsFlags)
{
    return SystemFlag_HandleJournalAcquired(varsFlags, HANDLE_FLAG_CHECK);
}

static BOOL FieldTask_LoadSavedGameMap(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        SaveData_LoadAndUpdateUnderground(fieldSystem->saveData);

        if (Journal_CheckOpenOnContinue(SaveData_GetJournal(fieldSystem->saveData), CheckJournalAcquired(varsFlags))) {
            sub_0203D30C(fieldSystem, NULL);
            (*state) = 4;
            break;
        }
    case 1:
        fieldSystem->journalEntry = Journal_GetSavedPage(SaveData_GetJournal(fieldSystem->saveData), CheckJournalAcquired(varsFlags));

        if (SystemFlag_CheckCommunicationClubAccessible(varsFlags)) {
            FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);

            if (FieldSystem_IsSaveInUnionRoom(fieldSystem)) {
                FieldSystem_SetLocationToUnionRoomExit(fieldSystem);
            }

            SystemFlag_ClearCommunicationClubAccessible(varsFlags);
            FieldMapChange_SetNewLocation(fieldSystem, FieldOverworldState_GetSpecialLocation(fieldState));
            FieldMapChange_InitTerrainCollisionManager(fieldSystem);
            FieldMapChange_UpdateGameData(fieldSystem, 0);
            FieldMapChange_CreateObjects(fieldSystem);
        } else {
            FieldMapChange_SetNewLocation(fieldSystem, NULL);
            FieldMapChange_InitTerrainCollisionManager(fieldSystem);
            sub_020559DC(fieldSystem);
            FieldMapChange_LoadObjects(fieldSystem);
        }

        sub_02053494(fieldSystem);
        sub_020705CC(fieldSystem);
        (*state) = 2;
        break;
    case 2:
        FieldTransition_StartMapAndFadeIn(task);
        (*state) = 3;
        break;
    case 3:
        return TRUE;
    case 4:
        if (!(FieldSystem_IsRunningApplication(fieldSystem))) {
            (*state) = 1;
        }
        break;
    }

    return FALSE;
}

void FieldSystem_SetLoadSavedGameMapTask(FieldSystem *fieldSystem)
{
    fieldSystem->mapLoadType = MAP_LOAD_TYPE_OVERWORLD;
    FieldSystem_CreateTask(fieldSystem, FieldTask_LoadSavedGameMap, NULL);
}

static BOOL FieldTask_LoadMapFromError(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeFromErrorData *errorData = FieldTask_GetEnv(task);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        SaveData_LoadAndUpdateUnderground(fieldSystem->saveData);
        fieldSystem->journalEntry = Journal_GetSavedPage(SaveData_GetJournal(fieldSystem->saveData), CheckJournalAcquired(varsFlags));
        (*state)++;
        break;
    case 1:
        FieldMapChange_SetNewLocation(fieldSystem, &errorData->location);
        FieldMapChange_InitTerrainCollisionManager(fieldSystem);
        FieldMapChange_UpdateGameData(fieldSystem, 0);
        FieldMapChange_CreateObjects(fieldSystem);
        sub_020534BC(fieldSystem);
        (*state)++;
        break;
    case 2:
        fieldSystem->unk_7C = FieldSystem_InitCommUnionRoom(fieldSystem);
        fieldSystem->unk_80 = sub_0205C22C(fieldSystem->unk_7C);
        FieldTransition_StartMap(task);
        (*state)++;
        break;
    case 3:
        errorData->finishedFlag = FALSE;
        FieldSystem_StartWarpAnimation(fieldSystem, 0, &errorData->finishedFlag);
        (*state)++;
        break;
    case 4:
        if (errorData->finishedFlag) {
            (*state)++;
        }
        break;
    case 5:
        Heap_Free(errorData);
        return 1;
    }

    return 0;
}

void FieldSystem_StartLoadMapFromErrorTask(FieldSystem *fieldSystem)
{
    MapChangeFromErrorData *errorData;

    if (!MapHeader_IsUnionRoom(fieldSystem->location->mapId)) {
        if (FieldSystem_IsSaveInUnionRoom(fieldSystem)) {
            VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

            FieldSystem_SetLocationToUnionRoomExit(fieldSystem);
            SystemFlag_SetCommunicationClubAccessible(varsFlags);
        } else {
            FieldSystem_SetLoadSavedGameMapTask(fieldSystem);
            return;
        }
    }

    errorData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeFromErrorData));
    errorData->finishedFlag = FALSE;

    Location_Set(&errorData->location, 466, -1, 8, 14, 0);
    fieldSystem->mapLoadType = MAP_LOAD_TYPE_UNION;
    FieldSystem_CreateTask(fieldSystem, FieldTask_LoadMapFromError, errorData);
}

static BOOL FieldTask_ChangeMap(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeData *mapChangeData = FieldTask_GetEnv(task);
    Location *location = &mapChangeData->nextLocation;

    switch (mapChangeData->state) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_KAIDAN2);
        Sound_TryFadeInBGM(fieldSystem, location->mapId);
        FieldTransition_FadeOutAndFinishMap(task);
        mapChangeData->state++;
        break;
    case 1:
        FieldTask_ChangeMapByLocation(task, &mapChangeData->nextLocation);
        mapChangeData->state++;
        break;
    case 2:
        if (Sound_IsFadeActive()) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, location->mapId);
        FieldTransition_StartMapAndFadeIn(task);
        mapChangeData->state++;
        break;
    case 3:
        Heap_Free(mapChangeData);
        return TRUE;
    }

    return FALSE;
}

void FieldSystem_StartChangeMapTask(FieldTask *task, const Location *nextLocation)
{
    MapChangeData *mapChangeData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeData));

    mapChangeData->state = 0;
    mapChangeData->nextLocation = *nextLocation;

    FieldTask_InitCall(task, FieldTask_ChangeMap, mapChangeData);
}

static BOOL FieldTask_ChangeMapSub(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeSubData *mapChangeSub = FieldTask_GetEnv(task);

    switch (mapChangeSub->state) {
    case 0:
        FieldMapChange_DeleteObjects(fieldSystem);
        FieldMapChange_RemoveTerrainCollisionManager(fieldSystem);
        mapChangeSub->state++;
        break;
    case 1:
        FieldMapChange_SetNewLocation(fieldSystem, &mapChangeSub->nextLocation);
        FieldMapChange_InitTerrainCollisionManager(fieldSystem);
        FieldMapChange_UpdateGameData(fieldSystem, 0);
        RadarChain_Clear(fieldSystem->chain);
        mapChangeSub->state++;
        break;
    case 2:
        FieldMapChange_CreateObjects(fieldSystem);
        Heap_Free(mapChangeSub);
        return 1;
    }

    return 0;
}

void FieldTask_ChangeMapByLocation(FieldTask *task, const Location *nextLocation)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeSubData *mapChangeSub = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeSubData));

    if (FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    mapChangeSub->state = 0;
    mapChangeSub->nextLocation = *nextLocation;

    FieldTask_InitCall(task, FieldTask_ChangeMapSub, mapChangeSub);
}

void FieldTask_ChangeMapToLocation(FieldTask *task, int mapId, int warpId, int x, int z, int dir)
{
    Location location;

    Location_Set(&location, mapId, warpId, x, z, dir);
    FieldTask_ChangeMapByLocation(task, &location);
}

static BOOL FieldTask_ChangeMapFull(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeSubData *mapChangeSub = FieldTask_GetEnv(task);
    Location *nextLocation = &mapChangeSub->nextLocation;

    switch (mapChangeSub->state) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, nextLocation->mapId);
        FieldTransition_FinishMap(task);
        mapChangeSub->state++;
        break;
    case 1:
        FieldTask_ChangeMapByLocation(task, &mapChangeSub->nextLocation);
        mapChangeSub->state++;
        break;
    case 2:
        if (Sound_IsFadeActive()) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, nextLocation->mapId);
        FieldTransition_StartMap(task);
        mapChangeSub->state++;
        break;
    case 3:
        Heap_Free(mapChangeSub);
        return TRUE;
    }

    return FALSE;
}

void FieldTask_StartMapChangeFull(FieldTask *task, int mapId, int warpId, int x, int z, int dir)
{
    MapChangeSubData *mapChangeSub = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeSubData));

    mapChangeSub->state = 0;

    Location_Set(&mapChangeSub->nextLocation, mapId, warpId, x, z, dir);
    FieldTask_InitCall(task, FieldTask_ChangeMapFull, mapChangeSub);
}

void FieldTask_StartMapChangeFly(FieldSystem *fieldSystem, int mapId, int warpId, int x, int z, int dir)
{
    Location location;

    Location_Set(&location, mapId, warpId, x, z, dir);

    MapChangeFlyData *mapChangeData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeFlyData));

    mapChangeData->state = 0;
    mapChangeData->task = NULL;
    mapChangeData->location = location;

    FieldSystem_CreateTask(fieldSystem, FieldTask_MapChangeFly, mapChangeData);
}

void FieldTask_ChangeMapChangeFly(FieldTask *task, int mapId, int warpId, int x, int z, int dir)
{
    Location location;

    Location_Set(&location, mapId, warpId, x, z, dir);

    MapChangeFlyData *mapChangeData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeFlyData));

    mapChangeData->state = 0;
    mapChangeData->task = NULL;
    mapChangeData->location = location;

    FieldTask_InitJump(task, FieldTask_MapChangeFly, mapChangeData);
}

static BOOL FieldTask_MapChangeFly(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeFlyData *mapChangeData = FieldTask_GetEnv(task);
    Location *location = &mapChangeData->location;

    switch (mapChangeData->state) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, location->mapId);
        FieldTask_FinishFly(task);
        mapChangeData->state++;
        break;
    case 1:
        PlayerAvatar_SetPlayerState(fieldSystem->playerAvatar, 0x0);
        FieldTask_ChangeMapByLocation(task, &mapChangeData->location);
        mapChangeData->state++;
        break;
    case 2:
        if (Sound_IsFadeActive()) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, location->mapId);
        FieldSystem_SetFlyFlags(fieldSystem);
        FieldTransition_StartMapAndFadeInFly(task);
        mapChangeData->state++;
        break;
    case 3:
        Heap_Free(mapChangeData);
        return 1;
    }

    return 0;
}

static void FieldTask_FinishFly(FieldTask *task)
{
    FieldTask_InitCall(task, FieldTransition_FinishMapFly, NULL);
}

static BOOL FieldTransition_FinishMapFly(FieldTask *task)
{
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        FieldTransition_FinishMap(task);
        (*state)++;
        break;
    case 1:
        return TRUE;
    }

    return FALSE;
}

static void FieldTransition_StartMapAndFadeInFly(FieldTask *task)
{
    MapChangeFlyData *mapChangeData = FieldTask_GetEnv(task);
    FieldTask_InitCall(task, FieldTransition_StartMapAndFadeInFlySub, mapChangeData);
}

static BOOL FieldTransition_StartMapAndFadeInFlySub(FieldTask *task)
{
    int *state = FieldTask_GetState(task);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);

    switch (*state) {
    case 0:
        FieldTransition_StartMap(task);
        (*state)++;
        break;
    case 1:
        FieldSystem_RequestLocationName(fieldSystem);
        FieldTask_FadeInFly(task);
        (*state)++;
        break;
    case 2:
        return TRUE;
    }

    return FALSE;
}

static void FieldTask_FadeInFly(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeFlyData *mapChangeData = FieldTask_GetEnv(task);

    if (!FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    mapChangeData->task = FieldTask_FlyLanding_InitTask(fieldSystem, PlayerAvatar_Gender(fieldSystem->playerAvatar));
    FieldTask_InitCall(task, FieldTask_WaitFadeInFly, mapChangeData);
}

static BOOL FieldTask_WaitFadeInFly(FieldTask *task)
{
    MapChangeFlyData *mapChangeData = FieldTask_GetEnv(task);

    if (FlyLanding_IsAnimFinished(mapChangeData->task) == TRUE) {
        FlyLanding_SetTaskDone(mapChangeData->task);
        return TRUE;
    }

    return FALSE;
}

void FieldTask_ChangeMapByFieldWarp(FieldTask *task, const Location *location, enum FieldWarpType fieldWarpType)
{
    MapChangeFieldWarpData *mapChangeData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeFieldWarpData));

    mapChangeData->state = 0;
    mapChangeData->fieldWarpType = fieldWarpType;
    mapChangeData->task = NULL;
    mapChangeData->location = *location;

    FieldTask_InitJump(task, FieldTask_MapChangeByFieldWarp, mapChangeData);
}

static BOOL FieldTask_MapChangeByFieldWarp(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeFieldWarpData *mapChangeData = FieldTask_GetEnv(task);
    Location *location = &mapChangeData->location;

    switch (mapChangeData->state) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, location->mapId);
        FieldTask_StartFinishFieldMapFieldWarp(task);
        mapChangeData->state++;
        break;
    case 1:
        PlayerAvatar_SetPlayerState(fieldSystem->playerAvatar, 0x0);
        FieldTask_ChangeMapByLocation(task, &mapChangeData->location);
        mapChangeData->state++;
        break;
    case 2:
        if (Sound_IsFadeActive()) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, location->mapId);

        if (mapChangeData->fieldWarpType == FIELD_WARP_TYPE_TELEPORT) {
            FieldSystem_SetTeleportFlags(fieldSystem);
        } else if (mapChangeData->fieldWarpType == FIELD_WARP_TYPE_ESCAPE_ROPE || mapChangeData->fieldWarpType == FIELD_WARP_TYPE_DIG) {
            FieldSystem_SetEscapeFlags(fieldSystem);
        } else {
            GF_ASSERT(FALSE);
        }

        FieldTransition_StartMapAndFadeInFieldWarp(task);
        mapChangeData->state++;
        break;
    case 3:
        Heap_Free(mapChangeData);
        return TRUE;
    }

    return FALSE;
}

static void FieldTask_StartFinishFieldMapFieldWarp(FieldTask *task)
{
    FieldTask_InitCall(task, FieldTransition_FinishMapFieldWarp, NULL);
}

static BOOL FieldTransition_FinishMapFieldWarp(FieldTask *task)
{
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        FieldTransition_FinishMap(task);
        (*state)++;
        break;
    case 1:
        return TRUE;
    }

    return FALSE;
}

static void FieldTransition_StartMapAndFadeInFieldWarp(FieldTask *task)
{
    MapChangeFieldWarpData *mapChangeData = FieldTask_GetEnv(task);
    FieldTask_InitCall(task, FieldTransition_StartMapAndFadeInFieldWarpSub, mapChangeData);
}

static BOOL FieldTransition_StartMapAndFadeInFieldWarpSub(FieldTask *task)
{
    int *state = FieldTask_GetState(task);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeFieldWarpData *mapChangeData = FieldTask_GetEnv(task);

    switch (*state) {
    case 0:
        FieldTransition_StartMap(task);
        (*state)++;
        break;
    case 1:
        FieldSystem_RequestLocationName(fieldSystem);
        FieldTask_FadeInFieldWarp(task);
        (*state)++;
        break;
    case 2:
        return TRUE;
    }

    return FALSE;
}

static void FieldTask_FadeInFieldWarp(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeFieldWarpData *mapChangeData = FieldTask_GetEnv(task);

    if (!FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    FieldWarp *fieldwarp = FieldWarp_InitFadeIn(fieldSystem, HEAP_ID_FIELD1, mapChangeData->fieldWarpType);
    FieldTask_InitCall(task, FieldWarp_FadeIn, fieldwarp);
}

static BOOL FieldTask_MapChangeWarp(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeWarpData *mapChangeWarpData = FieldTask_GetEnv(task);
    Location *nextLocation = &mapChangeWarpData->nextLocation;

    switch (mapChangeWarpData->state) {
    case 0:
        FieldSystem_StartWarpAnimation(fieldSystem, 1, &mapChangeWarpData->warpFinished);
        mapChangeWarpData->state++;
        break;
    case 1:
        if (mapChangeWarpData->warpFinished) {
            Sound_TryFadeInBGM(fieldSystem, nextLocation->mapId);
            FieldTransition_FinishMap(task);
            mapChangeWarpData->state++;
        }
        break;
    case 2:
        FieldTask_ChangeMapByLocation(task, &mapChangeWarpData->nextLocation);
        mapChangeWarpData->state++;
        break;
    case 3:
        if (Sound_IsFadeActive()) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, nextLocation->mapId);
        FieldTransition_StartMap(task);
        mapChangeWarpData->state++;
        break;
    case 4:
        mapChangeWarpData->warpFinished = FALSE;
        FieldSystem_StartWarpAnimation(fieldSystem, 0, &mapChangeWarpData->warpFinished);
        mapChangeWarpData->state++;
        break;
    case 5:
        if (mapChangeWarpData->warpFinished) {
            mapChangeWarpData->state++;
        }
        break;
    case 6:
        Heap_Free(mapChangeWarpData);
        return 1;
    }

    return FALSE;
}

void FieldSystem_StartMapChangeWarpTask(FieldSystem *fieldSystem, int param1, int param2)
{
    Location nextLocation;
    MapChangeWarpData *mapChangeWarpData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeWarpData));

    MI_CpuClear8(mapChangeWarpData, sizeof(MapChangeWarpData));

    Location_Set(&nextLocation, param1, param2, 0, 0, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
    mapChangeWarpData->nextLocation = nextLocation;
    FieldSystem_CreateTask(fieldSystem, FieldTask_MapChangeWarp, mapChangeWarpData);
}

void *sub_02053FAC(FieldSystem *fieldSystem)
{
    MapChangeUndergroundData *mapChangeUndergroundData;
    Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    mapChangeUndergroundData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeUndergroundData));
    mapChangeUndergroundData->state = 0;
    mapChangeUndergroundData->unk_04 = 0;

    if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNDERGROUND) {
        mapChangeUndergroundData->mapId = location->mapId;
        mapChangeUndergroundData->unk_0C = -1;
        mapChangeUndergroundData->unk_10 = location->x;
        mapChangeUndergroundData->unk_14 = location->z;
    } else {
        Location_SetToPlayerLocation(location, fieldSystem);
        mapChangeUndergroundData->mapId = MAP_HEADER_UNDERGROUND;
        mapChangeUndergroundData->unk_0C = -1;

        {
            int v2, v3;
            int v4, v5;

            v4 = (location->x / 32) - 1;
            v5 = (location->z / 32) - 6;

            GF_ASSERT(v4 >= 0);
            GF_ASSERT(v5 >= 0);

            if (v4 % 2 == 0) {
                v2 = 8;
            } else {
                v2 = 23;
            }

            if (v5 % 2 == 0) {
                v3 = 8;
            } else {
                v3 = 23;
            }

            v4 = (v4 / 2) + 1;
            v5 = (v5 / 2) + 2 + 1;
            mapChangeUndergroundData->unk_10 = v4 * 32 + v2;
            mapChangeUndergroundData->unk_14 = v5 * 32 + v3;
        }
    }

    return mapChangeUndergroundData;
}

void FieldTask_SetUndergroundMapChange(FieldSystem *fieldSystem)
{
    MapChangeUndergroundData *mapChangeUndergroundData = sub_02053FAC(fieldSystem);

    if (mapChangeUndergroundData == NULL) {
        return;
    }

    FieldSystem_CreateTask(fieldSystem, FieldMapChange_GetMapChangeUndergroundTask(fieldSystem), mapChangeUndergroundData);
}

BOOL FieldTask_MapChangeToUnderground(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeUndergroundData *mapChangeUndergroundData = FieldTask_GetEnv(task);

    switch (mapChangeUndergroundData->state) {
    case 0:
        MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_CENTER_2F_ATTENDANTS, HEAP_ID_FIELD2);

        mapChangeUndergroundData->unk_34 = MessageLoader_GetNewString(msgLoader, 124);
        MessageLoader_Free(msgLoader);

        FieldMessage_AddWindow(fieldSystem->bgConfig, &mapChangeUndergroundData->unk_24, 3);
        FieldMessage_DrawWindow(&mapChangeUndergroundData->unk_24, SaveData_GetOptions(fieldSystem->saveData));
        mapChangeUndergroundData->unk_38 = FieldMessage_Print(&mapChangeUndergroundData->unk_24, mapChangeUndergroundData->unk_34, SaveData_GetOptions(fieldSystem->saveData), 1);
        mapChangeUndergroundData->state = 1;
        break;
    case 1:
        if (FieldMessage_FinishedPrinting(mapChangeUndergroundData->unk_38) == 1) {
            String_Free(mapChangeUndergroundData->unk_34);
            LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, 11, 0, HEAP_ID_FIELD2);
            mapChangeUndergroundData->unk_3C = Menu_MakeYesNoChoice(fieldSystem->bgConfig, &Unk_020EC3A0, 1024 - (18 + 12) - 9, 11, 11);
            mapChangeUndergroundData->state = 2;
        }
        break;
    case 2:
        switch (Menu_ProcessInputAndHandleExit(mapChangeUndergroundData->unk_3C, 11)) {
        case 0:
            Window_EraseMessageBox(&mapChangeUndergroundData->unk_24, 0);
            Window_Remove(&mapChangeUndergroundData->unk_24);
            mapChangeUndergroundData->state = 3;
            break;
        case 0xfffffffe:
            Window_EraseMessageBox(&mapChangeUndergroundData->unk_24, 0);
            Window_Remove(&mapChangeUndergroundData->unk_24);
            mapChangeUndergroundData->state = 5;
        }
        break;
    case 3:
        if (SaveData_OverwriteCheck(fieldSystem->saveData)) {
            ScriptManager_Start(task, SCRIPT_ID(COMMON_SCRIPTS, 34), NULL, NULL);
        } else {
            sub_020287E0(fieldSystem->saveData);
            mapChangeUndergroundData->saveInfoWin = SaveInfoWindow_New(fieldSystem, HEAP_ID_FIELD2, BG_LAYER_MAIN_3);
            SaveInfoWindow_Draw(mapChangeUndergroundData->saveInfoWin);
            mapChangeUndergroundData->unk_1C = 0;
            ScriptManager_Start(task, SCRIPT_ID(COMMON_SCRIPTS, 5), NULL, &mapChangeUndergroundData->unk_1C);
        }

        mapChangeUndergroundData->state = 4;
        break;
    case 4:
        if (SaveData_OverwriteCheck(fieldSystem->saveData)) {
            mapChangeUndergroundData->state = 5;
        } else {
            SaveInfoWindow_Erase(mapChangeUndergroundData->saveInfoWin);
            SaveInfoWindow_Free(mapChangeUndergroundData->saveInfoWin);

            if (mapChangeUndergroundData->unk_1C == 0) {
                mapChangeUndergroundData->state = 5;
            } else {
                mapChangeUndergroundData->state = 6;
            }
        }
        break;
    case 5:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        Heap_Free(mapChangeUndergroundData);
        return 1;
    case 6:
        Sound_FadeOutBGM(0, 30);
        mapChangeUndergroundData->state++;
        break;
    case 7:
        if (sub_0205444C(task, 0)) {
            mapChangeUndergroundData->state++;
        }
        break;
    case 8:
        FieldTransition_FinishMap(task);
        mapChangeUndergroundData->state++;
        break;
    case 9:
        fieldSystem->mapLoadType = MAP_LOAD_TYPE_UNDERGROUND;
        Overlay_LoadByID(FS_OVERLAY_ID(overlay23), 2);
        CommManUnderground_InitUnderground(fieldSystem);
        FieldTask_ChangeMapToLocation(task, mapChangeUndergroundData->mapId, -1, mapChangeUndergroundData->unk_10, mapChangeUndergroundData->unk_14, 1);
        mapChangeUndergroundData->state++;
        break;
    case 10:
        if (Sound_IsFadeActive()) {
            break;
        }

        Sound_SetScene(SOUND_SCENE_NONE);
        Sound_ClearSpecialBGM(fieldSystem);
        FieldTransition_StartMap(task);
        mapChangeUndergroundData->state++;
        break;
    case 11:
        if (sub_0205444C(task, 1)) {
            CommManUnderground_EnterUnderground();
            fieldSystem->ugTopScreenCtx = UndergroundTopScreen_StartTask(fieldSystem);
            BrightnessController_StartTransition(30, 0, -16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, BRIGHTNESS_SUB_SCREEN);
            mapChangeUndergroundData->state++;
        }
        break;
    case 12:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN)) {
            SecretBases_SetEntranceGraphicsEnabled(TRUE);
            Heap_Free(mapChangeUndergroundData);
            return 1;
        }
        break;
    }

    return 0;
}

BOOL FieldTask_MapChangeFromUnderground(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeUndergroundData *mapChangeUndergroundData = FieldTask_GetEnv(task);
    int v2 = 0;

    switch (mapChangeUndergroundData->state) {
    case 0:
        SecretBases_SetEntranceGraphicsEnabled(FALSE);
        CommManUnderground_ExitUnderground();
        UndergroundTopScreen_EndTask(fieldSystem->ugTopScreenCtx);
        BrightnessController_StartTransition(30, -16, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_SUB_SCREEN);
        mapChangeUndergroundData->state++;
        break;
    case 1:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN)) {
            if (fieldSystem->ugTopScreenCtx == NULL && !CommSys_IsInitialized()) {
                Sound_FadeOutBGM(0, 30);
                mapChangeUndergroundData->state++;
            }
        }
        break;
    case 2:
        if (sub_0205444C(task, 2)) {
            mapChangeUndergroundData->state++;
        }
        break;
    case 3:
        FieldTransition_FinishMap(task);
        mapChangeUndergroundData->state++;
        break;
    case 4:
        fieldSystem->mapLoadType = MAP_LOAD_TYPE_OVERWORLD;
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay23));
        FieldTask_ChangeMapToLocation(task, mapChangeUndergroundData->mapId, -1, mapChangeUndergroundData->unk_10, mapChangeUndergroundData->unk_14, 1);
        mapChangeUndergroundData->state++;
        break;
    case 5:
        if (Sound_IsFadeActive()) {
            break;
        }

        Sound_SetScene(SOUND_SCENE_NONE);
        Sound_ClearSpecialBGM(fieldSystem);
        FieldTransition_StartMap(task);
        mapChangeUndergroundData->state++;
        break;
    case 6:
        if (sub_0205444C(task, 3)) {
            mapChangeUndergroundData->state++;
        }
        break;
    case 7:
        Heap_Free(mapChangeUndergroundData);
        return 1;
        break;
    }

    return 0;
}

FieldTaskFunc FieldMapChange_GetMapChangeUndergroundTask(const FieldSystem *fieldSystem)
{
    if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_OVERWORLD) {
        return FieldTask_MapChangeToUnderground;
    } else if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNDERGROUND) {
        return FieldTask_MapChangeFromUnderground;
    } else {
        GF_ASSERT(0);
        return NULL;
    }
}

static BOOL sub_0205444C(FieldTask *task, int param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeUndergroundData *mapChangeUndergroundData = FieldTask_GetEnv(task);
    BOOL ret = 0;

    switch (mapChangeUndergroundData->unk_04) {
    case 0:
        mapChangeUndergroundData->unk_18 = 0;
        sub_0205CFDC(fieldSystem, param1, &mapChangeUndergroundData->unk_18);
        mapChangeUndergroundData->unk_04++;
        break;
    case 1:
        if (mapChangeUndergroundData->unk_18) {
            mapChangeUndergroundData->unk_04 = 0;
            ret = 1;
        }
        break;
    }

    return ret;
}

static BOOL sub_02054494(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeSubData *mapChangeSub = FieldTask_GetEnv(task);

    switch (mapChangeSub->state) {
    case 0:
        FieldMapChange_DeleteObjects(fieldSystem);
        mapChangeSub->state++;
        break;
    case 1:
        FieldMapChange_SetNewLocation(fieldSystem, &mapChangeSub->nextLocation);
        FieldSystem_RunInitScript(fieldSystem, INIT_SCRIPT_ON_TRANSITION);
        mapChangeSub->state++;
        break;
    case 2:
        FieldMapChange_CreateObjects(fieldSystem);
        Heap_Free(mapChangeSub);
        return 1;
    }

    return 0;
}

void sub_020544F0(FieldTask *task, const Location *nextLocation)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeSubData *mapChangeData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeSubData));

    if (FieldSystem_HasParentProcess(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    mapChangeData->state = 0;
    mapChangeData->nextLocation = *nextLocation;

    FieldTask_InitCall(task, sub_02054494, mapChangeData);
}

static BOOL sub_02054538(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeUnionData *mapChangeData = FieldTask_GetEnv(task);
    int *state = FieldTask_GetState(task);
    Location *v3 = &mapChangeData->location;

    switch (*state) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, v3->mapId);
        FieldSystem_StartWarpAnimation(fieldSystem, 1, &mapChangeData->unk_04);
        (*state)++;
        break;
    case 1:
        if (mapChangeData->unk_04) {
            FieldTransition_FinishMap(task);
            (*state)++;
        }
        break;
    case 2:
        FieldTask_ChangeMapByLocation(task, &mapChangeData->location);
        (*state)++;
        break;
    case 3:
        if (Sound_IsFadeActive()) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v3->mapId);
        FieldTransition_StartMap(task);
        (*state)++;
        break;
    case 4:
        FieldTransition_FadeIn(task);
        (*state)++;
        break;
    case 5:
        Heap_Free(mapChangeData);
        return TRUE;
    }

    return FALSE;
}

void sub_020545EC(FieldSystem *fieldSystem)
{
    Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    MapChangeUnionData *mapChangeData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeUnionData));

    MI_CpuClear8(mapChangeData, sizeof(MapChangeUnionData));

    mapChangeData->location = *location;
    sub_0205B388(fieldSystem);
    sub_0205C2E0(fieldSystem->unk_80);
    fieldSystem->mapLoadType = MAP_LOAD_TYPE_OVERWORLD;

    FieldSystem_CreateTask(fieldSystem, sub_02054538, mapChangeData);
    fieldSystem->unk_7C = NULL;
}

static BOOL sub_02054648(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeUnionData *mapChangeData = FieldTask_GetEnv(task);
    int *state = FieldTask_GetState(task);
    Location *v3 = &mapChangeData->location;

    switch (*state) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, v3->mapId);
        FieldTransition_FadeOut(task);
        (*state)++;
        break;
    case 1:
        FieldTransition_FinishMap(task);
        (*state)++;
        break;
    case 2:
        FieldTask_ChangeMapByLocation(task, &mapChangeData->location);
        (*state)++;
        break;
    case 3:
        if (Sound_IsFadeActive()) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v3->mapId);
        FieldTransition_StartMap(task);
        (*state)++;
        break;
    case 4:
        mapChangeData->unk_04 = 0;
        FieldSystem_StartWarpAnimation(fieldSystem, 0, &mapChangeData->unk_04);
        (*state)++;
        break;
    case 5:
        if (mapChangeData->unk_04) {
            (*state)++;
        }
        break;
    case 6:
        Heap_Free(mapChangeData);
        return TRUE;
    }

    return FALSE;
}

void sub_02054708(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    MapChangeUnionData *mapChangeData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeUnionData));

    MI_CpuClear8(mapChangeData, sizeof(MapChangeUnionData));
    Location_SetToPlayerLocation(location, fieldSystem);

    Location_Set(&mapChangeData->location, 466, -1, 8, 14, 0);

    fieldSystem->unk_7C = FieldSystem_InitCommUnionRoom(fieldSystem);
    fieldSystem->unk_80 = sub_0205C22C(fieldSystem->unk_7C);
    fieldSystem->mapLoadType = MAP_LOAD_TYPE_UNION;

    FieldTask_InitCall(task, sub_02054648, mapChangeData);
}

static BOOL FieldTask_ChangeMapColosseum(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapChangeData *mapChangeData = FieldTask_GetEnv(task);
    Location *location = &mapChangeData->nextLocation;

    switch (mapChangeData->state) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_KAIDAN2);
        Sound_TryFadeInBGM(fieldSystem, location->mapId);
        FieldTransition_FadeOutAndFinishMap(task);
        mapChangeData->state++;
        break;
    case 1:
        FieldTask_ChangeMapByLocation(task, &mapChangeData->nextLocation);
        mapChangeData->state++;
        break;
    case 2:
        if (Sound_IsFadeActive()) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, location->mapId);
        FieldTransition_StartMap(task);
        mapChangeData->state++;
        break;
    case 3:
        Heap_Free(mapChangeData);
        return TRUE;
    }

    return FALSE;
}

void FieldTask_StartChangeMapColosseum(FieldTask *task, int mapId, int warpId, int x, int z, int dir)
{
    Location nextLocation;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    Location_SetToPlayerLocation(location, fieldSystem);

    fieldSystem->mapLoadType = MAP_LOAD_TYPE_COLOSSEUM;

    MapChangeData *mapChangeData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapChangeData));

    Location_Set(&nextLocation, mapId, warpId, x, z, dir);

    mapChangeData->state = 0;
    mapChangeData->nextLocation = nextLocation;

    FieldTask_InitCall(task, FieldTask_ChangeMapColosseum, mapChangeData);
}

void sub_02054864(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    fieldSystem->mapLoadType = MAP_LOAD_TYPE_OVERWORLD;
    FieldSystem_StartChangeMapTask(fieldSystem->task, location);
}
