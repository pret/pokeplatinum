#ifndef POKEPLATINUM_STRUCT_OV21_021D3A60_H
#define POKEPLATINUM_STRUCT_OV21_021D3A60_H

#include "constants/species.h"

#include "overlay021/struct_ov21_021D37DC.h"

typedef struct {
    speciesCaughtStatusStruct caughtStatusArray[NATIONAL_DEX_COUNT];
    int unk_F68;
    int numEncountered; // number of pokemon seen
    int encounteredIndexArray[NATIONAL_DEX_COUNT]; // dex number for appearing in dex, dexLength+1 otherwise
    int unk_1724;
    int numSpecies;
} pokedexCompletionStruct;

#endif // POKEPLATINUM_STRUCT_OV21_021D3A60_H
