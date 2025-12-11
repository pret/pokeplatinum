#ifndef POKEPLATINUM_POKEMON_H
#define POKEPLATINUM_POKEMON_H

#include <nitro/rtc.h>

#include "constants/flavor.h"
#include "constants/forms.h"
#include "constants/pokemon.h"
#include "constants/sound.h"

#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/struct_02078B40_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/pokemon.h"
#include "struct_defs/species.h"
#include "struct_defs/sprite_animation_frame.h"

#include "overlay005/struct_ov5_021DE5D0.h"

#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pokemon_sprite.h"
#include "sprite_system.h"
#include "string.h"
#include "trainer_info.h"

#define OTID_NOT_SET   0
#define OTID_SET       1
#define OTID_NOT_SHINY 2

#define FACE_BACK  0
#define FACE_FRONT 2

#define INIT_IVS_RANDOM 32

#define BATTLE_FRONTIER_BANLIST_SIZE 18

enum EvolutionClass {
    EVO_CLASS_BY_LEVEL = 0,
    EVO_CLASS_BY_TRADE,
    EVO_CLASS_UNUSED_02,
    EVO_CLASS_BY_ITEM,
};

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
void Pokemon_InitAndCalcStats(Pokemon *mon, u16 monSpecies, u8 monLevel, u32 monCombinedIVs, u32 monPersonality);

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
 * @brief Gets a SpeciesData based on a pokemon species and form
 *
 * @param monSpecies
 * @param monForm
 * @param heapID The index of the heap that the SpeciesData should be loaded into
 * @return SpeciesData*
 */
SpeciesData *SpeciesData_FromMonForm(int monSpecies, int monForm, int heapID);

/**
 * @brief Gets a SpeciesData based on a pokemon species
 *
 * @param monSpecies
 * @param heapID The index of the heap that the SpeciesData should be loaded into
 * @return SpeciesData*
 */
SpeciesData *SpeciesData_FromMonSpecies(int monSpecies, int heapID);

/**
 * @brief Gets a value from a SpeciesData structure
 *
 * @param speciesData
 * @param param What value to get
 * @return The requested value
 */
u32 SpeciesData_GetValue(SpeciesData *speciesData, enum SpeciesDataParam param);

/**
 * @brief Frees a SpeciesData structure from the heap
 *
 * @param speciesData
 */
void SpeciesData_Free(SpeciesData *speciesData);

/**
 * @brief Loads a SpeciesData based on its species and form and gets a value from it
 *
 * @param monSpecies
 * @param monForm
 * @param param What value to get
 * @return The requested value
 */
u32 SpeciesData_GetFormValue(int monSpecies, int monForm, enum SpeciesDataParam param);

/**
 * @brief Loads a SpeciesData based on its species and gets a value from it
 *
 * @param monSpecies
 * @param param What value to get
 * @return The requested value
 */
u32 SpeciesData_GetSpeciesValue(int monSpecies, enum SpeciesDataParam param);

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
 * @param speciesData
 * @param unused_monSpecies unused
 * @param monExp
 * @return The pokemons level
 */
u32 SpeciesData_GetLevelAt(SpeciesData *speciesData, u16 unused_monSpecies, u32 monExp);

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
 * @brief Gets the gender of a pokemon based on its SpeciesData and personality value
 *
 * @param speciesData
 * @param unused_monSpecies unused
 * @param monPersonality
 * @return The pokemons gender
 */
u8 SpeciesData_GetGenderOf(SpeciesData *speciesData, u16 unused_monSpecies, u32 monPersonality);

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
 * @brief Build a PokemonSpriteTemplate for a Pokemon.
 *
 * @param spriteTemplate Pointer to the sprite template to be populated
 * @param mon            The Pokemon whose data will be used to build the sprite
 * @param face           Which face of the Pokemon the player sees
 */
void Pokemon_BuildSpriteTemplate(PokemonSpriteTemplate *spriteTemplate, Pokemon *mon, u8 face);

/**
 * @brief Build a PokemonSpriteTemplate for a Pokemon, preferring sprites from
 * Diamond/Pearl where possible.
 *
 * @param spriteTemplate Pointer to the sprite template to be populated
 * @param mon            The Pokemon whose data will be used to build the sprite
 * @param face           Which face of the Pokemon the player sees
 */
void Pokemon_BuildSpriteTemplateDP(PokemonSpriteTemplate *spriteTemplate, Pokemon *mon, u8 face);

/**
 * @brief Build a PokemonSpriteTemplate for a BoxPokemon.
 *
 * @param spriteTemplate Pointer to the sprite template to be populated
 * @param mon            The Pokemon whose data will be used to build the sprite
 * @param face           Which face of the Pokemon the player sees
 * @param preferDP       If TRUE, prefer sprites from Diamond/Pearl over Platinum
 */
void BoxPokemon_BuildSpriteTemplate(PokemonSpriteTemplate *spriteTemplate, BoxPokemon *boxMon, u8 face, BOOL preferDP);

/**
 * @brief Build a PokemonSpriteTemplate for a Pokemon sprite according to the input
 * species, form, and gender.
 *
 * @param spriteTemplate Pointer to the sprite template to be populated
 * @param species        The Pokemon's species
 * @param gender         The Pokemon's gender
 * @param face           Which face of the Pokemon the player sees
 * @param shiny          1 if the Pokemon is shiny, 0 if not
 * @param form           The Pokemon's form
 * @param personality    The Pokemon's personality value
 */
void BuildPokemonSpriteTemplate(PokemonSpriteTemplate *spriteTemplate, u16 species, u8 gender, u8 face, u8 shiny, u8 form, u32 personality);

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
void sub_0207697C(PokemonSpriteTemplate *param0, u16 param1);
ManagedSprite *sub_02076994(SpriteSystem *param0, SpriteManager *param1, PaletteData *param2, int param3, int param4, int param5, int param6, int param7, int heapID);
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
u16 Pokemon_GetEvolutionTargetSpecies(Party *party, Pokemon *mon, u8 evoClass, u16 evoParam, int *evoTypeResult);
u16 Pokemon_GetBaseSpeciesFromPersonalData(const u16 species);
u16 Pokemon_GetBaseSpeciesForBattle(const u16 species);

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

/**
 * @brief Gets the Sinnoh Pokedex number of a pokemon from its National Pokedex number
 *
 * @param species The National Pokedex number of a pokemon
 * @return The Sinnoh Pokedex number of that pokemon (or zero if none exists)
 */
u16 Pokemon_SinnohDexNumber(u16 species);

/**
 * @brief Gets the National Pokedex number of a pokemon from its Sinnoh Pokedex number
 * (Note: Inputting 0 here will return 493 (Arceus))
 *
 * @param sinnohDexNumber The Sinnoh Pokedex number of a pokemon
 * @return The National Pokedex number of that pokemon (or zero if none exists)
 */
u16 Pokemon_NationalDexNumber(u16 sinnohDexNumber);

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
s8 Pokemon_GetFlavorAffinity(Pokemon *mon, enum Flavor flavor);

/**
 * @brief Gets the affinitiy of a given Pokemon personality to a given flavor
 *
 * @param monPersonality
 * @param flavor
 * @return 1 if liked flavor, -1 if disliked flavor, else 0
 */
s8 Pokemon_GetFlavorAffinityOf(u32 monPersonality, enum Flavor flavor);

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
BOOL Pokemon_HasCuredPokerus(Pokemon *mon);

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
int Pokemon_SetGiratinaFormByHeldItem(Pokemon *mon);

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
 *        If form is GIRATINA_FORM_ORIGIN, always sets Giratina into Origin form, otherwise its form is based on held item
 *
 * @param party
 * @param form
 */
void Party_SetGiratinaForm(Party *party, int form);

/**
 * @brief Sets Shaymin to the given form. Has no effect if the given Pokemon is not a Shaymin
 *
 * @param mon
 * @param form
 */
void Pokemon_SetShayminForm(Pokemon *mon, int form);

/**
 * @brief Sets Shaymin to the given form. Has no effect if the given BoxPokemon is not a Shaymin
 *
 * @param boxMon
 * @param form
 */
void BoxPokemon_SetShayminForm(BoxPokemon *boxMon, int form);

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
 * @param form
 * @param moveSlot
 * @return Whether the given pokemon was a Rotom
 */
BOOL Pokemon_SetRotomForm(Pokemon *mon, int form, int moveSlot);

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
 * @param cryMod                Modification to apply to the Pokemon's cry.
 * @param species
 * @param form
 * @param pan
 * @param volume
 * @param forceDefaultChatot    If TRUE, force usage of Chatot's default cry.
 * @param heapID
 */
void PlayCryWithParams(ChatotCry *chatotCry, enum PokemonCryMod cryMod, u16 species, int form, int pan, int volume, int forceDefaultChatot, int heapID);

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
void Species_PlayDelayedCry(ChatotCry *chatotCry, enum PokemonCryMod crymod, u16 species, int form, int pan, int volume, int forceDefaultChatot, int heapID, u8 delay);
BOOL Pokemon_PlayCry(Pokemon *mon);
void Pokemon_SetCatchData(Pokemon *mon, TrainerInfo *trainerInfo, int monPokeball, int metLocation, int metTerrain, enum HeapID heapID);
void Pokemon_UpdateAfterCatch(Pokemon *mon, TrainerInfo *param1, int monPokeball, int param3, int param4, int param5);
void Pokemon_GiveHeldItem(Pokemon *mon, u32 battleType, int itemRates);
BOOL Pokemon_CanLearnTM(Pokemon *mon, u8 tmID);
BOOL CanPokemonFormLearnTM(u16 monSpecies, int monForm, u8 tmID);

/**
 * @brief Sets the ability of a Pokemon based on its species, form and peronsality value
 *
 * @param mon
 */
void Pokemon_CalcAbility(Pokemon *mon);

void sub_020780C4(Pokemon *mon, u32 monPersonality);

BOOL Pokemon_IsOnBattleFrontierBanlist(u16 species);
u16 Pokemon_GetBattleFrontierBanlistEntry(u8 index);
BOOL Pokemon_IsBannedFromBattleFrontier(Pokemon *pokemon);
BOOL sub_0207884C(BoxPokemon *boxMon, TrainerInfo *param1, int heapID);
int sub_020788D0(int param0);
void Pokemon_ClearBallCapsuleData(Pokemon *mon);
void BoxPokemon_RestorePP(BoxPokemon *boxMon);

/**
 * @brief Load the animation frames for a given species and a client type
 * (implicitly defining which face of the sprite is visible to the player).
 *
 * @param narc          Handle to the pl_poke_data archive
 * @param[out] frames   Out-param for the loaded frame data
 * @param species       Species to be loaded
 * @param clientType    Client-type of who made the load request
 */
void PokemonSprite_LoadAnimFrames(NARC *narc, SpriteAnimFrame *frames, u16 species, u16 clientType);

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
void PokemonSprite_LoadAnim(NARC *narc, PokemonAnimationSys *animationSys, PokemonSprite *sprite, u16 species, int face, int reverse, int frame);

/**
 * @brief Load the cry delay for a given species and a client type.
 *
 * @param narc          Handle to the pl_poke_data archive
 * @param[out] cryDelay Out-param for the loaded cry delay value
 * @param species       Species to be loaded
 * @param clientType    Client-type of who made the load request
 */
void PokemonSprite_LoadCryDelay(NARC *narc, u8 *cryDelay, u16 species, u16 clientType);

/**
 * @brief Load the vertical offset for a given species and a client type.
 *
 * @param narc          Handle to the pl_poke_data archive
 * @param[out] yOffset  Out-param for the loaded vertical offset value
 * @param species       Species to be loaded
 * @param clientType    Client-type of who made the load request
 */
void PokemonSprite_LoadYOffset(NARC *narc, s8 *yOffset, u16 species);

/**
 * @brief Load the shadow's horizontal offset for a given species and a client type.
 *
 * @param narc                  Handle to the pl_poke_data archive
 * @param[out] xOffsetShadow    Out-param for the loaded cry delay value
 * @param species               Species to be loaded
 * @param clientType            Client-type of who made the load request
 */
void PokemonSprite_LoadXOffsetShadow(NARC *narc, s8 *xOffsetShadow, u16 species);

/**
 * @brief Load the shadow size for a given species and a client type.
 *
 * @param narc              Handle to the pl_poke_data archive
 * @param[out] shadowSize   Out-param for the loaded cry delay value
 * @param species           Species to be loaded
 * @param clientType        Client-type of who made the load request
 */
void PokemonSprite_LoadShadowSize(NARC *narc, u8 *shadowSize, u16 species);
BOOL Pokemon_SetBallSeal(int param0, Pokemon *mon, int heapID);
void sub_02078B40(Pokemon *mon, UnkStruct_02078B40 *param1);
void sub_02078E0C(UnkStruct_02078B40 *param0, Pokemon *mon);

#endif // POKEPLATINUM_POKEMON_H
