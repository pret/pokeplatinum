#ifndef POKEPLATINUM_STRUCT_0207825C_8_H
#define POKEPLATINUM_STRUCT_0207825C_8_H

#include "struct_defs/pokemon_data_block_a.h"
#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"

typedef struct PokemonDataBlockShuffle8 {
    PokemonDataBlockB dataBlockB;
    PokemonDataBlockC dataBlockC;
    PokemonDataBlockA dataBlockA;
    PokemonDataBlockD dataBlockD;
} PokemonDataBlockShuffle8;

#endif // POKEPLATINUM_STRUCT_0207825C_8_H
