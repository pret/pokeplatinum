#ifndef POKEPLATINUM_GAME_OPTIONS_H
#define POKEPLATINUM_GAME_OPTIONS_H

#include "struct_defs/game_options.h"
#include "struct_decls/struct_021C0794_decl.h"

typedef enum {
    TEXTSPEED_SLOW = 0,
    TEXTSPEED_MID,
    TEXTSPEED_FAST,
    TEXTSPEED_NUM,
} TextSpeed;

typedef enum {
    AUDIOMODE_STEREO = 0,
    AUDIOMODE_MONO,
    AUDIOMODE_NUM,
} AudioMode;

typedef enum {
    BATTLESCENE_ON = 0,     // Animations on
    BATTLESCENE_OFF,        // Animations off
    BATTLESCENE_NUM,
} BattleScene;

typedef enum {
    BATTLESTYLE_SHIFT = 0,  // Player can switch after a kill
    BATTLESTYLE_SET,        // Player cannot switch after a kill
    BATTLESTYLE_NUM,
} BattleStyle;

typedef enum {
    BUTTONMODE_NORMAL = 0,
    BUTTONMODE_START_IS_X,
    BUTTONMODE_L_IS_A,
    BUTTONMODE_NUM,
} ButtonMode;

typedef enum {
    FRAMESTYLE_01,
    FRAMESTYLE_02,
    FRAMESTYLE_03,
    FRAMESTYLE_04,
    FRAMESTYLE_05,
    FRAMESTYLE_06,
    FRAMESTYLE_07,
    FRAMESTYLE_08,
    FRAMESTYLE_09,
    FRAMESTYLE_10,
    FRAMESTYLE_11,
    FRAMESTYLE_12,
    FRAMESTYLE_13,
    FRAMESTYLE_14,
    FRAMESTYLE_15,
    FRAMESTYLE_16,
    FRAMESTYLE_17,
    FRAMESTYLE_18,
    FRAMESTYLE_19,
    FRAMESTYLE_20,
    FRAMESTYLE_NUM,
} FrameStyle;

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
TextSpeed GameOptions_GetTextSpeed(const GameOptions * options);

/**
 * Set text speed property on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `textSpeed` value
 */
void GameOptions_SetTextSpeed(GameOptions * options, TextSpeed newVal);

/**
 * Get audio mode property from options.
 * 
 * @param options 
 * @return `audioMode` value
 */
AudioMode GameOptions_GetAudioMode(const GameOptions * options);

/**
 * Set audio mode property on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `audioMode` value
 */
void GameOptions_SetAudioMode(GameOptions * options, AudioMode newVal);

/**
 * Get battle scene mode property from options.
 * 
 * @param options 
 * @return `battleScene` value
 */
BattleScene GameOptions_GetBattleScene(const GameOptions * options);

/**
 * Set battle scene mode property on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `battleScene` value
 */
void GameOptions_SetBattleScene(GameOptions * options, BattleScene newVal);

/**
 * Get battle style property from options.
 * 
 * @param options 
 * @return `battleStyle` value
 */
BattleStyle GameOptions_GetBattleStyle(const GameOptions * options);

/**
 * Set battle style property on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `battleStyle` value
 */
void GameOptions_SetBattleStyle(GameOptions * options, BattleStyle newVal);

/**
 * Get button mode property from options.
 * 
 * @param options 
 * @return `buttonMode` value
 */
ButtonMode GameOptions_GetButtonMode(const GameOptions * options);

/**
 * Set button mode property on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `buttonMode` value
 */
void GameOptions_SetButtonMode(GameOptions * options, ButtonMode newVal);

/**
 * Get message frame property from options.
 * 
 * @param options 
 * @return `frameStyle` value
 */
FrameStyle GameOptions_GetFrameStyle(const GameOptions * options);

/**
 * Set message frame property on options.
 * 
 * @param[out] options      options struct
 * @param      newVal       new `frameStyle` value
 */
void GameOptions_SetFrameStyle(GameOptions * options, FrameStyle newVal);

#endif // POKEPLATINUM_GAME_OPTIONS_H
