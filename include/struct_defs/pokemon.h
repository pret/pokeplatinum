#ifndef POKEPLATINUM_STRUCT_POKEMON_H
#define POKEPLATINUM_STRUCT_POKEMON_H

#include "constants/moves.h"
#include "constants/string.h"

#include "charcode.h"

/**
 * @brief Block A of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockA {
    u16 species; //!< The Pokemon's species; their National Pokedex number.
    u16 heldItem; //!< The Pokemon's held item.

    u32 otID; //!< The ID of the Pokemon's original trainer (who caught/hatched it).
    u32 exp; //!< The Pokemon's current total EXP value. Level is computed from this value according to the species' EXP curve.

    u8 friendship; //!< The Pokemon's current friendship value; affects certain evolutions and the power of Return and Frustration.
    u8 ability; //!< The Pokemon's ability. See enum Ability for definitions.
    u8 marks; //!< A bitmask of marks applied to the Pokemon, e.g. Circle, Square, Star.
    u8 originLanguage; //!< The language of the Pokemon's originating game.

    u8 hpEV; //!< The Pokemon's current HP EVs.
    u8 atkEV; //!< The Pokemon's current Attack EVs.
    u8 defEV; //!< The Pokemon's current Defense EVs.
    u8 speedEV; //!< The Pokemon's current Speed EVs.
    u8 spAtkEV; //!< The Pokemon's current Special Attack EVs.
    u8 spDefEV; //!< The Pokemon's current Special Defense EVs.

    u8 cool; //!< The Pokemon's current Cool stat.
    u8 beauty; //!< The Pokemon's current Beauty stat.
    u8 cute; //!< The Pokemon's current Cute stat.
    u8 smart; //!< The Pokemon's current Smart stat.
    u8 tough; //!< The Pokemon's current Tough stat.
    u8 sheen; //!< The Pokemon's current Sheen. Effectively controls the maximum number of Poffins that can be eaten.

    u32 sinnohRibbons; //!< A bitmask of ribbons earned by the Pokemon from the Sinnoh-era games.
} PokemonDataBlockA;

/**
 * @brief Block B of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockB {
    u16 moves[LEARNED_MOVES_MAX]; //!< List of moves currently known by the Pokemon.
    u8 moveCurrentPPs[LEARNED_MOVES_MAX]; //!< The current PP of each of the Pokemon's moves.
    u8 movePPUps[LEARNED_MOVES_MAX]; //!< The number of PP Ups applied to each of the Pokemon's moves.

    u32 hpIV : 5; //!< The Pokemon's HP IV.
    u32 atkIV : 5; //!< The Pokemon's Attack IV.
    u32 defIV : 5; //!< The Pokemon's Defense IV.
    u32 speedIV : 5; //!< The Pokemon's Speed IV.
    u32 spAtkIV : 5; //!< The Pokemon's Special Attack IV.
    u32 spDefIV : 5; //!< The Pokemon's Special Defense IV.
    u32 isEgg : 1; //!< Whether or not the Pokemon is an egg.
    u32 hasNickname : 1; //!< Whether or not the Pokemon has a nickname.

    u32 hoennRibbons; //!< A bitmask of ribbons earned by the Pokemon from the Hoenn-era games.

    u8 fatefulEncounter : 1; //!< Whether or not the Pokemon is a Fateful Encounter (i.e., received via out-of-game event).
    u8 gender : 2; //!< The Pokemon's gender; should only ever be 0, 1, or 2. See enum Gender.
    u8 form : 5; //!< The Pokemon's form.
    u8 dummy_19; //!< Unused space.
    u16 dummy_1A; //!< Unused space.

    u16 fatefulMetLocation; //!< Met location for a Fateful Encounter.
    u16 fatefulHatchLocation; //!< Hatch location for a Fateful Encounter.
} PokemonDataBlockB;

/**
 * @brief Block C of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockC {
    charcode_t nickname[MON_NAME_LEN + 1]; //!< The Pokemon's nickname.

    u8 originCode; //!< The region code for the Pokemon's originating game.
    u8 originGame; //!< The game code for the Pokemon's originating game.

    u64 contestRibbons; //!< A bitmask of ribbons given to the Pokemon from Sinnoh's Super Contests.
} PokemonDataBlockC;

/**
 * @brief Block D of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockD {
    u16 otName[TRAINER_NAME_LEN + 1]; //!< The name of the Pokemon's original trainer (who caught/hatched it).

    u8 metYear; //!< The year in which the Pokemon was first met.
    u8 metMonth; //!< The month in which the Pokemon was first met.
    u8 metDay; //!< The day on which the Pokemon was first met.

    u8 hatchYear; //!< The year in which the Pokemon was hatched.
    u8 hatchMonth; //!< The month in which the Pokemon was hatched.
    u8 hatchDay; //!< The day on which the Pokemon was hatched.

    u16 metLocation; //!< The Pokemon's met location.
    u16 hatchLocation; //!< The Pokemon's hatched location.

    u8 pokerus; //!< The Pokemon's Pokerus value.
    u8 pokeball; //!< The Pokemon's Pokeball ID.
    u8 metLevel : 7; //!< The level at which this Pokemon was first met.
    u8 otGender : 1; //!< The gender of the Pokemon's original trainer; 0 for male, 1 for female.
    u8 metTerrain; //!< The terrain ID of the location where the Pokemon was first met. Used by Burmy for its aesthetic forms.
    u16 dummy_1E; //!< Unused space.
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
    u32 personality; //!< The Pokemon's personality value (or PID).
    u16 partyDecrypted : 1; //!< Whether the Pokemon's party data is currently decrypted.
    u16 boxDecrypted : 1; //!< Whether the Pokemon's boxed data is currently decrypted.
    u16 invalidData : 1; //!< Whether the Pokemon's data is invalid. If set to 1, this Pokemon will appear in-game as a Bad Egg.
    u16 padding_04_3 : 13; //!< Leftover padding-space.
    u16 checksum; //!< Checksum for the Pokemon's data blocks.
    PokemonDataBlock dataBlocks[4]; //!< Data blocks containing the Pokemon's boxed data, stored encrypted.
} BoxPokemon;

#include "struct_defs/mail.h"
#include "struct_defs/struct_0202CA28.h"

/**
 * @brief Party Pokemon data structure
 *  This is used to store stats for a pokemon while it is in the players party.
 *  Rather than recalculating stats after each battle, they're stored here.
 */
typedef struct PartyPokemon {
    u32 status; //!< The Pokemon's current status condition.
    u8 level; //!< The Pokemon's current level, as computed from its total EXP value and its species' level curve.
    u8 mail; //!< The ID of the mail the Pokemon is holding.
    u16 hp; //!< The Pokemon's current HP.
    u16 maxHP; //!< The Pokemon's maximum HP.
    u16 attack; //!< The Pokemon's Attack stat.
    u16 defense; //!< The Pokemon's Defense stat.
    u16 speed; //!< The Pokemon's Speed stat.
    u16 spAtk; //!< The Pokemon's Special Attack stat.
    u16 spDef; //!< The Pokemon's Special Defense stat.
    Mail unk_14;
    UnkStruct_0202CA28 unk_4C;
} PartyPokemon;

/**
 * @brief The main Pokemon data structure
 */
typedef struct Pokemon {
    BoxPokemon box; //!< Contains the pokemons boxed data
    PartyPokemon party; //!< Contains the pokemons extra data while it is in the players party
} Pokemon;

#endif // POKEPLATINUM_STRUCT_POKEMON_H
