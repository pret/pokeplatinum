#ifndef POKEPLATINUM_STRUCT_0207825C_21_H
#define POKEPLATINUM_STRUCT_0207825C_21_H

#include "struct_defs/pokemon_data_block_a.h"
#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"

typedef struct PokemonDataBlockShuffle21 {
    PokemonDataBlockD dataBlockD;
    PokemonDataBlockB dataBlockB;
    PokemonDataBlockC dataBlockC;
    PokemonDataBlockA dataBlockA;
} PokemonDataBlockShuffle21;

#endif // POKEPLATINUM_STRUCT_0207825C_21_H
