#include "platform_lift.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/field/map.h"
#include "constants/heap.h"
#include "generated/map_headers.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/dynamic_terrain_height.h"
#include "overlay005/map_prop.h"

#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "persisted_map_features.h"
#include "player_avatar.h"
#include "savedata_misc.h"
#include "sound_playback.h"
#include "terrain_collision_manager.h"

#include "res/field/props/models/prop_models.naix"

#define PLATFORM_LIFT_SIZE_X 3
#define PLATFORM_LIFT_SIZE_Y 2

#define PLATFORM_LIFT_DYNAMIC_HEIGHT_PLATE_ID 0

#define PLATFORM_LIFT_IRON_ISLAND_B2F_LEFT_ROOM_POS_X (FX32_ONE * (16 * 19 + 8))
#define PLATFORM_LIFT_IRON_ISLAND_B2F_LEFT_ROOM_POS_Z (FX32_ONE * (16 * (MAP_TILES_COUNT_Z + 12) + 8))

#define IRON_ISLAND_B1F_RIGHT_ROOM_BOTTOM_FLOOR_WARP_Z                 26
#define IRON_ISLAND_B2F_LEFT_ROOM_BOTTOM_FLOOR_WARP_Z                  (MAP_TILES_COUNT_Z * 1 + 16)
#define IRON_ISLAND_B3F_BOTTOM_FLOOR_WARP_Z                            15
#define POKEMON_LEAGUE_ELEVATOR_TO_ELITE_FOUR_ROOM_BOTTOM_FLOOR_WARP_Z 15
#define POKEMON_LEAGUE_ELEVATOR_TO_CHAMPION_ROOM_BOTTOM_FLOOR_WARP_Z   23
#define POKEMON_LEAGUE_CHAMPION_ROOM_BOTTOM_FLOOR_WARP_Z               18

enum PlatformLiftFloorID {
    PLATFORM_LIFT_BOTTOM_FLOOR = 0,
    PLATFORM_LIFT_TOP_FLOOR,
    PLATFORM_LIFT_FLOOR_COUNT,
};

enum PlatformLiftID {
    PLATFORM_LIFT_IRON_ISLAND_B1F_RIGHT_ROOM = 0,
    PLATFORM_LIFT_IRON_ISLAND_B2F_LEFT_ROOM,
    PLATFORM_LIFT_IRON_ISLAND_B3F,
    PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_AARON_ROOM,
    PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_BERTHA_ROOM,
    PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_FLINT_ROOM,
    PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_LUCIAN_ROOM,
    PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_CHAMPION_ROOM,
    PLATFORM_LIFT_POKEMON_LEAGUE_CHAMPION_ROOM,
    PLATFORM_LIFT_COUNT,
};

enum PlatformLiftKind {
    PLATFORM_LIFT_KIND_IRON_ISLAND = 0,
    PLATFORM_LIFT_KIND_POKEMON_LEAGUE,
};

enum PlatformLiftFieldTaskState {
    PLATFORM_LIFT_STATE_START_MOVING = 0,
    PLATFORM_LIFT_STATE_MOVE,
    PLATFORM_LIFT_STATE_FINISH_MOVING,
    PLATFORM_LIFT_STATE_END,
};

typedef struct PlatformLiftConfiguration {
    fx32 floorHeights[PLATFORM_LIFT_FLOOR_COUNT];
    int startTileX;
    int startTileZ;
    BOOL preventGoingDown;
    BOOL isIronIslandB2FLeftRoom;
} PlatformLiftConfiguration;

typedef struct PlatformLiftPersistedData {
    u16 floorID;
    u16 id;
    BOOL notUsedWhenEnteredMap;
    int kind;
} PlatformLiftPersistedData;

typedef struct PlatformLiftFieldTaskEnv {
    int state;
    fx32 targetHeight;
    BOOL isIronIslandB2FLeftRoom;
    int kind;
} PlatformLiftFieldTaskEnv;

static BOOL FieldTask_PlatformLiftGoUp(FieldTask *taskMan);
static BOOL FieldTask_PlatformLiftGoDown(FieldTask *taskMan);
static void PlatformLift_PlaySoundEffect(const int platformLiftKind);
static void PlatformLift_StopSoundEffect(const int platformLiftKind);

static const PlatformLiftConfiguration sPerMapPlatformLiftConfiguration[PLATFORM_LIFT_COUNT] = {
    [PLATFORM_LIFT_IRON_ISLAND_B1F_RIGHT_ROOM] = {
        .floorHeights = { (MAP_OBJECT_TILE_SIZE * 1), (MAP_OBJECT_TILE_SIZE * 9) },
        .startTileX = 10,
        .startTileZ = 23,
        .preventGoingDown = FALSE,
        .isIronIslandB2FLeftRoom = FALSE,
    },
    [PLATFORM_LIFT_IRON_ISLAND_B2F_LEFT_ROOM] = {
        .floorHeights = { (MAP_OBJECT_TILE_SIZE * 1), (MAP_OBJECT_TILE_SIZE * 9) },
        .startTileX = 18,
        .startTileZ = 44,
        .preventGoingDown = FALSE,
        .isIronIslandB2FLeftRoom = TRUE,
    },
    [PLATFORM_LIFT_IRON_ISLAND_B3F] = {
        .floorHeights = { (MAP_OBJECT_TILE_SIZE * 1), (MAP_OBJECT_TILE_SIZE * 9) },
        .startTileX = 8,
        .startTileZ = 11,
        .preventGoingDown = FALSE,
        .isIronIslandB2FLeftRoom = FALSE,
    },
    [PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_AARON_ROOM] = {
        .floorHeights = { (MAP_OBJECT_TILE_SIZE * 0), (MAP_OBJECT_TILE_SIZE * 10) },
        .startTileX = 3,
        .startTileZ = 11,
        .preventGoingDown = TRUE,
        .isIronIslandB2FLeftRoom = FALSE,
    },
    [PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_BERTHA_ROOM] = {
        .floorHeights = { (MAP_OBJECT_TILE_SIZE * 0), (MAP_OBJECT_TILE_SIZE * 5) },
        .startTileX = 3,
        .startTileZ = 11,
        .preventGoingDown = TRUE,
        .isIronIslandB2FLeftRoom = FALSE,
    },
    [PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_FLINT_ROOM] = {
        .floorHeights = { (MAP_OBJECT_TILE_SIZE * 0), (MAP_OBJECT_TILE_SIZE * 5) },
        .startTileX = 3,
        .startTileZ = 11,
        .preventGoingDown = TRUE,
        .isIronIslandB2FLeftRoom = FALSE,
    },
    [PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_LUCIAN_ROOM] = {
        .floorHeights = { (MAP_OBJECT_TILE_SIZE * 0), (MAP_OBJECT_TILE_SIZE * 5) },
        .startTileX = 3,
        .startTileZ = 11,
        .preventGoingDown = TRUE,
        .isIronIslandB2FLeftRoom = FALSE,
    },
    [PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_CHAMPION_ROOM] = {
        .floorHeights = { (MAP_OBJECT_TILE_SIZE * 0), (MAP_OBJECT_TILE_SIZE * 5) },
        .startTileX = 3,
        .startTileZ = 19,
        .preventGoingDown = TRUE,
        .isIronIslandB2FLeftRoom = FALSE,
    },
    [PLATFORM_LIFT_POKEMON_LEAGUE_CHAMPION_ROOM] = {
        .floorHeights = { (MAP_OBJECT_TILE_SIZE * 0), (MAP_OBJECT_TILE_SIZE * 15) },
        .startTileX = 7,
        .startTileZ = 8,
        .preventGoingDown = TRUE,
        .isIronIslandB2FLeftRoom = FALSE,
    }
};

void PlatformLift_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PlatformLiftPersistedData *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_PLATFORM_LIFT_ROOM);
    const PlatformLiftConfiguration *platformLiftConfiguration = &sPerMapPlatformLiftConfiguration[data->id];
    fx32 currentHeight = platformLiftConfiguration->floorHeights[data->floorID];

    MapProp *platformLiftMapProp;

    if (platformLiftConfiguration->isIronIslandB2FLeftRoom) {
        VecFx32 platformLiftInitialPosition = {
            PLATFORM_LIFT_IRON_ISLAND_B2F_LEFT_ROOM_POS_X,
            0,
            PLATFORM_LIFT_IRON_ISLAND_B2F_LEFT_ROOM_POS_Z
        };

        platformLiftInitialPosition.y = currentHeight;
        MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, iron_island_platform_lift_nsbmd, &platformLiftInitialPosition, NULL, fieldSystem->mapPropAnimMan);
        platformLiftMapProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, iron_island_platform_lift_nsbmd);
    } else {
        const int platformLiftModels[2] = {
            iron_island_platform_lift_nsbmd,
            pokemon_league_platform_lift_nsbmd
        };

        BOOL platformLiftFound = FieldSystem_FindLoadedMapPropByModelIDs(fieldSystem, platformLiftModels, NELEMS(platformLiftModels), &platformLiftMapProp, NULL);
        GF_ASSERT(platformLiftFound);
    }

    VecFx32 platformLiftPosition;
    platformLiftPosition = MapProp_GetPosition(platformLiftMapProp);
    platformLiftPosition.y = currentHeight;

    MapProp_SetPosition(platformLiftMapProp, &platformLiftPosition);
    DynamicTerrainHeightManager_SetPlate(PLATFORM_LIFT_DYNAMIC_HEIGHT_PLATE_ID, platformLiftConfiguration->startTileX, platformLiftConfiguration->startTileZ, PLATFORM_LIFT_SIZE_X, PLATFORM_LIFT_SIZE_Y, currentHeight, fieldSystem->dynamicTerrainHeightMan);
}

void PersistedMapFeatures_InitForPlatformLift(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_PLATFORM_LIFT_ROOM);

    PlatformLiftPersistedData *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_PLATFORM_LIFT_ROOM);
    data->notUsedWhenEnteredMap = TRUE;
    data->kind = PLATFORM_LIFT_KIND_IRON_ISLAND;

    switch (fieldSystem->location->mapId) {
    case MAP_HEADER_IRON_ISLAND_B1F_RIGHT_ROOM:
        if (fieldSystem->location->z == IRON_ISLAND_B1F_RIGHT_ROOM_BOTTOM_FLOOR_WARP_Z) {
            data->floorID = PLATFORM_LIFT_BOTTOM_FLOOR;
        } else {
            data->floorID = PLATFORM_LIFT_TOP_FLOOR;
        }

        data->id = PLATFORM_LIFT_IRON_ISLAND_B1F_RIGHT_ROOM;
        break;

    case MAP_HEADER_IRON_ISLAND_B2F_LEFT_ROOM:
        if (fieldSystem->location->z == IRON_ISLAND_B2F_LEFT_ROOM_BOTTOM_FLOOR_WARP_Z) {
            data->floorID = PLATFORM_LIFT_BOTTOM_FLOOR;
        } else {
            data->floorID = PLATFORM_LIFT_TOP_FLOOR;
        }

        data->id = PLATFORM_LIFT_IRON_ISLAND_B2F_LEFT_ROOM;
        break;

    case MAP_HEADER_IRON_ISLAND_B3F:
        if (fieldSystem->location->z == IRON_ISLAND_B3F_BOTTOM_FLOOR_WARP_Z) {
            data->floorID = PLATFORM_LIFT_BOTTOM_FLOOR;
        } else {
            data->floorID = PLATFORM_LIFT_TOP_FLOOR;
        }

        data->id = PLATFORM_LIFT_IRON_ISLAND_B3F;
        break;

    case MAP_HEADER_POKEMON_LEAGUE_ELEVATOR_TO_AARON_ROOM:
        if (fieldSystem->location->z == POKEMON_LEAGUE_ELEVATOR_TO_ELITE_FOUR_ROOM_BOTTOM_FLOOR_WARP_Z) {
            data->floorID = PLATFORM_LIFT_BOTTOM_FLOOR;
        } else {
            data->floorID = PLATFORM_LIFT_TOP_FLOOR;
            data->notUsedWhenEnteredMap = FALSE;
        }

        data->id = PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_AARON_ROOM;
        data->kind = PLATFORM_LIFT_KIND_POKEMON_LEAGUE;
        break;

    case MAP_HEADER_POKEMON_LEAGUE_ELEVATOR_TO_BERTHA_ROOM:
        if (fieldSystem->location->z == POKEMON_LEAGUE_ELEVATOR_TO_ELITE_FOUR_ROOM_BOTTOM_FLOOR_WARP_Z) {
            data->floorID = PLATFORM_LIFT_BOTTOM_FLOOR;
        } else {
            data->floorID = PLATFORM_LIFT_TOP_FLOOR;
            data->notUsedWhenEnteredMap = FALSE;
        }

        data->id = PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_BERTHA_ROOM;
        data->kind = PLATFORM_LIFT_KIND_POKEMON_LEAGUE;
        break;

    case MAP_HEADER_POKEMON_LEAGUE_ELEVATOR_TO_FLINT_ROOM:
        if (fieldSystem->location->z == POKEMON_LEAGUE_ELEVATOR_TO_ELITE_FOUR_ROOM_BOTTOM_FLOOR_WARP_Z) {
            data->floorID = PLATFORM_LIFT_BOTTOM_FLOOR;
        } else {
            data->floorID = PLATFORM_LIFT_TOP_FLOOR;
            data->notUsedWhenEnteredMap = FALSE;
        }

        data->id = PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_FLINT_ROOM;
        data->kind = PLATFORM_LIFT_KIND_POKEMON_LEAGUE;
        break;

    case MAP_HEADER_POKEMON_LEAGUE_ELEVATOR_TO_LUCIAN_ROOM:
        if (fieldSystem->location->z == POKEMON_LEAGUE_ELEVATOR_TO_ELITE_FOUR_ROOM_BOTTOM_FLOOR_WARP_Z) {
            data->floorID = PLATFORM_LIFT_BOTTOM_FLOOR;
        } else {
            data->floorID = PLATFORM_LIFT_TOP_FLOOR;
            data->notUsedWhenEnteredMap = FALSE;
        }

        data->id = PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_LUCIAN_ROOM;
        data->kind = PLATFORM_LIFT_KIND_POKEMON_LEAGUE;
        break;

    case MAP_HEADER_POKEMON_LEAGUE_ELEVATOR_TO_CHAMPION_ROOM:
        if (fieldSystem->location->z == POKEMON_LEAGUE_ELEVATOR_TO_CHAMPION_ROOM_BOTTOM_FLOOR_WARP_Z) {
            data->floorID = PLATFORM_LIFT_BOTTOM_FLOOR;
        } else {
            data->floorID = PLATFORM_LIFT_TOP_FLOOR;
            data->notUsedWhenEnteredMap = FALSE;
        }

        data->id = PLATFORM_LIFT_POKEMON_LEAGUE_ELEVATOR_TO_CHAMPION_ROOM;
        data->kind = PLATFORM_LIFT_KIND_POKEMON_LEAGUE;
        break;

    case MAP_HEADER_POKEMON_LEAGUE_CHAMPION_ROOM:
        if (fieldSystem->location->z == POKEMON_LEAGUE_CHAMPION_ROOM_BOTTOM_FLOOR_WARP_Z) {
            data->floorID = PLATFORM_LIFT_BOTTOM_FLOOR;
        } else {
            data->floorID = PLATFORM_LIFT_TOP_FLOOR;
            data->notUsedWhenEnteredMap = FALSE;
        }

        data->id = PLATFORM_LIFT_POKEMON_LEAGUE_CHAMPION_ROOM;
        data->kind = PLATFORM_LIFT_KIND_POKEMON_LEAGUE;
        break;

    default:
        GF_ASSERT(FALSE);
    }
}

u8 PlatformLift_WasNotUsedWhenEnteredMap(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PlatformLiftPersistedData *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_PLATFORM_LIFT_ROOM);

    return data->notUsedWhenEnteredMap != FALSE;
}

void PlatformLift_Trigger(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PlatformLiftPersistedData *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_PLATFORM_LIFT_ROOM);

    if (sPerMapPlatformLiftConfiguration[data->id].preventGoingDown && data->floorID == PLATFORM_LIFT_TOP_FLOOR) {
        return;
    }

    PlatformLiftFieldTaskEnv *taskEnv = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(PlatformLiftFieldTaskEnv));
    taskEnv->state = PLATFORM_LIFT_STATE_START_MOVING;
    taskEnv->isIronIslandB2FLeftRoom = sPerMapPlatformLiftConfiguration[data->id].isIronIslandB2FLeftRoom;
    taskEnv->kind = data->kind;

    if (data->floorID == PLATFORM_LIFT_BOTTOM_FLOOR) {
        taskEnv->targetHeight = sPerMapPlatformLiftConfiguration[data->id].floorHeights[PLATFORM_LIFT_TOP_FLOOR];
        FieldTask_InitCall(fieldSystem->task, FieldTask_PlatformLiftGoUp, taskEnv);
        data->floorID = PLATFORM_LIFT_TOP_FLOOR;
    } else {
        taskEnv->targetHeight = sPerMapPlatformLiftConfiguration[data->id].floorHeights[PLATFORM_LIFT_BOTTOM_FLOOR];
        FieldTask_InitCall(fieldSystem->task, FieldTask_PlatformLiftGoDown, taskEnv);
        data->floorID = PLATFORM_LIFT_BOTTOM_FLOOR;
    }
}

static BOOL FieldTask_PlatformLiftGoUp(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    PlatformLiftFieldTaskEnv *taskEnv = FieldTask_GetEnv(taskMan);

    switch (taskEnv->state) {
    case PLATFORM_LIFT_STATE_START_MOVING:
        PlayerAvatar_SetHeightCalculationEnabled(fieldSystem->playerAvatar, FALSE);
        PlatformLift_PlaySoundEffect(taskEnv->kind);

        taskEnv->state++;
        break;

    case PLATFORM_LIFT_STATE_MOVE: {
        MapProp *platformLiftMapProp;

        if (taskEnv->isIronIslandB2FLeftRoom) {
            platformLiftMapProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, iron_island_platform_lift_nsbmd);
        } else {
            const int platformLiftModels[2] = {
                iron_island_platform_lift_nsbmd,
                pokemon_league_platform_lift_nsbmd
            };

            BOOL platformLiftFound = FieldSystem_FindLoadedMapPropByModelIDs(fieldSystem, platformLiftModels, NELEMS(platformLiftModels), &platformLiftMapProp, NULL);
            GF_ASSERT(platformLiftFound);
        }

        fx32 heightIncrement;
        VecFx32 platformLiftPosition;
        platformLiftPosition = MapProp_GetPosition(platformLiftMapProp);

        if (taskEnv->kind == PLATFORM_LIFT_KIND_IRON_ISLAND) {
            heightIncrement = FX32_ONE;
        } else {
            heightIncrement = FX32_ONE * 2;
        }

        platformLiftPosition.y += heightIncrement;

        if (platformLiftPosition.y >= taskEnv->targetHeight) {
            platformLiftPosition.y = taskEnv->targetHeight;
            PlatformLift_StopSoundEffect(taskEnv->kind);

            taskEnv->state++;
        }

        Player_SetYPos(fieldSystem->playerAvatar, platformLiftPosition.y);
        MapProp_SetPosition(platformLiftMapProp, &platformLiftPosition);

        break;
    }

    case PLATFORM_LIFT_STATE_FINISH_MOVING:
        DynamicTerrainHeightManager_SetHeight(PLATFORM_LIFT_DYNAMIC_HEIGHT_PLATE_ID, taskEnv->targetHeight, fieldSystem->dynamicTerrainHeightMan);
        PlayerAvatar_SetHeightCalculationEnabledAndUpdate(fieldSystem->playerAvatar, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);

        taskEnv->state++;
        break;

    case PLATFORM_LIFT_STATE_END:
        Heap_Free(taskEnv);
        return TRUE;
    }

    return FALSE;
}

static BOOL FieldTask_PlatformLiftGoDown(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    PlatformLiftFieldTaskEnv *taskEnv = FieldTask_GetEnv(taskMan);

    switch (taskEnv->state) {
    case PLATFORM_LIFT_STATE_START_MOVING:
        PlayerAvatar_SetHeightCalculationEnabled(fieldSystem->playerAvatar, FALSE);
        PlatformLift_PlaySoundEffect(taskEnv->kind);

        taskEnv->state++;
        break;

    case PLATFORM_LIFT_STATE_MOVE: {
        MapProp *platformLiftMapProp;

        if (taskEnv->isIronIslandB2FLeftRoom) {
            platformLiftMapProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, iron_island_platform_lift_nsbmd);
        } else {
            const int platformLiftModels[2] = {
                iron_island_platform_lift_nsbmd,
                pokemon_league_platform_lift_nsbmd
            };

            BOOL platformLiftFound = FieldSystem_FindLoadedMapPropByModelIDs(fieldSystem, platformLiftModels, NELEMS(platformLiftModels), &platformLiftMapProp, NULL);
            GF_ASSERT(platformLiftFound);
        }

        VecFx32 platformLiftPosition;

        platformLiftPosition = MapProp_GetPosition(platformLiftMapProp);
        platformLiftPosition.y -= FX32_ONE;

        if (platformLiftPosition.y <= taskEnv->targetHeight) {
            platformLiftPosition.y = taskEnv->targetHeight;
            PlatformLift_StopSoundEffect(taskEnv->kind);

            taskEnv->state++;
        }

        Player_SetYPos(fieldSystem->playerAvatar, platformLiftPosition.y);
        MapProp_SetPosition(platformLiftMapProp, &platformLiftPosition);

        break;
    }

    case PLATFORM_LIFT_STATE_FINISH_MOVING:
        DynamicTerrainHeightManager_SetHeight(PLATFORM_LIFT_DYNAMIC_HEIGHT_PLATE_ID, taskEnv->targetHeight, fieldSystem->dynamicTerrainHeightMan);
        PlayerAvatar_SetHeightCalculationEnabledAndUpdate(fieldSystem->playerAvatar, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);

        taskEnv->state++;
        break;

    case PLATFORM_LIFT_STATE_END:
        Heap_Free(taskEnv);
        return TRUE;
    }

    return FALSE;
}

static void PlatformLift_PlaySoundEffect(const int platformLiftKind)
{
    if (platformLiftKind == PLATFORM_LIFT_KIND_IRON_ISLAND) {
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
    } else {
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA4);
    }
}

static void PlatformLift_StopSoundEffect(const int platformLiftKind)
{
    if (platformLiftKind == PLATFORM_LIFT_KIND_IRON_ISLAND) {
        Sound_StopEffect(SEQ_SE_DP_ELEBETA, 0);
    } else {
        Sound_StopEffect(SEQ_SE_DP_ELEBETA4, 0);
    }
}
