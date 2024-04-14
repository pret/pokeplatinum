#ifndef POKEPLATINUM_GAME_OPTIONS_H
#define POKEPLATINUM_GAME_OPTIONS_H

#include "savedata.h"
#include "constants/game_options.h"

typedef struct Options {
    u16 textSpeed : 4;
    u16 soundMode : 2;
    u16 battleStyle : 1;
    u16 battleScene : 1;
    u16 buttonMode : 2;
    u16 frame : 5;
    u16 : 1;
} Options;

Options* Options_New(u32 heapID);
void Options_Copy(const Options *src, Options *dest);
void Options_Init(Options *options);
void Options_SetSystemButtonMode(SaveData *saveData, enum OptionsButtonMode mode);
int Options_TextSpeed(const Options *options);
void Options_SetTextSpeed(Options *options, enum OptionsTextSpeed speed);
u8 Options_TextFrameDelay(const Options *options);
int Options_SoundMode(const Options *options);
void Options_SetSoundMode(Options *options, enum OptionsSoundMode mode);
int Options_BattleScene(const Options *options);
void Options_SetBattleScene(Options *options, enum OptionsBattleScene scene);
int Options_BattleStyle(const Options *options);
void Options_SetBattleStyle(Options *options, enum OptionsBattleStyle style);
int Options_ButtonMode(const Options *options);
void Options_SetButtonMode(Options *options, enum OptionsButtonMode mode);
int Options_Frame(const Options *options);
void Options_SetFrame(Options *options, enum OptionsFrame frame);

#endif // POKEPLATINUM_GAME_OPTIONS_H
