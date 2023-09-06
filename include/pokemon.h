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
#include "struct_defs/pokemon.h"
#include "struct_defs/box_pokemon.h"
#include "struct_defs/pokemon_personal_data.h"
#include "struct_decls/struct_02078B40_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay005/struct_ov5_021DE5D0.h"

#include <nitro/rtc.h>

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
Pokemon * AllocMonZeroed(u32 heapID);

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

void sub_02073D80(Pokemon *mon, int monSpecies, int monLevel, int monIVs, int useMonPersonalityParam, u32 monPersonality, int monOTIDSource, u32 monOTID);
void sub_02073E18(BoxPokemon *boxMon, int monSpecies, int monLevel, int monIVs, int useMonPersonalityParam, u32 monPersonality, int monOTIDSource, u32 monOTID);
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
 * @param monDataAttribute 
 * @param[out] dest Pointer for storing longer data
 * @return The requested value
 */
u32 GetMonData(Pokemon *mon, int monDataAttribute, void *dest);

/**
 * @brief Gets a value from a Pokemon, storing it in dest if neccessary
 * 
 * @param boxMon 
 * @param monDataAttribute 
 * @param[out] dest Pointer for storing longer data
 * @return The requested value
 */
u32 GetBoxMonData(BoxPokemon *boxMon, int monDataAttribute, void *dest);

/**
 * @brief Sets a value in a Pokemon, reading it from value if neccessary
 * 
 * @param mon 
 * @param monDataAttribute 
 * @param value 
 */
void SetMonData(Pokemon *mon, int monDataAttribute, const void *value);

/**
 * @brief Sets a value in a BoxPokemon, reading it from value if neccessary
 * 
 * @param boxMon 
 * @param monDataAttribute 
 * @param value 
 */
void SetBoxMonData(BoxPokemon *boxMon, int monDataAttribute, const void *value);

/**
 * @brief Increases some numerical fields in a Pokemon by the given value. Does nothing if the field is not supported  
 * 
 * @todo list of supported fields?
 *
 * @param mon 
 * @param monDataAttribute 
 * @param value 
 */
void IncreaseMonData(Pokemon *mon, int monDataAttribute, int value);

/**
 * @brief Gets a PokemonPersonalData based on a pokemon species and form
 * 
 * @param monSpecies 
 * @param monForm
 * @param heapID The index of the heap that the PokemonPersonalData should be loaded into
 * @return PokemonPersonalData* 
 */
PokemonPersonalData * GetMonFormPersonalData(int monSpecies, int monForm, int heapID);

/**
 * @brief Gets a PokemonPersonalData based on a pokemon species
 * 
 * @param monSpecies 
 * @param heapID The index of the heap that the PokemonPersonalData should be loaded into
 * @return PokemonPersonalData* 
 */
PokemonPersonalData * GetMonPersonalData(int monSpecies, int heapID);

/**
 * @brief Gets a value from a PokemonPersonalData structure
 * 
 * @param monPersonalData 
 * @param monPersonalDataAttribute What value to get 
 * @return The requested value
 */
u32 GetMonPersonalDataAttribute(PokemonPersonalData *monPersonalData, int monPersonalDataAttribute);

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
 * @param monPersonalDataAttribute What value to get
 * @return The requested value
 */
u32 GetMonFormPersonalDataAttribute(int monSpecies, int monForm, int monPersonalDataAttribute);

/**
 * @brief Loads a PokemonPersonalData based on its species and gets a value from it
 * 
 * @param monSpecies 
 * @param monPersonalDataAttribute What value to get
 * @return The requested value
 */
u32 GetMonSpeciesPersonalDataAttribute(int monSpecies, int monPersonalDataAttribute);

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
void sub_02075F0C(UnkStruct_02008A90 *param0, BoxPokemon *boxMon, u8 param2, int param3);
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
u8 sub_020765C4(BoxPokemon *boxMon, u8 param1, int param2);
u8 sub_02076648(u16 monSpecies, u8 monGender, u8 param2, u8 monForm, u32 monPersonality);
void sub_0207697C(UnkStruct_02008A90 *param0, u16 param1);
UnkStruct_0200D0F4 * sub_02076994(UnkStruct_0200C6E4 *param0, UnkStruct_0200C704 *param1, UnkStruct_02002F38 *param2, int param3, int param4, int param5, int param6, int param7, int heapID);
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
BoxPokemon * GetBoxMon(Pokemon *mon);

u8 sub_02076B14(Pokemon *mon);
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
s8 sub_0207762C(Pokemon *mon, int param1);
s8 sub_02077634(BoxPokemon *boxMon, int param1);
s8 sub_02077648(u32 monPersonality, int param1);

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
BOOL AllowShayminSkyForm(Pokemon *mon);

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
 *        If Rotom should learn a form specific move and there is no room, overwrites moveSlot with the new move
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
BOOL sub_02077FB4(Pokemon *mon, u8 param1);
BOOL sub_02077FBC(BoxPokemon *boxMon, u8 param1);
BOOL sub_02077FE4(u16 monSpecies, int monForm, u8 tmID);

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
