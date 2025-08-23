#ifndef POKEPLATINUM_APPLICATIONS_POKEDEX_FOOTPRINT_H
#define POKEPLATINUM_APPLICATIONS_POKEDEX_FOOTPRINT_H

#include "constants/narc.h"
#include "constants/species.h"

enum NarcID GetPokedexFootprintsNarcID(void);
int GetSpeciesFootprintTiles(enum Species species);
int GetSharedFootprintPalette(void);
int GetSharedFootprintCells(void);
int GetSharedFootprintAnims(void);

#endif // POKEPLATINUM_APPLICATIONS_POKEDEX_FOOTPRINT_H
