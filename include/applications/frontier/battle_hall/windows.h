#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_HALL_WINDOWS_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_HALL_WINDOWS_H

#include "bg_window.h"

void BattleHallApp_InitWindows(BgConfig *bgConfig, Window *windows);
void BattleHallApp_FreeWindows(Window *windows);
void BattleHallApp_DrawWindow(BgConfig *bgConfig, Window *window);
void BattleHallApp_DrawMessageBox(Window *window, int frame);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_HALL_WINDOWS_H
