#ifndef POKEPLATINUM_BOX_POKEMON_H
#define POKEPLATINUM_BOX_POKEMON_H

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

/**
 * @brief Block C of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockC {
    u16 unk_00[11];
    u8 unk_16;
    u8 originGame; //!< The game this pokemon was caught in
    u64 unk_18;
} PokemonDataBlockC;

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
