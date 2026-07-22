#ifndef POKEPLATINUM_FRONTIER_POKEMON_BASE_H
#define POKEPLATINUM_FRONTIER_POKEMON_BASE_H

#include "constants/moves.h"

typedef struct FrontierPokemonBase {
    u16 species;
    u16 moves[LEARNED_MOVES_MAX];
    u8 evFlags;
    u8 nature;
    u16 item;
    u16 form;
} FrontierPokemonBase;

#endif // POKEPLATINUM_FRONTIER_POKEMON_BASE_H
