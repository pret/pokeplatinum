#ifndef POKEPLATINUM_POKEDEX_FOOTPRINT_H
#define POKEPLATINUM_POKEDEX_FOOTPRINT_H

#include "constants/narc.h"

#include "species.h"

enum NarcID GetPokedexFootprintsNarcID(void);
int GetSpeciesFootprintTiles(enum Species species);
int GetSharedFootprintPalette(void);
int GetSharedFootprintCells(void);
int GetSharedFootprintAnims(void);

#endif // POKEPLATINUM_POKEDEX_FOOTPRINT_H
