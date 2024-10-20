#include "field_map_change.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_load.h"
#include "constants/overworld_weather.h"
#include "consts/map.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/map_load_mode.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0205EC34.h"

#include "field/field_system.h"
#include "functypes/funcptr_02050904.h"
#include "overlay005/ov5_021DD6FC.h"
#include "overlay005/ov5_021E135C.h"
#include "overlay005/ov5_021E1D20.h"
#include "overlay005/struct_ov5_021D432C_decl.h"
#include "overlay006/ov6_02243258.h"
#include "overlay006/ov6_02247100.h"
#include "overlay023/ov23_02248F1C.h"
#include "overlay023/ov23_022499E4.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "communication_system.h"
#include "core_sys.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "game_overlay.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "map_header.h"
#include "map_header_data.h"
#include "map_object.h"
#include "message.h"
#include "player_avatar.h"
#include "pokeradar.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "script_manager.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "trainer_info.h"
#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200A9DC.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02018340.h"
#include "unk_02027F50.h"
#include "unk_0202854C.h"
#include "unk_02039C80.h"
#include "unk_0203A7D8.h"
#include "unk_0203A944.h"
#include "unk_0203D1B8.h"
#include "unk_020508D4.h"
#include "unk_02054BD0.h"
#include "unk_02054D00.h"
#include "unk_020553DC.h"
#include "unk_02055808.h"
#include "unk_020559DC.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205CA94.h"
#include "unk_0205D8CC.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
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

typedef struct MapChangeDigData {
    int state;
    int unk_04;
    SysTask *task;
    Location location;
} MapChangeDigData;

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
    void *unk_20;
    Window unk_24;
    Strbuf *unk_34;
    u8 unk_38;
    UIControlData *unk_3C;
} MapChangeUndergroundData;

typedef struct MapChangeUnionData {
    int state;
    BOOL unk_04;
    Location location;
} MapChangeUnionData;

static BOOL FieldTask_ChangeMap(TaskManager *taskMan);
static BOOL FieldTask_LoadNewGameSpawn(TaskManager *taskMan);
static void FieldMapChange_SetNewLocation(FieldSystem *fieldSystem, const Location *param1);
static void FieldMapChange_InitTerrainCollisionManager(FieldSystem *fieldSystem);
static void FieldMapChange_RemoveTerrainCollisionManager(FieldSystem *fieldSystem);
static void FieldMapChange_CreatePlayerObject(FieldSystem *fieldSystem);
static void sub_02053374(FieldSystem *fieldSystem);
static void sub_020534BC(FieldSystem *fieldSystem);
static BOOL FieldTask_MapChangeFly(TaskManager *taskMan);
static void FieldTask_FinishFly(TaskManager *taskMan);
static BOOL FieldTask_FinishFieldMapFly(TaskManager *taskMan);
static void FieldTask_StartFadeInFly(TaskManager *taskMan);
static BOOL FieldTask_StartFadeInFlySub(TaskManager *taskMan);
static void FieldTask_FadeInFly(TaskManager *taskMan);
static BOOL FieldTask_WaitFadeInFly(TaskManager *taskMan);
static BOOL FieldTask_MapChangeByDig(TaskManager *taskMan);
static void FieldTask_StartFinishFieldMapDig(TaskManager *taskMan);
static BOOL FieldTask_FinishFieldMapDig(TaskManager *taskMan);
static void FieldTask_StartFadeInDig(TaskManager *taskMan);
static BOOL FieldTask_FadeInDig(TaskManager *taskMan);
static void sub_02053E5C(TaskManager *taskMan);
static BOOL sub_0205444C(TaskManager *taskMan, int param1);

static const MapLoadMode sMapLoadMode[] = {
    { 0x1, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0xC4000 },
    { 0x2, 0x1, 0x1, 0x1, 0x1, 0x0, 0x10, 0xC4000 },
    { 0x3, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0xC4000 },
    { 0x4, 0x1, 0x1, 0x0, 0x1, 0x1, 0x1, 0xC4000 },
    { 0x1, 0x1, 0x1, 0x0, 0x1, 0x1, 0x1, 0xA0000 }
};

static const UnkStruct_ov61_0222C884 Unk_020EC3A0 = {
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

    if (fieldSystem->location->unk_04 != -1) {
        const WarpEvent *warpEvent = MapHeaderData_GetWarpEventByIndex(fieldSystem, fieldSystem->location->unk_04);

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
    gCoreSys.unk_65 = fieldSystem->mapLoadMode->unk_00_12;
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

    VsSeeker_Reset(SaveData_GetVarsFlags(fieldSystem->saveData));

    if (!noWarp) {
        sub_020559DC(fieldSystem);
    }

    if (!noWarp) {
        sub_02027F50(sub_02027860(fieldSystem->saveData));
    }

    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    u16 weather = FieldSystem_GetWeather(fieldSystem, mapId);

    if ((weather == OVERWORLD_WEATHER_FOG && Overworld_IsDefogActive(varsFlags) == TRUE) || (weather == OVERWORLD_WEATHER_DARK_FLASH && Overworld_IsFlashActive(varsFlags) == TRUE)) {
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
        u16 warpId = sub_0203A858(mapId);

        if (warpId != 0) {
            FieldOverworldState_SetWarpId(fieldState, warpId);
        }
    }

    sub_0203F5C0(fieldSystem, 2);

    fieldSystem->unk_78.unk_00 = 0;
    fieldSystem->unk_78.unk_02 = 0;
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

    VsSeeker_Reset(SaveData_GetVarsFlags(fieldSystem->saveData));

    if (!param1) {
        sub_020559DC(fieldSystem);
    }

    if (!param1) {
        sub_02027F50(sub_02027860(fieldSystem->saveData));
    }

    if (!param1) {
        u16 warpId = sub_0203A858(mapId);

        if (warpId != 0) {
            FieldOverworldState_SetWarpId(fieldState, warpId);
        }
    }

    fieldSystem->unk_78.unk_00 = 0;
    fieldSystem->unk_78.unk_02 = 0;
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

    fieldSystem->playerAvatar = PlayerAvatar_Init(fieldSystem->mapObjMan, fieldSystem->location->x, fieldSystem->location->z, fieldSystem->location->unk_10, playerData->unk_04, gender, 0, playerData);

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
    sub_02039DC0(fieldSystem->location->mapId, fieldSystem->unk_2C);

    if (sub_0206B1F0(SaveData_GetVarsFlags(fieldSystem->saveData), 3)) {
        sub_02039FE0(fieldSystem->unk_2C); // reveal Seabreak Path if Oak's Letter has been used
    }

    if (!sub_0206B1F0(SaveData_GetVarsFlags(fieldSystem->saveData), 2)) {
        sub_02039F8C(fieldSystem->unk_2C);
    }

    GF_ASSERT(fieldSystem->mapLoadType < MAP_LOAD_TYPE_MAX);

    fieldSystem->mapLoadMode = &sMapLoadMode[fieldSystem->mapLoadType];
    fieldSystem->unk_60 = fieldSystem->mapLoadMode->unk_00_4;
    fieldSystem->bottomScreen = fieldSystem->mapLoadMode->fieldBottomScreen;

    sub_02054F44(&fieldSystem->terrainCollisionMan, fieldSystem->mapLoadMode->unk_00_8);

    if (fieldSystem->mapLoadMode->unk_00_16) {
        sub_02054BD0(fieldSystem, fieldSystem->mapLoadMode->unk_00_24);
    }
}

static void FieldMapChange_RemoveTerrainCollisionManager(FieldSystem *fieldSystem)
{
    GF_ASSERT(fieldSystem->terrainCollisionMan != NULL);

    fieldSystem->terrainCollisionMan = NULL;
    fieldSystem->bottomScreen = 5;

    if (fieldSystem->mapLoadMode->unk_00_16) {
        sub_02054BF8(fieldSystem);
    }

    fieldSystem->mapLoadMode = NULL;
}

void sub_02053494(FieldSystem *fieldSystem)
{
    if (fieldSystem->journal != NULL) {
        void *v0 = sub_0202BC58(fieldSystem->location->mapId, 11);
        Journal_SaveData(fieldSystem->journal, v0, 0);
    }
}

static void sub_020534BC(FieldSystem *fieldSystem)
{
    if (fieldSystem->journal != NULL) {
        FieldOverworldState *owState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
        Location *location = FieldOverworldState_GetSpecialLocation(owState);
        void *v2 = sub_0202BC58(location->mapId, 11);
        Journal_SaveData(fieldSystem->journal, v2, 0);
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

static BOOL FieldTask_LoadNewGameSpawn(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    int *state = FieldTask_GetState(taskMan);

    switch (*state) {
    case 0:
        FieldMapChange_SetNewLocation(fieldSystem, fieldSystem->location);
        FieldMapChange_InitTerrainCollisionManager(fieldSystem);
        FieldMapChange_UpdateGameData(fieldSystem, 0);
        FieldMapChange_CreateObjects(fieldSystem);
        (*state)++;
        break;
    case 1:
        FieldTask_StartFadeIn(taskMan);
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
    FieldTask_Set(fieldSystem, FieldTask_LoadNewGameSpawn, NULL);
}

static BOOL FieldTask_LoadSavedGameMap(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    int *state = FieldTask_GetState(taskMan);

    switch (*state) {
    case 0:
        SaveData_LoadAndUpdateUnderground(fieldSystem->saveData);

        if (Journal_CheckOpenOnContinue(SaveData_GetJournal(fieldSystem->saveData), inline_020535E8(varsFlags))) {
            sub_0203D30C(fieldSystem, NULL);
            (*state) = 4;
            break;
        }
    case 1:
        fieldSystem->journal = Journal_GetSavedPage(SaveData_GetJournal(fieldSystem->saveData), inline_020535E8(varsFlags));

        if (CommClub_IsAvailable(varsFlags)) {
            FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);

            if (FieldSystem_IsSaveInUnionRoom(fieldSystem)) {
                FieldSystem_SetLocationToUnionRoomExit(fieldSystem);
            }

            CommClub_ResetAvailable(varsFlags);
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
        FieldTask_StartFadeIn(taskMan);
        (*state) = 3;
        break;
    case 3:
        return TRUE;
    case 4:
        if (!(sub_020509B4(fieldSystem))) {
            (*state) = 1;
        }
        break;
    }

    return FALSE;
}

void FieldSystem_SetLoadSavedGameMapTask(FieldSystem *fieldSystem)
{
    fieldSystem->mapLoadType = MAP_LOAD_TYPE_OVERWORLD;
    FieldTask_Set(fieldSystem, FieldTask_LoadSavedGameMap, NULL);
}

static BOOL FieldTask_LoadMapFromError(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeFromErrorData *errorData = TaskManager_Environment(taskMan);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    int *state = FieldTask_GetState(taskMan);

    switch (*state) {
    case 0:
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        SaveData_LoadAndUpdateUnderground(fieldSystem->saveData);
        fieldSystem->journal = Journal_GetSavedPage(SaveData_GetJournal(fieldSystem->saveData), inline_020535E8(varsFlags));
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
        FieldTask_StartFieldMap(taskMan);
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
        Heap_FreeToHeap(errorData);
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
            sub_0206AD9C(varsFlags);
        } else {
            FieldSystem_SetLoadSavedGameMapTask(fieldSystem);
            return;
        }
    }

    errorData = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeFromErrorData));
    errorData->finishedFlag = FALSE;

    Location_Set(&errorData->location, 466, -1, 8, 14, 0);
    fieldSystem->mapLoadType = MAP_LOAD_TYPE_UNION;
    FieldTask_Set(fieldSystem, FieldTask_LoadMapFromError, errorData);
}

static BOOL FieldTask_ChangeMap(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeData *mapChangeData = TaskManager_Environment(taskMan);
    Location *location = &mapChangeData->nextLocation;

    switch (mapChangeData->state) {
    case 0:
        Sound_PlayEffect(1539);
        Sound_TryFadeInBGM(fieldSystem, location->mapId);
        FieldTask_FinishFadeOut(taskMan);
        mapChangeData->state++;
        break;
    case 1:
        FieldTask_ChangeMapByLocation(taskMan, &mapChangeData->nextLocation);
        mapChangeData->state++;
        break;
    case 2:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, location->mapId);
        FieldTask_StartFadeIn(taskMan);
        mapChangeData->state++;
        break;
    case 3:
        Heap_FreeToHeap(mapChangeData);
        return TRUE;
    }

    return FALSE;
}

void FieldSystem_StartChangeMapTask(TaskManager *taskMan, const Location *nextLocation)
{
    MapChangeData *mapChangeData = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeData));

    mapChangeData->state = 0;
    mapChangeData->nextLocation = *nextLocation;

    FieldTask_Start(taskMan, FieldTask_ChangeMap, mapChangeData);
}

static BOOL FieldTask_ChangeMapSub(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeSubData *mapChangeSub = TaskManager_Environment(taskMan);

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
        Heap_FreeToHeap(mapChangeSub);
        return 1;
    }

    return 0;
}

void FieldTask_ChangeMapByLocation(TaskManager *taskMan, const Location *nextLocation)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeSubData *mapChangeSub = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeSubData));

    if (sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    mapChangeSub->state = 0;
    mapChangeSub->nextLocation = *nextLocation;

    FieldTask_Start(taskMan, FieldTask_ChangeMapSub, mapChangeSub);
}

void FieldTask_ChangeMapToLocation(TaskManager *taskMan, int param1, int param2, int param3, int param4, int param5)
{
    Location location;

    Location_Set(&location, param1, param2, param3, param4, param5);
    FieldTask_ChangeMapByLocation(taskMan, &location);
}

static BOOL FieldTask_ChangeMapFull(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeSubData *mapChangeSub = TaskManager_Environment(taskMan);
    Location *nextLocation = &mapChangeSub->nextLocation;

    switch (mapChangeSub->state) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, nextLocation->mapId);
        FieldTask_FinishFieldMap(taskMan);
        mapChangeSub->state++;
        break;
    case 1:
        FieldTask_ChangeMapByLocation(taskMan, &mapChangeSub->nextLocation);
        mapChangeSub->state++;
        break;
    case 2:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, nextLocation->mapId);
        FieldTask_StartFieldMap(taskMan);
        mapChangeSub->state++;
        break;
    case 3:
        Heap_FreeToHeap(mapChangeSub);
        return TRUE;
    }

    return FALSE;
}

void FieldTask_StartMapChangeFull(TaskManager *taskMan, int mapId, int param2, int x, int z, int dir)
{
    MapChangeSubData *mapChangeSub = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeSubData));

    mapChangeSub->state = 0;

    Location_Set(&mapChangeSub->nextLocation, mapId, param2, x, z, dir);
    FieldTask_Start(taskMan, FieldTask_ChangeMapFull, mapChangeSub);
}

void FieldTask_StartMapChangeFly(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, int param5)
{
    Location location;

    Location_Set(&location, param1, param2, param3, param4, param5);

    MapChangeFlyData *mapChangeData = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeFlyData));

    mapChangeData->state = 0;
    mapChangeData->task = NULL;
    mapChangeData->location = location;

    FieldTask_Set(fieldSystem, FieldTask_MapChangeFly, mapChangeData);
}

void FieldTask_ChangeMapChangeFly(TaskManager *taskMan, int param1, int param2, int param3, int param4, int param5)
{
    Location location;

    Location_Set(&location, param1, param2, param3, param4, param5);

    MapChangeFlyData *mapChangeData = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeFlyData));

    mapChangeData->state = 0;
    mapChangeData->task = NULL;
    mapChangeData->location = location;

    FieldTask_Change(taskMan, FieldTask_MapChangeFly, mapChangeData);
}

static BOOL FieldTask_MapChangeFly(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeFlyData *mapChangeData = TaskManager_Environment(taskMan);
    Location *location = &mapChangeData->location;

    switch (mapChangeData->state) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, location->mapId);
        FieldTask_FinishFly(taskMan);
        mapChangeData->state++;
        break;
    case 1:
        PlayerAvatar_SetPlayerState(fieldSystem->playerAvatar, 0x0);
        FieldTask_ChangeMapByLocation(taskMan, &mapChangeData->location);
        mapChangeData->state++;
        break;
    case 2:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, location->mapId);
        sub_0207056C(fieldSystem);
        FieldTask_StartFadeInFly(taskMan);
        mapChangeData->state++;
        break;
    case 3:
        Heap_FreeToHeap(mapChangeData);
        return 1;
    }

    return 0;
}

static void FieldTask_FinishFly(TaskManager *taskMan)
{
    FieldTask_Start(taskMan, FieldTask_FinishFieldMapFly, NULL);
}

static BOOL FieldTask_FinishFieldMapFly(TaskManager *taskMan)
{
    int *state = FieldTask_GetState(taskMan);

    switch (*state) {
    case 0:
        FieldTask_FinishFieldMap(taskMan);
        (*state)++;
        break;
    case 1:
        return TRUE;
    }

    return FALSE;
}

static void FieldTask_StartFadeInFly(TaskManager *taskMan)
{
    MapChangeFlyData *mapChangeData = TaskManager_Environment(taskMan);
    FieldTask_Start(taskMan, FieldTask_StartFadeInFlySub, mapChangeData);
}

static BOOL FieldTask_StartFadeInFlySub(TaskManager *taskMan)
{
    int *state = FieldTask_GetState(taskMan);
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);

    switch (*state) {
    case 0:
        FieldTask_StartFieldMap(taskMan);
        (*state)++;
        break;
    case 1:
        FieldSystem_RequestLocationName(fieldSystem);
        FieldTask_FadeInFly(taskMan);
        (*state)++;
        break;
    case 2:
        return TRUE;
    }

    return FALSE;
}

static void FieldTask_FadeInFly(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeFlyData *mapChangeData = TaskManager_Environment(taskMan);

    if (!sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    mapChangeData->task = FieldTask_InitFlyLandingTask(fieldSystem, PlayerAvatar_Gender(fieldSystem->playerAvatar));
    FieldTask_Start(taskMan, FieldTask_WaitFadeInFly, mapChangeData);
}

static BOOL FieldTask_WaitFadeInFly(TaskManager *taskMan)
{
    MapChangeFlyData *mapChangeData = TaskManager_Environment(taskMan);

    if (ov6_02245CF0(mapChangeData->task) == 1) {
        ov6_02245CFC(mapChangeData->task);
        return TRUE;
    }

    return FALSE;
}

void FieldTask_ChangeMapChangeByDig(TaskManager *taskMan, const Location *location, u32 param2)
{
    MapChangeDigData *mapChangeData = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeDigData));

    mapChangeData->state = 0;
    mapChangeData->unk_04 = param2;
    mapChangeData->task = NULL;
    mapChangeData->location = *location;

    FieldTask_Change(taskMan, FieldTask_MapChangeByDig, mapChangeData);
}

static BOOL FieldTask_MapChangeByDig(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeDigData *mapChangeData = TaskManager_Environment(taskMan);
    Location *location = &mapChangeData->location;

    switch (mapChangeData->state) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, location->mapId);
        FieldTask_StartFinishFieldMapDig(taskMan);
        mapChangeData->state++;
        break;
    case 1:
        PlayerAvatar_SetPlayerState(fieldSystem->playerAvatar, 0x0);
        FieldTask_ChangeMapByLocation(taskMan, &mapChangeData->location);
        mapChangeData->state++;
        break;
    case 2:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, location->mapId);

        if (mapChangeData->unk_04 == 2) {
            FieldSystem_SetTeleportFlags(fieldSystem);
        } else if ((mapChangeData->unk_04 == 0) || (mapChangeData->unk_04 == 1)) {
            FieldSystem_SetEscapeFlags(fieldSystem);
        } else {
            GF_ASSERT(FALSE);
        }

        FieldTask_StartFadeInDig(taskMan);
        mapChangeData->state++;
        break;
    case 3:
        Heap_FreeToHeap(mapChangeData);
        return TRUE;
    }

    return FALSE;
}

static void FieldTask_StartFinishFieldMapDig(TaskManager *taskMan)
{
    FieldTask_Start(taskMan, FieldTask_FinishFieldMapDig, NULL);
}

static BOOL FieldTask_FinishFieldMapDig(TaskManager *taskMan)
{
    int *state = FieldTask_GetState(taskMan);

    switch (*state) {
    case 0:
        FieldTask_FinishFieldMap(taskMan);
        (*state)++;
        break;
    case 1:
        return TRUE;
    }

    return FALSE;
}

static void FieldTask_StartFadeInDig(TaskManager *taskMan)
{
    MapChangeDigData *mapChangeData = TaskManager_Environment(taskMan);
    FieldTask_Start(taskMan, FieldTask_FadeInDig, mapChangeData);
}

static BOOL FieldTask_FadeInDig(TaskManager *taskMan)
{
    int *state = FieldTask_GetState(taskMan);
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeDigData *mapChangeData = TaskManager_Environment(taskMan);

    switch (*state) {
    case 0:
        FieldTask_StartFieldMap(taskMan);
        (*state)++;
        break;
    case 1:
        FieldSystem_RequestLocationName(fieldSystem);
        sub_02053E5C(taskMan);
        (*state)++;
        break;
    case 2:
        return TRUE;
    }

    return FALSE;
}

static void sub_02053E5C(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeDigData *mapChangeData = TaskManager_Environment(taskMan);

    if (!sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    void *v2 = ov6_022472C8(fieldSystem, 4, mapChangeData->unk_04);
    FieldTask_Start(taskMan, ov6_022472E8, v2);
}

static BOOL FieldTask_MapChangeWarp(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeWarpData *mapChangeWarpData = TaskManager_Environment(taskMan);
    Location *nextLocation = &mapChangeWarpData->nextLocation;

    switch (mapChangeWarpData->state) {
    case 0:
        FieldSystem_StartWarpAnimation(fieldSystem, 1, &mapChangeWarpData->warpFinished);
        mapChangeWarpData->state++;
        break;
    case 1:
        if (mapChangeWarpData->warpFinished) {
            Sound_TryFadeInBGM(fieldSystem, nextLocation->mapId);
            FieldTask_FinishFieldMap(taskMan);
            mapChangeWarpData->state++;
        }
        break;
    case 2:
        FieldTask_ChangeMapByLocation(taskMan, &mapChangeWarpData->nextLocation);
        mapChangeWarpData->state++;
        break;
    case 3:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, nextLocation->mapId);
        FieldTask_StartFieldMap(taskMan);
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
        Heap_FreeToHeap(mapChangeWarpData);
        return 1;
    }

    return FALSE;
}

void FieldSystem_StartMapChangeWarpTask(FieldSystem *fieldSystem, int param1, int param2)
{
    Location nextLocation;
    MapChangeWarpData *mapChangeWarpData = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeWarpData));

    MI_CpuClear8(mapChangeWarpData, sizeof(MapChangeWarpData));

    Location_Set(&nextLocation, param1, param2, 0, 0, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
    mapChangeWarpData->nextLocation = nextLocation;
    FieldTask_Set(fieldSystem, FieldTask_MapChangeWarp, mapChangeWarpData);
}

void *sub_02053FAC(FieldSystem *fieldSystem)
{
    MapChangeUndergroundData *mapChangeUndergroundData;
    Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    mapChangeUndergroundData = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeUndergroundData));
    mapChangeUndergroundData->state = 0;
    mapChangeUndergroundData->unk_04 = 0;

    if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNDERGROUND) {
        mapChangeUndergroundData->mapId = location->mapId;
        mapChangeUndergroundData->unk_0C = -1;
        mapChangeUndergroundData->unk_10 = location->x;
        mapChangeUndergroundData->unk_14 = location->z;
    } else {
        Location_SetToPlayerLocation(location, fieldSystem);
        mapChangeUndergroundData->mapId = 2;
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

    FieldTask_Set(fieldSystem, FieldMapChange_GetMapChangeUndergroundTask(fieldSystem), mapChangeUndergroundData);
}

BOOL FieldTask_MapChangeToUnderground(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeUndergroundData *mapChangeUndergroundData = TaskManager_Environment(taskMan);

    switch (mapChangeUndergroundData->state) {
    case 0:
        MessageLoader *msgLoader = MessageLoader_Init(1, 26, 221, 11);

        mapChangeUndergroundData->unk_34 = MessageLoader_GetNewStrbuf(msgLoader, 124);
        MessageLoader_Free(msgLoader);

        FieldMessage_AddWindow(fieldSystem->unk_08, &mapChangeUndergroundData->unk_24, 3);
        FieldMessage_DrawWindow(&mapChangeUndergroundData->unk_24, SaveData_Options(fieldSystem->saveData));
        mapChangeUndergroundData->unk_38 = FieldMessage_Print(&mapChangeUndergroundData->unk_24, mapChangeUndergroundData->unk_34, SaveData_Options(fieldSystem->saveData), 1);
        mapChangeUndergroundData->state = 1;
        break;
    case 1:
        if (FieldMessage_FinishedPrinting(mapChangeUndergroundData->unk_38) == 1) {
            Strbuf_Free(mapChangeUndergroundData->unk_34);
            sub_0200DAA4(fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 11);
            mapChangeUndergroundData->unk_3C = sub_02002100(fieldSystem->unk_08, &Unk_020EC3A0, 1024 - (18 + 12) - 9, 11, 11);
            mapChangeUndergroundData->state = 2;
        }
        break;
    case 2:
        switch (sub_02002114(mapChangeUndergroundData->unk_3C, 11)) {
        case 0:
            sub_0200E084(&mapChangeUndergroundData->unk_24, 0);
            BGL_DeleteWindow(&mapChangeUndergroundData->unk_24);
            mapChangeUndergroundData->state = 3;
            break;
        case 0xfffffffe:
            sub_0200E084(&mapChangeUndergroundData->unk_24, 0);
            BGL_DeleteWindow(&mapChangeUndergroundData->unk_24);
            mapChangeUndergroundData->state = 5;
        }
        break;
    case 3:
        if (SaveData_OverwriteCheck(fieldSystem->saveData)) {
            ScriptManager_Start(taskMan, 2034, NULL, NULL);
        } else {
            sub_020287E0(fieldSystem->saveData);
            mapChangeUndergroundData->unk_20 = ov5_021E1F98(fieldSystem, 11, 3);
            ov5_021E1F04(mapChangeUndergroundData->unk_20);
            mapChangeUndergroundData->unk_1C = 0;
            ScriptManager_Start(taskMan, 2005, NULL, &mapChangeUndergroundData->unk_1C);
        }

        mapChangeUndergroundData->state = 4;
        break;
    case 4:
        if (SaveData_OverwriteCheck(fieldSystem->saveData)) {
            mapChangeUndergroundData->state = 5;
        } else {
            ov5_021E1F7C(mapChangeUndergroundData->unk_20);
            ov5_021E1FF4(mapChangeUndergroundData->unk_20);

            if (mapChangeUndergroundData->unk_1C == 0) {
                mapChangeUndergroundData->state = 5;
            } else {
                mapChangeUndergroundData->state = 6;
            }
        }
        break;
    case 5:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        Heap_FreeToHeap(mapChangeUndergroundData);
        return 1;
    case 6:
        sub_0200564C(0, 30);
        mapChangeUndergroundData->state++;
        break;
    case 7:
        if (sub_0205444C(taskMan, 0)) {
            mapChangeUndergroundData->state++;
        }
        break;
    case 8:
        FieldTask_FinishFieldMap(taskMan);
        mapChangeUndergroundData->state++;
        break;
    case 9:
        fieldSystem->mapLoadType = MAP_LOAD_TYPE_UNDERGROUND;
        Overlay_LoadByID(FS_OVERLAY_ID(overlay23), 2);
        ov23_022499E8(fieldSystem);
        FieldTask_ChangeMapToLocation(taskMan, mapChangeUndergroundData->mapId, -1, mapChangeUndergroundData->unk_10, mapChangeUndergroundData->unk_14, 1);
        mapChangeUndergroundData->state++;
        break;
    case 10:
        if (Sound_CheckFade() != 0) {
            break;
        }

        sub_02004234(0);
        Sound_ClearSpecialBGM(fieldSystem);
        FieldTask_StartFieldMap(taskMan);
        mapChangeUndergroundData->state++;
        break;
    case 11:
        if (sub_0205444C(taskMan, 1)) {
            ov23_02249A2C();
            fieldSystem->unk_6C = ov23_02249404(fieldSystem);
            sub_0200AAE0(30, 0, -16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 2);
            mapChangeUndergroundData->state++;
        }
        break;
    case 12:
        if (sub_0200AC1C(2)) {
            ov23_0224DBF4(1);
            Heap_FreeToHeap(mapChangeUndergroundData);
            return 1;
        }
        break;
    }

    return 0;
}

BOOL FieldTask_MapChangeFromUnderground(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeUndergroundData *mapChangeUndergroundData = TaskManager_Environment(taskMan);
    int v2 = 0;

    switch (mapChangeUndergroundData->state) {
    case 0:
        ov23_0224DBF4(0);
        ov23_02249A5C();
        ov23_0224942C(fieldSystem->unk_6C);
        sub_0200AAE0(30, -16, 0, GX_BLEND_PLANEMASK_BG0, 2);
        mapChangeUndergroundData->state++;
        break;
    case 1:
        if (sub_0200AC1C(2)) {
            if ((fieldSystem->unk_6C == NULL) && !CommSys_IsInitialized()) {
                sub_0200564C(0, 30);
                mapChangeUndergroundData->state++;
            }
        }
        break;
    case 2:
        if (sub_0205444C(taskMan, 2)) {
            mapChangeUndergroundData->state++;
        }
        break;
    case 3:
        FieldTask_FinishFieldMap(taskMan);
        mapChangeUndergroundData->state++;
        break;
    case 4:
        fieldSystem->mapLoadType = MAP_LOAD_TYPE_OVERWORLD;
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay23));
        FieldTask_ChangeMapToLocation(taskMan, mapChangeUndergroundData->mapId, -1, mapChangeUndergroundData->unk_10, mapChangeUndergroundData->unk_14, 1);
        mapChangeUndergroundData->state++;
        break;
    case 5:
        if (Sound_CheckFade() != 0) {
            break;
        }

        sub_02004234(0);
        Sound_ClearSpecialBGM(fieldSystem);
        FieldTask_StartFieldMap(taskMan);
        mapChangeUndergroundData->state++;
        break;
    case 6:
        if (sub_0205444C(taskMan, 3)) {
            mapChangeUndergroundData->state++;
        }
        break;
    case 7:
        Heap_FreeToHeap(mapChangeUndergroundData);
        return 1;
        break;
    }

    return 0;
}

FieldTask FieldMapChange_GetMapChangeUndergroundTask(const FieldSystem *fieldSystem)
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

static BOOL sub_0205444C(TaskManager *taskMan, int param1)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeUndergroundData *mapChangeUndergroundData = TaskManager_Environment(taskMan);
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

static BOOL sub_02054494(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeSubData *mapChangeSub = TaskManager_Environment(taskMan);

    switch (mapChangeSub->state) {
    case 0:
        FieldMapChange_DeleteObjects(fieldSystem);
        mapChangeSub->state++;
        break;
    case 1:
        FieldMapChange_SetNewLocation(fieldSystem, &mapChangeSub->nextLocation);
        sub_0203F5C0(fieldSystem, 2);
        mapChangeSub->state++;
        break;
    case 2:
        FieldMapChange_CreateObjects(fieldSystem);
        Heap_FreeToHeap(mapChangeSub);
        return 1;
    }

    return 0;
}

void sub_020544F0(TaskManager *taskMan, const Location *nextLocation)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeSubData *mapChangeData = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeSubData));

    if (sub_0203CD4C(fieldSystem)) {
        GF_ASSERT(FALSE);
        return;
    }

    mapChangeData->state = 0;
    mapChangeData->nextLocation = *nextLocation;

    FieldTask_Start(taskMan, sub_02054494, mapChangeData);
}

static BOOL sub_02054538(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeUnionData *mapChangeData = TaskManager_Environment(taskMan);
    int *state = FieldTask_GetState(taskMan);
    Location *v3 = &mapChangeData->location;

    switch (*state) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, v3->mapId);
        FieldSystem_StartWarpAnimation(fieldSystem, 1, &mapChangeData->unk_04);
        (*state)++;
        break;
    case 1:
        if (mapChangeData->unk_04) {
            FieldTask_FinishFieldMap(taskMan);
            (*state)++;
        }
        break;
    case 2:
        FieldTask_ChangeMapByLocation(taskMan, &mapChangeData->location);
        (*state)++;
        break;
    case 3:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v3->mapId);
        FieldTask_StartFieldMap(taskMan);
        (*state)++;
        break;
    case 4:
        sub_020558F0(taskMan);
        (*state)++;
        break;
    case 5:
        Heap_FreeToHeap(mapChangeData);
        return TRUE;
    }

    return FALSE;
}

void sub_020545EC(FieldSystem *fieldSystem)
{
    Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    MapChangeUnionData *mapChangeData = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeUnionData));

    MI_CpuClear8(mapChangeData, sizeof(MapChangeUnionData));

    mapChangeData->location = *location;
    sub_0205B388(fieldSystem);
    sub_0205C2E0(fieldSystem->unk_80);
    fieldSystem->mapLoadType = MAP_LOAD_TYPE_OVERWORLD;

    FieldTask_Set(fieldSystem, sub_02054538, mapChangeData);
    fieldSystem->unk_7C = NULL;
}

static BOOL sub_02054648(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeUnionData *mapChangeData = TaskManager_Environment(taskMan);
    int *state = FieldTask_GetState(taskMan);
    Location *v3 = &mapChangeData->location;

    switch (*state) {
    case 0:
        Sound_TryFadeInBGM(fieldSystem, v3->mapId);
        sub_020558AC(taskMan);
        (*state)++;
        break;
    case 1:
        FieldTask_FinishFieldMap(taskMan);
        (*state)++;
        break;
    case 2:
        FieldTask_ChangeMapByLocation(taskMan, &mapChangeData->location);
        (*state)++;
        break;
    case 3:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, v3->mapId);
        FieldTask_StartFieldMap(taskMan);
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
        Heap_FreeToHeap(mapChangeData);
        return TRUE;
    }

    return FALSE;
}

void sub_02054708(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    MapChangeUnionData *mapChangeData = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeUnionData));

    MI_CpuClear8(mapChangeData, sizeof(MapChangeUnionData));
    Location_SetToPlayerLocation(location, fieldSystem);

    Location_Set(&mapChangeData->location, 466, -1, 8, 14, 0);

    fieldSystem->unk_7C = FieldSystem_InitCommUnionRoom(fieldSystem);
    fieldSystem->unk_80 = sub_0205C22C(fieldSystem->unk_7C);
    fieldSystem->mapLoadType = MAP_LOAD_TYPE_UNION;

    FieldTask_Start(taskMan, sub_02054648, mapChangeData);
}

static BOOL FieldTask_ChangeMapColosseum(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    MapChangeData *mapChangeData = TaskManager_Environment(taskMan);
    Location *location = &mapChangeData->nextLocation;

    switch (mapChangeData->state) {
    case 0:
        Sound_PlayEffect(1539);
        Sound_TryFadeInBGM(fieldSystem, location->mapId);
        FieldTask_FinishFadeOut(taskMan);
        mapChangeData->state++;
        break;
    case 1:
        FieldTask_ChangeMapByLocation(taskMan, &mapChangeData->nextLocation);
        mapChangeData->state++;
        break;
    case 2:
        if (Sound_CheckFade() != 0) {
            break;
        }

        Sound_PlayMapBGM(fieldSystem, location->mapId);
        FieldTask_StartFieldMap(taskMan);
        mapChangeData->state++;
        break;
    case 3:
        Heap_FreeToHeap(mapChangeData);
        return TRUE;
    }

    return FALSE;
}

void sub_02054800(TaskManager *taskMan, int mapId, int param2, int x, int z, int param5)
{
    Location nextLocation;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    Location_SetToPlayerLocation(location, fieldSystem);

    fieldSystem->mapLoadType = MAP_LOAD_TYPE_COLOSSEUM;

    MapChangeData *mapChangeData = Heap_AllocFromHeapAtEnd(11, sizeof(MapChangeData));

    Location_Set(&nextLocation, mapId, param2, x, z, param5);

    mapChangeData->state = 0;
    mapChangeData->nextLocation = nextLocation;

    FieldTask_Start(taskMan, FieldTask_ChangeMapColosseum, mapChangeData);
}

void sub_02054864(TaskManager *taskMan)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    fieldSystem->mapLoadType = MAP_LOAD_TYPE_OVERWORLD;
    FieldSystem_StartChangeMapTask(fieldSystem->unk_10, location);
}
