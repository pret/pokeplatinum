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

#define CATCHING_SHOW_MONS       6
#define MAX_GBA_TRANSFER_HISTORY 20

#endif // POKEPLATINUM_CONSTANTS_POKEMON_H
