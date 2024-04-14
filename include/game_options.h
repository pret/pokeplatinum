#ifndef POKEPLATINUM_GAME_OPTIONS_H
#define POKEPLATINUM_GAME_OPTIONS_H

#include "savedata.h"

typedef struct Options {
    u16 textSpeed : 4;
    u16 soundMethod : 2;
    u16 battleStyle : 1;
    u16 battleScene : 1;
    u16 buttonMode : 2;
    u16 frame : 5;
    u16 : 1;
} Options;

Options* Options_AllocMemory(u32 heapID);
void Options_Copy(const Options *src, Options *dest);
void Options_Init(Options *options);
void Options_SetSystemButtonMode(SaveData *saveData, int buttonMode);
int Options_TextSpeed(const Options *options);
void Options_SetTextSpeed(Options *options, int textSpeed);
u8 Options_GetTextFrameDelay(const Options *options);
int Options_SoundMethod(const Options *options);
void Options_SetSoundMethod(Options *options, int soundMethod);
int Options_BattleScene(const Options *options);
void Options_SetBattleScene(Options *options, int battleScene);
int Options_BattleStyle(const Options *options);
void Options_SetBattleStyle(Options *options, int battleStyle);
int Options_ButtonMode(const Options *options);
void Options_SetButtonMode(Options *options, int buttonMode);
int Options_Frame(const Options *options);
void Options_SetFrame(Options *options, int frame);

#endif // POKEPLATINUM_GAME_OPTIONS_H
