#ifndef POKEPLATINUM_STRUCT_POKEMON_H
#define POKEPLATINUM_STRUCT_POKEMON_H

#include "struct_defs/box_pokemon.h"
#include "struct_defs/party_pokemon.h"

/**
 * @brief The main Pokemon data structure
 */
typedef struct Pokemon {
    BoxPokemon box; //!< Contains the pokemons boxed data
    PartyPokemon party; //!< Contains the pokemons extra data while it is in the players party
} Pokemon;

#endif // POKEPLATINUM_STRUCT_POKEMON_H
