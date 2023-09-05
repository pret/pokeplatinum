#ifndef POKEPLATINUM_STRUCT_0207825C_3_H
#define POKEPLATINUM_STRUCT_0207825C_3_H

#include "struct_defs/pokemon_data_block_a.h"
#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"

typedef struct PokemonDataBlockShuffle3 {
    PokemonDataBlockA dataBlockA;
    PokemonDataBlockC dataBlockC;
    PokemonDataBlockD dataBlockD;
    PokemonDataBlockB dataBlockB;
} PokemonDataBlockShuffle3;

#endif // POKEPLATINUM_STRUCT_0207825C_3_H
