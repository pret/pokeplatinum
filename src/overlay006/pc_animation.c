#include "overlay006/pc_animation.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"

#include "terrain_collision_manager.h"

#include "res/field/props/models/prop_models.naix"

void FieldSystem_LoadPCAnimation(FieldSystem *fieldSystem, const u8 tag)
{
    BOOL pcFound;
    MapProp *mapProp;
    TerrainCollisionHitbox unused;
    int modelID;
    int pcMapProps[] = {
        pokecenter_pc_nsbmd,
        desk_drawer_laptop_nsbmd,
        desk_drawer_laptop_facing_right_nsbmd,
        desk_drawer_laptop_facing_left_nsbmd
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
