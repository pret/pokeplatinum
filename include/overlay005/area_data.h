#ifndef POKEPLATINUM_OV5_AREA_DATA_H
#define POKEPLATINUM_OV5_AREA_DATA_H

#include <nnsys.h>

#include "overlay005/map_prop_material_shape.h"
#include "overlay005/struct_ov5_021D3CAC_decl.h"

#define MAX_MAP_PROP_MODEL_FILES 768

typedef struct AreaDataManagerLoadData {
    int areaDataArchiveID;
    UnkStruct_ov5_021D3CAC *unk_04;
    u16 mapPropModelIDsCount;
    int dummy0C;
} AreaDataManagerLoadData;

typedef struct AreaDataFile {
    u16 mapPropArchivesID;
    u16 mapTextureArchiveID;
    // The value of this changes in the NARC, but is unused in the code
    u16 dummy04;
    u16 areaLightArchiveID;
} AreaDataFile;

typedef struct AreaDataManager {
    int dummy00;
    NNSG3dResFileHeader *mapPropModelFiles[MAX_MAP_PROP_MODEL_FILES];
    void *mapTextureFile;
    void *mapPropTextureFile;
    NNSG3dResTex *mapTexture;
    NNSG3dResTex *mapPropTexture;
    MapPropMaterialShape *mapPropMatShp;
    AreaDataFile areaData;
    AreaDataManagerLoadData *loadData;
    // Note: the first element is the size of this array
    u16 *mapPropModelIDs;
} AreaDataManager;

AreaDataManager *AreaDataManager_Alloc(int areaDataArchiveID, UnkStruct_ov5_021D3CAC *param1);
void AreaDataManager_Load(AreaDataManager *areaDataManager);
NNSG3dResFileHeader **AreaDataManager_GetMapPropModelFile(const int mapPropModelID, AreaDataManager *const areaDataManager);
void AreaDataManager_Free(AreaDataManager **areaDataManager);
NNSG3dResTex *AreaDataManager_GetMapTexture(const AreaDataManager *areaDataManager);
NNSG3dResTex *AreaDataManager_GetMapPropTexture(const AreaDataManager *areaDataManager);
const MapPropMaterialShape *AreaDataManager_GetMapPropMaterialShape(const AreaDataManager *areaDataManager);
BOOL AreaDataManager_IsOutdoorsLighting(const AreaDataManager *areaDataManager);
u8 AreaDataManager_GetAreaLightArchiveID(const AreaDataManager *areaDataManager);
int AreaDataManager_GetMapPropModelID(const AreaDataManager *areaDataManager, const int index);
BOOL AreaDataManager_HasMapPropModelFile(const AreaDataManager *areaDataManager, const int mapPropModelID);

#endif // POKEPLATINUM_OV5_AREA_DATA_H
