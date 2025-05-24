#include "overlay006/ov6_02247D30.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_prop.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"

#include "field_task.h"
#include "heap.h"
#include "map_matrix.h"
#include "terrain_collision_manager.h"

typedef struct {
    VecFx32 unk_00;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10[6];
} UnkStruct_ov6_02247D30;

static BOOL ov6_02247DAC(FieldTask *param0);

static VecFx32 Unk_ov6_022498E4[6] = {
    { -((FX32_ONE * 4) + (FX32_ONE / 2)), FX32_ONE * 12, -((FX32_ONE * 4) + (FX32_ONE / 2)) },
    { ((FX32_ONE * 4) + (FX32_ONE / 2)), FX32_ONE * 12, -((FX32_ONE * 4) + (FX32_ONE / 2)) },
    { -((FX32_ONE * 4) + (FX32_ONE / 2)), FX32_ONE * 12, 0x0 },
    { ((FX32_ONE * 4) + (FX32_ONE / 2)), FX32_ONE * 12, 0x0 },
    { -((FX32_ONE * 4) + (FX32_ONE / 2)), FX32_ONE * 12, ((FX32_ONE * 4) + (FX32_ONE / 2)) },
    { ((FX32_ONE * 4) + (FX32_ONE / 2)), FX32_ONE * 12, ((FX32_ONE * 4) + (FX32_ONE / 2)) }
};

void ov6_02247D30(FieldSystem *fieldSystem, const u8 param1)
{
    BOOL v0;
    MapProp *v1;
    int v2;
    int v3 = MAP_PROP_MODEL_POKEMON_LEAGUE_HALL_OF_FAME_MACHINE;

    v0 = FieldSystem_FindLoadedMapPropByModelID(fieldSystem, v3, &v1, &v2);

    if (v0) {
        UnkStruct_ov6_02247D30 *v4 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(UnkStruct_ov6_02247D30));

        v4->unk_0C = param1;
        v4->unk_0D = 0;
        v4->unk_0E = 0;
        v4->unk_0F = 0;

        {
            VecFx32 v5;

            TerrainCollisionManager_GetMapAbsoluteOrigin(v2, MapMatrix_GetWidth(fieldSystem->mapMatrix), &v5);
            v4->unk_00 = MapProp_GetPosition(v1);
            v4->unk_00.x += v5.x;
            v4->unk_00.z += v5.z;
        }

        FieldTask_InitCall(fieldSystem->task, ov6_02247DAC, v4);
    } else {
        GF_ASSERT(FALSE);
    }
}

static BOOL ov6_02247DAC(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov6_02247D30 *v1 = (UnkStruct_ov6_02247D30 *)FieldTask_GetEnv(param0);

    switch (v1->unk_0F) {
    case 0: {
        NNSG3dResMdl *v2;
        NNSG3dResFileHeader **v3;
        NNSG3dRenderObj *v4;

        v3 = AreaDataManager_GetMapPropModelFile(MAP_PROP_MODEL_POKECENTER_HEALING_MACHINE_MINI_POKEBALL, fieldSystem->areaDataManager);
        v2 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*v3), 0);

        MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 0x10, MAP_PROP_MODEL_POKECENTER_HEALING_MACHINE_MINI_POKEBALL, NULL, v2, AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager), 1, 1, 0);
    }
        (v1->unk_0F)++;
        break;
    case 1: {
        MapProp *v5;
        NNSG3dRenderObj *v6;
        VecFx32 v7;
        VecFx32 v8 = { 0, 0, 0 };

        v7.x = v1->unk_00.x + Unk_ov6_022498E4[v1->unk_0D].x;
        v7.y = v1->unk_00.y + Unk_ov6_022498E4[v1->unk_0D].y;
        v7.z = v1->unk_00.z + Unk_ov6_022498E4[v1->unk_0D].z;

        v1->unk_10[v1->unk_0D] = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, MAP_PROP_MODEL_POKECENTER_HEALING_MACHINE_MINI_POKEBALL, &v7, &v8, fieldSystem->mapPropAnimMan);
        v5 = MapPropManager_GetLoadedPropSafely(fieldSystem->mapPropManager, v1->unk_10[v1->unk_0D]);
        v6 = MapProp_GetRenderObj(v5);
        MapPropOneShotAnimationManager_SetAnimationRenderObj(fieldSystem->mapPropOneShotAnimMan, 0x10, v1->unk_0D, v6);
        (v1->unk_0F)++;
    } break;
    case 2:
        if (v1->unk_0E < 15) {
            v1->unk_0E++;
            break;
        } else {
            v1->unk_0E = 0;
        }

        v1->unk_0D++;

        if (v1->unk_0D < v1->unk_0C) {
            (v1->unk_0F) = 1;
        } else {
            (v1->unk_0F)++;
        }
        break;
    case 3:
        MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, 0x10, 0);
        (v1->unk_0F)++;
        break;
    case 4:
        if (MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, 0x10)) {
            u8 v9;

            MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 0x10);

            for (v9 = 0; v9 < v1->unk_0C; v9++) {
                MapPropManager_InitOne(v1->unk_10[v9], fieldSystem->mapPropManager);
            }

            (v1->unk_0F)++;
        }
        break;
    case 5:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}
