#ifndef POKEPLATINUM_BOX_POKEMON_H
#define POKEPLATINUM_BOX_POKEMON_H

#include "struct_defs/pokemon_data_block_b.h"
#include "struct_defs/pokemon_data_block_c.h"
#include "struct_defs/pokemon_data_block_d.h"
#include "struct_defs/pokemon_data_block_a.h"

/**
 * @brief Boxed Pokemon data structure
 */
typedef struct {
    u32 personality; //!< The personality value of the pokemon
    u16 partyDecrypted : 1; //!< Whether the pokemons party data is currently decrypted
    u16 boxDecrypted : 1; //!< Whether the pokemons boxed data is currently decrypted
    u16 invalidData : 1; //!< Set if the pokemons data is invalid (failed checksum). This will make the mon appear as a Bad Egg in game
    u16 unk_04_3 : 13;
    u16 checksum; //!< Checksum for the pokemons data
    u8 dataBlocks[sizeof(PokemonDataBlockA)
              + sizeof(PokemonDataBlockB)
              + sizeof(PokemonDataBlockC)
              + sizeof(PokemonDataBlockD)]; //!< Data blocks containing the pokemons boxed data, stored encrypted
} BoxPokemon;

#endif // POKEPLATINUM_BOX_POKEMON_H
