#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_WINDOWS_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_WINDOWS_H

#include "bg_window.h"

void BattleCastleApp_InitWindows(BgConfig *bgConfigs, Window *windows, u8 param2);
void BattleCastleApp_FreeWindows(Window *windows, u8 param1);
void BattleCastleApp_DrawWindow(BgConfig *bgConfig, Window *window);
void BattleCastleApp_DrawMessageBox(Window *window, int frame);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_WINDOWS_H
