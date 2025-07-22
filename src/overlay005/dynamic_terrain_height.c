#include "overlay005/dynamic_terrain_height.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"

static BOOL DynamicTerrainHeightPlate_IsTileInPlate(const int tileX, const int tileZ, const DynamicTerrainHeightPlate *plate) {
    if (!plate->valid) {
        return FALSE;
    }

    int startTileX = plate->startTileX;
    int startTileZ = plate->startTileZ;
    int endTileX = startTileX + plate->sizeX - 1;
    int endTileZ = startTileZ + plate->sizeZ - 1;

    return startTileX <= tileX && tileX <= endTileX
        && startTileZ <= tileZ && tileZ <= endTileZ;
}

DynamicTerrainHeightManager *DynamicTerrainHeightManager_New(const u8 platesCount, const u8 heapID) {
    DynamicTerrainHeightManager *dynamicTerrainHeightMan = Heap_AllocFromHeap(heapID, sizeof(DynamicTerrainHeightManager));

    dynamicTerrainHeightMan->plates = Heap_AllocFromHeap(heapID, sizeof(DynamicTerrainHeightPlate) * platesCount);
    dynamicTerrainHeightMan->platesCount = platesCount;

    for (u8 i = 0; i < platesCount; i++) {
        dynamicTerrainHeightMan->plates[i].valid = FALSE;
    }

    return dynamicTerrainHeightMan;
}

void DynamicTerrainHeightManager_SetPlate(const u8 index, const int startTileX, const int startTileZ, const int sizeX, const int sizeZ, const fx32 height, DynamicTerrainHeightManager *dynamicTerrainHeightMan) {
    dynamicTerrainHeightMan->plates[index].startTileX = startTileX;
    dynamicTerrainHeightMan->plates[index].startTileZ = startTileZ;
    dynamicTerrainHeightMan->plates[index].sizeX = sizeX;
    dynamicTerrainHeightMan->plates[index].sizeZ = sizeZ;
    dynamicTerrainHeightMan->plates[index].height = height;
    dynamicTerrainHeightMan->plates[index].valid = TRUE;
}

void DynamicTerrainHeightManager_Free(DynamicTerrainHeightManager *dynamicTerrainHeightMan) {
    Heap_Free(dynamicTerrainHeightMan->plates);
    Heap_Free(dynamicTerrainHeightMan);
}

BOOL DynamicTerrainHeightManager_GetPlateIndexOfTile(const int tileX, const int tileZ, const DynamicTerrainHeightManager *dynamicTerrainHeightMan, u8 *index) {
    GF_ASSERT(index != NULL);

    for (u8 i = 0; i < dynamicTerrainHeightMan->platesCount; i++) {
        DynamicTerrainHeightPlate *plate = &dynamicTerrainHeightMan->plates[i];

        if (DynamicTerrainHeightPlate_IsTileInPlate(tileX, tileZ, plate)) {
            *index = i;
            return TRUE;
        }
    }

    return FALSE;
}

fx32 DynamicTerrainHeightManager_GetHeight(const u8 index, const DynamicTerrainHeightManager *dynamicTerrainHeightMan) {
    GF_ASSERT(index < dynamicTerrainHeightMan->platesCount);
    GF_ASSERT(dynamicTerrainHeightMan->plates[index].valid);

    return dynamicTerrainHeightMan->plates[index].height;
}

void DynamicTerrainHeightManager_SetHeight(const u8 index, const fx32 height, DynamicTerrainHeightManager *dynamicTerrainHeightMan) {
    GF_ASSERT(index < dynamicTerrainHeightMan->platesCount);
    dynamicTerrainHeightMan->plates[index].height = height;
}
