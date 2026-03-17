#include "overlay006/elevator_animation.h"

#include <nitro.h>
#include <string.h>

#include "constants/elevator_dirs.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"

#include "field_task.h"
#include "heap.h"
#include "sound_playback.h"
#include "terrain_collision_manager.h"

#include "res/field/props/models/prop_models.naix"

#define ELEVATOR_ANIMATION_TAG 0x1

#define ELEVATOR_ANIMATION_STATE_LOAD               0
#define ELEVATOR_ANIMATION_STATE_PLAY_WITH_SOUND    1
#define ELEVATOR_ANIMATION_STATE_WAIT_FOR_ANIMATION 2
#define ELEVATOR_ANIMATION_STATE_WAIT_FOR_END_SOUND 3
#define ELEVATOR_ANIMATION_STATE_CLEAN_UP           4

typedef struct ElevatorAnimation {
    u8 loopCount;
    u8 direction;
    u8 state;
    u8 unused;
} ElevatorAnimation;

static BOOL FieldTask_PlayElevatorAnimation(FieldTask *fieldSystem);

void FieldSystem_PlayElevatorAnimation(FieldSystem *fieldSystem, const u8 elevatorDir, const u8 animationLoopCount)
{
    BOOL mapPropLoaded = FieldSystem_FindLoadedMapPropByModelID(fieldSystem, elevator_lights_nsbmd, NULL, NULL);

    if (mapPropLoaded) {
        ElevatorAnimation *animation = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(ElevatorAnimation));

        animation->loopCount = animationLoopCount;
        animation->direction = elevatorDir;
        animation->state = 0;

        FieldTask_InitCall(fieldSystem->task, FieldTask_PlayElevatorAnimation, animation);
    } else {
        GF_ASSERT(FALSE);
    }
}

static BOOL FieldTask_PlayElevatorAnimation(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    ElevatorAnimation *animation = (ElevatorAnimation *)FieldTask_GetEnv(fieldTask);

    switch (animation->state) {
    case ELEVATOR_ANIMATION_STATE_LOAD: {
        NNSG3dResMdl *model;
        NNSG3dResFileHeader **modelFile;
        MapProp *mapProp;
        NNSG3dRenderObj *renderObj;
        BOOL mapPropLoaded;

        modelFile = AreaDataManager_GetMapPropModelFile(elevator_lights_nsbmd, fieldSystem->areaDataManager);
        model = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*modelFile), 0);

        mapPropLoaded = FieldSystem_FindLoadedMapPropByModelID(fieldSystem, elevator_lights_nsbmd, &mapProp, NULL);
        GF_ASSERT(mapPropLoaded);
        renderObj = MapProp_GetRenderObj(mapProp);

        MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, ELEVATOR_ANIMATION_TAG, elevator_lights_nsbmd, renderObj, model, AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager), 2, animation->loopCount, 0);
    }
        (animation->state)++;
        break;
    case ELEVATOR_ANIMATION_STATE_PLAY_WITH_SOUND:
        GF_ASSERT((animation->direction == ELEVATOR_DIR_UP) || (animation->direction == ELEVATOR_DIR_DOWN));

        MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, ELEVATOR_ANIMATION_TAG, animation->direction);

        if (animation->direction == ELEVATOR_DIR_UP) {
            Sound_PlayEffect(SEQ_SE_DP_ELEBETA2);
        } else {
            Sound_PlayEffect(SEQ_SE_DP_ELEBETA2);
        }

        (animation->state)++;
        break;
    case ELEVATOR_ANIMATION_STATE_WAIT_FOR_ANIMATION:
        if (MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, ELEVATOR_ANIMATION_TAG)) {
            if (animation->direction == ELEVATOR_DIR_UP) {
                Sound_StopEffect(SEQ_SE_DP_ELEBETA2, 0);
            } else {
                Sound_StopEffect(SEQ_SE_DP_ELEBETA2, 0);
            }

            Sound_PlayEffect(SEQ_SE_DP_PINPON);
            MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, ELEVATOR_ANIMATION_TAG);
            (animation->state)++;
        }
        break;
    case ELEVATOR_ANIMATION_STATE_WAIT_FOR_END_SOUND:
        if (!Sound_IsEffectPlaying(SEQ_SE_DP_PINPON)) {
            (animation->state)++;
        }
        break;
    case ELEVATOR_ANIMATION_STATE_CLEAN_UP:
        Heap_Free(animation);
        return TRUE;
    }

    return FALSE;
}
