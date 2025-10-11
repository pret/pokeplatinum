#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAP_BLOCKS_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAP_BLOCKS_H

#include "constants/heap.h"

#include "applications/town_map/defs.h"

TownMapBlockList *TownMap_ReadBlocks(const char *path, enum HeapID heapID);
void TownMap_FreeBlocks(TownMapBlockList *blockList);
TownMapBlock *TownMap_GetMapBlockAtPosition(TownMapBlockList *blockList, int x, int z, u16 unlockedHiddenLocations);

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAP_BLOCKS_H
