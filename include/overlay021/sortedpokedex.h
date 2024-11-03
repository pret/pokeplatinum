#ifndef POKEPLATINUM_SORTEDPOKEDEX_H
#define POKEPLATINUM_SORTEDPOKEDEX_H

#include "constants/species.h"

#include "overlay021/speciesCaughtStatus.h"

typedef struct {
    SpeciesCaughtStatus caughtStatusArray[NATIONAL_DEX_COUNT];
    int currentStatusIndex;
    int caughtStatusLength;
    int displayPokedex[NATIONAL_DEX_COUNT]; // contains index for caughtStatusArray, not species
    int currentDisplayIndex;
    int numDisplayed;
} SortedPokedex;

#endif // POKEPLATINUM_SORTEDPOKEDEX_H
