#include "overlay005/map_prop_mat_shp.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "heap.h"

MapPropMatShp *MapPropMatShp_Alloc(void)
{
    MapPropMatShp *mapPropMatShp = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(MapPropMatShp));
    GF_ASSERT(mapPropMatShp != NULL);

    return mapPropMatShp;
}

void MapPropMatShp_Load(const char *path, MapPropMatShp *mapPropMatShp)
{
    FSFile file;
    u16 matShpIdsLocatorsCount;
    u16 matShpIdsCount;
    int matShpIdsLocatorsSize;
    int matShpIdsSize;

    FS_InitFile(&file);

    if (FS_OpenFile(&file, path)) {
        int readLength;

        readLength = FS_ReadFile(&file, &matShpIdsLocatorsCount, 2);
        GF_ASSERT(readLength >= 0);

        readLength = FS_ReadFile(&file, &matShpIdsCount, 2);
        GF_ASSERT(readLength >= 0);

        matShpIdsLocatorsSize = sizeof(MapPropMatShpIdsLocator) * matShpIdsLocatorsCount;
        matShpIdsSize = sizeof(MapPropMatShpIds) * matShpIdsCount;

        mapPropMatShp->matShpIdsLocators = Heap_AllocFromHeap(HEAP_ID_FIELD, matShpIdsLocatorsSize);
        GF_ASSERT(mapPropMatShp->matShpIdsLocators != NULL);

        mapPropMatShp->matShpIds = Heap_AllocFromHeap(HEAP_ID_FIELD, matShpIdsSize);
        GF_ASSERT(mapPropMatShp->matShpIds != NULL);

        readLength = FS_ReadFile(&file, mapPropMatShp->matShpIdsLocators, matShpIdsLocatorsSize);
        GF_ASSERT(readLength >= 0);

        readLength = FS_ReadFile(&file, mapPropMatShp->matShpIds, matShpIdsSize);
        GF_ASSERT(readLength >= 0);

        FS_CloseFile(&file);
    } else {
        GF_ASSERT(FALSE);
    }
}

void MapPropMatShp_Free(MapPropMatShp *mapPropMatShp)
{
    Heap_FreeToHeap(mapPropMatShp->matShpIds);
    Heap_FreeToHeap(mapPropMatShp->matShpIdsLocators);
    Heap_FreeToHeap(mapPropMatShp);
}

void MapPropMatShp_GetMatShpIdsCountOfMapProp(const int mapPropId, const MapPropMatShp *mapPropMatShp, u16 *matShpIdsCount)
{
    *matShpIdsCount = mapPropMatShp->matShpIdsLocators[mapPropId].matShpIdsCount;
}

void MapPropMatShp_GetMatShpIdsLocatorOfMapProp(const int mapPropId, const MapPropMatShp *mapPropMatShp, u16 *matShpIdsCount, u16 *matShpIdsIndex)
{
    *matShpIdsCount = mapPropMatShp->matShpIdsLocators[mapPropId].matShpIdsCount;
    *matShpIdsIndex = mapPropMatShp->matShpIdsLocators[mapPropId].matShpIdsIndex;
}

MapPropMatShpIds const *MapPropMatShp_GetMatShpIdsAt(const u16 index, const MapPropMatShp *mapPropMatShp)
{
    return &mapPropMatShp->matShpIds[index];
}
