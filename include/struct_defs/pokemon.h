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
    /* 0x00 */ u16 species;
    /* 0x02 */ u16 heldItem;

    /* 0x04 */ u32 otID;
    /* 0x08 */ u32 exp;

    /* 0x0C */ u8 friendship;
    /* 0x0D */ u8 ability;
    /* 0x0E */ u8 markings;
    /* 0x0F */ u8 originLanguage;

    /* 0x10 */ u8 hpEV;
    /* 0x11 */ u8 atkEV;
    /* 0x12 */ u8 defEV;
    /* 0x13 */ u8 speedEV;
    /* 0x14 */ u8 spAtkEV;
    /* 0x15 */ u8 spDefEV;

    /* 0x16 */ u8 cool;
    /* 0x17 */ u8 beauty;
    /* 0x18 */ u8 cute;
    /* 0x19 */ u8 smart;
    /* 0x1A */ u8 tough;
    /* 0x1B */ u8 sheen;

    /* 0x1C */ u32 ribbonsDS1; //!< A bitmask of non-Super Contest ribbons introduced in Generation 4. Sinnoh Champ, Ability, Great Ability, Double Ability, Multi Ability, Pair Ability, World Ability, Alert, Shock, Downcast, Careless, Relax, Snooze, Smile, Gorgeous, Royal, Gorgeous Royal, Footprint, Record, History, Legend, Red, Green, Blue, Festival, Carnival, Classic and Premier Ribbons.
} PokemonDataBlockA;

/**
 * @brief Block B of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockB {
    /* 0x00 */ u16 moves[LEARNED_MOVES_MAX];
    /* 0x08 */ u8 moveCurrentPPs[LEARNED_MOVES_MAX];
    /* 0x0C */ u8 movePPUps[LEARNED_MOVES_MAX];

    /* 0x10 */ u32 hpIV : 5;
               u32 atkIV : 5;
               u32 defIV : 5;
               u32 speedIV : 5;
               u32 spAtkIV : 5;
               u32 spDefIV : 5;
               u32 isEgg : 1;
               u32 hasNickname : 1;

    /* 0x14 */ u32 ribbonsGBA; //!< A bitmask of ribbons introduced in Generation 3. Cool, Beauty, Cute, Smart, Tough, Champion, Winning, Victory, Artist, Effort, Marine, Land, Sky, Country, National, Earth and World Ribbons.
    /* 0x18 */ u8 fatefulEncounter : 1;
               u8 gender : 2;
               u8 form : 5;
    /* 0x19 */ u8 unused1; //!< First 6 bits track Shiny Leaves from HGSS.
    /* 0x1A */ u16 unused2;

    /* 0x1C */ u16 EggLocation_PtHGSS;
    /* 0x1E */ u16 MetLocation_PtHGSS;
} PokemonDataBlockB;

/**
 * @brief Block C of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockC {
    /* 0x00 */ charcode_t nickname[MON_NAME_LEN + 1]; //!< The Pokemon's nickname.

    /* 0x16 */ u8 unused;
    /* 0x17 */ u8 originGame;

    /* 0x18 */ u64 ribbonsDS2; //!< A bitmask of ribbons given to the Pokemon from Sinnoh's Super Contests.
} PokemonDataBlockC;

/**
 * @brief Block D of the BoxPokemon data structure
 */
typedef struct PokemonDataBlockD {
    /* 0x00 */ u16 otName[TRAINER_NAME_LEN + 1];

    /* 0x10 */ u8 eggYear;
    /* 0x11 */ u8 eggMonth;
    /* 0x12 */ u8 eggDay;

    /* 0x13 */ u8 metYear;
    /* 0x14 */ u8 metMonth;
    /* 0x15 */ u8 metDay;

    /* 0x16 */ u16 EggLocation_DP;
    /* 0x18 */ u16 MetLocation_DP;

    /* 0x1A */ u8 pokerus;
    /* 0x1B */ u8 pokeball;
    /* 0x1C */ u8 metLevel : 7;
               u8 otGender : 1;
    /* 0x1D */ u8 metTerrain;
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
    /* 0x000 */ u32 personality;
    /* 0x004 */ u16 partyDecrypted : 1;
                u16 boxDecrypted : 1;
                u16 checksumFailed : 1;
                u16 unused : 13;
    /* 0x006 */ u16 checksum;
    /* 0x008 */ PokemonDataBlock dataBlocks[4];
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
