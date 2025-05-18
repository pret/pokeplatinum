#ifndef POKEPLATINUM_POKEDEX_FOOT_H
#define POKEPLATINUM_POKEDEX_FOOT_H

#include "constants/narc.h"
#include "species.h"

enum NarcID PokedexFoot_NarcID(void);
int PokedexFoot_CharIdx(enum Species species);
int PokedexFoot_PaletteIdx(void);
int PokedexFoot_CellIdx(void);
int PokedexFoot_AnimIdx(void);

#endif // POKEPLATINUM_POKEDEX_FOOT_H
