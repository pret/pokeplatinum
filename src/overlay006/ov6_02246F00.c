#include "overlay006/ov6_02246F00.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_prop.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"

#include "field_task.h"
#include "heap.h"
#include "sound_playback.h"
#include "terrain_collision_manager.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov6_02246F00;

static BOOL ov6_02246F40(FieldTask *param0);

void ov6_02246F00(FieldSystem *fieldSystem, const u8 param1, const u8 param2)
{
    BOOL v0 = FieldSystem_FindLoadedMapPropByModelID(fieldSystem, MAP_PROP_MODEL_ELEVATOR_LIGHTS, NULL, NULL);

    if (v0) {
        UnkStruct_ov6_02246F00 *v1 = Heap_AllocAtEnd(HEAP_ID_FIELD, sizeof(UnkStruct_ov6_02246F00));

        v1->unk_00 = param2;
        v1->unk_01 = param1;
        v1->unk_02 = 0;

        FieldTask_InitCall(fieldSystem->task, ov6_02246F40, v1);
    } else {
        GF_ASSERT(FALSE);
    }
}

static BOOL ov6_02246F40(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov6_02246F00 *v1 = (UnkStruct_ov6_02246F00 *)FieldTask_GetEnv(param0);

    switch (v1->unk_02) {
    case 0: {
        NNSG3dResMdl *v2;
        NNSG3dResFileHeader **v3;
        MapProp *v4;
        NNSG3dRenderObj *v5;
        BOOL v6;

        v3 = AreaDataManager_GetMapPropModelFile(MAP_PROP_MODEL_ELEVATOR_LIGHTS, fieldSystem->areaDataManager);
        v2 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*v3), 0);

        v6 = FieldSystem_FindLoadedMapPropByModelID(fieldSystem, MAP_PROP_MODEL_ELEVATOR_LIGHTS, &v4, NULL);
        GF_ASSERT(v6);
        v5 = MapProp_GetRenderObj(v4);

        MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 0x1, MAP_PROP_MODEL_ELEVATOR_LIGHTS, v5, v2, AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager), 2, v1->unk_00, 0);
    }
        (v1->unk_02)++;
        break;
    case 1:
        GF_ASSERT((v1->unk_01 == 0) || (v1->unk_01 == 1));

        MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, 0x1, v1->unk_01);

        if (v1->unk_01 == 0) {
            Sound_PlayEffect(SEQ_SE_DP_ELEBETA2);
        } else {
            Sound_PlayEffect(SEQ_SE_DP_ELEBETA2);
        }

        (v1->unk_02)++;
        break;
    case 2:
        if (MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, 0x1)) {
            if (v1->unk_01 == 0) {
                Sound_StopEffect(1554, 0);
            } else {
                Sound_StopEffect(1554, 0);
            }

            Sound_PlayEffect(SEQ_SE_DP_PINPON);
            MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 0x1);
            (v1->unk_02)++;
        }
        break;
    case 3:
        if (!Sound_IsEffectPlaying(1521)) {
            (v1->unk_02)++;
        }
        break;
    case 4:
        Heap_Free(v1);
        return 1;
    }

    return 0;
}
