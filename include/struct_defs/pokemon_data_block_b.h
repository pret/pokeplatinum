#ifndef POKEPLATINUM_POKEMON_SUBSTRUCT_1_H
#define POKEPLATINUM_POKEMON_SUBSTRUCT_1_H

/**
 * @brief Block B of the BoxPokemon data structure 
 */
typedef struct PokemonDataBlockB {
    u16 moves[4]; //!< The ID of each move the pokemon knows
    u8 moveCurrentPPs[4]; //!< The current PP of each move
    u8 movePPUps[4]; //!< The number of PP Ups used on each move
    u32 hpIV : 5; //!< The pokemons HP IVs
    u32 atkIV : 5; //!< The pokemons Attack IVs
    u32 defIV : 5; //!< The pokemons Defense IVs
    u32 speedIV : 5; //!< The pokemons Speed IVs
    u32 spAtkIV : 5; //!< The pokemons Special Attack IVs
    u32 spDefIV : 5; //!< The pokemons Special Defense IVs
    u32 isEgg : 1;  //!< Whether this pokemon is an egg or not
    u32 unk_10_31 : 1;
    u32 unk_14;
    u8 fatefulEncounter:1; //!< The pokemons "Fateful Encounter" flag
    u8 gender : 2; //!< The pokemons gender
    u8 form:5; //!< The pokemons form
    u8 unk_19;
    u16 unk_1A;
    u16 unk_1C;
    u16 unk_1E;
} PokemonDataBlockB;

#endif // POKEPLATINUM_POKEMON_SUBSTRUCT_1_H
