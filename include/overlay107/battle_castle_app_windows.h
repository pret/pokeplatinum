#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_WINDOWS_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_WINDOWS_H

#include "bg_window.h"

void BattleCastleApp_InitWindows(BgConfig *bgConfigs, Window *windows, u8 isOpponentApp);
void BattleCastleApp_FreeWindows(Window *windows, u8 isOpponentApp);
void BattleCastleApp_DrawWindow(BgConfig *bgConfig, Window *window);
void BattleCastleApp_DrawMessageBox(Window *window, int frame);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_WINDOWS_H
