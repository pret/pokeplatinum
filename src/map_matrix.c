#include "map_matrix.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_matrix.h"
#include "constants/heap.h"

#include "heap.h"
#include "map_header.h"
#include "narc.h"

static void MapMatrixData_Load(MapMatrixData *mapMatrixData, const u16 mapMatrixID, int mapHeaderID)
{
    int i;

    mapMatrixData->width = 0;
    mapMatrixData->height = 0;

    for (i = 0; i < MAP_MATRIX_MAX_SIZE; i++) {
        mapMatrixData->mapHeaderIDs[i] = 0;
        mapMatrixData->altitudes[i] = 0;
        mapMatrixData->landDataIDs[i] = 0;
    }

    for (i = 0; i < MAP_MATRIX_MAX_NAME_LENGTH; i++) {
        mapMatrixData->modelNamePrefix[i] = 0;
    }

    void *buffer = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__MAPMATRIX__MAP_MATRIX, mapMatrixID, HEAP_ID_FIELD2);
    u8 *iter = (u8 *)buffer;

    mapMatrixData->width = *(iter++);
    mapMatrixData->height = *(iter++);
    u8 hasMapHeaderIDsSection = *(iter++);
    u8 hasAltitudesSection = *(iter++);
    u8 modelNamePrefixLen = *(iter++);

    GF_ASSERT(modelNamePrefixLen <= MAP_MATRIX_MAX_NAME_LENGTH);
    MI_CpuCopy8(iter, mapMatrixData->modelNamePrefix, modelNamePrefixLen);

    iter += (modelNamePrefixLen);

    if (hasMapHeaderIDsSection) {
        MI_CpuCopy8(iter, mapMatrixData->mapHeaderIDs, mapMatrixData->width * mapMatrixData->height * sizeof(u16));
        iter += (mapMatrixData->width * mapMatrixData->height * 2);
    } else {
        MI_CpuFill16(mapMatrixData->mapHeaderIDs, mapHeaderID, mapMatrixData->width * mapMatrixData->height * sizeof(u16));
    }

    if (hasAltitudesSection) {
        MI_CpuCopy8(iter, mapMatrixData->altitudes, mapMatrixData->width * mapMatrixData->height);
        iter += (mapMatrixData->width * mapMatrixData->height);
    }

    MI_CpuCopy8(iter, mapMatrixData->landDataIDs, mapMatrixData->width * mapMatrixData->height * sizeof(u16));
    Heap_FreeToHeap(buffer);
}

MapMatrix *MapMatrix_New(void)
{
    return MapMatrix_NewWithHeapID(HEAP_ID_FIELD2);
}

MapMatrix *MapMatrix_NewWithHeapID(u32 heapID)
{
    MapMatrix *mapMatrix = Heap_AllocFromHeap(heapID, sizeof(MapMatrix));
    mapMatrix->width = 0;
    mapMatrix->height = 0;
    mapMatrix->matrixID = 0;

    return mapMatrix;
}

void MapMatrix_Copy(MapMatrix *src, MapMatrix *dest)
{
    GF_ASSERT(dest != NULL);
    GF_ASSERT(src != NULL);
    GF_ASSERT(src != dest);

    *dest = *src;
}

void MapMatrix_Load(const int mapHeaderID, MapMatrix *mapMatrix)
{
    u16 mapMatrixID = MapHeader_GetMapMatrixID(mapHeaderID);
    MapMatrixData_Load(&mapMatrix->data, mapMatrixID, mapHeaderID);

    mapMatrix->matrixID = mapMatrixID;
    mapMatrix->height = mapMatrix->data.height;
    mapMatrix->width = mapMatrix->data.width;
}

void MapMatrix_Free(MapMatrix *const mapMatrix)
{
    Heap_FreeToHeap(mapMatrix);
}

u16 MapMatrix_GetLandDataIDByIndex2(int index, const MapMatrix *mapMatrix)
{
    GF_ASSERT(index < (mapMatrix->width * mapMatrix->height));
    return mapMatrix->data.landDataIDs[index];
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

    return mapMatrix->data.mapHeaderIDs[x + y * mapMatrixWidth];
}

u16 MapMatrix_GetMapHeaderIDAtIndex(const MapMatrix *mapMatrix, const int index)
{
    int mapSize = mapMatrix->width * mapMatrix->height;

    GF_ASSERT(0 <= index && index < mapSize);
    return mapMatrix->data.mapHeaderIDs[index];
}

u8 MapMatrix_GetMatrixID(const MapMatrix *mapMatrix)
{
    return mapMatrix->matrixID;
}

int MapMatrix_GetAltitudeAtCoords(const MapMatrix *mapMatrix, const int param1, const int x, const int y, const int width)
{
    GF_ASSERT(x < width);
    GF_ASSERT((x + y * width) < MAP_MATRIX_MAX_SIZE);

    return mapMatrix->data.altitudes[x + y * width];
}

MainMapMatrixData *MainMapMatrixData_Load(const u32 heapID)
{
    MainMapMatrixData *mainMapMatrixData = Heap_AllocFromHeap(heapID, sizeof(MainMapMatrixData));
    void *buffer = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__MAPMATRIX__MAP_MATRIX, 0, heapID);
    u8 *iter = (u8 *)buffer;

    iter += 4;
    int modelNamePrefixLen = *iter;

    iter++;
    iter += modelNamePrefixLen;

    MI_CpuCopy8(iter, mainMapMatrixData->mapHeaderIDs, MAP_MATRIX_MAX_SIZE * sizeof(u16));
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
    return mainMapMatrixData->mapHeaderIDs[x + y * MAP_MATRIX_MAX_WIDTH];
}

int MapMatrixData_GetMapHeaderIDAtCoords(const int mapMatrixID, const u16 x, const u16 y)
{
    MapMatrixData mapMatrixData;
    MapMatrixData_Load(&mapMatrixData, mapMatrixID, 0);

    GF_ASSERT(x < mapMatrixData.width);
    GF_ASSERT(y < mapMatrixData.height);

    return mapMatrixData.mapHeaderIDs[y * mapMatrixData.width + x];
}

const u16 MapMatrix_GetLandDataIDByIndex(const int index, const MapMatrix *mapMatrix)
{
    GF_ASSERT(mapMatrix != NULL);
    return MapMatrix_GetLandDataIDByIndex2(index, mapMatrix);
}

void MapMatrix_RevealSpringPath(MapMatrix *mapMatrix)
{
    u16 *mapMatrixLandDataIDs = mapMatrix->data.landDataIDs;
    u8 *mapMatrixAltitudes = mapMatrix->data.altitudes;
    int mapMatrixHeight = mapMatrix->height;
    int mapMatrixWidth = mapMatrix->width;

    if (mapMatrix->matrixID != 0) {
        return;
    }

    mapMatrixLandDataIDs[23 + mapMatrixWidth * 21] = 176;
    mapMatrixLandDataIDs[24 + mapMatrixWidth * 21] = 176;
    mapMatrixLandDataIDs[23 + mapMatrixWidth * 22] = 176;
    mapMatrixLandDataIDs[24 + mapMatrixWidth * 22] = 176;

    mapMatrixAltitudes[23 + mapMatrixWidth * 21] = 2;
    mapMatrixAltitudes[24 + mapMatrixWidth * 21] = 2;
    mapMatrixAltitudes[23 + mapMatrixWidth * 22] = 2;
    mapMatrixAltitudes[24 + mapMatrixWidth * 22] = 2;
}

void MapMatrix_RevealSeabreakPath(MapMatrix *mapMatrix)
{
    u16 *mapMatrixLandDataIDs = mapMatrix->data.landDataIDs;
    int mapMatrixHeight = mapMatrix->height;
    int mapMatrixWidth = mapMatrix->width;

    if (mapMatrix->matrixID != 0) {
        return;
    }

    mapMatrixLandDataIDs[mapMatrixWidth * 15 + 28] = 119;
    mapMatrixLandDataIDs[mapMatrixWidth * 16 + 27] = 120;
    mapMatrixLandDataIDs[mapMatrixWidth * 16 + 28] = 121;
    mapMatrixLandDataIDs[mapMatrixWidth * 17 + 27] = 122;
}
