#include "overlay005/map_prop_material_shape.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "heap.h"

MapPropMaterialShape *MapPropMaterialShape_Alloc(void)
{
    MapPropMaterialShape *propMatShp = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(MapPropMaterialShape));
    GF_ASSERT(propMatShp != NULL);

    return propMatShp;
}

void MapPropMaterialShape_Load(const char *path, MapPropMaterialShape *propMatShp)
{
    FSFile file;
    u16 idsLocatorsCount;
    u16 idsCount;
    int idsLocatorsSize;
    int idsSize;

    FS_InitFile(&file);

    if (FS_OpenFile(&file, path)) {
        int readLength;

        readLength = FS_ReadFile(&file, &idsLocatorsCount, 2);
        GF_ASSERT(readLength >= 0);

        readLength = FS_ReadFile(&file, &idsCount, 2);
        GF_ASSERT(readLength >= 0);

        idsLocatorsSize = sizeof(MapPropMaterialShapeIDsLocator) * idsLocatorsCount;
        idsSize = sizeof(MapPropMaterialShapeIDs) * idsCount;

        propMatShp->idsLocators = Heap_AllocFromHeap(HEAP_ID_FIELD, idsLocatorsSize);
        GF_ASSERT(propMatShp->idsLocators != NULL);

        propMatShp->ids = Heap_AllocFromHeap(HEAP_ID_FIELD, idsSize);
        GF_ASSERT(propMatShp->ids != NULL);

        readLength = FS_ReadFile(&file, propMatShp->idsLocators, idsLocatorsSize);
        GF_ASSERT(readLength >= 0);

        readLength = FS_ReadFile(&file, propMatShp->ids, idsSize);
        GF_ASSERT(readLength >= 0);

        FS_CloseFile(&file);
    } else {
        GF_ASSERT(FALSE);
    }
}

void MapPropMaterialShape_Free(MapPropMaterialShape *propMatShp)
{
    Heap_FreeToHeap(propMatShp->ids);
    Heap_FreeToHeap(propMatShp->idsLocators);
    Heap_FreeToHeap(propMatShp);
}

void MapProp_GetMaterialShapeIDsCount(const int mapPropID, const MapPropMaterialShape *propMatShp, u16 *idsCount)
{
    *idsCount = propMatShp->idsLocators[mapPropID].idsCount;
}

void MapProp_GetMaterialShapeIDsLocator(const int mapPropID, const MapPropMaterialShape *propMatShp, u16 *idsCount, u16 *idsIndex)
{
    *idsCount = propMatShp->idsLocators[mapPropID].idsCount;
    *idsIndex = propMatShp->idsLocators[mapPropID].idsIndex;
}

MapPropMaterialShapeIDs const *MapPropMaterialShape_GetMaterialShapeIDsAt(const u16 index, const MapPropMaterialShape *propMatShp)
{
    return &propMatShp->ids[index];
}
