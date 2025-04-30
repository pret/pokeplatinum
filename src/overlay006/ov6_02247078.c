#include "overlay006/ov6_02247078.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_prop.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"

#include "terrain_collision_manager.h"

void ov6_02247078(FieldSystem *fieldSystem, const u8 param1)
{
    BOOL v0;
    MapProp *v1;
    TerrainCollisionHitbox v2;
    int v3;
    int v4[] = {
        MAP_PROP_MODEL_POKECENTER_PC,
        MAP_PROP_MODEL_DESK_DRAWER_LAPTOP,
        MAP_PROP_MODEL_DESK_DRAWER_LAPTOP_FACING_RIGHT,
        MAP_PROP_MODEL_DESK_DRAWER_LAPTOP_FACING_LEFT
    };

    v0 = FieldSystem_FindLoadedMapPropByModelIDs(fieldSystem, v4, 4, &v1, &v3);

    if (v0) {
        NNSG3dResTex *v5;

        v5 = AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager);
        MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, param1, v3, MapProp_GetRenderObj(v1), MapProp_GetModel(v1), v5, 2, 1, 0);
    } else {
        GF_ASSERT(0);
    }
}

void ov6_022470E8(FieldSystem *fieldSystem, const u8 param1)
{
    MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, param1, 0);
}

void ov6_022470F4(FieldSystem *fieldSystem, const u8 param1)
{
    MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, param1, 1);
}
