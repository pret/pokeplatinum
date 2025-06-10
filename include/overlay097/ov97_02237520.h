#ifndef POKEPLATINUM_OV97_02237520_H
#define POKEPLATINUM_OV97_02237520_H

#include "constants/heap.h"

void DistributionCartridge_UseHeap(enum HeapId heapID);
int DistributionCartridge_ReadLength(void);
BOOL DistributionCartridge_ReadData(void *dest, int size);

#endif // POKEPLATINUM_OV97_02237520_H
