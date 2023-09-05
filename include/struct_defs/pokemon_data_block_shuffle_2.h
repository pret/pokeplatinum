#ifndef POKEPLATINUM_STRUCT_0207825C_2_H
#define POKEPLATINUM_STRUCT_0207825C_2_H

#include "struct_defs/pokemon_data_block_a.h"
#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"

typedef struct PokemonDataBlockShuffle2 {
    PokemonDataBlockA dataBlockA;
    PokemonDataBlockC dataBlockC;
    PokemonDataBlockB dataBlockB;
    PokemonDataBlockD dataBlockD;
} PokemonDataBlockShuffle2;

#endif // POKEPLATINUM_STRUCT_0207825C_2_H
