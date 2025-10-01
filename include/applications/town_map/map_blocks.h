#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAP_BLOCKS_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAP_BLOCKS_H

#include "constants/heap.h"

#include "applications/town_map/defs.h"

TownMapBlockList *TownMap_ReadBlockData(const char *param0, enum HeapID heapID);
void TownMap_FreeTownMapBlockData(TownMapBlockList *param0);
TownMapBlock *TownMap_GetHoveredMapBlock(TownMapBlockList *param0, int param1, int param2, u16 param3);

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAP_BLOCKS_H
