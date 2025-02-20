#include "overlay005/map_prop.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "overlay005/area_data.h"
#include "overlay005/map_prop_material_shape.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021D5878.h"
#include "overlay005/struct_ov5_021D3CAC_decl.h"
#include "overlay005/struct_ov5_021D5894.h"

#include "easy3d.h"
#include "fx_util.h"
#include "heap.h"
#include "narc.h"
#include "unk_0201CED8.h"

static void MapPropManager_InitRenderObj(const int modelID, AreaDataManager *const areaDataManager, NNSG3dRenderObj *renderObj, NNSG3dResMdl **model);
static void MapPropManager_RenderUsing1Mat1Shp(const NNSG3dResMdl *model, VecFx32 *position, MtxFx33 *rotation, VecFx32 *scale, const MapPropMaterialShape *propMatShp, const int modelID);

typedef struct {
    int modelID;
    VecFx32 position;
    VecFx32 rotation;
    VecFx32 scale;
    int dummy28[2];
} MapPropFile;

MapPropManager *MapPropManager_New(const u8 heapId)
{
    MapPropManager *mapPropManager = Heap_AllocFromHeap(heapId, sizeof(MapPropManager));
    MapPropManager_Init(mapPropManager);

    return mapPropManager;
}

void MapPropManager_Free(MapPropManager *mapPropManager)
{
    Heap_FreeToHeap(mapPropManager);
    mapPropManager = NULL;
}

void MapPropManager_Init(MapPropManager *mapPropManager)
{
    for (u8 i = 0; i < MAX_LOADED_MAP_PROPS; i++) {
        VecFx32 nullVector = { 0, 0, 0 };

        mapPropManager->loadedProps[i].modelID = 0;
        mapPropManager->loadedProps[i].loaded = FALSE;
        mapPropManager->loadedProps[i].hidden = FALSE;
        mapPropManager->loadedProps[i].applyRotation = FALSE;
        mapPropManager->loadedProps[i].position = nullVector;
        mapPropManager->loadedProps[i].rotation = nullVector;
        mapPropManager->loadedProps[i].scale = nullVector;
        mapPropManager->loadedProps[i].model = NULL;
    }
}

void MapPropManager_InitOne(const int index, MapPropManager *mapPropManager)
{
    GF_ASSERT(index < MAX_LOADED_MAP_PROPS);
    VecFx32 nullVector = { 0, 0, 0 };

    mapPropManager->loadedProps[index].modelID = 0;
    mapPropManager->loadedProps[index].loaded = FALSE;
    mapPropManager->loadedProps[index].hidden = FALSE;
    mapPropManager->loadedProps[index].applyRotation = FALSE;
    mapPropManager->loadedProps[index].position = nullVector;
    mapPropManager->loadedProps[index].rotation = nullVector;
    mapPropManager->loadedProps[index].scale = nullVector;
    mapPropManager->loadedProps[index].model = NULL;
}

void MapPropManager_Load(NARC *landDataNARC, const int mapPropFilesSize, AreaDataManager *const areaDataManager, MapPropManager *mapPropManager, UnkStruct_ov5_021D3CAC *param4)
{
    MapPropFile *mapPropFiles = NULL;
    u32 mapPropFilesCount;
    int i;

    if (mapPropFilesSize != 0) {
        mapPropFiles = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, mapPropFilesSize);
        NARC_ReadFile(landDataNARC, mapPropFilesSize, mapPropFiles);
        mapPropFilesCount = mapPropFilesSize / sizeof(MapPropFile);
    } else {
        mapPropFilesCount = 0;
    }

    for (i = 0; i < MAX_LOADED_MAP_PROPS; i++) {
        MapProp *loadedProp = &mapPropManager->loadedProps[i];

        if (i < mapPropFilesCount) {
            loadedProp->modelID = mapPropFiles[i].modelID;
            loadedProp->loaded = TRUE;
            loadedProp->applyRotation = FALSE;
            loadedProp->position = mapPropFiles[i].position;
            loadedProp->rotation = mapPropFiles[i].rotation;
            loadedProp->scale = mapPropFiles[i].scale;

            MapPropManager_InitRenderObj(loadedProp->modelID, areaDataManager, &loadedProp->renderObj, &loadedProp->model);

            if (AreaDataManager_HasMapPropModelFile(areaDataManager, loadedProp->modelID) == FALSE) {
                loadedProp->modelID = 0;
            }

            ov5_021D3BE4(loadedProp->modelID, &loadedProp->renderObj, param4);
        } else {
            VecFx32 nullVector = { 0, 0, 0 };

            loadedProp->modelID = 0;
            loadedProp->loaded = FALSE;
            loadedProp->applyRotation = FALSE;
            loadedProp->position = nullVector;
            loadedProp->rotation = nullVector;
            loadedProp->scale = nullVector;
        }
    }

    if (mapPropFiles != NULL) {
        Heap_FreeToHeap(mapPropFiles);
    }
}

void MapPropManager_Render(const VecFx32 *positionOffset, const AreaDataManager *areaDataManager, const BOOL param2, UnkStruct_ov5_021D5894 *const param3, MapPropManager *mapPropManager)
{
    int i;
    VecFx32 position;
    MtxFx33 rotationMatrix = {
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE
    };

    for (i = 0; i < MAX_LOADED_MAP_PROPS; i++) {
        MapProp *loadedProp = &mapPropManager->loadedProps[i];

        if (loadedProp->loaded != FALSE) {
            if (loadedProp->hidden) {
                continue;
            }

            position = loadedProp->position;
            position.x += positionOffset->x;
            position.z += positionOffset->z;

            if (sub_0201CED8(loadedProp->model, &position, &rotationMatrix, &loadedProp->scale)) {
                const MapPropMaterialShape *propMatShp = AreaDataManager_GetMapPropMaterialShape(areaDataManager);
                u16 propMatShpIDsCount;

                if (param2 == TRUE) {
                    ov5_021D5948(param3, loadedProp->model, (1 | 1 << 1 | 1 << 4 | 1 << 5 | 1 << 8 | 1 << 9 | 1 << 10 | 1 << 11));
                }

                MapProp_GetMaterialShapeIDsCount(loadedProp->modelID, propMatShp, &propMatShpIDsCount);

                if (propMatShpIDsCount == 0) {
                    Easy3D_DrawRenderObj(&loadedProp->renderObj, &position, &rotationMatrix, &loadedProp->scale);
                } else {
                    MapPropManager_RenderUsing1Mat1Shp(loadedProp->model, &position, &rotationMatrix, &loadedProp->scale, propMatShp, loadedProp->modelID);
                }
            }
        }
    }
}

VecFx32 *MapProp_GetRotation(MapProp *mapProp)
{
    return &mapProp->rotation;
}

VecFx32 MapProp_GetPosition(const MapProp *mapProp)
{
    return mapProp->position;
}

void MapProp_SetPosition(MapProp *mapProp, const VecFx32 *position)
{
    mapProp->position = *position;
}

void MapProp_SetHidden(MapProp *mapProp, const BOOL hidden)
{
    mapProp->hidden = hidden;
}

int MapProp_GetId(const MapProp *mapProp)
{
    return mapProp->modelID;
}

NNSG3dRenderObj *MapProp_GetRenderObj(const MapProp *mapProp)
{
    return &mapProp->renderObj;
}

NNSG3dResMdl *MapProp_GetModel(const MapProp *mapProp)
{
    return mapProp->model;
}

MapProp *MapPropManager_GetLoadedProp(MapPropManager *mapPropManager, const u8 index)
{
    return &mapPropManager->loadedProps[index];
}

MapProp *MapPropManager_FindLoadedPropByModelID(MapPropManager *mapPropManager, const int modelID)
{
    for (int i = 0; i < MAX_LOADED_MAP_PROPS; i++) {
        MapProp *loadedProp = &mapPropManager->loadedProps[i];

        if (loadedProp->modelID == modelID) {
            return loadedProp;
        }
    }

    return NULL;
}

MapProp *MapPropManager_GetLoadedPropSafely(MapPropManager *mapPropManager, const int index)
{
    GF_ASSERT(index < MAX_LOADED_MAP_PROPS);
    MapProp *loadedProp = &mapPropManager->loadedProps[index];
    GF_ASSERT(loadedProp->loaded);

    return loadedProp;
}

static void MapPropManager_InitRenderObj(const int modelID, AreaDataManager *const areaDataManager, NNSG3dRenderObj *renderObj, NNSG3dResMdl **model)
{
    NNSG3dResFileHeader **modelFile = AreaDataManager_GetMapPropModelFile(modelID, areaDataManager);

    *model = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*modelFile), 0);
    NNS_G3dRenderObjInit(renderObj, *model);
}

static void MapPropManager_RenderUsing1Mat1Shp(const NNSG3dResMdl *model, VecFx32 *position, MtxFx33 *rotation, VecFx32 *scale, const MapPropMaterialShape *propMatShp, const int modelID)
{
    u8 i;
    u16 propMatShpIDsCount;
    u16 propMatShpIDsIndex;
    u8 materialID;
    BOOL sendMaterial;
    MapPropMaterialShapeIDs const *propMatShpIDs;

    NNS_G3dGlbSetBaseTrans(position);
    NNS_G3dGlbSetBaseRot(rotation);
    NNS_G3dGlbSetBaseScale(scale);
    NNS_G3dGlbFlush();

    MapProp_GetMaterialShapeIDsLocator(modelID, propMatShp, &propMatShpIDsCount, &propMatShpIDsIndex);

    propMatShpIDs = MapPropMaterialShape_GetMaterialShapeIDsAt(propMatShpIDsIndex, propMatShp);
    materialID = 0xFF;
    sendMaterial = TRUE;

    for (i = 0; i < propMatShpIDsCount; i++) {
        if (materialID != propMatShpIDs[i].materialID) {
            materialID = propMatShpIDs[i].materialID;
            sendMaterial = TRUE;
        } else {
            sendMaterial = FALSE;
        }

        NNS_G3dDraw1Mat1Shp(model, materialID, propMatShpIDs[i].shapeID, sendMaterial);
    }
}

u8 MapPropManager_LoadOne(MapPropManager *mapPropManager, AreaDataManager *const areaDataManager, const int modelID, const VecFx32 *position, const VecFx32 *rotation, UnkStruct_ov5_021D3CAC *param5)
{
    u8 i;
    VecFx32 scale = { FX32_ONE, FX32_ONE, FX32_ONE };

    for (i = 0; i < MAX_LOADED_MAP_PROPS; i++) {
        MapProp *loadedProp = &mapPropManager->loadedProps[i];

        if (loadedProp->loaded == FALSE) {
            loadedProp->loaded = TRUE;
            loadedProp->position = (*position);

            if (rotation != NULL) {
                loadedProp->applyRotation = TRUE;
                loadedProp->rotation = (*rotation);
            } else {
                loadedProp->applyRotation = FALSE;
            }

            loadedProp->scale = scale;
            loadedProp->modelID = modelID;

            MapPropManager_InitRenderObj(loadedProp->modelID, areaDataManager, &loadedProp->renderObj, &loadedProp->model);
            ov5_021D3B24(loadedProp->modelID, 0, FALSE, &loadedProp->renderObj, param5);

            return i;
        }
    }

    GF_ASSERT(FALSE);
    return MAX_LOADED_MAP_PROPS;
}

void MapPropManager_Render2(MapPropManager *mapPropManager, AreaDataManager *const areaDataManager)
{
    u8 i;
    MtxFx33 rotationMatrix = {
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE
    };

    for (i = 0; i < MAX_LOADED_MAP_PROPS; i++) {
        MapProp *loadedProp = &mapPropManager->loadedProps[i];

        if (loadedProp->loaded) {
            if (loadedProp->hidden) {
                continue;
            }

            const MapPropMaterialShape *propMatShp = AreaDataManager_GetMapPropMaterialShape(areaDataManager);
            u16 propMatShpIDsCount;

            MapProp_GetMaterialShapeIDsCount(loadedProp->modelID, propMatShp, &propMatShpIDsCount);

            if (loadedProp->applyRotation) {
                MTX_Rot33Vec(&rotationMatrix, &loadedProp->rotation);
            }

            if (propMatShpIDsCount == 0) {
                Easy3D_DrawRenderObj(&loadedProp->renderObj, &loadedProp->position, &rotationMatrix, &loadedProp->scale);
            } else {
                MapPropManager_RenderUsing1Mat1Shp(loadedProp->model, &loadedProp->position, &rotationMatrix, &loadedProp->scale, propMatShp, loadedProp->modelID);
            }
        }
    }
}
