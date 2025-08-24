#ifndef POKEPLATINUM_DISTRIBUTION_CARTRIDGE_H
#define POKEPLATINUM_DISTRIBUTION_CARTRIDGE_H

#include "constants/heap.h"

void DistributionCartridge_UseHeap(enum HeapID heapID);
int DistributionCartridge_ReadLength(void);
BOOL DistributionCartridge_ReadData(void *dest, int size);

#endif // POKEPLATINUM_DISTRIBUTION_CARTRIDGE_H
