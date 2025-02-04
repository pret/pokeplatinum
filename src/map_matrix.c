#include "map_matrix.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/map_matrix.h"

#include "heap.h"
#include "map_header.h"
#include "narc.h"

static void MapMatrixData_Load(MapMatrixData *mapMatrixData, const u16 mapMatrixId, int mapHeaderId)
{
    u8 hasMapHeaderIdsSection, hasAltitudesSection;
    u8 modelNamePrefixLen;
    void *buffer;
    u8 *iter;
    int i;

    mapMatrixData->width = 0;
    mapMatrixData->height = 0;

    for (i = 0; i < MAP_MATRIX_MAX_SIZE; i++) {
        mapMatrixData->mapHeaderIds[i] = 0;
        mapMatrixData->altitudes[i] = 0;
        mapMatrixData->landDataIds[i] = 0;
    }

    for (i = 0; i < MAP_MATRIX_MAX_NAME_LENGTH; i++) {
        mapMatrixData->modelNamePrefix[i] = 0;
    }

    buffer = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__MAPMATRIX__MAP_MATRIX, mapMatrixId, HEAP_ID_FIELDMAP);
    iter = (u8 *)buffer;

    mapMatrixData->width = *(iter++);
    mapMatrixData->height = *(iter++);
    hasMapHeaderIdsSection = *(iter++);
    hasAltitudesSection = *(iter++);
    modelNamePrefixLen = *(iter++);

    GF_ASSERT(modelNamePrefixLen <= MAP_MATRIX_MAX_NAME_LENGTH);
    MI_CpuCopy8(iter, mapMatrixData->modelNamePrefix, modelNamePrefixLen);

    iter += (modelNamePrefixLen);

    if (hasMapHeaderIdsSection) {
        MI_CpuCopy8(iter, mapMatrixData->mapHeaderIds, mapMatrixData->width * mapMatrixData->height * sizeof(u16));
        iter += (mapMatrixData->width * mapMatrixData->height * 2);
    } else {
        MI_CpuFill16(mapMatrixData->mapHeaderIds, mapHeaderId, mapMatrixData->width * mapMatrixData->height * sizeof(u16));
    }

    if (hasAltitudesSection) {
        MI_CpuCopy8(iter, mapMatrixData->altitudes, mapMatrixData->width * mapMatrixData->height);
        iter += (mapMatrixData->width * mapMatrixData->height);
    }

    MI_CpuCopy8(iter, mapMatrixData->landDataIds, mapMatrixData->width * mapMatrixData->height * sizeof(u16));
    Heap_FreeToHeap(buffer);
}

MapMatrix *MapMatrix_New(void)
{
    return MapMatrix_NewWithHeapID(HEAP_ID_FIELDMAP);
}

MapMatrix *MapMatrix_NewWithHeapID(u32 heapId)
{
    MapMatrix *mapMatrix = Heap_AllocFromHeap(heapId, sizeof(MapMatrix));
    mapMatrix->width = 0;
    mapMatrix->height = 0;
    mapMatrix->matrixId = 0;

    return mapMatrix;
}

void MapMatrix_Copy(MapMatrix *src, MapMatrix *dest)
{
    GF_ASSERT(dest != NULL);
    GF_ASSERT(src != NULL);
    GF_ASSERT(src != dest);

    *dest = *src;
}

void MapMatrix_Load(const int mapHeaderId, MapMatrix *mapMatrix)
{
    u16 mapMatrixID = MapHeader_GetMapMatrixID(mapHeaderId);
    MapMatrixData_Load(&mapMatrix->data, mapMatrixID, mapHeaderId);

    mapMatrix->matrixId = mapMatrixID;
    mapMatrix->height = mapMatrix->data.height;
    mapMatrix->width = mapMatrix->data.width;
}

void MapMatrix_Free(MapMatrix *const mapMatrix)
{
    Heap_FreeToHeap(mapMatrix);
}

u16 MapMatrix_GetLandDataIdByIndex2(int index, const MapMatrix *mapMatrix)
{
    GF_ASSERT(index < (mapMatrix->width * mapMatrix->height));
    return mapMatrix->data.landDataIds[index];
}

int MapMatrix_GetWidth(const MapMatrix *mapMatrix)
{
    GF_ASSERT(mapMatrix != NULL);
    return mapMatrix->width;
}

int MapMatrix_GetHeight(const MapMatrix *mapMatrix)
{
    GF_ASSERT(mapMatrix != NULL);
    return mapMatrix->height;
}

u16 MapMatrix_GetMapHeaderIDAtCoords(const MapMatrix *mapMatrix, int x, int y)
{
    int mapMatrixWidth = mapMatrix->width;
    int mapMatrixHeight = mapMatrix->height;

    GF_ASSERT(0 <= x && x < mapMatrixWidth);
    GF_ASSERT(0 <= y && y < mapMatrixHeight);

    return mapMatrix->data.mapHeaderIds[x + y * mapMatrixWidth];
}

u16 MapMatrix_GetMapHeaderIDAtIndex(const MapMatrix *mapMatrix, const int index)
{
    int mapSize = mapMatrix->width * mapMatrix->height;

    GF_ASSERT(0 <= index && index < mapSize);
    return mapMatrix->data.mapHeaderIds[index];
}

u8 MapMatrix_GetMatrixID(const MapMatrix *mapMatrix)
{
    return mapMatrix->matrixId;
}

int MapMatrix_GetAltitudeAtCoords(const MapMatrix *mapMatrix, const int param1, const int x, const int y, const int width)
{
    GF_ASSERT(x < width);
    GF_ASSERT((x + y * width) < MAP_MATRIX_MAX_SIZE);

    return mapMatrix->data.altitudes[x + y * width];
}

MainMapMatrixData *MainMapMatrixData_Load(const u32 heapId)
{
    int modelNamePrefixLen;
    void *buffer;
    u8 *iter;

    MainMapMatrixData *mainMapMatrixData = Heap_AllocFromHeap(heapId, sizeof(MainMapMatrixData));
    buffer = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__MAPMATRIX__MAP_MATRIX, 0, heapId);
    iter = (u8 *)buffer;

    iter += 4;
    modelNamePrefixLen = *iter;

    iter++;
    iter += (modelNamePrefixLen);

    MI_CpuCopy8(iter, mainMapMatrixData->mapHeaderIds, MAP_MATRIX_MAX_SIZE * sizeof(u16));
    Heap_FreeToHeap(buffer);

    return mainMapMatrixData;
}

void MainMapMatrixData_Free(MainMapMatrixData *mainMapMatrixData)
{
    GF_ASSERT(mainMapMatrixData != NULL);
    Heap_FreeToHeap(mainMapMatrixData);
}

int MainMapMatrixData_GetMapHeaderIDAtCoords(const MainMapMatrixData *mainMapMatrixData, const u32 x, const u32 y)
{
    return mainMapMatrixData->mapHeaderIds[x + y * MAP_MATRIX_MAX_WIDTH];
}

int MapMatrixData_GetMapHeaderIDAtCoords(const int mapMatrixId, const u16 x, const u16 y)
{
    MapMatrixData mapMatrixData;
    u16 v1, v2;

    MapMatrixData_Load(&mapMatrixData, mapMatrixId, 0);

    GF_ASSERT(x < mapMatrixData.width);
    GF_ASSERT(y < mapMatrixData.height);

    return mapMatrixData.mapHeaderIds[y * mapMatrixData.width + x];
}

const u16 MapMatrix_GetLandDataIdByIndex(const int index, const MapMatrix *mapMatrix)
{
    u16 v0;
    int x = index % mapMatrix->width;
    int y = index / mapMatrix->width;

    GF_ASSERT(mapMatrix != NULL);

    v0 = MapMatrix_GetLandDataIdByIndex2(index, mapMatrix);
    return v0;
}

void MapMatrix_RevealSpringPath(MapMatrix *mapMatrix)
{
    u16 *mapMatrixLandDataIds = mapMatrix->data.landDataIds;
    u8 *mapMatrixAltitudes = mapMatrix->data.altitudes;
    int mapMatrixHeight = mapMatrix->height;
    int mapMatrixWidth = mapMatrix->width;
    int v4, v5;

    if (mapMatrix->matrixId != 0) {
        return;
    }

    mapMatrixLandDataIds[23 + mapMatrixWidth * 21] = 176;
    mapMatrixLandDataIds[24 + mapMatrixWidth * 21] = 176;
    mapMatrixLandDataIds[23 + mapMatrixWidth * 22] = 176;
    mapMatrixLandDataIds[24 + mapMatrixWidth * 22] = 176;

    mapMatrixAltitudes[23 + mapMatrixWidth * 21] = 2;
    mapMatrixAltitudes[24 + mapMatrixWidth * 21] = 2;
    mapMatrixAltitudes[23 + mapMatrixWidth * 22] = 2;
    mapMatrixAltitudes[24 + mapMatrixWidth * 22] = 2;
}

void MapMatrix_RevealSeabreakPath(MapMatrix *mapMatrix)
{
    int v0, v1;
    u16 *mapMatrixLandDataIds = mapMatrix->data.landDataIds;
    int mapMatrixHeight = mapMatrix->height;
    int mapMatrixWidth = mapMatrix->width;

    if (mapMatrix->matrixId != 0) {
        return;
    }

    mapMatrixLandDataIds[mapMatrixWidth * 15 + 28] = 119;
    mapMatrixLandDataIds[mapMatrixWidth * 16 + 27] = 120;
    mapMatrixLandDataIds[mapMatrixWidth * 16 + 28] = 121;
    mapMatrixLandDataIds[mapMatrixWidth * 17 + 27] = 122;
}
