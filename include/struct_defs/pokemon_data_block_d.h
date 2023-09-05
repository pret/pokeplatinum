#ifndef POKEPLATINUM_POKEMON_SUBSTRUCT_3_H
#define POKEPLATINUM_POKEMON_SUBSTRUCT_3_H

/**
 * @brief Block D of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockD {
    u16 unk_00[8];
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    u8 unk_15;
    u16 unk_16;
    u16 unk_18;
    u8 pokerus; //!< The pokemons Pokerus value
    u8 pokeball; //!< What pokeball this pokemon was caught in
    u8 metLevel : 7; //!< What level this pokemon was originally met at
    u8 otGender : 1; //!< The gender of this pokemons Original Trainer
    u8 unk_1D;
    u16 unk_1E;
} PokemonDataBlockD;

#endif // POKEPLATINUM_POKEMON_SUBSTRUCT_3_H
