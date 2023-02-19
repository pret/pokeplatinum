#ifndef POKEPLATINUM_STRUCT_GAME_OPTIONS_H
#define POKEPLATINUM_STRUCT_GAME_OPTIONS_H

/**
 * Managed struct of configurable options for a game which are customizable
 * by the player.
 */
typedef struct {
    u16 textSpeed      : 4;     ///< Controls the speed at which text renders
                                ///< in scrolling message frames. The raw value
                                ///< must be translated into a reduction factor.
                                ///< Supports values up to 15, but all values
                                ///< greater than 1 are treated as equivalents.

    u16 audioMode      : 2;     ///< Controls the method by which audio is
                                ///< emitted from the NDS sound system. This
                                ///< value should be submitted to
                                ///< `NNS_SndSetMonoFlag` on startup and
                                ///< whenever any options are reloaded.

    u16 battleAnimsOff : 1;     ///< Boolean flag toggle. If flipped on, then
                                ///< in-battle animations will be disabled.
                                ///< US Platinum refers to this as "Battle Scene",
                                ///< with options for "On" and "Off"; 0 is "On",
                                ///< 1 is "Off".

    u16 battleSetMode  : 1;     ///< Boolean flag toggle. If flipped on, then
                                ///< players will NOT be allowed to switch out
                                ///< their active Pokemon for another after
                                ///< fainting an enemy Pokemon. US Platinum
                                ///< refers to this as "Battle Style", with
                                ///< options for "Switch" and "Set"; 0 is
                                ///< "Switch", 1 is "Set".

    u16 buttonMode     : 2;     ///< Controls how unmapped NDS buttons are
                                ///< treated by the player input system. NDS
                                ///< Pokemon games, by default, do not handle
                                ///< any inputs from the `L` button or the
                                ///< `Start` button (`buttonMode := 0`).
                                ///< If `buttonMode == 1`, then `Start` will
                                ///< be treated as `X`.
                                ///< If `buttonMode == 2`, then `L` will be
                                ///< treated as `A`.

    u16 frameStyle     : 5;     ///< Designates which frame style to load and
                                ///< render when displaying a scrolling message
                                ///< box. Platinum comes with 20 of these.

    u16 _padding       : 1;     ///< Padding alignment to 16 bits.
} GameOptions;

#endif // POKEPLATINUM_STRUCT_GAME_OPTIONS_H
