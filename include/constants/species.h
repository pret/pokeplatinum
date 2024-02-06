#ifndef POKEPLATINUM_CONSTANTS_SPECIES_H
#define POKEPLATINUM_CONSTANTS_SPECIES_H

#include "consts/generated/c/species.h"

#define KANTO_DEX_COUNT         (SPECIES_MEW - SPECIES_NONE)
#define JOHTO_DEX_COUNT         (SPECIES_CELEBI - SPECIES_MEW)
#define HOENN_DEX_COUNT         (SPECIES_DEOXYS - SPECIES_CELEBI)
#define SINNOH_DEX_COUNT        (SPECIES_ARCEUS - SPECIES_DEOXYS)
#define NATIONAL_DEX_COUNT      (KANTO_DEX_COUNT \
                                + JOHTO_DEX_COUNT \
                                + HOENN_DEX_COUNT \
                                + SINNOH_DEX_COUNT)

#define MAX_SPECIES             SPECIES_BAD_EGG

#endif // POKEPLATINUM_CONSTANTS_SPECIES_H
