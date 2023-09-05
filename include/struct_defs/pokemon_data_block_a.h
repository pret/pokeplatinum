#ifndef POKEPLATINUM_POKEMON_SUBSTRUCT_0_H
#define POKEPLATINUM_POKEMON_SUBSTRUCT_0_H

/**
 * @brief Block A of the BoxPokemon data structure 
 */
typedef struct PokemonDataBlockA {
    u16 species; //!< The pokemons species
    u16 heldItem; //!< The pokemons currently held item
    u32 otID; //!< The pokemons Original Trainer ID
    u32 exp; //!< The pokemons experience points
    u8 friendship; //!< The pokemons friendship stat
    u8 ability;  //!< The pokemons ability
    u8 unk_0E;
    u8 originLanguage; //!< The language of the game this pokemon was caught in
    u8 hpEV; //!< The pokemons HP EVs
    u8 atkEV; //!< The pokemons Attack EVs
    u8 defEV; //!< The pokemons Defense EVs
    u8 speedEV; //!< The pokemons Speed EVs
    u8 spAtkEV; //!< The pokemons Special Attack EVs
    u8 spDefEV; //!< The pokemons Special Defense EVs
    u8 cool; //!< The pokemons Cool contest stat
    u8 beauty; //!< The pokemons Beauty contest stat
    u8 cute; //!< The pokemons Cute contest stat
    u8 smart; //!< The pokemons Smart contest stat
    u8 tough; //!< The pokemons Tough contest stat
    u8 sheen; //!< The pokemons Sheen
    u32 unk_1C;
} PokemonDataBlockA;

#endif // POKEPLATINUM_POKEMON_SUBSTRUCT_0_H
