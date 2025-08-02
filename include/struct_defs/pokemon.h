#ifndef POKEPLATINUM_STRUCT_POKEMON_H
#define POKEPLATINUM_STRUCT_POKEMON_H

#include "constants/moves.h"
#include "constants/string.h"

#include "charcode.h"

// clang-format off
/**
 * @brief Block A of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockA {
    /* 0x00 */ u16 species; //!< The Pokemon's species; their National Pokedex number.
    /* 0x02 */ u16 heldItem; //!< The Pokemon's held item.

    /* 0x04 */ u32 otID; //!< The ID of the Pokemon's original trainer (who caught/hatched it). Low 16: visible; High 16: secret
    /* 0x08 */ u32 exp; //!< The Pokemon's current total EXP value. Level is computed from this value according to the species' EXP curve.

    /* 0x0C */ u8 friendship; //!< The Pokemon's current friendship value; affects certain evolutions and the power of Return and Frustration.
    /* 0x0D */ u8 ability; //!< The Pokemon's ability. See enum Ability for definitions.
    /* 0x0E */ u8 markings; //!< A bitmask of marks applied to the Pokemon (Circle, Triangle, Square, Heart, Star, Diamond)
    /* 0x0F */ u8 originLanguage; //!< The language of the Pokemon's originating game.

    /* 0x10 */ u8 hpEV; //!< The Pokemon's current HP EVs.
    /* 0x11 */ u8 atkEV; //!< The Pokemon's current Attack EVs.
    /* 0x12 */ u8 defEV; //!< The Pokemon's current Defense EVs.
    /* 0x13 */ u8 speedEV; //!< The Pokemon's current Speed EVs.
    /* 0x14 */ u8 spAtkEV; //!< The Pokemon's current Special Attack EVs.
    /* 0x15 */ u8 spDefEV; //!< The Pokemon's current Special Defense EVs.

    /* 0x16 */ u8 cool; //!< The Pokemon's current Cool stat.
    /* 0x17 */ u8 beauty; //!< The Pokemon's current Beauty stat.
    /* 0x18 */ u8 cute; //!< The Pokemon's current Cute stat.
    /* 0x19 */ u8 smart; //!< The Pokemon's current Smart stat.
    /* 0x1A */ u8 tough; //!< The Pokemon's current Tough stat.
    /* 0x1B */ u8 sheen; //!< The Pokemon's current Sheen. Effectively controls the maximum number of Poffins that can be eaten.

    /* 0x1C */ u32 ribbonsA; //!< A bitmask of non-Super Contest ribbons introduced in Generation 4. Sinnoh Champ, Ability, Great Ability, Double Ability, Multi Ability, Pair Ability, World Ability, Alert, Shock, Downcast, Careless, Relax, Snooze, Smile, Gorgeous, Royal, Gorgeous Royal, Footprint, Record, History, Legend, Red, Green, Blue, Festival, Carnival, Classic and Premier Ribbons.
} PokemonDataBlockA;

/**
 * @brief Block B of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockB {
    /* 0x00 */ u16 moves[LEARNED_MOVES_MAX]; //!< List of moves currently known by the Pokemon.
    /* 0x08 */ u8 moveCurrentPPs[LEARNED_MOVES_MAX]; //!< The current PP of each of the Pokemon's moves.
    /* 0x0C */ u8 movePPUps[LEARNED_MOVES_MAX]; //!< The number of PP Ups applied to each of the Pokemon's moves.

    /* 0x10 */ u32 hpIV : 5; //!< The Pokemon's HP IV.
               u32 atkIV : 5; //!< The Pokemon's Attack IV.
               u32 defIV : 5; //!< The Pokemon's Defense IV.
               u32 speedIV : 5; //!< The Pokemon's Speed IV.
               u32 spAtkIV : 5; //!< The Pokemon's Special Attack IV.
               u32 spDefIV : 5; //!< The Pokemon's Special Defense IV.
               u32 isEgg : 1; //!< Whether or not the Pokemon is an egg.
               u32 hasNickname : 1; //!< Whether or not the Pokemon has a nickname.

    /* 0x14 */ u32 ribbonsB; //!< A bitmask of ribbons introduced in Generation 3. Cool, Beauty, Cute, Smart, Tough, Champion, Winning, Victory, Artist, Effort, Marine, Land, Sky, Country, National, Earth and World Ribbons.
    /* 0x18 */ u8 fatefulEncounter : 1; //!< Whether or not the Pokemon is a Fateful Encounter (i.e., received via out-of-game event).
               u8 gender : 2; //!< The Pokemon's gender; should only ever be 0, 1, or 2. See enum Gender.
               u8 form : 5; //!< The Pokemon's form.
    /* 0x19 */ u8 unused1; //!< First 6 bits track Shiny Leaves from HGSS.
    /* 0x1A */ u16 unused2; //!< Unused space.

    /* 0x1C */ u16 PlatHGSS_EggLocation; //!< Egg location for places not available in DP.
    /* 0x1E */ u16 PlatHGSS_MetLocation; //!< Met location for places not available in DP.
} PokemonDataBlockB;

/**
 * @brief Block C of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockC {
    /* 0x00 */ charcode_t nickname[MON_NAME_LEN + 1]; //!< The Pokemon's nickname.

    /* 0x16 */ u8 unused; //!< Unused space.
    /* 0x17 */ u8 originGame; //!< The game code for the Pokemon's originating game.

    /* 0x18 */ u64 ribbonsC; //!< A bitmask of ribbons given to the Pokemon from Sinnoh's Super Contests.
} PokemonDataBlockC;

/**
 * @brief Block D of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockD {
    /* 0x00 */ u16 otName[TRAINER_NAME_LEN + 1]; //!< The name of the Pokemon's original trainer (who caught/hatched it).

    /* 0x10 */ u8 eggYear; //!< The year in which the Pokemon's Egg was obtained.
    /* 0x11 */ u8 eggMonth; //!< The month in which the Pokemon's Egg was obtained.
    /* 0x12 */ u8 eggDay; //!< The day on which the Pokemon's Egg was obtained.

    /* 0x13 */ u8 metYear; //!< The year in which the Pokemon was first met.
    /* 0x14 */ u8 metMonth; //!< The month in which the Pokemon was first met.
    /* 0x15 */ u8 metDay; //!< The day on which the Pokemon was first met.

    /* 0x16 */ u16 DP_EggLocation; //!< The location in which the Pokemon's Egg was obtained.
    /* 0x18 */ u16 DP_MetLocation; //!< The location in which the Pokemon was first met.

    /* 0x1A */ u8 pokerus; //!< The Pokemon's Pokerus value.
    /* 0x1B */ u8 pokeball; //!< The Pokemon's Pokeball ID.
    /* 0x1C */ u8 metLevel : 7; //!< The level at which this Pokemon was first met.
               u8 otGender : 1; //!< The gender of the Pokemon's original trainer; 0 for male, 1 for female.
    /* 0x1D */ u8 metTerrain; //!< The terrain ID of the location where the Pokemon was first met. Used by Burmy for its aesthetic forms.
    /* 0x1E */ u16 unused; //!< Stores Apricorn Ball and Mood from HGSS. Unused otherwise.
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
    /* 0x000 */ u32 personality; //!< The Pokemon's personality value (or PID).
    /* 0x004 */ u16 partyDecrypted : 1; //!< Whether the Pokemon's party data is currently decrypted.
                u16 boxDecrypted : 1; //!< Whether the Pokemon's boxed data is currently decrypted.
                u16 checksumFailed : 1; //!< Whether the Pokemon's data is invalid. If set to 1, this Pokemon will appear in-game as a Bad Egg.
                u16 unused : 13; //!< Leftover padding-space. Might be used for validity checks.
    /* 0x006 */ u16 checksum; //!< Checksum for the Pokemon's data blocks.
    /* 0x008 */ PokemonDataBlock dataBlocks[4]; //!< Data blocks containing the Pokemon's boxed data, stored encrypted.
} BoxPokemon;
// clang-format on

#include "struct_defs/mail.h"
#include "struct_defs/seal_case.h"

/**
 * @brief Party Pokemon data structure
 *  This is used to store stats for a pokemon while it is in the players party.
 *  Rather than recalculating stats after each battle, they're stored here.
 */
typedef struct PartyPokemon {
    /* 0x088 */ u32 status; //!< The Pokemon's current status condition.
    /* 0x08C */ u8 level; //!< The Pokemon's current level, as computed from its total EXP value and its species' level curve.
    /* 0x08D */ u8 ballCapsuleID; //!< The ID of the ball capsule attached to the Pokemon.
    /* 0x08E */ u16 hp; //!< The Pokemon's current HP.
    /* 0x090 */ u16 maxHP; //!< The Pokemon's maximum HP.
    /* 0x092 */ u16 attack; //!< The Pokemon's Attack stat.
    /* 0x094 */ u16 defense; //!< The Pokemon's Defense stat.
    /* 0x096 */ u16 speed; //!< The Pokemon's Speed stat.
    /* 0x098 */ u16 spAtk; //!< The Pokemon's Special Attack stat.
    /* 0x09A */ u16 spDef; //!< The Pokemon's Special Defense stat.
    /* 0x09C */ Mail mail;
    /* 0x0D4 */ BallCapsule ballCapsule;
} PartyPokemon;

/**
 * @brief The main Pokemon data structure
 */
typedef struct Pokemon {
    BoxPokemon box; //!< Contains the pokemons boxed data
    PartyPokemon party; //!< Contains the pokemons extra data while it is in the players party
} Pokemon;

#endif // POKEPLATINUM_STRUCT_POKEMON_H
