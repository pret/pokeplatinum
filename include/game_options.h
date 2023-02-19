#ifndef POKEPLATINUM_GAME_OPTIONS_H
#define POKEPLATINUM_GAME_OPTIONS_H

#include "struct_defs/game_options.h"
#include "struct_decls/struct_021C0794_decl.h"

/**
 * Init new `GameOptions` structs and assign default values to it
 * 
 * @param heapID    The ID of the heap to allocate memory for the object from
 * @return          Pointer to the new `GameOptions` object. 
 */
GameOptions * GameOptions_Init(u32 heapID);

/**
 * `memcpy` wrapper for `GameOptions` structs.
 * 
 * @param      src  Source options
 * @param[out] dst  Destination options; existing values will be discarded
 */
void GameOptions_Copy(const GameOptions * src, GameOptions * dst);

/**
 * Assigns default values to a `GameOptions` struct's properties.
 * 
 * Defaults for each prop are as follows:
 * - `textSpeed       := 1`
 * - `audioMode       := 0`
 * - `battleAnimsOff  := 0`
 * - `battleSetMode   := 0`
 * - `buttonMode      := 0`
 * - `frameStyle      := 0`
 * 
 * @param options   Struct to be reset to default values
 */
void GameOptions_SetDefaultValues(GameOptions * options);

/**
 * Updates the global button mode flag. If save data is provided, then its
 * button mode will always be preferred.
 * 
 * @param saveData          If provided, will override `newButtonMode`
 * @param newButtonMode     The new button mode to be set
 */
void GameOptions_UpdateGlobalButtonMode(UnkStruct_021C0794 * saveData, int newButtonMode);

/*
 * Translates the textSpeed property within a GameOptions struct into a
 * reduction factor which should be applied to the text rendering speed.
 * 
 * As configured, the translation is:
 *   - textSpeed = 0 -> reduce rendering speed to 1/8th
 *   - textSpeed = 1 -> reduce rendering speed to 1/4th
 *   - textSpeed > 1 -> do not reduce rendering speed
 */

/**
 * Translates the `textSpeed` property within a struct into a reduction factor
 * to be applied to the text rendering speed in message boxes.
 * 
 * Possible values:
 *   - `textSpeed = 0` -> reduce rendering speed to 1/8
 *   - `textSpeed = 1` -> reduce rendering speed to 1/4
 *   - `textSpeed > 1` -> do not reduce rendering speed
 * 
 * @param options   The options struct containing a configured `textSpeed`
 * @return          A reduction factor to be applied to text-rendering speed
 */
u8 GameOptions_GetTextSpeedReductionFactor(const GameOptions * options);

/**
 * Get text speed property from options.
 * 
 * @param options 
 * @return `textSpeed` value
 */
int GameOptions_GetTextSpeed(const GameOptions * options);

/**
 * Set text speed property on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `textSpeed` value
 */
void GameOptions_SetTextSpeed(GameOptions * options, int newVal);

/**
 * Get audio mode property from options.
 * 
 * @param options 
 * @return `audioMode` value
 */
int GameOptions_GetAudioMode(const GameOptions * options);

/**
 * Set audio mode property on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `audioMode` value
 */
void GameOptions_SetAudioMode(GameOptions * options, int newVal);speed

/**
 * Get battle animations flag from options.
 * 
 * @param options 
 * @return `battleAnimsOff` value
 */
int GameOptions_GetBattleAnimsOff(const GameOptions * options);

/**
 * Set battle animations flag on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `battleAnimsOff` value
 */
void GameOptions_SetBattleAnimsOff(GameOptions * options, int newVal);textSpeed

/**
 * Get battle style property from options.
 * 
 * @param options 
 * @return `battleSetMode` value
 */
int GameOptions_GetBattleSetMode(const GameOptions * options);

/**
 * Set battle style property on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `battleSetMode` value
 */
void GameOptions_SetBattleSetMode(GameOptions * options, int newVal);

/**
 * Get button mode property from options.
 * 
 * @param options 
 * @return `buttonMode` value
 */
int GameOptions_GetButtonMode(const GameOptions * options);

/**
 * Set button mode property on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `buttonMode` value
 */
void GameOptions_SetButtonMode(GameOptions * options, int newVal);

/**
 * Get message frame property from options.
 * 
 * @param options 
 * @return `frameStyle` value
 */
int GameOptions_GetFrameStyle(const GameOptions * options);

/**
 * Set message frame property on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `frameStyle` value
 */
void GameOptions_SetFrameStyle(GameOptions * options, int newVal);

#endif // POKEPLATINUM_GAME_OPTIONS_H
