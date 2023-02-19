#ifndef POKEPLATINUM_GAME_OPTIONS_H
#define POKEPLATINUM_GAME_OPTIONS_H

#include "struct_defs/game_options.h"
#include "struct_decls/struct_021C0794_decl.h"

/*
 * Allocate a new GameOptions object within an existing heap. Any object
 * returned by this function should have some default values assigned to its
 * properties.
 * 
 * See the definition for the GameOptions struct for info on available props.
 */
GameOptions * GameOptions_AllocAndInit(u32 heapID);

/*
 * Copy a source object into a destination object, byte-for-byte.
 */
void GameOptions_Copy(const GameOptions * src, GameOptions * dest);

/*
 * Sets up a GameOptions object with a default set of values for its properties.
 * Any existing values are overwritten.
 * 
 * Default values:
 *   - textSpeed      := 1
 *   - audioMode      := 0
 *   - battleAnimsOff := 0
 *   - battleSetMode  := 0
 *   - buttonMode     := 0
 *   - frameStyle     := 0
 */
void GameOptions_SetDefaultValues(GameOptions * options);

/*
 * Updates the button mode value stored as a global and used to control how
 * unmapped buttons are simulated.
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
u8 GameOptions_GetTextSpeedReductionFactor(const GameOptions * param0);

/*
 * Accessor functions for the individual properties within the GameOptions struct.
 */
int GameOptions_GetTextSpeed(const GameOptions * param0);
void GameOptions_SetTextSpeed(GameOptions * param0, int param1);
int GameOptions_GetAudioMode(const GameOptions * param0);
void GameOptions_SetAudioMode(GameOptions * param0, int param1);
int GameOptions_GetBattleAnimsOff(const GameOptions * param0);
void GameOptions_SetBattleAnimsOff(GameOptions * param0, int param1);
int GameOptions_GetBattleSetMode(const GameOptions * param0);
void GameOptions_SetBattleSetMode(GameOptions * param0, int param1);
int GameOptions_GetButtonMode(const GameOptions * param0);
void GameOptions_SetButtonMode(GameOptions * param0, int param1);
int GameOptions_GetFrameStyle(const GameOptions * param0);
void GameOptions_SetFrameStyle(GameOptions * param0, int param1);

#endif // POKEPLATINUM_GAME_OPTIONS_H
