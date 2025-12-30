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
#include "trainer_info.h"

#define OT_ID_PLAYER_ID       0
#define OT_ID_PRESET          1
#define OT_ID_RANDOM_NO_SHINY 2

#define FACE_BACK  0
#define FACE_FRONT 2

#define INIT_IVS_RANDOM 32

#define BATTLE_FACILITY_BANLIST_SIZE 18

#define CALC_UNOWN_LETTER(personality) ((                                          \
                                            (((personality) & 0x03000000) >> 18)   \
                                            | (((personality) & 0x00030000) >> 12) \
                                            | (((personality) & 0x00000300) >> 6)  \
                                            | (((personality) & 0x00000003) >> 0)) \
    % UNOWN_FORM_COUNT)

enum EvolutionContext {
    EVO_CONTEXT_LEVEL_UP = 0,
    EVO_CONTEXT_TRADE,
    EVO_CONTEXT_ITEM_CHECK,
    EVO_CONTEXT_ITEM_USE,
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
int Pokemon_Size(void);

/**
 * @brief Allocates a Pokemon struct on the given heap, then calls ZeroMonData() on it
 *
 * @param heapID
 * @return A new empty but encrypted Pokemon struct
 */
Pokemon *Pokemon_New(enum HeapID heapID);

/**
 * @brief Decrypts a Pokemon data structure. PartyPokemon data is encrypted using the pokemons personality value, BoxPokemon data using a checksum value
 *
 * @param mon
 * @return Whether the pokemons data was decrypted by this call. Passed to EncryptMon() to decide whether to reencrypt the data or not
 */
BOOL Pokemon_DecryptData(Pokemon *mon);

/**
 * @brief Encrypts a Pokemon data structure. PartyPokemon data is encrypted using the pokemons personality value, BoxPokemon data using a checksum value
 *
 * @param mon
 * @param encrypt Whether to encrypt the data or not. If this is false, the function does nothing and returns false.
 * @return Whether the pokemons data was encrypted by this call.
 */
BOOL Pokemon_EncryptData(Pokemon *mon, BOOL encrypt);

/**
 * @brief Decrypts a BoxPokemon data structure
 *
 * @param boxMon
 * @return Whether the pokemons data was decrypted by this call. Passed to EncryptBoxMon() to decide whether to reencrypt the data or not
 */
BOOL BoxPokemon_DecryptData(BoxPokemon *boxMon);

/**
 * @brief Encrypts a BoxPokemon data structure
 *
 * @param boxMon
 * @param encrypt Whether to encrypt the data or not. If this is false, the function does nothing and returns false.
 * @return Whether the pokemons data was encrypted by this call.
 */
BOOL BoxPokemon_EncryptData(BoxPokemon *boxMon, BOOL encrypt);

void Pokemon_InitWithParams(Pokemon *mon, int species, int level, int ivs, BOOL hasFixedPersonality, int personality, int otIDType, int otID);
void Pokemon_InitWithNature(Pokemon *mon, u16 species, u8 level, u8 ivs, u8 nature);
void Pokemon_InitWithGenderNatureLetter(Pokemon *mon, u16 species, u8 level, u8 ivs, u8 gender, u8 nature, u8 letter);
u32 Personality_CreateFromGenderAndNature(u16 species, u8 gender, u8 nature);
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
u32 Pokemon_GetData(Pokemon *mon, enum PokemonDataParam param, void *dest);

/**
 * @brief Gets a value from a Pokemon, storing it in dest if neccessary
 *
 * @param boxMon
 * @param param
 * @param[out] dest Pointer for storing longer data
 * @return The requested value
 */
u32 BoxPokemon_GetData(BoxPokemon *boxMon, enum PokemonDataParam param, void *dest);

/**
 * @brief Sets a value in a Pokemon, reading it from value if neccessary
 *
 * @param mon
 * @param param
 * @param value
 */
void Pokemon_SetData(Pokemon *mon, enum PokemonDataParam param, void *value);

/**
 * @brief Sets a value in a BoxPokemon, reading it from value if neccessary
 *
 * @param boxMon
 * @param param
 * @param value
 */
void BoxPokemon_SetData(BoxPokemon *boxMon, enum PokemonDataParam param, void *value);

/**
 * @brief Increases some numerical fields in a Pokemon by the given value. Does nothing if the field is not supported
 *
 * @todo list of supported fields?
 *
 * @param mon
 * @param param
 * @param value
 */
void Pokemon_IncreaseData(Pokemon *mon, enum PokemonDataParam param, int value);

/**
 * @brief Gets a SpeciesData based on a pokemon species and form
 *
 * @param species
 * @param form
 * @param heapID The index of the heap that the SpeciesData should be loaded into
 * @return SpeciesData*
 */
SpeciesData *SpeciesData_NewFromForm(int species, int form, enum HeapID heapID);

/**
 * @brief Gets a SpeciesData based on a pokemon species
 *
 * @param species
 * @param heapID The index of the heap that the SpeciesData should be loaded into
 * @return SpeciesData*
 */
SpeciesData *SpeciesData_NewFromSpecies(int species, enum HeapID heapID);

/**
 * @brief Gets a value from a SpeciesData structure
 *
 * @param speciesData
 * @param param What value to get
 * @return The requested value
 */
int SpeciesData_GetValue(SpeciesData *speciesData, enum SpeciesDataParam param);

/**
 * @brief Frees a SpeciesData structure from the heap
 *
 * @param speciesData
 */
void SpeciesData_Free(SpeciesData *speciesData);

/**
 * @brief Loads a SpeciesData based on its species and form and gets a value from it
 *
 * @param species
 * @param form
 * @param param What value to get
 * @return The requested value
 */
u32 Species_GetFormValue(int species, int form, enum SpeciesDataParam param);

/**
 * @brief Loads a SpeciesData based on its species and gets a value from it
 *
 * @param species
 * @param param What value to get
 * @return The requested value
 */
int Species_GetValue(int species, enum SpeciesDataParam param);

/**
 * @brief Gets how much progress a Pokemon has made towards its next level as a percentage
 *
 * @param mon
 * @return how much progress a Pokemon has made towards its next level as a percentage
 */
u8 Pokemon_CalcPercentToNextLevel(Pokemon *mon);

/**
 * @brief Gets how much experience is needed for the given Pokemon to level up
 *
 * @param boxMon
 * @return The amount of exp. needed for the given Pokemon to level up
 */
u32 Pokemon_CalcExpToNextLevel(Pokemon *mon);

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
 * @param species
 * @param level
 * @return The amount of exp. needed for the given pokemon species to reach the specified level
 */
u32 Species_GetExpAtLevel(int species, int level);

/**
 * @copybrief GetMonSpeciesLevel()
 *
 * @param mon
 * @return The pokemons level
 */
int Pokemon_CalcLevel(Pokemon *mon);

/**
 * @copybrief GetMonSpeciesLevel()
 *
 * @param boxMon
 * @return The pokemons level
 */
int BoxPokemon_CalcLevel(BoxPokemon *boxMon);

/**
 * @brief Gets the level of a pokemon based on its species and exp
 *
 * @param species
 * @param exp
 * @return The pokemons level
 */
int Species_CalcLevelByExp(u16 species, u32 exp);

/**
 * @brief Gets the level of a pokemon based on its personal data and exp
 *
 * @param speciesData
 * @param unused_species unused
 * @param exp
 * @return The pokemons level
 */
int SpeciesData_CalcLevelByExp(SpeciesData *speciesData, u16 unused_species, u32 exp);

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
 * @param personality
 * @return The pokemons nature
 */
u8 Personality_GetNature(u32 personality);

/**
 * @brief Gets the affinitiy of a given pokemon nature to a given stat
 *
 * @param nature
 * @param stat
 * @return 1 if stat is increased, -1 if stat is decreased, else 0
 */
s8 Nature_GetStatModifier(u8 nature, u8 stat);

void Pokemon_UpdateFriendship(Pokemon *mon, u8 kind, u16 location);

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
u8 Species_GetGenderFromPersonality(u16 monSpecies, u32 monPersonality);

/**
 * @brief Gets the gender of a pokemon based on its SpeciesData and personality value
 *
 * @param speciesData
 * @param unused_species unused
 * @param personality
 * @return The pokemons gender
 */
u8 SpeciesData_GetGenderFromPersonality(SpeciesData *speciesData, u16 unused_species, u32 personality);

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
 * @param otID
 * @param personality
 * @return Whether the pokemon is shiny or not
 */
u8 Personality_IsShiny(u32 otID, u32 personality);

/**
 * @brief Computes a personality value which, when applied to the given trainer ID, will result
 * in a shiny Pokemon.
 *
 * @param otID
 * @return The computed personality value
 */
u32 Personality_GenerateShiny(u32 otID);

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
 * @param template       Pointer to the sprite template to be populated
 * @param mon            The Pokemon whose data will be used to build the sprite
 * @param face           Which face of the Pokemon the player sees
 */
void Pokemon_BuildSpriteTemplateDP(PokemonSpriteTemplate *template, Pokemon *mon, u8 face);

/**
 * @brief Build a PokemonSpriteTemplate for a BoxPokemon.
 *
 * @param template        Pointer to the sprite template to be populated
 * @param boxMon         The Pokemon whose data will be used to build the sprite
 * @param face           Which face of the Pokemon the player sees
 * @param preferDP       If TRUE, prefer sprites from Diamond/Pearl over Platinum
 */
void BoxPokemon_BuildSpriteTemplate(PokemonSpriteTemplate *template, BoxPokemon *boxMon, u8 face, BOOL preferDP);

/**
 * @brief Build a PokemonSpriteTemplate for a Pokemon sprite according to the input
 * species, form, and gender.
 *
 * @param template       Pointer to the sprite template to be populated
 * @param species        The Pokemon's species
 * @param gender         The Pokemon's gender
 * @param face           Which face of the Pokemon the player sees
 * @param shiny          1 if the Pokemon is shiny, 0 if not
 * @param form           The Pokemon's form
 * @param personality    The Pokemon's personality value
 */
void Species_BuildSpriteTemplate(PokemonSpriteTemplate *template, u16 species, u8 gender, u8 face, u8 shiny, u8 form, u32 personality);

/**
 * @brief Sanitizes a pokemon form. If the given form is greater than the max for the given species, returns zero, else returns the form unchanged
 *
 * @param species
 * @param form
 * @return The sanitized pokemon form
 */
u8 Species_SanitizeFormId(u16 species, u8 form);

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
u8 Species_LoadSpriteYOffset(u16 species, u8 gender, u8 face, u8 form, u32 personality);
void sub_0207697C(PokemonSpriteTemplate *template, u16 param1);
ManagedSprite *sub_02076994(SpriteSystem *param0, SpriteManager *param1, PaletteData *param2, int param3, int param4, int param5, int param6, int param7, int heapID);
void sub_02076AAC(int param0, int param1, UnkStruct_ov5_021DE5D0 *param2);

/**
 * @brief Returns the size in bytes of a Pokemon struct as a u32
 *
 * @return Size in bytes of a Pokemon struct
 */
u32 Pokemon_Size2(void);

/**
 * @brief Returns the size in bytes of a BoxPokemon struct as a u32
 *
 * @return Size in bytes of a BoxPokemon struct
 */
u32 BoxPokemon_Size(void);

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
BoxPokemon *Pokemon_GetBoxMon(Pokemon *mon);

BOOL Pokemon_TryLevelUp(Pokemon *mon);
u16 Pokemon_GetEvolutionTarget(Party *party, Pokemon *mon, u8 context, u16 evoParam, int *methodRet);
u16 Pokemon_GetBaseSpeciesFromPersonalData(const u16 species);
u16 Pokemon_GetBaseSpeciesForBattle(const u16 species);

/**
 * @brief Adds a move to the moveset of a Pokemon
 *
 * @param mon
 * @param moveID
 * @return The given moveID if successful, 0xfffe if already known, 0xffff if there is no room for the move
 */
u16 Pokemon_TryAppendMove(Pokemon *mon, u16 move);

/**
 * @brief Deletes the first move of a Pokemon and adds the given move to the end of its moveset
 *
 * @param mon
 * @param moveID
 */
void Pokemon_ForceAppendMove(Pokemon *mon, u16 move);

/**
 * @brief Sets the given moveSlot of a Pokemon, removing its PP Ups
 *
 * @param mon
 * @param move
 * @param slot
 */
void Pokemon_SetMoveInSlot_ResetPPUp(Pokemon *mon, u16 move, u8 slot);

/**
 * @brief Sets the given moveSlot of a Pokemon, retaining the PP Ups for that slot
 *
 * @param mon
 * @param moveID
 * @param moveSlot
 */
void Pokemon_SetMoveInSlot(Pokemon *mon, u16 move, u8 slot);

u16 Pokemon_TryLevelUpMove(Pokemon *mon, int *index, u16 *moveID);

/**
 * @brief Swaps the places of two moves on a Pokemon
 *
 * @param mon
 * @param slot1
 * @param slot2
 */
void Pokemon_SwapMoveSlots(Pokemon *mon, int slot1, int slot2);

/**
 * @brief Swaps the places of two moves on a BoxPokemon
 *
 * @param boxMon
 * @param slot1
 * @param slot2
 */
void BoxPokemon_SwapMoveSlots(BoxPokemon *boxMon, int slot1, int slot2);

/**
 * @brief Deletes the given moveSlot of a Pokemon, shifting the ones above it down
 *
 * @param mon
 * @param slot
 */
void Pokemon_ClearMoveSlot(Pokemon *mon, u32 slot);

void BoxPokemon_CopyToPokemon(BoxPokemon *src, Pokemon *dest);

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
void Pokemon_CopyToBoxPokemon(Pokemon *src, BoxPokemon *dest);

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
 * @param personality
 * @param flavor
 * @return 1 if liked flavor, -1 if disliked flavor, else 0
 */
s8 Personality_GetFlavorAffinity(u32 personality, enum Flavor flavor);

/**
 * @brief Gets all moves that the given pokemon species and form can learn by leveling up
 *
 * @param monSpecies
 * @param monForm
 * @param[out] monLevelUpMoveIDs Pointer to a u16 array for storing the level up moves
 * @return int
 */
int Pokemon_LoadLevelUpMoveIdsOf(int monSpecies, int monForm, u16 *monLevelUpMoveIDs);

void Party_GivePokerusAtRandom(Party *party);
u8 Party_MaskHasPokerus(Party *party, u8 partyMask);
void Party_UpdatePokerus(Party *party, int daysPassed);
void Party_SpreadPokerus(Party *party);
BOOL Pokemon_HasPokerus(Pokemon *mon);
BOOL Pokemon_IsImmuneToPokerus(Pokemon *mon);

/**
 * @brief Sets Arceus' form based on its held item. Has no effect if the given Pokemon is not an Arceus
 *
 * @param mon
 */
void Pokemon_UpdateArceusForm(Pokemon *mon);

/**
 * @brief Sets Arceus' form based on its held item. Has no effect if the given Pokemon is not an Arceus
 *
 * @param boxMon
 */
void BoxPokemon_UpdateArceusForm(BoxPokemon *boxMon);

/**
 * @brief Get Arceus' form given an items hold effect
 *
 * @param holdEffect
 * @return The form arceus should be in
 */
u8 HoldEffect_GetArceusType(u16 holdEffect);

/**
 * @brief Sets Giratina's form based on its held item. Has no effect if the given Pokemon is not a Giratina
 *
 * @param mon
 * @return The form Giratina was set to, or -1 if the given BoxPokemon was not a Giratina
 */
s32 Pokemon_UpdateGiratinaForm(Pokemon *mon);

/**
 * @brief Sets Giratina's form based on its held item. Has no effect if the given BoxPokemon is not a Giratina
 *
 * @param boxMon
 * @return The form Giratina was set to, or -1 if the given BoxPokemon was not a Giratina
 */
s32 BoxPokemon_UpdateGiratinaForm(BoxPokemon *boxMon);

/**
 * @brief Set Giratina to its Origin form. Has no effect if the given Pokemon is not a Giratina
 *
 * @param mon
 */
void Pokemon_ForceSetGiratinaOriginForm(Pokemon *mon);

/**
 * @brief Iterates over all the Pokemon in Party, setting the form of any Giratina.
 *        If forceOrigin is TRUE, always sets Giratina into Origin form, otherwise its form is based on held item.
 *
 * @param party
 * @param forceOrigin
 */
void Party_UpdateGiratinaForms(Party *party, BOOL forceOrigin);

/**
 * @brief Sets Shaymin to the given form. Has no effect if the given Pokemon is not a Shaymin
 *
 * @param mon
 * @param form
 */
void Pokemon_UpdateShayminForm(Pokemon *mon, int form);

/**
 * @brief Sets Shaymin to the given form. Has no effect if the given BoxPokemon is not a Shaymin
 *
 * @param boxMon
 * @param form
 */
void BoxPokemon_UpdateShayminForm(BoxPokemon *boxMon, int form);

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
void Party_SetShayminLandForms(Party *party);

/**
 * @brief Sets all Shaymin in the party to Land form at night
 *
 * @todo Verify this, seems correct but not sure what param1 does to the calculation here (time zone offset?)
 *
 * @param party
 * @param param1
 * @param time
 * @return Whether Shaymin should be set to Land form
 */
BOOL Party_UpdateShayminForms(Party *party, int minutesDiff, const RTCTime *time);

/**
 * @brief Sets Rotom to the given form. Has no effect if the given Pokemon is not a Rotom
 * If Rotom should learn a form specific move and there is no room, overwrites moveSlot with the new move
 *
 * @param mon
 * @param form
 * @param moveSlot
 * @return Whether the given pokemon was a Rotom
 */
BOOL Pokemon_UpdateRotomForm(Pokemon *mon, int form, int moveSlot);

/**
 * @brief Loads a Level-Up move table based on a pokemon species and form into the pointed to array
 *
 * @param monSpecies
 * @param monForm
 * @param[out] monLevelUpMoves Pointer to a u16 array to store the move table
 */
void Species_LoadLevelUpLearnset(int monSpecies, int monForm, u16 *monLevelUpMoves);

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
void Pokemon_GiveWildHeldItem(Pokemon *mon, u32 battleType, int itemRates);
BOOL Pokemon_CanLearnTMHM(Pokemon *mon, u8 tmHM);
BOOL Species_CanLearnTMHM(u16 species, int form, u8 tmHM);

/**
 * @brief Sets the ability of a Pokemon based on its species, form and peronsality value
 *
 * @param mon
 */
void Pokemon_UpdateAbility(Pokemon *mon);

void Pokemon_SetPersonality(Pokemon *mon, u32 personality);

BOOL Species_IsBattleFacilityBanned(u16 species);
u16 BattleFacility_GetBanlistEntry(u8 index);
BOOL Pokemon_IsBattleFacilityBanned(Pokemon *mon);
BOOL BoxPokemon_BelongsToPlayer(BoxPokemon *boxMon, TrainerInfo *param1, enum HeapID heapID);
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
