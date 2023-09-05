#ifndef POKEPLATINUM_STRUCT_0207825C_11_H
#define POKEPLATINUM_STRUCT_0207825C_11_H

#include "struct_defs/pokemon_data_block_a.h"
#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"

typedef struct PokemonDataBlockShuffle11 {
    PokemonDataBlockB dataBlockB;
    PokemonDataBlockD dataBlockD;
    PokemonDataBlockC dataBlockC;
    PokemonDataBlockA dataBlockA;
} PokemonDataBlockShuffle11;

#endif // POKEPLATINUM_STRUCT_0207825C_11_H
