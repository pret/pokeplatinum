#ifndef POKEPLATINUM_OV5_MAP_PROP_H
#define POKEPLATINUM_OV5_MAP_PROP_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "overlay005/struct_ov5_021D3CAC_decl.h"
#include "overlay005/struct_ov5_021D5894.h"
#include "overlay005/struct_ov5_021EF76C_decl.h"

#include "narc.h"

#define MAX_LOADED_MAP_PROPS 32

typedef struct MapProp {
    int id;
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

MapPropManager *MapPropManager_New(const u8 heapId);
void MapPropManager_Free(MapPropManager *mapPropManager);
void MapPropManager_Init(MapPropManager *mapPropManager);
void MapPropManager_InitOne(const int index, MapPropManager *mapPropManager);
void MapPropManager_Load(NARC *landDataNARC, const int mapPropFilesSize, UnkStruct_ov5_021EF76C *const param2, MapPropManager *mapPropManager, UnkStruct_ov5_021D3CAC *param4);
void MapPropManager_Render(const VecFx32 *positionOffset, const UnkStruct_ov5_021EF76C *param1, const BOOL param2, UnkStruct_ov5_021D5894 *const param3, MapPropManager *mapPropManager);
VecFx32 *MapProp_GetRotation(MapProp *mapProp);
VecFx32 MapProp_GetPosition(const MapProp *mapProp);
void MapProp_SetPosition(MapProp *mapProp, const VecFx32 *position);
void MapProp_SetHidden(MapProp *mapProp, const BOOL hidden);
int MapProp_GetId(const MapProp *mapProp);
NNSG3dRenderObj *MapProp_GetRenderObj(const MapProp *mapProp);
NNSG3dResMdl *MapProp_GetModel(const MapProp *mapProp);
MapProp *MapPropManager_GetLoadedProp(MapPropManager *mapPropManager, const u8 index);
MapProp *MapPropManager_FindLoadedPropById(MapPropManager *mapPropManager, const int id);
MapProp *MapPropManager_GetLoadedPropSafely(MapPropManager *mapPropManager, const int index);
u8 MapPropManager_LoadOne(MapPropManager *mapPropManager, UnkStruct_ov5_021EF76C *const param1, const int id, const VecFx32 *position, const VecFx32 *rotation, UnkStruct_ov5_021D3CAC *param5);
void MapPropManager_Render2(MapPropManager *mapPropManager, UnkStruct_ov5_021EF76C *const param1);

#endif // POKEPLATINUM_OV5_MAP_PROP_H
