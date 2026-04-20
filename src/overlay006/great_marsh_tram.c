#include "overlay006/great_marsh_tram.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/great_marsh_tram.h"

#include "struct_decls/map_object.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"

#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "persisted_map_features.h"
#include "player_avatar.h"
#include "savedata_misc.h"
#include "sound_playback.h"
#include "unk_020655F4.h"

#include "res/field/props/models/prop_models.naix"

#define GREAT_MARSH_TRAM_ANIMATION_TAG 16

#define TRAM_POSITION_AREA_1_2 (FX32_CONST(16) * (32 * 1 + 8))
#define TRAM_POSITION_AREA_3_4 (FX32_CONST(16) * (32 * 2 + 18))
#define TRAM_POSITION_AREA_5_6 (FX32_CONST(16) * (32 * 3 + 12))

#define TRAM_AREA_1_2_SLOW_DOWN_POINT       (32 * 1 + 14)
#define TRAM_AREA_3_4_SLOW_DOWN_POINT_NORTH (32 * 2 + 10)
#define TRAM_AREA_3_4_SLOW_DOWN_POINT_SOUTH (32 * 2 + 24)
#define TRAM_AREA_5_6_SLOW_DOWN_POINT       (32 * 3 + 4)

typedef struct GreatMarshTramMovementTask GreatMarshTramMovementTask;

typedef BOOL (*GreatMarshTramMovementFunc)(FieldSystem *, GreatMarshTramMovementTask *, const fx32 *, VecFx32 *);

struct GreatMarshTramMovementTask {
    GreatMarshTramMovementFunc movementFunc;
    u8 isMovingSouth;
    u8 state;
    u8 speedLevel;
    u8 calledTramElapsedFrames;
    int movementType;
    fx32 destPos;
    int slowDownZ;
};

static BOOL MoveTram(FieldTask *taskMan);
static BOOL CallTramToPlayer(FieldSystem *fieldSystem, GreatMarshTramMovementTask *task, const fx32 *destZ, VecFx32 *tramPosition);
static BOOL RideTramToArea(FieldSystem *fieldSystem, GreatMarshTramMovementTask *task, const fx32 *destZ, VecFx32 *tramPosition);

static const int sRidingTramNorthMovements[] = {
    MOVEMENT_ACTION_WALK_SLOWER_NORTH,
    MOVEMENT_ACTION_WALK_SLOW_NORTH,
    MOVEMENT_ACTION_WALK_NORMAL_NORTH,
    MOVEMENT_ACTION_WALK_NORMAL_NORTH,
    MOVEMENT_ACTION_WALK_FAST_NORTH,
    MOVEMENT_ACTION_WALK_FAST_NORTH,
    MOVEMENT_ACTION_WALK_FASTER_NORTH
};

static const int sRidingTramSouthMovements[] = {
    MOVEMENT_ACTION_WALK_SLOWER_SOUTH,
    MOVEMENT_ACTION_WALK_SLOW_SOUTH,
    MOVEMENT_ACTION_WALK_NORMAL_SOUTH,
    MOVEMENT_ACTION_WALK_NORMAL_SOUTH,
    MOVEMENT_ACTION_WALK_FAST_SOUTH,
    MOVEMENT_ACTION_WALK_FAST_SOUTH,
    MOVEMENT_ACTION_WALK_FASTER_SOUTH
};

static const u8 sCalledTramFramesPerSpeedLevel[] = {
    2, 4, 4, 8, 8, 16, 32
};

static const fx32 sCalledTramSpeeds[] = {
    FX32_CONST(8),
    FX32_CONST(4),
    FX32_CONST(4),
    FX32_CONST(2),
    FX32_CONST(2),
    FX32_CONST(1),
    FX32_CONST(0.5),
};

void GreatMarshTram_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    GreatMarshTramState *tramState = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_GREAT_MARSH);

    VecFx32 position;
    position.x = FX32_CONST(1056);
    position.y = FX32_CONST(16);

    switch (tramState->location) {
    case GREAT_MARSH_TRAM_LOCATION_AREA_1_2:
        position.z = TRAM_POSITION_AREA_1_2;
        break;
    case GREAT_MARSH_TRAM_LOCATION_AREA_3_4:
        position.z = TRAM_POSITION_AREA_3_4;
        break;
    case GREAT_MARSH_TRAM_LOCATION_AREA_5_6:
        position.z = TRAM_POSITION_AREA_5_6;
        break;
    }

    MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, great_marsh_train_nsbmd, &position, NULL, fieldSystem->mapPropAnimMan);
}

void GreatMarshTram_MoveToLocation(FieldSystem *fieldSystem, u16 destination, u16 movementType)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    GreatMarshTramState *tramState = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_GREAT_MARSH);
    GreatMarshTramMovementTask *task = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(GreatMarshTramMovementTask));

    memset(task, 0, sizeof(GreatMarshTramMovementTask));

    task->state = 0;

    switch (tramState->location) {
    case GREAT_MARSH_TRAM_LOCATION_AREA_1_2:
        task->isMovingSouth = TRUE;

        if (destination == GREAT_MARSH_TRAM_LOCATION_AREA_3_4) {
            task->destPos = TRAM_POSITION_AREA_3_4;
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_3_4;
            task->slowDownZ = TRAM_AREA_3_4_SLOW_DOWN_POINT_NORTH;
        } else {
            task->destPos = TRAM_POSITION_AREA_5_6;
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_5_6;
            task->slowDownZ = TRAM_AREA_5_6_SLOW_DOWN_POINT;
        }
        break;
    case GREAT_MARSH_TRAM_LOCATION_AREA_3_4:
        if (destination == GREAT_MARSH_TRAM_LOCATION_AREA_1_2) {
            task->isMovingSouth = FALSE;
            task->destPos = TRAM_POSITION_AREA_1_2;
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_1_2;
            task->slowDownZ = TRAM_AREA_1_2_SLOW_DOWN_POINT;
        } else {
            task->isMovingSouth = TRUE;
            task->destPos = TRAM_POSITION_AREA_5_6;
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_5_6;
            task->slowDownZ = TRAM_AREA_5_6_SLOW_DOWN_POINT;
        }
        break;
    case GREAT_MARSH_TRAM_LOCATION_AREA_5_6:
        task->isMovingSouth = FALSE;

        if (destination == GREAT_MARSH_TRAM_LOCATION_AREA_1_2) {
            task->destPos = TRAM_POSITION_AREA_1_2;
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_1_2;
            task->slowDownZ = TRAM_AREA_1_2_SLOW_DOWN_POINT;
        } else {
            task->destPos = TRAM_POSITION_AREA_3_4;
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_3_4;
            task->slowDownZ = TRAM_AREA_3_4_SLOW_DOWN_POINT_SOUTH;
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    task->movementType = movementType;

    if (movementType == GREAT_MARSH_TRAM_MOVEMENT_CALL) {
        task->movementFunc = CallTramToPlayer;
    } else {
        task->movementFunc = RideTramToArea;
    }

    FieldTask_InitCall(fieldSystem->task, MoveTram, task);
}

u32 GreatMarshTram_CheckLocation(FieldSystem *fieldSystem, u16 location)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    GreatMarshTramState *tramState = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_GREAT_MARSH);

    if (tramState->location == location) {
        return GREAT_MARSH_TRAM_AT_LOCATION;
    } else {
        return GREAT_MARSH_TRAM_NOT_AT_LOCATION;
    }
}

static BOOL MoveTram(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    GreatMarshTramMovementTask *task = FieldTask_GetEnv(taskMan);

    switch (task->state) {
    case 0: {
        MapProp *mapProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, great_marsh_train_nsbmd);
        NNSG3dRenderObj *renderObj = MapProp_GetRenderObj(mapProp);
        NNSG3dResFileHeader **modelFile = AreaDataManager_GetMapPropModelFile(great_marsh_train_nsbmd, fieldSystem->areaDataManager);
        NNSG3dResMdl *model = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*modelFile), 0);

        MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, GREAT_MARSH_TRAM_ANIMATION_TAG, great_marsh_train_nsbmd, renderObj, model, AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager), 1, -1, FALSE);
        MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, GREAT_MARSH_TRAM_ANIMATION_TAG, 0);
        task->state++;
        break;
    }
    case 1:
        if (task->movementType == GREAT_MARSH_TRAM_MOVEMENT_RIDE) {
            Sound_PlayEffect(SEQ_SE_DP_TRAIN04);
        }

        task->state++;
    case 2:
        if (!Sound_IsEffectPlaying(SEQ_SE_DP_TRAIN04)) {
            task->state++;
        }
        break;
    case 3: {
        MapProp *tram = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, great_marsh_train_nsbmd);
        VecFx32 tramPosition;
        tramPosition = MapProp_GetPosition(tram);

        if (task->movementFunc(fieldSystem, task, &task->destPos, &tramPosition)) {
            task->state++;
        }

        MapProp_SetPosition(tram, &tramPosition);
        break;
    }
    case 4:
        MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, GREAT_MARSH_TRAM_ANIMATION_TAG);
        task->state++;
        break;
    case 5:
        Heap_Free(task);
        return TRUE;
    }

    return FALSE;
}

static BOOL CallTramToPlayer(FieldSystem *fieldSystem, GreatMarshTramMovementTask *task, const fx32 *destZ, VecFx32 *tramPosition)
{
    if (!task->isMovingSouth) {
        tramPosition->z -= sCalledTramSpeeds[task->speedLevel];

        if (task->speedLevel < NELEMS(sCalledTramFramesPerSpeedLevel) - 1 && (tramPosition->z - FX32_CONST(8)) / FX32_CONST(16) <= task->slowDownZ) {
            if (++task->calledTramElapsedFrames >= sCalledTramFramesPerSpeedLevel[task->speedLevel]) {
                if (task->speedLevel == 0) {
                    Sound_PlayEffect(SEQ_SE_DP_TRAIN03);
                }

                task->speedLevel++;
                task->calledTramElapsedFrames = 0;
            }
        }
    } else {
        tramPosition->z += sCalledTramSpeeds[task->speedLevel];

        if (task->speedLevel < NELEMS(sCalledTramFramesPerSpeedLevel) - 1 && (tramPosition->z - FX32_CONST(8)) / FX32_CONST(16) >= task->slowDownZ) {
            if (++task->calledTramElapsedFrames >= sCalledTramFramesPerSpeedLevel[task->speedLevel]) {
                if (task->speedLevel == 0) {
                    Sound_PlayEffect(SEQ_SE_DP_TRAIN03);
                }

                task->speedLevel++;
                task->calledTramElapsedFrames = 0;
            }
        }
    }

    return tramPosition->z == *destZ;
}

static BOOL RideTramToArea(FieldSystem *fieldSystem, GreatMarshTramMovementTask *task, const fx32 *destZ, VecFx32 *tramPosition)
{
    VecFx32 playerPos;
    MapObject *playerObj = Player_MapObject(fieldSystem->playerAvatar);
    PlayerAvatar_PosVectorOut(fieldSystem->playerAvatar, &playerPos);

    tramPosition->z = playerPos.z + FX32_CONST(8);

    if (tramPosition->z == *destZ) {
        return TRUE;
    } else if (!task->isMovingSouth) {
        if (LocalMapObj_IsAnimationSet(playerObj) == TRUE) {
            LocalMapObj_SetAnimationCode(playerObj, sRidingTramNorthMovements[task->speedLevel]);

            if (task->speedLevel < NELEMS(sRidingTramNorthMovements) - 1 && Player_GetZPos(fieldSystem->playerAvatar) > task->slowDownZ) {
                if (task->speedLevel == 0) {
                    Sound_PlayEffect(SEQ_SE_DP_TRAIN02);
                }

                task->speedLevel++;
            } else if (Player_GetZPos(fieldSystem->playerAvatar) <= task->slowDownZ) {
                if (task->speedLevel != 0) {
                    if (task->speedLevel == NELEMS(sRidingTramNorthMovements) - 1) {
                        Sound_PlayEffect(SEQ_SE_DP_TRAIN03);
                    }

                    task->speedLevel--;
                }
            }
        }
    } else if (LocalMapObj_IsAnimationSet(playerObj) == TRUE) {
        LocalMapObj_SetAnimationCode(playerObj, sRidingTramSouthMovements[task->speedLevel]);

        if (task->speedLevel < NELEMS(sRidingTramSouthMovements) - 1 && Player_GetZPos(fieldSystem->playerAvatar) < task->slowDownZ) {
            if (task->speedLevel == 0) {
                Sound_PlayEffect(SEQ_SE_DP_TRAIN02);
            }

            task->speedLevel++;
        } else if (Player_GetZPos(fieldSystem->playerAvatar) >= task->slowDownZ) {
            if (task->speedLevel != 0) {
                if (task->speedLevel == NELEMS(sRidingTramSouthMovements) - 1) {
                    Sound_PlayEffect(SEQ_SE_DP_TRAIN03);
                }

                task->speedLevel--;
            }
        }
    }

    return FALSE;
}
