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

Options * sub_020279FC(u32 param0);
void sub_02027A10(const Options * param0, Options * param1);
void sub_02027A1C(Options * param0);
void sub_02027A68(SaveData * param0, int param1);
int sub_02027AA4(const Options * param0);
void sub_02027AAC(Options * param0, int param1);
u8 sub_02027AC0(const Options * param0);
int sub_02027ADC(const Options * param0);
void sub_02027AE4(Options * param0, int param1);
int GameConfig_BattleAnimations(const Options * param0);
void sub_02027B00(Options * param0, int param1);
int sub_02027B14(const Options * param0);
void sub_02027B1C(Options * param0, int param1);
int sub_02027B30(const Options * param0);
void sub_02027B38(Options * param0, int param1);
int sub_02027B50(const Options * param0);
void sub_02027B58(Options * param0, int param1);

#endif // POKEPLATINUM_GAME_OPTIONS_H
