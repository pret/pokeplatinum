#ifndef POKEPLATINUM_STRUCT_POKEMON_H
#define POKEPLATINUM_STRUCT_POKEMON_H

#include "struct_defs/box_pokemon.h"
#include "struct_decls/party_pokemon_data.h"
#include "struct_defs/party_pokemon_data.h"

typedef struct Pokemon_t {
    BoxPokemon unk_00;
    PartyPokemonData unk_08;
} Pokemon;

#endif // POKEPLATINUM_STRUCT_POKEMON_H
