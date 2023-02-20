#ifndef POKEPLATINUM_STRUCT_POKEMON_H
#define POKEPLATINUM_STRUCT_POKEMON_H

#include "struct_defs/box_pokemon.h"
#include "struct_decls/party_pokemon.h"
#include "struct_defs/party_pokemon.h"

typedef struct {
    BoxPokemon box;
    PartyPokemon party;
} Pokemon;

#endif // POKEPLATINUM_STRUCT_POKEMON_H
