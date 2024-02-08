#ifndef POKEPLATINUM_POKEMON_H
#define POKEPLATINUM_POKEMON_H

#include "constants/moves.h"
#include "constants/sound.h"
#include "constants/string.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_decls/sprite_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "trainer_info.h"
#include "struct_defs/chatot_cry.h"
#include "struct_decls/struct_02078B40_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay005/struct_ov5_021DE5D0.h"

#include "string.h"

#include <nitro/rtc.h>

#define OTID_NOT_SET    0
#define OTID_SET        1
#define OTID_NOT_SHINY  2

#define FACE_BACK       0
#define FACE_FRONT      2

/**
 * @brief Pokemon Personal data structure. This contains data that is the same across all pokemon of the same species/form
 */
typedef struct PokemonPersonalData {
    u8 baseHp; //!< The pokemons base HP stat
    u8 baseAtk; //!< The pokemons base Attack stat
    u8 baseDef; //!< The pokemons base Defense stat
    u8 baseSpeed; //!< The pokemons base Speed stat
    u8 baseSpAtk; //!< The pokemons base Special Attack stat
    u8 baseSpDef; //!< The pokemons base Special Defense stat
    u8 type1; //!< The pokemons first type
    u8 type2; //!< The pokemons second type
    u8 catchRate; //!< The pokemons catch rate
    u8 baseExp; //!< A factor in determining experience yield when defeating this pokemon
    u16 evHpYield : 2; //!< How many HP EVs will be gained when defeating this pokemon
    u16 evAtkYield : 2; //!< How many Attack EVs will be gained when defeating this pokemon
    u16 evDefYield : 2; //!< How many Defense EVs will be gained when defeating this pokemon
    u16 evSpeedYield : 2; //!< How many Speed EVs will be gained when defeating this pokemon
    u16 evSpAtkYield : 2; //!< How many Special Attack EVs will be gained when defeating this pokemon
    u16 evSpDefYield : 2; //!< How many Special Defense EVs will be gained when defeating this pokemon
    // u16 padding : 4;

    u16 item1; //!< Common held item when this pokemon is encountered in the wild
    u16 item2; //!< Rare held item when this pokemon is encountered in the wild
    u8 gender; //!< The pokemons gender ratio, except for special values, a higher value will result in more females and a lower value will result in more males appearing
    u8 hatchCycles; //!< How long eggs of this pokemon will take to hatch. In Gen.IV One cycle is 255 steps
    u8 baseFriendship; //!< The pokemons base Friendship stat
    u8 expRate; //!< The experience rate category of the pokemon. This sets which formula is used to determine the pokemons level based on its experience
    u8 eggGroup1; //!< The pokemons first egg group
    u8 eggGroup2; //!< The pokemons second egg group
    u8 ability1; //!< The pokemons first possible ability
    u8 ability2; //!< The pokemons second possible ability
    u8 greatMarshFleeRate; //!< The pokemons base flee rate in the Great Marsh safari zone
    u8 color : 7; //!< The pokemons color category
    u8 flipSprite : 1;
    // u16 padding;

    u32 tmLearnsetMask1; //!< Bitflags for whether this pokemon can learn a TM (TM1 -> TM32)
    u32 tmLearnsetMask2; //!< Bitflags for whether this pokemon can learn a TM (TM33 -> TM64)
    u32 tmLearnsetMask3; //!< Bitflags for whether this pokemon can learn a TM (TM65 -> TM92, HM1 -> HM4)
    u32 tmLearnsetMask4; //!< Bitflags for whether this pokemon can learn a TM (HM5 -> HM8, rest unused)
} PokemonPersonalData;

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

#include "struct_defs/struct_0202818C.h"
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
    UnkStruct_0202818C unk_14;
    UnkStruct_0202CA28 unk_4C;
} PartyPokemon;

/**
 * @brief The main Pokemon data structure
 */
typedef struct Pokemon {
    BoxPokemon box; //!< Contains the pokemons boxed data
    PartyPokemon party; //!< Contains the pokemons extra data while it is in the players party
} Pokemon;

/**
 * @brief Zeros out a Pokemon data structure, then encrypts the result
 * 
 * @param mon 
 */
void Pokemon_Init(Pokemon *mon);

/**
 * @brief Zeros out a BoxPokemon data structure, then encrypts the result
 * 
 * @param boxMon 
 */
void BoxPokemon_Init(BoxPokemon *boxMon);

/**
 * @brief Returns the size in bytes of a Pokemon struct as an int
 * 
 * @return Size in bytes of a Pokemon struct
 */
int Pokemon_StructSize(void);

/**
 * @brief Allocates a Pokemon struct on the given heap, then calls ZeroMonData() on it
 * 
 * @param heapID 
 * @return A new empty but encrypted Pokemon struct
 */
Pokemon *Pokemon_New(u32 heapID);

/**
 * @brief Decrypts a Pokemon data structure. PartyPokemon data is encrypted using the pokemons personality value, BoxPokemon data using a checksum value
 * 
 * @param mon 
 * @return Whether the pokemons data was decrypted by this call. Passed to EncryptMon() to decide whether to reencrypt the data or not
 */
BOOL Pokemon_EnterDecryptionContext(Pokemon *mon);

/**
 * @brief Encrypts a Pokemon data structure. PartyPokemon data is encrypted using the pokemons personality value, BoxPokemon data using a checksum value
 * 
 * @param mon 
 * @param encrypt Whether to encrypt the data or not. If this is false, the function does nothing and returns false.
 * @return Whether the pokemons data was encrypted by this call.
 */
BOOL Pokemon_ExitDecryptionContext(Pokemon *mon, BOOL encrypt);

/**
 * @brief Decrypts a BoxPokemon data structure
 * 
 * @param boxMon 
 * @return Whether the pokemons data was decrypted by this call. Passed to EncryptBoxMon() to decide whether to reencrypt the data or not
 */
BOOL BoxPokemon_EnterDecryptionContext(BoxPokemon *boxMon);

/**
 * @brief Encrypts a BoxPokemon data structure
 * 
 * @param boxMon 
 * @param encrypt Whether to encrypt the data or not. If this is false, the function does nothing and returns false.
 * @return Whether the pokemons data was encrypted by this call.
 */
BOOL BoxPokemon_ExitDecryptionContext(BoxPokemon *boxMon, BOOL encrypt);

void Pokemon_InitWith(Pokemon *mon, int monSpecies, int monLevel, int monIVs, BOOL useMonPersonalityParam, u32 monPersonality, int monOTIDSource, u32 monOTID);
void sub_02074044(Pokemon *mon, u16 monSpecies, u8 monLevel, u8 monIVs, u8 monNature);
void sub_02074088(Pokemon *mon, u16 monSpecies, u8 monLevel, u8 monIVs, u8 param4, u8 param5, u8 param6);
u32 sub_02074128(u16 monSpecies, u8 param1, u8 param2);
void sub_02074158(Pokemon *mon, u16 monSpecies, u8 monLevel, u32 monCombinedIVs, u32 monPersonality);

/**
 * @brief Calculates and stores the current level and stats for a given Pokemon based on its IVs, EVs etc.
 * 
 * @param mon 
 */
void Pokemon_CalcLevelAndStats(Pokemon *mon);

/**
 * @brief Calculates and stores the current stats for a given Pokemon based on its IVs, EVs etc.
 * 
 * @param mon 
 */
void Pokemon_CalcStats(Pokemon *mon);

/**
 * @brief Gets a value from a Pokemon, storing it in dest if neccessary
 * 
 * @param mon 
 * @param param 
 * @param[out] dest Pointer for storing longer data
 * @return The requested value
 */
u32 Pokemon_GetValue(Pokemon *mon, enum PokemonDataParam param, void *dest);

/**
 * @brief Gets a value from a Pokemon, storing it in dest if neccessary
 * 
 * @param boxMon 
 * @param param 
 * @param[out] dest Pointer for storing longer data
 * @return The requested value
 */
u32 BoxPokemon_GetValue(BoxPokemon *boxMon, enum PokemonDataParam param, void *dest);

/**
 * @brief Sets a value in a Pokemon, reading it from value if neccessary
 * 
 * @param mon 
 * @param param
 * @param value 
 */
void Pokemon_SetValue(Pokemon *mon, enum PokemonDataParam param, const void *value);

/**
 * @brief Sets a value in a BoxPokemon, reading it from value if neccessary
 * 
 * @param boxMon 
 * @param param 
 * @param value 
 */
void BoxPokemon_SetValue(BoxPokemon *boxMon, enum PokemonDataParam param, const void *value);

/**
 * @brief Increases some numerical fields in a Pokemon by the given value. Does nothing if the field is not supported  
 * 
 * @todo list of supported fields?
 *
 * @param mon 
 * @param param 
 * @param value 
 */
void Pokemon_IncreaseValue(Pokemon *mon, enum PokemonDataParam param, int value);

/**
 * @brief Gets a PokemonPersonalData based on a pokemon species and form
 * 
 * @param monSpecies 
 * @param monForm
 * @param heapID The index of the heap that the PokemonPersonalData should be loaded into
 * @return PokemonPersonalData* 
 */
PokemonPersonalData *PokemonPersonalData_FromMonForm(int monSpecies, int monForm, int heapID);

/**
 * @brief Gets a PokemonPersonalData based on a pokemon species
 * 
 * @param monSpecies 
 * @param heapID The index of the heap that the PokemonPersonalData should be loaded into
 * @return PokemonPersonalData* 
 */
PokemonPersonalData *PokemonPersonalData_FromMonSpecies(int monSpecies, int heapID);

/**
 * @brief Gets a value from a PokemonPersonalData structure
 * 
 * @param monPersonalData 
 * @param param What value to get 
 * @return The requested value
 */
u32 PokemonPersonalData_GetValue(PokemonPersonalData *monPersonalData, enum PokemonPersonalDataParam param);

/**
 * @brief Frees a PokemonPersonalData structure from the heap
 * 
 * @param monPersonalData 
 */
void PokemonPersonalData_Free(PokemonPersonalData *monPersonalData);

/**
 * @brief Loads a PokemonPersonalData based on its species and form and gets a value from it
 * 
 * @param monSpecies 
 * @param monForm 
 * @param param What value to get
 * @return The requested value
 */
u32 PokemonPersonalData_GetFormValue(int monSpecies, int monForm, enum PokemonPersonalDataParam param);

/**
 * @brief Loads a PokemonPersonalData based on its species and gets a value from it
 * 
 * @param monSpecies 
 * @param param What value to get
 * @return The requested value
 */
u32 PokemonPersonalData_GetSpeciesValue(int monSpecies, enum PokemonPersonalDataParam param);

/**
 * @brief Gets how much progress a Pokemon has made towards its next level as a percentage
 * 
 * @param mon 
 * @return how much progress a Pokemon has made towards its next level as a percentage
 */
u8 Pokemon_GetPercentToNextLevel(Pokemon *mon);

/**
 * @brief Gets how much experience is needed for the given Pokemon to level up
 * 
 * @param boxMon 
 * @return The amount of exp. needed for the given Pokemon to level up
 */
u32 Pokemon_GetExpToNextLevel(Pokemon *mon);

/**
 * @brief Gets the amount of expeirence needed for the given Pokemon to reach its current level
 * 
 * @param mon 
 * @return The amount of exp. needed for the given Pokemon to reach its current level 
 */
u32 Pokemon_GetCurrentLevelBaseExp(Pokemon *mon);

/**
 * @brief Gets the amount of expeirence needed for a pokemon species to reach a specified level
 * 
 * @param monSpecies 
 * @param monLevel 
 * @return The amount of exp. needed for the given pokemon species to reach the specified level
 */
u32 Pokemon_GetSpeciesBaseExpAt(int monSpecies, int monLevel);

/**
 * @copybrief GetMonSpeciesLevel()
 *
 * @param mon
 * @return The pokemons level
 */
u32 Pokemon_GetLevel(Pokemon *mon);

/**
 * @copybrief GetMonSpeciesLevel()
 *
 * @param boxMon
 * @return The pokemons level
 */
u32 BoxPokemon_GetLevel(BoxPokemon *boxMon);

/**
 * @brief Gets the level of a pokemon based on its species and exp
 * 
 * @param monSpecies
 * @param monExp
 * @return The pokemons level
 */
u32 Pokemon_GetSpeciesLevelAt(u16 monSpecies, u32 monExp);

/**
 * @brief Gets the level of a pokemon based on its personal data and exp
 * 
 * @param monPersonalData 
 * @param unused_monSpecies unused
 * @param monExp 
 * @return The pokemons level
 */
u32 PokemonPersonalData_GetLevelAt(PokemonPersonalData *monPersonalData, u16 unused_monSpecies, u32 monExp);

/**
 * @brief Gets the nature of a Pokemon based on its personality value
 *
 * @param mon
 * @return The pokemons nature
 */
u8 Pokemon_GetNature(Pokemon *mon);

/**
 * @brief Gets the nature of a BoxPokemon based on its personality value
 *
 * @param boxMon
 * @return The pokemons nature
 */
u8 BoxPokemon_GetNature(BoxPokemon *boxMon);

/**
 * @brief Gets the nature of a pokemon based on its personality value
 * 
 * @param monPersonality 
 * @return The pokemons nature
 */
u8 Pokemon_GetNatureOf(u32 monPersonality);

/**
 * @brief Gets the affinitiy of a given pokemon nature to a given stat
 * 
 * @param monNature 
 * @param statType 
 * @return 1 if stat is increased, -1 if stat is decreased, else 0
 */
s8 Pokemon_GetStatAffinityOf(u8 monNature, u8 statType);

void Pokemon_UpdateFriendship(Pokemon *mon, u8 param1, u16 param2);

/**
 * @brief Gets the gender of a Pokemon based on its species and personality value
 * 
 * @param boxMon 
 * @return The pokemons gender 
 */
u8 Pokemon_GetGender(Pokemon *mon);

/**
 * @brief Gets the gender of a BoxPokemon based on its species and personality value
 * 
 * @param boxMon 
 * @return The pokemons gender 
 */
u8 BoxPokemon_GetGender(BoxPokemon *boxMon);

/**
 * @brief Gets the gender of a pokemon based on its species and personality value
 * 
 * @param monSpecies 
 * @param monPersonality 
 * @return The pokemons gender
 */
u8 Pokemon_GetGenderOf(u16 monSpecies, u32 monPersonality);

/**
 * @brief Gets the gender of a pokemon based on its PokemonPersonalData and personality value
 * 
 * @param monPersonalData 
 * @param unused_monSpecies unused
 * @param monPersonality 
 * @return The pokemons gender
 */
u8 PokemonPersonalData_GetGenderOf(PokemonPersonalData *monPersonalData, u16 unused_monSpecies, u32 monPersonality);

/**
 * @brief Gets whether a BoxPokemon is shiny based on its Original Trainer ID and its personality value
 * 
 * @param mon 
 * @return Whether the pokemon is shiny or not
 */
u8 Pokemon_IsShiny(Pokemon *mon);

/**
 * @brief Gets whether a pokemon is shiny based on its Original Trainer ID and its personality value
 * 
 * @param monOTID 
 * @param monPersonality 
 * @return Whether the pokemon is shiny or not
 */
u8 Pokemon_IsPersonalityShiny(u32 monOTID, u32 monPersonality);

/**
 * @brief Computes a personality value which, when applied to the given trainer ID, will result
 * in a shiny Pokemon.
 * 
 * @param monOTID
 * @return The computed personality value
 */
u32 Pokemon_FindShinyPersonality(u32 monOTID);

/**
 * @brief Build an ArchivedSprite for a Pokemon.
 * 
 * @param sprite    Pointer to the sprite structure to be populated
 * @param mon       The Pokemon whose data will be used to build the sprite
 * @param face      Which face of the Pokemon the player sees
 */
void Pokemon_BuildArchivedSprite(ArchivedSprite *sprite, Pokemon *mon, u8 face);

/**
 * @brief Build an ArchivedSprite for a Pokemon, preferring sprites from
 * Diamond/Pearl where possible.
 * 
 * @param sprite    Pointer to the sprite structure to be populated
 * @param mon       The Pokemon whose data will be used to build the sprite
 * @param face      Which face of the Pokemon the player sees
 */
void Pokemon_BuildArchivedDPSprite(ArchivedSprite *sprite, Pokemon *mon, u8 face);

/**
 * @brief Build an ArchivedSprite for a BoxPokemon.
 * 
 * @param sprite    Pointer to the sprite structure to be populated
 * @param mon       The Pokemon whose data will be used to build the sprite
 * @param face      Which face of the Pokemon the player sees
 * @param preferDP  If TRUE, prefer sprites from Diamond/Pearl over Platinum
 */
void BoxPokemon_BuildArchivedSprite(ArchivedSprite *sprite, BoxPokemon *boxMon, u8 face, BOOL preferDP);

/**
 * @brief Build an ArchivedSprite for a Pokemon sprite according to the input
 * species, form, and gender.
 * 
 * @param sprite        Pointer to the sprite structure to be populated
 * @param species       The Pokemon's species
 * @param gender        The Pokemon's gender
 * @param face          Which face of the Pokemon the player sees
 * @param shiny         1 if the Pokemon is shiny, 0 if not
 * @param form          The Pokemon's form
 * @param personality   The Pokemon's personality value
 */
void BuildArchivedPokemonSprite(ArchivedSprite *sprite, u16 monSpecies, u8 monGender, u8 param3, u8 monShininess, u8 monForm, u32 monPersonality);

/**
 * @brief Sanitizes a pokemon form. If the given form is greater than the max for the given species, returns zero, else returns the form unchanged
 * 
 * @param monSpecies 
 * @param monForm 
 * @return The sanitized pokemon form
 */
u8 Pokemon_SanitizeFormId(u16 monSpecies, u8 monForm);

/**
 * @brief Load the Y-offset applied to a Pokemon's sprite-face on display.
 * 
 * @param mon 
 * @param face 
 * @return Y-offset applied to the sprite-face on display
 */
u8 Pokemon_SpriteYOffset(Pokemon *mon, u8 face);

/**
 * @brief Load the Y-offset applied to a Pokemon's DP sprite-face on display.
 * 
 * @param mon 
 * @param face 
 * @return Y-offset applied to the DP sprite-face on display
 */
u8 Pokemon_DPSpriteYOffset(Pokemon *mon, u8 face);

/**
 * @brief Load the Y-offset applied to a Pokemon's sprite-face on display.
 * 
 * @param mon 
 * @param face 
 * @param preferDP  If TRUE, prefer Diamond/Pearl sprites, where possible
 * @return Y-offset applied to the sprite-face on display
 */
u8 BoxPokemon_SpriteYOffset(BoxPokemon *boxMon, u8 face, BOOL preferDP);

/**
 * @brief Load the Y-offset applied to a Pokemon's sprite-face on display.
 * 
 * @param species       The Pokemon's species
 * @param gender        The Pokemon's gender
 * @param face          Which face of the Pokemon the player sees
 * @param form          The Pokemon's form
 * @param personality   The Pokemon's personality value
 * @return Y-offset applied to the sprite-face on display
 */
u8 LoadPokemonSpriteYOffset(u16 species, u8 gender, u8 face, u8 form, u32 personality);
void sub_0207697C(ArchivedSprite *param0, u16 param1);
CellActorData *sub_02076994(SpriteRenderer *param0, SpriteGfxHandler *param1, PaletteData *param2, int param3, int param4, int param5, int param6, int param7, int heapID);
void sub_02076AAC(int param0, int param1, UnkStruct_ov5_021DE5D0 *param2);

/**
 * @brief Returns the size in bytes of a Pokemon struct as a u32
 * 
 * @return Size in bytes of a Pokemon struct
 */
u32 Pokemon_GetStructSize(void);

/**
 * @brief Returns the size in bytes of a BoxPokemon struct as a u32
 * 
 * @return Size in bytes of a BoxPokemon struct
 */
u32 BoxPokemon_GetStructSize(void);

/**
 * @brief Gets the form of a Pokemon
 * 
 * @param mon 
 * @return The pokemons form
 */
u8 Pokemon_GetForm(Pokemon *mon);

/**
 * @brief Gets the form of a BoxPokemon
 * 
 * @param boxMon 
 * @return The pokemons form
 */
u8 BoxPokemon_GetForm(BoxPokemon *boxMon);

/**
 * @brief Gets the BoxPokemon data for a given Pokemon
 * 
 * @param mon 
 * @return The BoxPokemon data for a given Pokemon
 */
BoxPokemon *Pokemon_GetBoxPokemon(Pokemon *mon);

BOOL Pokemon_ShouldLevelUp(Pokemon *mon);
u16 sub_02076B94(Party *party, Pokemon *mon, u8 evoTypeList, u16 evoParam, int *evoTypeResult);
u16 sub_02076F84(const u16 monSpecies);
u16 sub_02076FD4(const u16 monSpecies);

/**
 * @brief Adds a move to the moveset of a Pokemon
 * 
 * @param mon 
 * @param moveID 
 * @return The given moveID if successful, 0xfffe if already known, 0xffff if there is no room for the move
 */
u16 Pokemon_AddMove(Pokemon *mon, u16 moveID);

/**
 * @brief Deletes the first move of a Pokemon and adds the given move to the end of its moveset
 * 
 * @param mon 
 * @param moveID 
 */
void Pokemon_ReplaceMove(Pokemon *mon, u16 moveID);

/**
 * @brief Sets the given moveSlot of a Pokemon, removing its PP Ups
 * 
 * @param mon 
 * @param moveID 
 * @param moveSlot 
 */
void Pokemon_ResetMoveSlot(Pokemon *mon, u16 moveID, u8 moveSlot);

/**
 * @brief Sets the given moveSlot of a Pokemon, retaining the PP Ups for that slot
 * 
 * @param mon 
 * @param moveID 
 * @param moveSlot 
 */
void Pokemon_SetMoveSlot(Pokemon *mon, u16 moveID, u8 moveSlot);

u16 Pokemon_LevelUpMove(Pokemon *mon, int *index, u16 *moveID);

/**
 * @brief Swaps the places of two moves on a Pokemon
 * 
 * @param mon 
 * @param moveSlot1 
 * @param moveSlot2 
 */
void Pokemon_SwapMoveSlots(Pokemon *mon, int moveSlot1, int moveSlot2);

/**
 * @brief Swaps the places of two moves on a BoxPokemon
 * 
 * @param boxMon 
 * @param moveSlot1 
 * @param moveSlot2 
 */
void BoxPokemon_SwapMoveSlots(BoxPokemon *boxMon, int moveSlot1, int moveSlot2);

/**
 * @brief Deletes the given moveSlot of a Pokemon, shifting the ones above it down
 * 
 * @param mon 
 * @param moveSlot 
 */
void Pokemon_ClearMoveSlot(Pokemon *mon, u32 moveSlot);

void Pokemon_FromBoxPokemon(BoxPokemon *boxMon, Pokemon *mon);

/**
 * @brief Gets the level of the highest level pokemon in the Party
 * 
 * @param party 
 * @return The level of the highest level pokemon in the Party 
 */
u8 Party_GetMaxLevel(Party *party);

u16 sub_020775A4(u16 param0);
u16 sub_020775C4(u16 param0);
void Pokemon_Copy(Pokemon *src, Pokemon *dest);
void BoxPokemon_Copy(BoxPokemon *src, BoxPokemon *dest);
void BoxPokemon_FromPokemon(Pokemon *src, BoxPokemon *dest);

/**
 * @brief Gets the affinitiy of a given Pokemon to a given flavor
 * 
 * @param mon 
 * @param flavor 
 * @return 1 if liked flavor, -1 if disliked flavor, else 0
 */
s8 Pokemon_GetFlavorAffinity(Pokemon *mon, int flavor);

/**
 * @brief Gets the affinitiy of a given Pokemon personality to a given flavor
 * 
 * @param monPersonality 
 * @param flavor 
 * @return 1 if liked flavor, -1 if disliked flavor, else 0
 */
s8 Pokemon_GetFlavorAffinityOf(u32 monPersonality, int flavor);

/**
 * @brief Gets all moves that the given pokemon species and form can learn by leveling up
 * 
 * @param monSpecies 
 * @param monForm 
 * @param[out] monLevelUpMoveIDs Pointer to a u16 array for storing the level up moves
 * @return int 
 */
int Pokemon_LoadLevelUpMoveIdsOf(int monSpecies, int monForm, u16 *monLevelUpMoveIDs);

void Pokemon_ApplyPokerus(Party *party);
u8 Pokemon_HasPokerus(Party *party, u8 param1);
void Party_UpdatePokerusStatus(Party *party, s32 param1);
void Pokemon_ValidatePokerus(Party *party);
BOOL Pokemon_InfectedWithPokerus(Pokemon *mon);
BOOL Pokemon_CanSpreadPokerus(Pokemon *mon);

/**
 * @brief Sets Arceus' form based on its held item. Has no effect if the given Pokemon is not an Arceus
 * 
 * @param mon 
 */
void Pokemon_SetArceusForm(Pokemon *mon);

/**
 * @brief Sets Arceus' form based on its held item. Has no effect if the given Pokemon is not an Arceus
 * 
 * @param boxMon 
 */
void BoxPokemon_SetArceusForm(BoxPokemon *boxMon);

/**
 * @brief Get Arceus' form given an items hold effect
 * 
 * @param itemHoldEffect 
 * @return The form arceus should be in
 */
u8 Pokemon_GetArceusTypeOf(u16 itemHoldEffect);

/**
 * @brief Sets Giratina's form based on its held item. Has no effect if the given Pokemon is not a Giratina
 * 
 * @param mon 
 * @return The form Giratina was set to, or -1 if the given BoxPokemon was not a Giratina
 */
int Pokemon_SetGiratinaForm(Pokemon *mon);

/**
 * @brief Sets Giratina's form based on its held item. Has no effect if the given BoxPokemon is not a Giratina
 * 
 * @param boxMon 
 * @return The form Giratina was set to, or -1 if the given BoxPokemon was not a Giratina
 */
int BoxPokemon_SetGiratinaForm(BoxPokemon *boxMon);

/**
 * @brief Set Giratina to its Origin form. Has no effect if the given Pokemon is not a Giratina
 * 
 * @param mon 
 */
void Pokemon_SetGiratinaOriginForm(Pokemon *mon);

/**
 * @brief Iterates over all the Pokemon in Party, setting the form of any Giratina.
 *        If param1 is 1, always sets Giratina into Origin form, otherwise its form is based on held item
 * 
 * @param party 
 * @param param1 
 */
void Party_SetGiratinaForm(Party *party, int param1);

/**
 * @brief Sets Shaymin to the given form. Has no effect if the given Pokemon is not a Shaymin
 * 
 * @param mon 
 * @param monForm 
 */
void Pokemon_SetShayminForm(Pokemon *mon, int monForm);

/**
 * @brief Sets Shaymin to the given form. Has no effect if the given BoxPokemon is not a Shaymin
 * 
 * @param boxMon 
 * @param monForm 
 */
void BoxPokemon_SetShayminForm(BoxPokemon *boxMon, int monForm);

/**
 * @brief Checks whether Shaymin is allowed to change into Sky Form. Always returns false if the given Pokemon is not a Shaymin
 * 
 * @param mon 
 * @return Whether Shaymin is allowed to change into Sky Form
 */
BOOL Pokemon_CanShayminSkyForm(Pokemon *mon);

/**
 * @brief Iterates over all the Pokemon in Party, setting the form of any Shaymin to land form.
 * 
 * @param party 
 */
void Party_SetShayminLandForm(Party *party);

/**
 * @brief Sets all Shaymin in the party to Land form at night
 * 
 * @todo Verify this, seems correct but not sure what param1 does to the calculation here (time zone offset?)
 * 
 * @param party 
 * @param param1 
 * @param rtcTime 
 * @return Whether Shaymin should be set to Land form
 */
BOOL Party_SetShayminForm(Party *party, int param1, const RTCTime *rtcTime);

/**
 * @brief Sets Rotom to the given form. Has no effect if the given Pokemon is not a Rotom
 * If Rotom should learn a form specific move and there is no room, overwrites moveSlot with the new move
 * 
 * @param mon 
 * @param monForm 
 * @param moveSlot 
 * @return Whether the given pokemon was a Rotom
 */
BOOL Pokemon_SetRotomForm(Pokemon *mon, int monForm, int moveSlot);

/**
 * @brief Loads a Level-Up move table based on a pokemon species and form into the pointed to array
 * 
 * @param monSpecies 
 * @param monForm 
 * @param[out] monLevelUpMoves Pointer to a u16 array to store the move table
 */
void Pokemon_LoadLevelUpMovesOf(int monSpecies, int monForm, u16 *monLevelUpMoves);

/**
 * @brief Play a Pokemon's cry, according to the given species and form number.
 * 
 * @param chatotCry             Chatot cry data from the save block. Only used
 *                              if the Pokemon itself is Chatot.
 * @param crymod                Modification to apply to the Pokemon's cry.
 * @param species 
 * @param form 
 * @param pan 
 * @param volume 
 * @param forceDefaultChatot    If TRUE, force usage of Chatot's default cry.
 * @param heapID 
 */
void Pokemon_PlayCry(ChatotCry *chatotCry, enum PokemonCryMod crymod, u16 species, int form, int pan, int volume, int forceDefaultChatot, int heapID);

/**
 * @brief Play a Pokemon's cry, according to the given species and form number.
 * 
 * @param chatotCry             Chatot cry data from the save block. Only used
 *                              if the Pokemon itself is Chatot.
 * @param crymod                Modification to apply to the Pokemon's cry.
 * @param species 
 * @param form 
 * @param pan 
 * @param volume 
 * @param forceDefaultChatot    If TRUE, force usage of Chatot's default cry.
 * @param heapID 
 * @param delay                 Number of frames until playback will begin.
 */
void Pokemon_PlayDelayedCry(ChatotCry *chatotCry, enum PokemonCryMod crymod, u16 species, int form, int pan, int volume, int forceDefaultChatot, int heapID, u8 delay);
BOOL Pokemon_IsEligibleForAction(Pokemon *mon);
void Pokemon_SetCatchData(Pokemon *mon, TrainerInfo *param1, int monPokeball, int param3, int param4, int param5);
void Pokemon_UpdateAfterCatch(Pokemon *mon, TrainerInfo *param1, int monPokeball, int param3, int param4, int param5);
void Pokemon_GiveHeldItem(Pokemon *mon, u32 param1, int param2);
BOOL Pokemon_CanLearnTM(Pokemon *mon, u8 tmID);
BOOL CanPokemonFormLearnTM(u16 monSpecies, int monForm, u8 tmID);

/**
 * @brief Sets the ability of a Pokemon based on its species, form and peronsality value
 *
 * @param mon
 */
void Pokemon_CalcAbility(Pokemon *mon);

void sub_020780C4(Pokemon *mon, u32 monPersonality);

BOOL sub_02078804(u16 param0);
u16 sub_02078824(u8 index);
BOOL sub_02078838(Pokemon *mon);
BOOL sub_0207884C(BoxPokemon *boxMon, TrainerInfo *param1, int heapID);
int sub_020788D0(int param0);
void sub_0207893C(Pokemon *mon);
void sub_0207896C(BoxPokemon *boxMon);

/**
 * @brief Load the animation frames for a given species and a client type
 * (implicitly defining which face of the sprite is visible to the player).
 * 
 * @param narc          Handle to the pl_poke_data archive
 * @param[out] frames   Out-param for the loaded frame data
 * @param species       Species to be loaded
 * @param clientType    Client-type of who made the load request
 */
void PokeSprite_LoadAnimationFrames(NARC *narc, SpriteAnimationFrame *frames, u16 species, u16 clientType);

/**
 * @brief Load the animation data for a given species and a client type.
 * 
 * @param narc          Handle to the pl_poke_data archive
 * @param animationSys  Animation system container
 * @param sprite        Pre-loaded Pokemon sprite
 * @param species       Species to be loaded
 * @param face          Which face is visible to the player
 * @param reverse       If TRUE, reverse the sprite + animation
 * @param frame         Which frame of the animation to initialize
 */
void PokeSprite_LoadAnimation(NARC *narc, PokemonAnimationSys *animationSys, Sprite *sprite, u16 species, int face, int reverse, int frame);

/**
 * @brief Load the cry delay for a given species and a client type.
 * 
 * @param narc          Handle to the pl_poke_data archive
 * @param[out] cryDelay Out-param for the loaded cry delay value
 * @param species       Species to be loaded
 * @param clientType    Client-type of who made the load request
 */
void PokeSprite_LoadCryDelay(NARC *narc, u8 *cryDelay, u16 species, u16 clientType);

/**
 * @brief Load the vertical offset for a given species and a client type.
 * 
 * @param narc          Handle to the pl_poke_data archive
 * @param[out] yOffset  Out-param for the loaded vertical offset value
 * @param species       Species to be loaded
 * @param clientType    Client-type of who made the load request
 */
void PokeSprite_LoadYOffset(NARC *narc, s8 *yOffset, u16 species);

/**
 * @brief Load the shadow's horizontal offset for a given species and a client type.
 * 
 * @param narc                  Handle to the pl_poke_data archive
 * @param[out] xOffsetShadow    Out-param for the loaded cry delay value
 * @param species               Species to be loaded
 * @param clientType            Client-type of who made the load request
 */
void PokeSprite_LoadXOffsetShadow(NARC *narc, s8 *xOffsetShadow, u16 species);

/**
 * @brief Load the shadow size for a given species and a client type.
 * 
 * @param narc              Handle to the pl_poke_data archive
 * @param[out] shadowSize   Out-param for the loaded cry delay value
 * @param species           Species to be loaded
 * @param clientType        Client-type of who made the load request
 */
void PokeSprite_LoadShadowSize(NARC *narc, u8 *shadowSize, u16 species);
BOOL Pokemon_SetBallSeal(int param0, Pokemon *mon, int heapID);
void sub_02078B40(Pokemon *mon, UnkStruct_02078B40 *param1);
void sub_02078E0C(UnkStruct_02078B40 *param0, Pokemon *mon);

#endif // POKEPLATINUM_POKEMON_H
