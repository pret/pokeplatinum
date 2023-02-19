#ifndef POKEPLATINUM_STRUCT_GAME_OPTIONS_H
#define POKEPLATINUM_STRUCT_GAME_OPTIONS_H

/*
 * Defined structure of the player-configurable game options which are
 * persisted in save data.
 */
typedef struct {
    /*
     * Controls the speed at which text renders in scrolling message frames.
     * The raw value here must be translated elsewhere into a reduction factor.
     * We technically can support values up to 15, but any value higher than 1
     * is treated equally.
     */
    u16 textSpeed      : 4;

    /*
     * Controls the method by which audio is emitted from the NDS sound chip.
     * This value should be submitted to NNS_SndSetMonoFlag on startup and
     * whenever any options are reloaded.
     */
    u16 audioMode      : 2;

    /*
     * Boolean flag toggle. If flipped on, then in-battle animations will be
     * disabled.
     */
    u16 battleAnimsOff : 1;

    /*
     * Boolean flag toggle. If flipped on, then an enemy trainer will immediately
     * replace a fainted Pokemon in battle with an eligible member in their party
     * without any input from the player. This is, colloquially, known as
     * "Set mode."
     */
    u16 battleSetMode  : 1;

    /*
     * Controls how unmapped NDS buttons are treated on player input. NDS Pokemon
     * games, by default, do not handle any inputs via the L-button or the Start
     * button.
     * 
     * - buttonMode := 0 -> default behavior
     * - buttonMode := 1 -> "Start = X"; the Start button will be treated as the X button
     * - buttonMode := 2 -> "L = A"; the L button will be treated as the A button
     * 
     * Like textSpeed, this raw value is translated into a different value which
     * is actually understood by the game.
     * 
     * Like audioMode, this value (or, rather, its translation) needs to be
     * persisted in a global register for handling by the input listener.
     */
    u16 buttonMode     : 2;

    /*
     * Designates which frame style to load and render whenever displaying a
     * message box. Platinum comes with 20 of these, hence the 5-bit structure.
     */
    u16 frameStyle     : 5;

    /*
     * Padding bit, for space-alignment to 16-bits.
     */
    u16 _padding       : 1;
} GameOptions;

#endif // POKEPLATINUM_STRUCT_GAME_OPTIONS_H
