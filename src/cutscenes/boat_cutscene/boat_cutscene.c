#include "cutscenes/boat_cutscene.h"

#include <nitro.h>
#include <string.h>

#include "constants/map_object.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"

#include "camera.h"
#include "field_map_change.h"
#include "field_task.h"
#include "field_transition.h"
#include "heap.h"
#include "player_avatar.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "terrain_collision_manager.h"
#include "unk_0203D1B8.h"
#include "unk_020553DC.h"

#include "res/field/props/models/prop_models.naix"

#define BOAT_CUTSCENE_STATE_START_WITHOUT_BRIDGE 0
#define BOAT_CUTSCENE_STATE_START_WITH_BRIDGE    1
#define BOAT_CUTSCENE_STATE_FADE_OUT_START       2
#define BOAT_CUTSCENE_STATE_FADE_OUT_END         3
#define BOAT_CUTSCENE_STATE_PLAY_TRAVEL_CUTSCENE 4
#define BOAT_CUTSCENE_STATE_MAP_TRANSITION       5
#define BOAT_CUTSCENE_STATE_FADE_IN              6
#define BOAT_CUTSCENE_STATE_CLEAN_UP             7

#define BOAT_TRAVEL_CUTSCENE_TASK_STATE_START    0
#define BOAT_TRAVEL_CUTSCENE_TASK_STATE_WAIT     1
#define BOAT_TRAVEL_CUTSCENE_TASK_STATE_CLEAN_UP 2

#define BOAT_CUTSCENE_BRIDGE_ANIMATION_TAG_LEFT  1
#define BOAT_CUTSCENE_BRIDGE_ANIMATION_TAG_RIGHT 2

typedef struct BoatCutscene {
    u8 state;
    u8 travelDir;
    u8 bridgeReached;
    u8 speedTick;
    u8 exitDir;
    u8 dummy;
    u8 unused[2];
    fx32 cameraAdjustment;
    int goalDistance;
    fx32 bridgeDistance;
    fx32 distanceTraveled;
    int mapID;
    int x;
    int z;
    VecFx32 cameraPos;
    MapProp *boat;
    ModelAttributes areaModelAttrs;
    fx32 speed;
} BoatCutscene;

static void FieldSystem_PlayBoatTravelCutscene(FieldSystem *fieldSystem, const u8 travelDir, ModelAttributes *areaModelAttrs);
static BOOL FieldTask_PlayBoatTravelCutscene(FieldTask *taskMan);
static BOOL FieldSystem_PlayBoatCutsceneStep(FieldTask *taskMan);
static BOOL BoatCutscene_MoveBoatToGoal(BoatCutscene *boatCutscene);
static BOOL BoatCutscene_CheckBridgeReached(const fx32 *distanceTraveled, const fx32 *bridgeDistance, u8 *bridgeReached);
static void FieldSystem_LoadCanalaveBridgeAnimation(FieldSystem *fieldSystem);
static void BoatCutscene_PanStartingCamera(BoatCutscene *boatCutscene);

void FieldSystem_PlayBoatCutscene(FieldSystem *fieldSystem, const u8 travelDir, const u8 exitDir, const int mapID, const int x, const int z)
{
    BoatCutscene *boatCutscene;
    BOOL moveBeforeFadeOut;
    BOOL boatFound;
    TerrainCollisionHitbox hitbox;
    int targetMapPropModelID;
    int goalDistance;

    boatCutscene = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(BoatCutscene));

    boatCutscene->travelDir = travelDir;
    boatCutscene->exitDir = exitDir;
    boatCutscene->mapID = mapID;
    boatCutscene->x = x;
    boatCutscene->z = z;
    boatCutscene->areaModelAttrs = *(fieldSystem->areaModelAttrs);

    moveBeforeFadeOut = FALSE;

    boatCutscene->bridgeDistance = 0xffffffff;
    boatCutscene->dummy = 0;
    boatCutscene->cameraAdjustment = 0;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_64, SEQ_NONE, 0);

    if (travelDir == BOAT_TRAVEL_DIR_NORTH_TO_SOUTH) {
        targetMapPropModelID = regular_ship_nsbmd;
        TerrainCollisionHitbox_Init(Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), 1, -3, 3, 6, &hitbox);
        moveBeforeFadeOut = TRUE;
        goalDistance = (25 * MAP_OBJECT_TILE_SIZE);
        boatCutscene->bridgeDistance = (14 * MAP_OBJECT_TILE_SIZE);
    } else if (travelDir == BOAT_TRAVEL_DIR_WEST_TO_EAST) {
        targetMapPropModelID = screw_steamship_spiral_nsbmd;
        TerrainCollisionHitbox_Init(Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), -2, 2, 6, 3, &hitbox);
        moveBeforeFadeOut = TRUE;
        goalDistance = (12 * MAP_OBJECT_TILE_SIZE);
    }

    if (moveBeforeFadeOut) {
        boatFound = FieldSystem_FindCollidingLoadedMapPropByModelID(fieldSystem, targetMapPropModelID, &hitbox, &boatCutscene->boat);

        if (boatFound) {
            boatCutscene->goalDistance = goalDistance;
            boatCutscene->distanceTraveled = 0;
            boatCutscene->speedTick = 0;
            boatCutscene->speed = FX32_ONE / 4;

            PlayerAvatar_PosVectorOut(fieldSystem->playerAvatar, &boatCutscene->cameraPos);
            Camera_ReleaseTarget(fieldSystem->camera);
            Camera_TrackTarget(&boatCutscene->cameraPos, fieldSystem->camera);

            if (boatCutscene->bridgeDistance != 0xffffffff) {
                boatCutscene->bridgeReached = FALSE;
                boatCutscene->state = BOAT_CUTSCENE_STATE_START_WITH_BRIDGE;

                FieldSystem_LoadCanalaveBridgeAnimation(fieldSystem);
                Sound_PlayEffect(SEQ_SE_DP_SHIP02);
            } else {
                boatCutscene->state = BOAT_CUTSCENE_STATE_START_WITHOUT_BRIDGE;
            }
        } else {
            GF_ASSERT(FALSE);
            Heap_Free(boatCutscene);
            return;
        }
    } else {
        boatCutscene->state = BOAT_CUTSCENE_STATE_FADE_OUT_START;
    }

    FieldTask_InitCall(fieldSystem->task, FieldSystem_PlayBoatCutsceneStep, boatCutscene);
}

static void FieldSystem_PlayBoatTravelCutscene(FieldSystem *fieldSystem, const u8 travelDir, ModelAttributes *areaModelAttrs)
{
    BoatTravelCutscene *taskEnv = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(BoatTravelCutscene));

    taskEnv->areaModelAttrs = areaModelAttrs;
    taskEnv->travelDir = travelDir;

    FieldTask_InitCall(fieldSystem->task, FieldTask_PlayBoatTravelCutscene, taskEnv);
}

static BOOL FieldTask_PlayBoatTravelCutscene(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    BoatTravelCutscene *taskEnv = FieldTask_GetEnv(taskMan);
    int *state = FieldTask_GetState(taskMan);

    switch (*state) {
    case BOAT_TRAVEL_CUTSCENE_TASK_STATE_START:
        if ((taskEnv->travelDir == BOAT_TRAVEL_DIR_EAST_TO_WEST) || (taskEnv->travelDir == BOAT_TRAVEL_DIR_WEST_TO_EAST)) {
            FieldTask_PlayBoatCutscene_SnowpointShip(fieldSystem, taskEnv);
        } else {
            FieldTask_PlayBoatCutscene_CanalaveShip(fieldSystem, taskEnv);
        }
        break;
    case BOAT_TRAVEL_CUTSCENE_TASK_STATE_WAIT:
        if (FieldSystem_IsRunningApplication(fieldSystem)) {
            return FALSE;
        }
        break;
    case BOAT_TRAVEL_CUTSCENE_TASK_STATE_CLEAN_UP:
        Heap_Free(taskEnv);
        return TRUE;
    }

    (*state)++;
    return FALSE;
}

static BOOL FieldSystem_PlayBoatCutsceneStep(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    BoatCutscene *boatCutscene = FieldTask_GetEnv(taskMan);

    switch (boatCutscene->state) {
    case BOAT_CUTSCENE_STATE_START_WITHOUT_BRIDGE:
        BoatCutscene_PanStartingCamera(boatCutscene);

        if (BoatCutscene_MoveBoatToGoal(boatCutscene)) {
            boatCutscene->state = BOAT_CUTSCENE_STATE_FADE_OUT_START;
        }
        break;
    case BOAT_CUTSCENE_STATE_START_WITH_BRIDGE: {
        BOOL goalReached;

        BoatCutscene_PanStartingCamera(boatCutscene);
        goalReached = BoatCutscene_MoveBoatToGoal(boatCutscene);

        if (!boatCutscene->bridgeReached) {
            if (BoatCutscene_CheckBridgeReached(&boatCutscene->bridgeDistance, &boatCutscene->distanceTraveled, &boatCutscene->bridgeReached)) {
                MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, BOAT_CUTSCENE_BRIDGE_ANIMATION_TAG_LEFT, 0);
                MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, BOAT_CUTSCENE_BRIDGE_ANIMATION_TAG_RIGHT, 0);
                Sound_PlayEffect(SEQ_SE_DP_SHIP03);
            }
        } else {
            if ((MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, BOAT_CUTSCENE_BRIDGE_ANIMATION_TAG_LEFT)) && (MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, BOAT_CUTSCENE_BRIDGE_ANIMATION_TAG_RIGHT)) && goalReached) {
                boatCutscene->state = BOAT_CUTSCENE_STATE_FADE_OUT_START;
            }
        }
    } break;
    case BOAT_CUTSCENE_STATE_FADE_OUT_START:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FIELD2);
        Sound_FadeOutBGM(0, 6);
        boatCutscene->state = BOAT_CUTSCENE_STATE_FADE_OUT_END;
        break;
    case BOAT_CUTSCENE_STATE_FADE_OUT_END:
        if (!IsScreenFadeDone() || (Sound_IsFadeActive())) {
            return FALSE;
        }

        if (boatCutscene->bridgeDistance != 0xffffffff) {
            MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, BOAT_CUTSCENE_BRIDGE_ANIMATION_TAG_LEFT);
            MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, BOAT_CUTSCENE_BRIDGE_ANIMATION_TAG_RIGHT);
        }

        FieldTransition_FinishMap(taskMan);
        boatCutscene->state = BOAT_CUTSCENE_STATE_PLAY_TRAVEL_CUTSCENE;
        break;
    case BOAT_CUTSCENE_STATE_PLAY_TRAVEL_CUTSCENE:
        FieldSystem_PlayBoatTravelCutscene(fieldSystem, boatCutscene->travelDir, &boatCutscene->areaModelAttrs);
        boatCutscene->state = BOAT_CUTSCENE_STATE_MAP_TRANSITION;
        break;
    case BOAT_CUTSCENE_STATE_MAP_TRANSITION:
        FieldTask_ChangeMapToLocation(taskMan, boatCutscene->mapID, -1, boatCutscene->x, boatCutscene->z, boatCutscene->exitDir);
        boatCutscene->state = BOAT_CUTSCENE_STATE_FADE_IN;
        break;
    case BOAT_CUTSCENE_STATE_FADE_IN:
        Sound_PlayMapBGM(fieldSystem, boatCutscene->mapID);
        FieldTransition_StartMapAndFadeIn(taskMan);
        boatCutscene->state = BOAT_CUTSCENE_STATE_CLEAN_UP;
        break;
    case BOAT_CUTSCENE_STATE_CLEAN_UP:
        Heap_Free(boatCutscene);
        return TRUE;
    }

    return FALSE;
}

static BOOL BoatCutscene_MoveBoatToGoal(BoatCutscene *boatCutscene)
{
    VecFx32 position;

    position = MapProp_GetPosition(boatCutscene->boat);

    switch (boatCutscene->travelDir) {
    case BOAT_TRAVEL_DIR_SOUTH_TO_NORTH:
        position.z += boatCutscene->speed;
        boatCutscene->cameraPos.z += boatCutscene->speed;
        break;
    case BOAT_TRAVEL_DIR_NORTH_TO_SOUTH:
        position.z -= boatCutscene->speed;
        boatCutscene->cameraPos.z -= boatCutscene->speed;
        break;
    case BOAT_TRAVEL_DIR_WEST_TO_EAST:
        position.x += boatCutscene->speed;
        boatCutscene->cameraPos.x += boatCutscene->speed;
        break;
    case BOAT_TRAVEL_DIR_EAST_TO_WEST:
        position.x -= boatCutscene->speed;
        boatCutscene->cameraPos.x -= boatCutscene->speed;
        break;
    default:
        GF_ASSERT(FALSE);
        return TRUE;
    }

    if (boatCutscene->speed < (FX32_ONE)) {
        boatCutscene->speedTick++;

        if (boatCutscene->speedTick >= 24) {
            boatCutscene->speed += FX32_ONE;
            boatCutscene->speedTick = 0;
        }
    }

    MapProp_SetPosition(boatCutscene->boat, &position);
    boatCutscene->distanceTraveled += boatCutscene->speed;

    if (boatCutscene->goalDistance <= boatCutscene->distanceTraveled) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static BOOL BoatCutscene_CheckBridgeReached(const fx32 *distanceTraveled, const fx32 *bridgeDistance, u8 *bridgeReached)
{
    if ((*distanceTraveled) <= (*bridgeDistance)) {
        (*bridgeReached) = TRUE;
        return TRUE;
    } else {
        return FALSE;
    }
}

static void FieldSystem_LoadCanalaveBridgeAnimation(FieldSystem *fieldSystem)
{
    u8 bridgeIndex;
    BOOL mapPropLoaded;
    int bridgeIDs[2] = {
        canalave_bridge_left_nsbmd,
        canalave_bridge_right_nsbmd
    };
    int tags[2] = {
        BOAT_CUTSCENE_BRIDGE_ANIMATION_TAG_LEFT,
        BOAT_CUTSCENE_BRIDGE_ANIMATION_TAG_RIGHT
    };

    for (bridgeIndex = 0; bridgeIndex < 2; bridgeIndex++) {
        mapPropLoaded = FieldSystem_FindLoadedMapPropByModelID(fieldSystem, bridgeIDs[bridgeIndex], NULL, NULL);

        if (mapPropLoaded) {
            NNSG3dResMdl *bridgeModel;
            NNSG3dResFileHeader **bridgeModelFile;
            MapProp *bridgeMapProp;
            NNSG3dRenderObj *bridgeRenderObj;

            bridgeModelFile = AreaDataManager_GetMapPropModelFile(bridgeIDs[bridgeIndex], fieldSystem->areaDataManager);
            bridgeModel = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*bridgeModelFile), 0);
            mapPropLoaded = FieldSystem_FindLoadedMapPropByModelID(fieldSystem, bridgeIDs[bridgeIndex], &bridgeMapProp, NULL);

            GF_ASSERT(mapPropLoaded);
            bridgeRenderObj = MapProp_GetRenderObj(bridgeMapProp);

            MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, tags[bridgeIndex], bridgeIDs[bridgeIndex], bridgeRenderObj, bridgeModel, AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager), 1, 1, FALSE);
        } else {
            GF_ASSERT(FALSE);
        }
    }
}

static void BoatCutscene_PanStartingCamera(BoatCutscene *boatCutscene)
{
    switch (boatCutscene->travelDir) {
    case BOAT_TRAVEL_DIR_NORTH_TO_SOUTH:
        if (boatCutscene->cameraAdjustment < MAP_OBJECT_TILE_SIZE * 2) {
            boatCutscene->cameraPos.x += FX32_ONE;
            boatCutscene->cameraAdjustment += FX32_ONE;
        }
        break;
    case BOAT_TRAVEL_DIR_WEST_TO_EAST:
        if (boatCutscene->cameraAdjustment < MAP_OBJECT_TILE_SIZE * 3) {
            boatCutscene->cameraPos.z += FX32_ONE / 2;
            boatCutscene->cameraAdjustment += FX32_ONE / 2;
        }
        break;
    default:
        GF_ASSERT(FALSE);
        return;
    }
}
