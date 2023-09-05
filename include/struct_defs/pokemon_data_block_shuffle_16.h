#ifndef POKEPLATINUM_STRUCT_0207825C_16_H
#define POKEPLATINUM_STRUCT_0207825C_16_H

#include "struct_defs/pokemon_data_block_a.h"
#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"

typedef struct PokemonDataBlockShuffle16 {
    PokemonDataBlockC dataBlockC;
    PokemonDataBlockD dataBlockD;
    PokemonDataBlockA dataBlockA;
    PokemonDataBlockB dataBlockB;
} PokemonDataBlockShuffle16;

#endif // POKEPLATINUM_STRUCT_0207825C_16_H
