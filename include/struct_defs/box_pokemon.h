#ifndef POKEPLATINUM_BOX_POKEMON_H
#define POKEPLATINUM_BOX_POKEMON_H

#include "struct_defs/pokemon_substruct_1.h"
#include "struct_defs/pokemon_substruct_2.h"
#include "struct_defs/pokemon_substruct_3.h"
#include "struct_defs/pokemon_substruct_0.h"

typedef struct BoxPokemon_t {
    u32 unk_00;
    u16 unk_04_0 : 1;
    u16 unk_04_1 : 1;
    u16 unk_04_2 : 1;
    u16 unk_04_3 : 13;
    u16 unk_06;
    u8 unk_08[sizeof(PokemonSubstruct0)
              + sizeof(PokemonSubstruct1)
              + sizeof(PokemonSubstruct2)
              + sizeof(PokemonSubstruct3)];
} BoxPokemon;

#endif // POKEPLATINUM_BOX_POKEMON_H
