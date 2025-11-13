#ifndef POKEPLATINUM_CONSTANTS_POKEMON_H
#define POKEPLATINUM_CONSTANTS_POKEMON_H

#include "generated/pokemon_data_params.h" // PokemonDataParam
#include "generated/pokemon_stats.h" // PokemonStat
#include "generated/pokemon_types.h" // PokemonType
#include "generated/species_data_params.h" // SpeciesDataParam

#define MAX_PARTY_SIZE      6
#define NUM_BOOSTABLE_STATS 8

#define MAX_IVS_SINGLE_STAT 31
#define MAX_EVS_SINGLE_STAT 255
#define MAX_EVS_ALL_STATS   510

#define MAX_CONTEST_STAT 255

#define MAX_POKEMON_SHEEN    255
#define MAX_POKEMON_MARKINGS 6
#define MAX_POKEMON_LEVEL    100
#define EGG_POKEMON_LEVEL    1

#define EVOLVE_FRIENDSHIP_THRESHOLD 220

#define BASE_FRIENDSHIP_VALUE 70
#define MAX_FRIENDSHIP_VALUE  255
#define LOW_FRIENDSHIP_LIMIT  100
#define MED_FRIENDSHIP_LIMIT  200
#define HIGH_FRIENDSHIP_LIMIT MAX_FRIENDSHIP_VALUE

#define CATCHING_SHOW_MONS       6
#define MAX_GBA_TRANSFER_HISTORY 20

#define MAX_PP_UP_BONUSES 3

#define LEVEL_UP_MOVESET_TERMINATOR 0xffff

#endif // POKEPLATINUM_CONSTANTS_POKEMON_H
