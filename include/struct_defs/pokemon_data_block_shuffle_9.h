#ifndef POKEPLATINUM_STRUCT_0207825C_9_H
#define POKEPLATINUM_STRUCT_0207825C_9_H

#include "struct_defs/pokemon_data_block_a.h"
#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"

typedef struct PokemonDataBlockShuffle9 {
    PokemonDataBlockB dataBlockB;
    PokemonDataBlockC dataBlockC;
    PokemonDataBlockD dataBlockD;
    PokemonDataBlockA dataBlockA;
} PokemonDataBlockShuffle9;

#endif // POKEPLATINUM_STRUCT_0207825C_9_H
