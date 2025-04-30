#ifndef POKEPLATINUM_OV5_DYNAMIC_TERRAIN_HEIGHT_H
#define POKEPLATINUM_OV5_DYNAMIC_TERRAIN_HEIGHT_H

#include <nitro/fx/fx.h>
#include <nitro/types.h>

typedef struct {
    int startTileX;
    int startTileZ;
    int sizeX;
    int sizeZ;
    fx32 height;
    BOOL valid;
} DynamicTerrainHeightPlate;

typedef struct DynamicTerrainHeightManager {
    int platesCount;
    DynamicTerrainHeightPlate *plates;
} DynamicTerrainHeightManager;

DynamicTerrainHeightManager *DynamicTerrainHeightManager_New(const u8 platesCount, const u8 heapID);
void DynamicTerrainHeightManager_SetPlate(const u8 index, const int startTileX, const int startTileZ, const int sizeX, const int sizeZ, const fx32 height, DynamicTerrainHeightManager *dynamicTerrainHeightMan);
void DynamicTerrainHeightManager_Free(DynamicTerrainHeightManager *dynamicTerrainHeightMan);
BOOL DynamicTerrainHeightManager_GetPlateIndexOfTile(const int tileX, const int tileZ, const DynamicTerrainHeightManager *dynamicTerrainHeightMan, u8 *index);
fx32 DynamicTerrainHeightManager_GetHeight(const u8 index, const DynamicTerrainHeightManager *dynamicTerrainHeightMan);
void DynamicTerrainHeightManager_SetHeight(const u8 index, const fx32 height, DynamicTerrainHeightManager *dynamicTerrainHeightMan);

#endif // POKEPLATINUM_OV5_DYNAMIC_TERRAIN_HEIGHT_H
