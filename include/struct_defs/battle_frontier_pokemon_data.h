#ifndef POKEPLATINUM_BATTLE_FRONTIER_POKEMON_DATA
#define POKEPLATINUM_BATTLE_FRONTIER_POKEMON_DATA

#include "constants/moves.h"

typedef struct BattleFrontierPokemonData {
    u16 species;
    u16 moves[LEARNED_MOVES_MAX];
    u8 evFlags;
    u8 nature;
    u16 item;
    u16 form;
} BattleFrontierPokemonData;

#endif // POKEPLATINUM_BATTLE_FRONTIER_POKEMON_DATA
