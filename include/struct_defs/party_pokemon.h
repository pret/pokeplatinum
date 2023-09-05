#ifndef POKEPLATINUM_PARTY_POKEMON_DATA_T_H
#define POKEPLATINUM_PARTY_POKEMON_DATA_T_H

#include "struct_defs/struct_0202818C.h"
#include "struct_defs/struct_0202CA28.h"

/**
 * @brief Party Pokemon data structure
 */
typedef struct PartyPokemon {
    u32 unk_00;
    u8 level;  //!< The pokemons level
    u8 unk_05;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
    u16 unk_12;
    UnkStruct_0202818C unk_14;
    UnkStruct_0202CA28 unk_4C;
} PartyPokemon;

#endif // POKEPLATINUM_PARTY_POKEMON_DATA_T_H
