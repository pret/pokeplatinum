#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAP_BLOCKS_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAP_BLOCKS_H

#include "constants/heap.h"

typedef struct TownMapBlock {
    u16 x;
    u16 z;
    u16 signpostType;
    u16 signpostNARCMemberIdx;
    u16 areaDescString;
    u16 landmarkDescString;
    u16 areaDescX;
    u16 areaDescY;
    u16 landmarkDescX;
    u16 landmarkDescY;
    u16 hiddenLocationFlags;
    u16 index;
} TownMapBlock;

typedef struct TownMapBlockList {
    int count;
    TownMapBlock *entries;
} TownMapBlockList;

TownMapBlockList *TownMap_ReadBlocks(const char *path, enum HeapID heapID);
void TownMap_FreeBlocks(TownMapBlockList *blockList);
TownMapBlock *TownMap_GetMapBlockAtPosition(TownMapBlockList *blockList, int x, int z, u16 unlockedHiddenLocations);

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAP_BLOCKS_H
