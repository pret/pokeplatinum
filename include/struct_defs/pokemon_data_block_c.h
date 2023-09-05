#ifndef POKEPLATINUM_POKEMON_SUBSTRUCT_2_H
#define POKEPLATINUM_POKEMON_SUBSTRUCT_2_H

/**
 * @brief Block C of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockC {
    u16 unk_00[11];
    u8 unk_16;
    u8 originGame; //!< The game this pokemon was caught in
    u64 unk_18;
} PokemonDataBlockC;

#endif // POKEPLATINUM_POKEMON_SUBSTRUCT_2_H
