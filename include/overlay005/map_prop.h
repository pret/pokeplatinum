#ifndef POKEPLATINUM_OV5_MAP_PROP_H
#define POKEPLATINUM_OV5_MAP_PROP_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "overlay005/area_data.h"
#include "overlay005/map_prop_animation.h"
#include "overlay005/model_attributes.h"

#include "narc.h"

#define MAX_LOADED_MAP_PROPS 32

typedef struct MapProp {
    int modelID;
    BOOL loaded;
    BOOL hidden;
    BOOL applyRotation;
    NNSG3dRenderObj renderObj;
    NNSG3dResMdl *model;
    VecFx32 position;
    VecFx32 rotation;
    VecFx32 scale;
} MapProp;

typedef struct MapPropManager {
    MapProp loadedProps[MAX_LOADED_MAP_PROPS];
} MapPropManager;

MapPropManager *MapPropManager_New(const u8 heapID);
void MapPropManager_Free(MapPropManager *mapPropManager);
void MapPropManager_Init(MapPropManager *mapPropManager);
void MapPropManager_InitOne(const int index, MapPropManager *mapPropManager);
void MapPropManager_Load(NARC *landDataNARC, const int mapPropFilesSize, AreaDataManager *const areaDataManager, MapPropManager *mapPropManager, MapPropAnimationManager *mapPropAnimMan);
void MapPropManager_Render(const VecFx32 *positionOffset, const AreaDataManager *areaDataManager, const BOOL applyAttrsToModel, ModelAttributes *const modelAttrs, MapPropManager *mapPropManager);
VecFx32 *MapProp_GetRotation(MapProp *mapProp);
VecFx32 MapProp_GetPosition(const MapProp *mapProp);
void MapProp_SetPosition(MapProp *mapProp, const VecFx32 *position);
void MapProp_SetHidden(MapProp *mapProp, const BOOL hidden);
int MapProp_GetModelID(const MapProp *mapProp);
NNSG3dRenderObj *MapProp_GetRenderObj(const MapProp *mapProp);
NNSG3dResMdl *MapProp_GetModel(const MapProp *mapProp);
MapProp *MapPropManager_GetLoadedProp(MapPropManager *mapPropManager, const u8 index);
MapProp *MapPropManager_FindLoadedPropByModelID(MapPropManager *mapPropManager, const int modelID);
MapProp *MapPropManager_GetLoadedPropSafely(MapPropManager *mapPropManager, const int index);
u8 MapPropManager_LoadOne(MapPropManager *mapPropManager, AreaDataManager *const areaDataManager, const int modelID, const VecFx32 *position, const VecFx32 *rotation, MapPropAnimationManager *mapPropAnimMan);
void MapPropManager_Render2(MapPropManager *mapPropManager, AreaDataManager *const areaDataManager);

#endif // POKEPLATINUM_OV5_MAP_PROP_H
