#include "overlay005/map_prop.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021D56BC.h"
#include "overlay005/ov5_021D5878.h"
#include "overlay005/ov5_021EF75C.h"
#include "overlay005/struct_ov5_021D3CAC_decl.h"
#include "overlay005/struct_ov5_021D5778_decl.h"
#include "overlay005/struct_ov5_021D57B4.h"
#include "overlay005/struct_ov5_021D5894.h"
#include "overlay005/struct_ov5_021EF76C_decl.h"

#include "easy3d.h"
#include "fx_util.h"
#include "heap.h"
#include "narc.h"
#include "unk_0201CED8.h"

static void MapPropManager_InitRenderObj(const int loadedPropId, UnkStruct_ov5_021EF76C *const param1, NNSG3dRenderObj *renderObj, NNSG3dResMdl **resMdl);
static void ov5_021E1944(const NNSG3dResMdl *resMdl, VecFx32 *position, MtxFx33 *rotation, VecFx32 *scale, const UnkStruct_ov5_021D5778 *param4, const int param5);

typedef struct {
    int id;
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

        mapPropManager->loadedProps[i].id = 0;
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

    mapPropManager->loadedProps[index].id = 0;
    mapPropManager->loadedProps[index].loaded = FALSE;
    mapPropManager->loadedProps[index].hidden = FALSE;
    mapPropManager->loadedProps[index].applyRotation = FALSE;
    mapPropManager->loadedProps[index].position = nullVector;
    mapPropManager->loadedProps[index].rotation = nullVector;
    mapPropManager->loadedProps[index].scale = nullVector;
    mapPropManager->loadedProps[index].model = NULL;
}

void MapPropManager_Load(NARC *landDataNARC, const int mapPropFilesSize, UnkStruct_ov5_021EF76C *const param2, MapPropManager *mapPropManager, UnkStruct_ov5_021D3CAC *param4)
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
            loadedProp->id = mapPropFiles[i].id;
            loadedProp->loaded = TRUE;
            loadedProp->applyRotation = FALSE;
            loadedProp->position = mapPropFiles[i].position;
            loadedProp->rotation = mapPropFiles[i].rotation;
            loadedProp->scale = mapPropFiles[i].scale;

            MapPropManager_InitRenderObj(loadedProp->id, param2, &loadedProp->renderObj, &loadedProp->model);

            if (ov5_021EFAF8(param2, loadedProp->id) == FALSE) {
                loadedProp->id = 0;
            }

            ov5_021D3BE4(loadedProp->id, &loadedProp->renderObj, param4);
        } else {
            VecFx32 nullVector = { 0, 0, 0 };

            loadedProp->id = 0;
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

void MapPropManager_Render(const VecFx32 *positionOffset, const UnkStruct_ov5_021EF76C *param1, const BOOL param2, UnkStruct_ov5_021D5894 *const param3, MapPropManager *mapPropManager)
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
                const UnkStruct_ov5_021D5778 *v4;
                u16 v5;

                v4 = ov5_021EFAB4(param1);

                if (param2 == TRUE) {
                    ov5_021D5948(param3, loadedProp->model, (1 | 1 << 1 | 1 << 4 | 1 << 5 | 1 << 8 | 1 << 9 | 1 << 10 | 1 << 11));
                }

                ov5_021D5790(loadedProp->id, v4, &v5);

                if (v5 == 0) {
                    Easy3D_DrawRenderObj(&loadedProp->renderObj, &position, &rotationMatrix, &loadedProp->scale);
                } else {
                    ov5_021E1944(loadedProp->model, &position, &rotationMatrix, &loadedProp->scale, v4, loadedProp->id);
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
    return mapProp->id;
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

MapProp *MapPropManager_FindLoadedPropById(MapPropManager *mapPropManager, const int id)
{
    for (int i = 0; i < MAX_LOADED_MAP_PROPS; i++) {
        MapProp *loadedProp = &mapPropManager->loadedProps[i];

        if (loadedProp->id == id) {
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

static void MapPropManager_InitRenderObj(const int loadedPropId, UnkStruct_ov5_021EF76C *const param1, NNSG3dRenderObj *renderObj, NNSG3dResMdl **resMdl)
{
    NNSG3dResFileHeader **nsbmdFile = ov5_021EF9E8(loadedPropId, param1);

    *resMdl = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*nsbmdFile), 0);
    NNS_G3dRenderObjInit(renderObj, *resMdl);
}

static void ov5_021E1944(const NNSG3dResMdl *resMdl, VecFx32 *position, MtxFx33 *rotation, VecFx32 *scale, const UnkStruct_ov5_021D5778 *param4, const int param5)
{
    u8 i;
    u16 v1;
    u16 v2;
    u8 v3;
    BOOL v4;
    UnkStruct_ov5_021D57B4 const *v5;

    NNS_G3dGlbSetBaseTrans(position);
    NNS_G3dGlbSetBaseRot(rotation);
    NNS_G3dGlbSetBaseScale(scale);
    NNS_G3dGlbFlush();

    ov5_021D579C(param5, param4, &v1, &v2);

    v5 = ov5_021D57B4(v2, param4);
    v3 = 0xFF;
    v4 = TRUE;

    for (i = 0; i < v1; i++) {
        if (v3 != v5[i].unk_00) {
            v3 = v5[i].unk_00;
            v4 = TRUE;
        } else {
            v4 = FALSE;
        }

        NNS_G3dDraw1Mat1Shp(resMdl, v3, v5[i].unk_02, v4);
    }
}

u8 MapPropManager_LoadOne(MapPropManager *mapPropManager, UnkStruct_ov5_021EF76C *const param1, const int id, const VecFx32 *position, const VecFx32 *rotation, UnkStruct_ov5_021D3CAC *param5)
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
            loadedProp->id = id;

            MapPropManager_InitRenderObj(loadedProp->id, param1, &loadedProp->renderObj, &loadedProp->model);
            ov5_021D3B24(loadedProp->id, 0, FALSE, &loadedProp->renderObj, param5);

            return i;
        }
    }

    GF_ASSERT(FALSE);
    return MAX_LOADED_MAP_PROPS;
}

void MapPropManager_Render2(MapPropManager *mapPropManager, UnkStruct_ov5_021EF76C *const param1)
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

            const UnkStruct_ov5_021D5778 *v3;
            u16 v4;

            v3 = ov5_021EFAB4(param1);
            ov5_021D5790(loadedProp->id, v3, &v4);

            if (loadedProp->applyRotation) {
                MTX_Rot33Vec(&rotationMatrix, &loadedProp->rotation);
            }

            if (v4 == 0) {
                Easy3D_DrawRenderObj(&loadedProp->renderObj, &loadedProp->position, &rotationMatrix, &loadedProp->scale);
            } else {
                ov5_021E1944(loadedProp->model, &loadedProp->position, &rotationMatrix, &loadedProp->scale, v3, loadedProp->id);
            }
        }
    }
}
