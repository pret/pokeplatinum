#ifndef POKEPLATINUM_BOX_POKEMON_H
#define POKEPLATINUM_BOX_POKEMON_H

#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"
#include "struct_defs/pokemon_data_block_a.h"

typedef union {
    PokemonDataBlockA blockA;
    PokemonDataBlockB blockB;
    PokemonDataBlockC blockC;
    PokemonDataBlockD blockD;
} PokemonDataBlock;

/**
 * @brief Boxed Pokemon data structure
 */
typedef struct BoxPokemon {
    u32 personality; //!< The personality value of the pokemon
    u16 partyDecrypted : 1; //!< Whether the pokemons party data is currently decrypted
    u16 boxDecrypted : 1; //!< Whether the pokemons boxed data is currently decrypted
    u16 invalidData : 1; //!< Set if the pokemons data is invalid (failed checksum). This will make the mon appear as a Bad Egg in game
    u16 unk_04_3 : 13;
    u16 checksum; //!< Checksum for the pokemons data
    PokemonDataBlock dataBlocks[4]; //!< Data blocks containing the pokemons boxed data, stored encrypted
} BoxPokemon;

#endif // POKEPLATINUM_BOX_POKEMON_H
