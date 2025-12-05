#ifndef POKEPLATINUM_POKEDEX_SORT_DATA_H
#define POKEPLATINUM_POKEDEX_SORT_DATA_H

#include "struct_decls/pokedexdata_decl.h"

#include "applications/pokedex/sorted_pokedex.h"

#include "pokedex_heightweight.h"
#include "strbuf.h"

typedef struct {
    const Pokedex *pokedex;
    SortedPokedex sortedPokedex;
    int isNationalDex;
    BOOL isNationalDexUnlocked;
    int numEncountered;
    int numCaught;
    BOOL unk_1740;
    int timeOfDay;
    HeightWeightData *HWData;
    u32 trainerGameCode;
    u32 trainerGender;
    Strbuf *trainerName;
    int unk_1758;
    u16 currentSpecies;
    u16 bootMode;
    BOOL fullmoonIslandVisible;
    BOOL newmoonIslandVisible;
    BOOL springPathVisible;
    BOOL seabreakPathVisible;
} PokedexSortData;

#endif // POKEPLATINUM_POKEDEX_SORT_DATA_H
