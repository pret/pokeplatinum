#include "overlay005/area_data.h"

#include <nitro.h>
#include <string.h>

#include "constants/gx_colors.h"
#include "constants/heap.h"

#include "overlay005/map_prop_material_shape.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/struct_ov5_021D3CAC_decl.h"

#include "easy3d.h"
#include "heap.h"
#include "narc.h"

static const GXRgb sIndoorsEdgeMarkings[8] = {
    COLOR_BLACK,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY
};

static const GXRgb sOutdoorsEdgeMarkings[8] = {
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY,
    COLOR_DARK_GRAY
};

static void AreaData_StripTextureData(void *resourceFile, NNSG3dResTex *texture)
{
    u8 *textureData = (u8 *)texture + texture->texInfo.ofsTex;
    u32 strippedTextureDataSize = (u32)(textureData - (u8 *)resourceFile);

    Heap_ReallocFromHeap(resourceFile, strippedTextureDataSize);
}

AreaDataManager *AreaDataManager_Alloc(const int areaDataArchiveID, UnkStruct_ov5_021D3CAC *param1)
{
    AreaDataManager *areaDataManager = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(AreaDataManager));

    areaDataManager->loadData = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(AreaDataManagerLoadData));
    areaDataManager->loadData->areaDataArchiveID = areaDataArchiveID;
    areaDataManager->loadData->unk_04 = param1;
    areaDataManager->loadData->dummy0C = 0;

    return areaDataManager;
}

void AreaDataManager_Load(AreaDataManager *areaDataManager)
{
    NARC *narc;
    AreaDataManagerLoadData *loadData = areaDataManager->loadData;

    NARC_ReadWholeMemberByIndexPair(&areaDataManager->areaData, NARC_INDEX_FIELDDATA__AREADATA__AREA_DATA, loadData->areaDataArchiveID);

    areaDataManager->mapPropModelIDs = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__AREADATA__AREA_BUILD_MODEL__AREA_BUILD, areaDataManager->areaData.mapPropArchivesID, HEAP_ID_FIELD);
    loadData->mapPropModelIDsCount = areaDataManager->mapPropModelIDs[0];

    GF_ASSERT(loadData->mapPropModelIDsCount < MAX_MAP_PROP_MODEL_FILES);

    areaDataManager->mapTexture = NULL;
    areaDataManager->mapTextureFile = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__AREADATA__AREA_MAP_TEX__MAP_TEX_SET, areaDataManager->areaData.mapTextureArchiveID, HEAP_ID_FIELD);
    areaDataManager->mapPropTextureFile = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__AREADATA__AREA_BUILD_MODEL__AREABM_TEXSET, areaDataManager->areaData.mapPropArchivesID, HEAP_ID_FIELD);
    areaDataManager->mapTexture = NNS_G3dGetTex((NNSG3dResFileHeader *)areaDataManager->mapTextureFile);

    if (loadData->mapPropModelIDsCount != 0) {
        areaDataManager->mapPropTexture = NNS_G3dGetTex((NNSG3dResFileHeader *)areaDataManager->mapPropTextureFile);
    } else {
        areaDataManager->mapPropTexture = NULL;
    }

    BOOL textureUploaded = Easy3D_UploadTextureToVRAM(areaDataManager->mapTexture);
    GF_ASSERT(textureUploaded);

    AreaData_StripTextureData(areaDataManager->mapTextureFile, areaDataManager->mapTexture);

    if (areaDataManager->mapPropTexture != NULL) {
        BOOL textureUploaded = Easy3D_UploadTextureToVRAM(areaDataManager->mapPropTexture);
        GF_ASSERT(textureUploaded);

        AreaData_StripTextureData(areaDataManager->mapPropTextureFile, areaDataManager->mapPropTexture);
    }

    for (int i = 0; i < MAX_MAP_PROP_MODEL_FILES; i++) {
        areaDataManager->mapPropModelFiles[i] = NULL;
    }

    areaDataManager->mapPropMatShp = NULL;

    narc = NARC_ctor(NARC_INDEX_FIELDDATA__BUILD_MODEL__BUILD_MODEL, HEAP_ID_FIELD);

    int i;
    u16 mapPropModelID;
    int mapPropModelAnimeListNARCFileCount = ov5_021D3F84(loadData->unk_04);

    for (i = 0; i < loadData->mapPropModelIDsCount; i++) {
        mapPropModelID = areaDataManager->mapPropModelIDs[i + 1];

        GF_ASSERT(areaDataManager->mapPropModelFiles[mapPropModelID] == NULL);
        areaDataManager->mapPropModelFiles[mapPropModelID] = NARC_AllocAndReadWholeMember(narc, mapPropModelID, HEAP_ID_FIELD);

        if (mapPropModelID < mapPropModelAnimeListNARCFileCount) {
            NNSG3dResMdl *mapPropModel = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(areaDataManager->mapPropModelFiles[mapPropModelID]), 0);
            ov5_021D3A50(mapPropModelID, mapPropModel, areaDataManager->mapPropTexture, loadData->unk_04);
        }

        BOOL textureBound = Easy3D_BindTextureToResource(areaDataManager->mapPropModelFiles[mapPropModelID], areaDataManager->mapPropTexture);
        GF_ASSERT(textureBound);
    }

    // Make sure the dummy box ("dmybox00") model is always loaded
    if (areaDataManager->mapPropModelFiles[0] == NULL) {
        BOOL res;
        NNSG3dResTex *texture;

        areaDataManager->mapPropModelFiles[0] = NARC_AllocAndReadWholeMember(narc, 0, HEAP_ID_FIELD);
        texture = NNS_G3dGetTex(areaDataManager->mapPropModelFiles[0]);

        if (texture != NULL) {
            res = Easy3D_UploadTextureToVRAM(texture);
            GF_ASSERT(res);

            res = Easy3D_BindTextureToResource(areaDataManager->mapPropModelFiles[0], texture);
            GF_ASSERT(res);
        }
    }

    NARC_dtor(narc);
    G3X_EdgeMarking(TRUE);

    if (!AreaDataManager_IsOutdoorsLighting(areaDataManager)) {
        G3X_SetEdgeColorTable(sIndoorsEdgeMarkings);
    } else {
        G3X_SetEdgeColorTable(sOutdoorsEdgeMarkings);
    }

    char mapPropMaterialShapeFilePath[256];

    areaDataManager->mapPropMatShp = MapPropMaterialShape_Alloc();
    sprintf(mapPropMaterialShapeFilePath, "fielddata/build_model/build_model_matshp.dat");
    MapPropMaterialShape_Load(mapPropMaterialShapeFilePath, areaDataManager->mapPropMatShp);

    Heap_FreeToHeap(areaDataManager->loadData);
    areaDataManager->loadData = NULL;
}

NNSG3dResFileHeader **AreaDataManager_GetMapPropModelFile(const int mapPropModelID, AreaDataManager *const areaDataManager)
{
    GF_ASSERT(areaDataManager != NULL);

    if (areaDataManager->mapPropModelFiles[mapPropModelID] == NULL) {
        // Return the dummy box model if the requested one is not loaded
        GF_ASSERT(areaDataManager->mapPropModelFiles[0] != NULL);
        return &areaDataManager->mapPropModelFiles[0];
    }

    return &areaDataManager->mapPropModelFiles[mapPropModelID];
}

void AreaDataManager_Free(AreaDataManager **areaDataManager)
{
    if ((*areaDataManager)->mapPropMatShp != NULL) {
        MapPropMaterialShape_Free((*areaDataManager)->mapPropMatShp);
    }

    for (int i = 0; i < MAX_MAP_PROP_MODEL_FILES; i++) {
        if ((*areaDataManager)->mapPropModelFiles[i] != NULL) {
            Heap_FreeToHeap((*areaDataManager)->mapPropModelFiles[i]);
        }
    }

    Heap_FreeToHeap((*areaDataManager)->mapPropModelIDs);
    Heap_FreeToHeap((*areaDataManager)->mapTextureFile);

    (*areaDataManager)->mapTextureFile = NULL;
    Heap_FreeToHeap((*areaDataManager)->mapPropTextureFile);

    (*areaDataManager)->mapPropTextureFile = NULL;
    Heap_FreeToHeap(*areaDataManager);

    (*areaDataManager) = NULL;
}

NNSG3dResTex *AreaDataManager_GetMapTexture(const AreaDataManager *areaDataManager)
{
    GF_ASSERT(areaDataManager != NULL);
    return areaDataManager->mapTexture;
}

NNSG3dResTex *AreaDataManager_GetMapPropTexture(const AreaDataManager *areaDataManager)
{
    GF_ASSERT(areaDataManager != NULL);
    return areaDataManager->mapPropTexture;
}

const MapPropMaterialShape *AreaDataManager_GetMapPropMaterialShape(const AreaDataManager *areaDataManager)
{
    return areaDataManager->mapPropMatShp;
}

BOOL AreaDataManager_IsOutdoorsLighting(const AreaDataManager *areaDataManager)
{
    if ((areaDataManager->areaData.areaLightArchiveID == 0) || (areaDataManager->areaData.areaLightArchiveID == 3)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

u8 AreaDataManager_GetAreaLightArchiveID(const AreaDataManager *areaDataManager)
{
    return areaDataManager->areaData.areaLightArchiveID;
}

int AreaDataManager_GetMapPropModelID(const AreaDataManager *areaDataManager, const int index)
{
    return areaDataManager->mapPropModelIDs[index];
}

BOOL AreaDataManager_HasMapPropModelFile(const AreaDataManager *areaDataManager, const int mapPropModelID)
{
    return areaDataManager->mapPropModelFiles[mapPropModelID] != NULL;
}
