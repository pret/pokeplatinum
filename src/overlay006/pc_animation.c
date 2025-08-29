#include "overlay006/pc_animation.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_prop.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"

#include "terrain_collision_manager.h"

void FieldSystem_LoadPCAnimation(FieldSystem *fieldSystem, const u8 tag)
{
    BOOL pcFound;
    MapProp *mapProp;
    TerrainCollisionHitbox unused;
    int modelID;
    int pcMapProps[] = {
        MAP_PROP_MODEL_POKECENTER_PC,
        MAP_PROP_MODEL_DESK_DRAWER_LAPTOP,
        MAP_PROP_MODEL_DESK_DRAWER_LAPTOP_FACING_RIGHT,
        MAP_PROP_MODEL_DESK_DRAWER_LAPTOP_FACING_LEFT
    };

    pcFound = FieldSystem_FindLoadedMapPropByModelIDs(fieldSystem, pcMapProps, 4, &mapProp, &modelID);

    if (pcFound) {
        NNSG3dResTex *texture;

        texture = AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager);
        MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, tag, modelID, MapProp_GetRenderObj(mapProp), MapProp_GetModel(mapProp), texture, 2, 1, FALSE);
    } else {
        GF_ASSERT(FALSE);
    }
}

void FieldSystem_PlayPCBootUpAnimation(FieldSystem *fieldSystem, const u8 tag)
{
    MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, tag, 0);
}

void FieldSystem_PlayPCShutDownAnimation(FieldSystem *fieldSystem, const u8 tag)
{
    MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, tag, 1);
}
