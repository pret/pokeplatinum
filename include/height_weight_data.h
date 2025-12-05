#ifndef POKEPLATINUM_HEIGHT_WEIGHT_DATA_H
#define POKEPLATINUM_HEIGHT_WEIGHT_DATA_H

#include "constants/heap.h"

#include "pokedex_heightweight.h"

HeightWeightData *HeightWeightData_Load(enum HeapID heapID);
void HeightWeightData_Free(HeightWeightData *heightWeightData);

#endif // POKEPLATINUM_HEIGHT_WEIGHT_DATA_H
