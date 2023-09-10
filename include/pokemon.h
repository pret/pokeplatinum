#ifndef POKEPLATINUM_UNK_02073C2C_H
#define POKEPLATINUM_UNK_02073C2C_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_defs/struct_02007C10.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_defs/struct_02008A90.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_0200D0F4_decl.h"
#include "struct_decls/struct_02015F84_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_02078B40_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay005/struct_ov5_021DE5D0.h"

#include <nitro/rtc.h>

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
    u16 padding : 4;

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
    u8 inverse : 1;
    u32 tmLearnsetMask1; //!< Bitflags for whether this pokemon can learn a TM (TM1 -> TM32)
    u32 tmLearnsetMask2; //!< Bitflags for whether this pokemon can learn a TM (TM33 -> TM64)
    u32 tmLearnsetMask3; //!< Bitflags for whether this pokemon can learn a TM (TM65 -> TM92, HM1 -> HM4)
    u32 tmLearnsetMask4; //!< Bitflags for whether this pokemon can learn a TM (HM5 -> HM8, rest unused)
} PokemonPersonalData;

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

#include "struct_defs/struct_0202818C.h"
#include "struct_defs/struct_0202CA28.h"

/**
 * @brief Party Pokemon data structure
 */
typedef struct PartyPokemon {
    u32 unk_00;
    u8 level;  //!< The pokemons level
    u8 unk_05;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
    u16 unk_12;
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
void ZeroMonData(Pokemon *mon);

/**
 * @brief Zeros out a BoxPokemon data structure, then encrypts the result
 * 
 * @param boxMon 
 */
void ZeroBoxMonData(BoxPokemon *boxMon);

/**
 * @brief Returns the size in bytes of a Pokemon struct as an int
 * 
 * @return Size in bytes of a Pokemon struct
 */
int PokemonStructSize(void);

/**
 * @brief Allocates a Pokemon struct on the given heap, then calls ZeroMonData() on it
 * 
 * @param heapID 
 * @return A new empty but encrypted Pokemon struct
 */
Pokemon *AllocMonZeroed(u32 heapID);

/**
 * @brief Decrypts a Pokemon data structure. PartyPokemon data is encrypted using the pokemons personality value, BoxPokemon data using a checksum value
 * 
 * @param mon 
 * @return Whether the pokemons data was decrypted by this call. Passed to EncryptMon() to decide whether to reencrypt the data or not
 */
BOOL DecryptMon(Pokemon *mon);

/**
 * @brief Encrypts a Pokemon data structure. PartyPokemon data is encrypted using the pokemons personality value, BoxPokemon data using a checksum value
 * 
 * @param mon 
 * @param encrypt Whether to encrypt the data or not. If this is false, the function does nothing and returns false.
 * @return Whether the pokemons data was encrypted by this call.
 */
BOOL EncryptMon(Pokemon *mon, BOOL encrypt);

/**
 * @brief Decrypts a BoxPokemon data structure
 * 
 * @param boxMon 
 * @return Whether the pokemons data was decrypted by this call. Passed to EncryptBoxMon() to decide whether to reencrypt the data or not
 */
BOOL DecryptBoxMon(BoxPokemon *boxMon);

/**
 * @brief Encrypts a BoxPokemon data structure
 * 
 * @param boxMon 
 * @param encrypt Whether to encrypt the data or not. If this is false, the function does nothing and returns false.
 * @return Whether the pokemons data was encrypted by this call.
 */
BOOL EncryptBoxMon(BoxPokemon *boxMon, BOOL encrypt);

void sub_02073D80(Pokemon *mon, int monSpecies, int monLevel, int monIVs, BOOL useMonPersonalityParam, u32 monPersonality, int monOTIDSource, u32 monOTID);
void sub_02074044(Pokemon *mon, u16 monSpecies, u8 monLevel, u8 monIVs, u8 monNature);
void sub_02074088(Pokemon *mon, u16 monSpecies, u8 monLevel, u8 monIVs, u8 param4, u8 param5, u8 param6);
u32 sub_02074128(u16 monSpecies, u8 param1, u8 param2);
void sub_02074158(Pokemon *mon, u16 monSpecies, u8 monLevel, u32 monCombinedIVs, u32 monPersonality);

/**
 * @brief Calculates and stores the current level and stats for a given Pokemon based on its IVs, EVs etc.
 * 
 * @param mon 
 */
void CalculateMonLevelAndStats(Pokemon *mon);

/**
 * @brief Calculates and stores the current stats for a given Pokemon based on its IVs, EVs etc.
 * 
 * @param mon 
 */
void CalculateMonStats(Pokemon *mon);

/**
 * @brief Gets a value from a Pokemon, storing it in dest if neccessary
 * 
 * @param mon 
 * @param param 
 * @param[out] dest Pointer for storing longer data
 * @return The requested value
 */
u32 GetMonData(Pokemon *mon, enum PokemonDataParam param, void *dest);

/**
 * @brief Gets a value from a Pokemon, storing it in dest if neccessary
 * 
 * @param boxMon 
 * @param param 
 * @param[out] dest Pointer for storing longer data
 * @return The requested value
 */
u32 GetBoxMonData(BoxPokemon *boxMon, enum PokemonDataParam param, void *dest);

/**
 * @brief Sets a value in a Pokemon, reading it from value if neccessary
 * 
 * @param mon 
 * @param param
 * @param value 
 */
void SetMonData(Pokemon *mon, enum PokemonDataParam param, const void *value);

/**
 * @brief Sets a value in a BoxPokemon, reading it from value if neccessary
 * 
 * @param boxMon 
 * @param param 
 * @param value 
 */
void SetBoxMonData(BoxPokemon *boxMon, enum PokemonDataParam param, const void *value);

/**
 * @brief Increases some numerical fields in a Pokemon by the given value. Does nothing if the field is not supported  
 * 
 * @todo list of supported fields?
 *
 * @param mon 
 * @param param 
 * @param value 
 */
void IncreaseMonData(Pokemon *mon, enum PokemonDataParam param, int value);

/**
 * @brief Gets a PokemonPersonalData based on a pokemon species and form
 * 
 * @param monSpecies 
 * @param monForm
 * @param heapID The index of the heap that the PokemonPersonalData should be loaded into
 * @return PokemonPersonalData* 
 */
PokemonPersonalData *GetMonFormPersonalData(int monSpecies, int monForm, int heapID);

/**
 * @brief Gets a PokemonPersonalData based on a pokemon species
 * 
 * @param monSpecies 
 * @param heapID The index of the heap that the PokemonPersonalData should be loaded into
 * @return PokemonPersonalData* 
 */
PokemonPersonalData *GetMonPersonalData(int monSpecies, int heapID);

/**
 * @brief Gets a value from a PokemonPersonalData structure
 * 
 * @param monPersonalData 
 * @param param What value to get 
 * @return The requested value
 */
u32 GetMonPersonalDataAttribute(PokemonPersonalData *monPersonalData, enum PokemonPersonalDataParam param);

/**
 * @brief Frees a PokemonPersonalData structure from the heap
 * 
 * @param monPersonalData 
 */
void FreeMonPersonalData(PokemonPersonalData *monPersonalData);

/**
 * @brief Loads a PokemonPersonalData based on its species and form and gets a value from it
 * 
 * @param monSpecies 
 * @param monForm 
 * @param param What value to get
 * @return The requested value
 */
u32 GetMonFormPersonalDataAttribute(int monSpecies, int monForm, enum PokemonPersonalDataParam param);

/**
 * @brief Loads a PokemonPersonalData based on its species and gets a value from it
 * 
 * @param monSpecies 
 * @param param What value to get
 * @return The requested value
 */
u32 GetMonSpeciesPersonalDataAttribute(int monSpecies, enum PokemonPersonalDataParam param);

/**
 * @brief Gets how much progress a Pokemon has made towards its next level as a percentage
 * 
 * @param mon 
 * @return how much progress a Pokemon has made towards its next level as a percentage
 */
u8 GetMonPercentToNextLevel(Pokemon *mon);

/**
 * @brief Gets how much experience is needed for the given Pokemon to level up
 * 
 * @param boxMon 
 * @return The amount of exp. needed for the given Pokemon to level up
 */
u32 GetMonExpToNextLevel(Pokemon *mon);

/**
 * @brief Gets how much experience is needed for the given BoxPokemon to level up
 * 
 * @param boxMon 
 * @return The amount of exp. needed for the given BoxPokemon to level up
 */
u32 GetBoxMonExpToNextLevel(BoxPokemon *boxMon);

/**
 * @brief Gets the amount of expeirence needed for the given Pokemon to reach its current level
 * 
 * @param mon 
 * @return The amount of exp. needed for the given Pokemon to reach its current level 
 */
u32 GetMonCurrentLevelExp(Pokemon *mon);

/**
 * @brief Gets the amount of expeirence needed for a pokemon species to reach a specified level
 * 
 * @param monSpecies 
 * @param monLevel 
 * @return The amount of exp. needed for the given pokemon species to reach the specified level
 */
u32 GetMonSpeciesLevelExp(int monSpecies, int monLevel);

/**
 * @copybrief GetMonSpeciesLevel()
 *
 * @param mon
 * @return The pokemons level
 */
u32 GetMonLevel(Pokemon *mon);

/**
 * @copybrief GetMonSpeciesLevel()
 *
 * @param boxMon
 * @return The pokemons level
 */
u32 GetBoxMonLevel(BoxPokemon *boxMon);

/**
 * @brief Gets the level of a pokemon based on its species and exp
 * 
 * @param monSpecies
 * @param monExp
 * @return The pokemons level
 */
u32 GetMonSpeciesLevel(u16 monSpecies, u32 monExp);

/**
 * @brief Gets the level of a pokemon based on its personal data and exp
 * 
 * @param monPersonalData 
 * @param unused_monSpecies unused
 * @param monExp 
 * @return The pokemons level
 */
u32 GetMonPersonalDataLevel(PokemonPersonalData *monPersonalData, u16 unused_monSpecies, u32 monExp);

/**
 * @brief Gets the nature of a Pokemon based on its personality value
 *
 * @param mon
 * @return The pokemons nature
 */
u8 GetMonNature(Pokemon *mon);

/**
 * @brief Gets the nature of a BoxPokemon based on its personality value
 *
 * @param boxMon
 * @return The pokemons nature
 */
u8 GetBoxMonNature(BoxPokemon *boxMon);

/**
 * @brief Gets the nature of a pokemon based on its personality value
 * 
 * @param monPersonality 
 * @return The pokemons nature
 */
u8 GetNatureFromPersonality(u32 monPersonality);

/**
 * @brief Gets the affinitiy of a given pokemon nature to a given stat
 * 
 * @param monNature 
 * @param statType 
 * @return 1 if stat is increased, -1 if stat is decreased, else 0
 */
s8 GetNatureStatAffinity(u8 monNature, u8 statType);

void sub_02075C74(Pokemon *mon, u8 param1, u16 param2);

/**
 * @brief Gets the gender of a Pokemon based on its species and personality value
 * 
 * @param boxMon 
 * @return The pokemons gender 
 */
u8 GetMonGender(Pokemon *mon);

/**
 * @brief Gets the gender of a BoxPokemon based on its species and personality value
 * 
 * @param boxMon 
 * @return The pokemons gender 
 */
u8 GetBoxMonGender(BoxPokemon *boxMon);

/**
 * @brief Gets the gender of a pokemon based on its species and personality value
 * 
 * @param monSpecies 
 * @param monPersonality 
 * @return The pokemons gender
 */
u8 GetMonPersonalityGender(u16 monSpecies, u32 monPersonality);

/**
 * @brief Gets the gender of a pokemon based on its PokemonPersonalData and personality value
 * 
 * @param monPersonalData 
 * @param unused_monSpecies unused
 * @param monPersonality 
 * @return The pokemons gender
 */
u8 GetMonPersonalDataGender(PokemonPersonalData *monPersonalData, u16 unused_monSpecies, u32 monPersonality);

/**
 * @brief Gets whether a BoxPokemon is shiny based on its Original Trainer ID and its personality value
 * 
 * @param mon 
 * @return Whether the pokemon is shiny or not
 */
u8 GetMonShininess(Pokemon *mon);

/**
 * @brief Gets whether a BoxPokemon is shiny based on its Original Trainer ID and its personality value
 * 
 * @param boxMon 
 * @return Whether the pokemon is shiny or not
 */
u8 GetBoxMonShininess(BoxPokemon *boxMon);

/**
 * @brief Gets whether a pokemon is shiny based on its Original Trainer ID and its personality value
 * 
 * @param monOTID 
 * @param monPersonality 
 * @return Whether the pokemon is shiny or not
 */
u8 GetMonPersonalityShininess(u32 monOTID, u32 monPersonality);

u32 sub_02075E64(u32 param0);
void sub_02075EF4(UnkStruct_02008A90 *param0, Pokemon *mon, u8 param2);
void sub_02075F00(UnkStruct_02008A90 *param0, Pokemon *mon, u8 param2);
void sub_02075F0C(UnkStruct_02008A90 *param0, BoxPokemon *boxMon, u8 param2, BOOL param3);
void sub_02075FB4(UnkStruct_02008A90 *param0, u16 monSpecies, u8 monGender, u8 param3, u8 monShininess, u8 monForm, u32 monPersonality);

/**
 * @brief Sanitizes a pokemon form. If the given form is greater than the max for the given species, returns zero, else returns the form unchanged
 * 
 * @param monSpecies 
 * @param monForm 
 * @return The sanitized pokemon form
 */
u8 SanitizeFormId(u16 monSpecies, u8 monForm);

u8 sub_020765AC(Pokemon *mon, u8 param1);
u8 sub_020765B8(Pokemon *mon, u8 param1);
u8 sub_020765C4(BoxPokemon *boxMon, u8 param1, BOOL param2);
u8 sub_02076648(u16 monSpecies, u8 monGender, u8 param2, u8 monForm, u32 monPersonality);
void sub_0207697C(UnkStruct_02008A90 *param0, u16 param1);
UnkStruct_0200D0F4 *sub_02076994(UnkStruct_0200C6E4 *param0, UnkStruct_0200C704 *param1, UnkStruct_02002F38 *param2, int param3, int param4, int param5, int param6, int param7, int heapID);
void sub_02076AAC(int param0, int param1, UnkStruct_ov5_021DE5D0 *param2);

/**
 * @brief Returns the size in bytes of a Pokemon struct as a u32
 * 
 * @return Size in bytes of a Pokemon struct
 */
u32 GetPokemonStructSize(void);

/**
 * @brief Returns the size in bytes of a BoxPokemon struct as a u32
 * 
 * @return Size in bytes of a BoxPokemon struct
 */
u32 GetBoxPokemonStructSize(void);

/**
 * @brief Gets the form of a Pokemon
 * 
 * @param mon 
 * @return The pokemons form
 */
u8 GetMonForm(Pokemon *mon);

/**
 * @brief Gets the form of a BoxPokemon
 * 
 * @param boxMon 
 * @return The pokemons form
 */
u8 GetBoxMonForm(BoxPokemon *boxMon);

/**
 * @brief Gets the BoxPokemon data for a given Pokemon
 * 
 * @param mon 
 * @return The BoxPokemon data for a given Pokemon
 */
BoxPokemon *GetBoxMon(Pokemon *mon);

BOOL sub_02076B14(Pokemon *mon);
u16 sub_02076B94(Party *party, Pokemon *mon, u8 evoTypeList, u16 evoParam, int *evoTypeResult);
u16 sub_02076F84(const u16 monSpecies);
u16 sub_02076FD4(const u16 monSpecies);

/**
 * @brief Sets the moveset of a BoxPokemon to the highest 4 available to that pokemon in its level up movelist
 * 
 * @param boxMon 
 */
void SetBoxMonDefaultMoves(BoxPokemon *boxMon);

/**
 * @brief Adds a move to the moveset of a Pokemon
 * 
 * @param mon 
 * @param moveID 
 * @return The given moveID if successful, 0xfffe if already known, 0xffff if there is no room for the move
 */
u16 AddMonMove(Pokemon *mon, u16 moveID);

/**
 * @brief Adds a move to the moveset of a BoxPokemon
 * 
 * @param boxMon 
 * @param moveID 
 * @return u16 
 */
u16 AddBoxMonMove(BoxPokemon *boxMon, u16 moveID);

/**
 * @brief Deletes the first move of a Pokemon and adds the given move to the end of its moveset
 * 
 * @param mon 
 * @param moveID 
 */
void ReplaceMonMove(Pokemon *mon, u16 moveID);

/**
 * @brief Deletes the first move of a BoxPokemon and adds the given move to the end of its moveset
 * 
 * @param boxMon 
 * @param moveID 
 */
void ReplaceBoxMonMove(BoxPokemon *boxMon, u16 moveID);

/**
 * @brief Sets the given moveSlot of a Pokemon, removing its PP Ups
 * 
 * @param mon 
 * @param moveID 
 * @param moveSlot 
 */
void ResetMonMove(Pokemon *mon, u16 moveID, u8 moveSlot);

/**
 * @brief Sets the given moveSlot of a Pokemon, retaining the PP Ups for that slot
 * 
 * @param mon 
 * @param moveID 
 * @param moveSlot 
 */
void SetMonMove(Pokemon *mon, u16 moveID, u8 moveSlot);

/**
 * @brief Sets the given moveSlot of a BoxPokemon, retaining the PP Ups for that slot
 * 
 * @param boxMon 
 * @param moveID 
 * @param moveSlot 
 */
void SetBoxMonMove(BoxPokemon *boxMon, u16 moveID, u8 moveSlot);

u16 sub_0207727C(Pokemon *mon, int *index, u16 *moveID);

/**
 * @brief Swaps the places of two moves on a Pokemon
 * 
 * @param mon 
 * @param moveSlot1 
 * @param moveSlot2 
 */
void SwapMonMoves(Pokemon *mon, int moveSlot1, int moveSlot2);

/**
 * @brief Swaps the places of two moves on a BoxPokemon
 * 
 * @param boxMon 
 * @param moveSlot1 
 * @param moveSlot2 
 */
void SwapBoxMonMoves(BoxPokemon *boxMon, int moveSlot1, int moveSlot2);

/**
 * @brief Deletes the given moveSlot of a Pokemon, shifting the ones above it down
 * 
 * @param mon 
 * @param moveSlot 
 */
void DeleteMonMove(Pokemon *mon, u32 moveSlot);

/**
 * @brief Checks whether a Pokemon has a given move
 * 
 * @param mon 
 * @param moveID 
 * @return Whether the given Pokemon has the given move
 */
BOOL MonHasMove(Pokemon *mon, u16 moveID);

void sub_020774C8(BoxPokemon *boxMon, Pokemon *mon);

/**
 * @brief Gets the level of the highest level pokemon in the Party
 * 
 * @param party 
 * @return The level of the highest level pokemon in the Party 
 */
u8 GetPartyHighestLevel(Party *party);

u16 sub_020775A4(u16 param0);
u16 sub_020775C4(u16 param0);
void sub_020775EC(Pokemon *src, Pokemon *dest);
void sub_02077604(BoxPokemon *src, BoxPokemon *dest);
void sub_02077618(Pokemon *src, BoxPokemon *dest);

/**
 * @brief Gets the affinitiy of a given Pokemon to a given flavor
 * 
 * @param mon 
 * @param flavor 
 * @return 1 if liked flavor, -1 if disliked flavor, else 0
 */
s8 GetMonFlavorAffinity(Pokemon *mon, int flavor);

/**
 * @brief Gets the affinitiy of a given BoxPokemon to a given flavor
 * 
 * @param boxMon 
 * @param flavor 
 * @return 1 if liked flavor, -1 if disliked flavor, else 0
 */
s8 GetBoxMonFlavorAffinity(BoxPokemon *boxMon, int flavor);

/**
 * @brief Gets the affinitiy of a given Pokemon personality to a given flavor
 * 
 * @param monPersonality 
 * @param flavor 
 * @return 1 if liked flavor, -1 if disliked flavor, else 0
 */
s8 GetMonPersonalityFlavorAffinity(u32 monPersonality, int flavor);

/**
 * @brief Gets all moves that the given pokemon species and form can learn by leveling up
 * 
 * @param monSpecies 
 * @param monForm 
 * @param[out] monLevelUpMoveIDs Pointer to a u16 array for storing the level up moves
 * @return int 
 */
int GetMonLevelUpMoveIDs(int monSpecies, int monForm, u16 *monLevelUpMoveIDs);

void sub_020776B0(Party *party);
u8 sub_02077758(Party *party, u8 param1);
void sub_020777B4(Party *party, s32 param1);
void sub_0207782C(Party *party);
BOOL sub_020778D8(Pokemon *mon);
BOOL sub_020778E0(BoxPokemon *boxMon);
BOOL sub_020778F8(Pokemon *mon);
BOOL sub_02077900(BoxPokemon *boxMon);

/**
 * @brief Sets Arceus' form based on its held item. Has no effect if the given Pokemon is not an Arceus
 * 
 * @param mon 
 */
void SetArceusForm(Pokemon *mon);

/**
 * @brief Sets Arceus' form based on its held item. Has no effect if the given Pokemon is not an Arceus
 * 
 * @param boxMon 
 */
void SetBoxArceusForm(BoxPokemon *boxMon);

/**
 * @brief Get Arceus' form given an items hold effect
 * 
 * @param itemHoldEffect 
 * @return The form arceus should be in
 */
u8 GetArceusItemType(u16 itemHoldEffect);

/**
 * @brief Sets Giratina's form based on its held item. Has no effect if the given Pokemon is not a Giratina
 * 
 * @param mon 
 * @return The form Giratina was set to, or -1 if the given BoxPokemon was not a Giratina
 */
int SetGiratinaForm(Pokemon *mon);

/**
 * @brief Sets Giratina's form based on its held item. Has no effect if the given BoxPokemon is not a Giratina
 * 
 * @param boxMon 
 * @return The form Giratina was set to, or -1 if the given BoxPokemon was not a Giratina
 */
int SetBoxGiratinaForm(BoxPokemon *boxMon);

/**
 * @brief Set Giratina to its Origin form. Has no effect if the given Pokemon is not a Giratina
 * 
 * @param mon 
 */
void SetGiratinaOriginForm(Pokemon *mon);

/**
 * @brief Iterates over all the Pokemon in Party, setting the form of any Giratina.
 *        If param1 is 1, always sets Giratina into Origin form, otherwise its form is based on held item
 * 
 * @param party 
 * @param param1 
 */
void SetPartyGiratinaForm(Party *party, int param1);

/**
 * @brief Sets Shaymin to the given form. Has no effect if the given Pokemon is not a Shaymin
 * 
 * @param mon 
 * @param monForm 
 */
void SetShayminForm(Pokemon *mon, int monForm);

/**
 * @brief Sets Shaymin to the given form. Has no effect if the given BoxPokemon is not a Shaymin
 * 
 * @param boxMon 
 * @param monForm 
 */
void SetBoxShayminForm(BoxPokemon *boxMon, int monForm);

/**
 * @brief Checks whether Shaymin is allowed to change into Sky Form. Always returns false if the given Pokemon is not a Shaymin
 * 
 * @param mon 
 * @return Whether Shaymin is allowed to change into Sky Form
 */
BOOL CanShayminSkyForm(Pokemon *mon);

/**
 * @brief Iterates over all the Pokemon in Party, setting the form of any Shaymin to land form.
 * 
 * @param party 
 */
void SetShayminLandForm(Party *party);

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
BOOL SetPartyShayminForm(Party *party, int param1, const RTCTime *rtcTime);

/**
 * @brief Sets Rotom to the given form. Has no effect if the given Pokemon is not a Rotom
 * If Rotom should learn a form specific move and there is no room, overwrites moveSlot with the new move
 * 
 * @param mon 
 * @param monForm 
 * @param moveSlot 
 * @return Whether the given pokemon was a Rotom
 */
BOOL SetRotomForm(Pokemon *mon, int monForm, int moveSlot);

/**
 * @brief Loads a Level-Up move table based on a pokemon species and form into the pointed to array
 * 
 * @param monSpecies 
 * @param monForm 
 * @param[out] monLevelUpMoves Pointer to a u16 array to store the move table
 */
void LoadMonLevelUpMoves(int monSpecies, int monForm, u16 *monLevelUpMoves);

void sub_02077D3C(UnkStruct_0202CC84 *param0, int param1, u16 monSpecies, int param3, int param4, int param5, int param6, int param7);
void sub_02077DB4(UnkStruct_0202CC84 *param0, int param1, u16 monSpecies, int param3, int param4, int param5, int param6, int param7, u8 param8);
BOOL sub_02077E3C(Pokemon *mon);
void sub_02077E64(Pokemon *mon, UnkStruct_02025E6C *param1, int monPokeball, int param3, int param4, int param5);
void sub_02077EA4(BoxPokemon *boxMon, UnkStruct_02025E6C *param1, int monPokeball, int param3, int param4, int param5);
void sub_02077EE4(Pokemon *mon, UnkStruct_02025E6C *param1, int monPokeball, int param3, int param4, int param5);
void sub_02077EF8(BoxPokemon *boxMon, UnkStruct_02025E6C *param1, int monPokeball, int param3, int param4, int param5);
void sub_02077F0C(Pokemon *mon, u32 param1, int param2);
BOOL CanMonLearnTM(Pokemon *mon, u8 tmID);
BOOL CanBoxMonLearnTM(BoxPokemon *boxMon, u8 tmID);
BOOL CanMonSpeciesLearnTM(u16 monSpecies, int monForm, u8 tmID);

/**
 * @brief Sets the ability of a Pokemon based on its species, form and peronsality value
 *
 * @param mon
 */
void CalculateMonAbility(Pokemon *mon);

/**
 * @brief Sets the ability of a BoxPokemon based on its species, form and peronsality value
 *
 * @param boxMon
 */
void CalculateBoxMonAbility(BoxPokemon *boxMon);

void sub_020780C4(Pokemon *mon, u32 monPersonality);

/**
 * @brief Gets a bitmask with a single bit set at the specified index.
 * 
 * @param index 
 * @return A bitmask with a single bit set at the specified index.
 */
u32 GetSingleBitMask(int index);

/**
 * @brief Gets the index of the lowest set bit of the given number
 * 
 * @param num 
 * @return The index of the lowest set bit of the given number 
 */
int GetLowestSetBitIndex(u32 num);

BOOL sub_02078804(u16 param0);
u16 sub_02078824(u8 index);
BOOL sub_02078838(Pokemon *mon);
BOOL sub_0207884C(BoxPokemon *boxMon, UnkStruct_02025E6C *param1, int heapID);
int sub_020788D0(int param0);
void sub_0207893C(Pokemon *mon);
void sub_0207896C(BoxPokemon *boxMon);
void sub_020789BC(NARC *narc, UnkStruct_02007C10 *param1, u16 param2, u16 param3);
void sub_020789F4(NARC *narc, UnkStruct_02015F84 *param1, UnkStruct_02007C7C *param2, u16 param3, int param4, int param5, int param6);
void sub_02078A4C(NARC *narc, u8 *param1, u16 param2, u16 param3);
void sub_02078A80(NARC *narc, s8 *param1, u16 param2);
void sub_02078AA4(NARC *narc, s8 *param1, u16 param2);
void sub_02078AC8(NARC *narc, u8 *param1, u16 param2);
BOOL sub_02078AEC(int param0, Pokemon *mon, int heapID);
void sub_02078B40(Pokemon *mon, UnkStruct_02078B40 *param1);
void sub_02078E0C(UnkStruct_02078B40 *param0, Pokemon *mon);

#endif // POKEPLATINUM_UNK_02073C2C_H
