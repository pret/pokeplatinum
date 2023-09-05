#ifndef POKEPLATINUM_STRUCT_0207825C_7_H
#define POKEPLATINUM_STRUCT_0207825C_7_H

#include "struct_defs/pokemon_data_block_a.h"
#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"

typedef struct PokemonDataBlockShuffle7 {
    PokemonDataBlockB dataBlockB;
    PokemonDataBlockA dataBlockA;
    PokemonDataBlockD dataBlockD;
    PokemonDataBlockC dataBlockC;
} PokemonDataBlockShuffle7;

#endif // POKEPLATINUM_STRUCT_0207825C_7_H
