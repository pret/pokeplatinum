#ifndef POKEPLATINUM_STRUCT_0207825C_1_H
#define POKEPLATINUM_STRUCT_0207825C_1_H

#include "struct_defs/pokemon_data_block_a.h"
#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"

typedef struct PokemonDataBlockShuffle1 {
    PokemonDataBlockA dataBlockA;
    PokemonDataBlockB dataBlockB;
    PokemonDataBlockD dataBlockD;
    PokemonDataBlockC dataBlockC;
} PokemonDataBlockShuffle1;

#endif // POKEPLATINUM_STRUCT_0207825C_1_H
