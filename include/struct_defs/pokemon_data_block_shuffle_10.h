#ifndef POKEPLATINUM_STRUCT_0207825C_10_H
#define POKEPLATINUM_STRUCT_0207825C_10_H

#include "struct_defs/pokemon_data_block_a.h"
#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"

typedef struct PokemonDataBlockShuffle10 {
    PokemonDataBlockB dataBlockB;
    PokemonDataBlockD dataBlockD;
    PokemonDataBlockA dataBlockA;
    PokemonDataBlockC dataBlockC;
} PokemonDataBlockShuffle10;

#endif // POKEPLATINUM_STRUCT_0207825C_10_H
