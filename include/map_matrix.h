#ifndef POKEPLATINUM_MAP_MATRIX_H
#define POKEPLATINUM_MAP_MATRIX_H

#include "constants/map_matrix.h"

typedef struct MapMatrixData {
    u8 height;
    u8 width;
    u16 mapHeaderIds[MAP_MATRIX_MAX_SIZE];
    u8 altitudes[MAP_MATRIX_MAX_SIZE];
    u16 landDataIds[MAP_MATRIX_MAX_SIZE];
    char modelNamePrefix[MAP_MATRIX_MAX_NAME_LENGTH];
} MapMatrixData;

typedef struct MapMatrix {
    u8 width;
    u8 height;
    u8 matrixId;
    MapMatrixData data;
} MapMatrix;

typedef struct MainMapMatrixData {
    u16 mapHeaderIds[MAP_MATRIX_MAX_SIZE];
} MainMapMatrixData;

MapMatrix *MapMatrix_New(void);
MapMatrix *MapMatrix_NewWithHeapID(u32 heapId);
void MapMatrix_Load(const int mapHeaderId, MapMatrix *mapMatrix);
void MapMatrix_Free(MapMatrix *const mapMatrix);
void MapMatrix_Copy(MapMatrix *src, MapMatrix *dest);
u16 MapMatrix_GetMapHeaderIDAtCoords(const MapMatrix *mapMatrix, int x, int y);
u16 MapMatrix_GetMapHeaderIDAtIndex(const MapMatrix *mapMatrix, const int index);
int MapMatrix_GetAltitudeAtCoords(const MapMatrix *mapMatrix, const int param1, const int x, const int y, const int width);
int MapMatrix_GetWidth(const MapMatrix *mapMatrix);
int MapMatrix_GetHeight(const MapMatrix *mapMatrix);
u8 MapMatrix_GetMatrixID(const MapMatrix *mapMatrix);
const u16 MapMatrix_GetLandDataIdByIndex(const int index, const MapMatrix *mapMatrix);
u16 MapMatrix_GetLandDataIdByIndex2(int index, const MapMatrix *mapMatrix);
void MapMatrix_RevealSpringPath(MapMatrix *mapMatrix);
void MapMatrix_RevealSeabreakPath(MapMatrix *mapMatrix);

int MapMatrixData_GetMapHeaderIDAtCoords(const int mapMatrixId, const u16 x, const u16 y);

MainMapMatrixData *MainMapMatrixData_Load(const u32 heapId);
void MainMapMatrixData_Free(MainMapMatrixData *mainMapMatrixData);
int MainMapMatrixData_GetMapHeaderIDAtCoords(const MainMapMatrixData *mainMapMatrixData, const u32 x, const u32 y);

#endif // POKEPLATINUM_MAP_MATRIX_H
