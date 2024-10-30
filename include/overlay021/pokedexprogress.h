#ifndef POKEPLATINUM_POKEDEXPROGRESS_H
#define POKEPLATINUM_POKEDEXPROGRESS_H

#include "constants/species.h"

#include "overlay021/speciesCaughtStatus.h"

typedef struct {
    SpeciesCaughtStatus caughtStatusArray[NATIONAL_DEX_COUNT];
    int unk_F68;
    int numEncountered; // number of pokemon seen
    int encounteredIndexArray[NATIONAL_DEX_COUNT]; // dex number for appearing in dex, dexLength+1 otherwise
    int unk_1724;
    int numSpecies;
} PokedexProgress;

#endif // POKEPLATINUM_POKEDEXPROGRESS_H
