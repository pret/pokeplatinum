#ifndef POKEPLATINUM_WIFI_BATTLE_TOWER_SCREEN_H
#define POKEPLATINUM_WIFI_BATTLE_TOWER_SCREEN_H

#include "wifi_battle_tower/app_state.h"

#include "bg_window.h"
#include "string_gf.h"
#include "text.h"

int WifiBattleTower_ScreenInit(WifiBattleTowerAppState *appState, int unused);
int WifiBattleTower_ScreenMain(WifiBattleTowerAppState *appState, int unused);
int WifiBattleTower_ScreenExit(WifiBattleTowerAppState *appState, int unused);
void Window_DrawTextAligned(Window *window, String *string, int xOffset, int yOffset, int alignment, TextColor textColor);
void Window_DrawSystemTextAligned(Window *window, String *string, int xOffset, int yOffset, int alignment, TextColor textColor);
void WifiBattleTower_InitNetworkIcon(WifiBattleTowerAppState *appState);

#define POPUP_TILEMAP_TOP        13
#define WINDOW_BORDER_PLTT_SLOT  11
#define WINDOW_BORDER_TILE_START 31 // (1 + (18 + 12))

enum BattleTowerHttpResult {
    BT_CODE_SUCCESS,
    BT_CODE_UPLOAD_NEEDED,
    BT_CODE_RANK_SELECT_NEEDED,

    BT_CODE_UPLOAD_REJECTED = -1,
    BT_CODE_SERVER_MAINTENANCE = -2,
    BT_CODE_ALREADY_CHALLENGED = -3,
    BT_CODE_HTTP_ERROR = -4,
    BT_CODE_NETWORK_FAILURE = -5,
    BT_CODE_NOT_IN_DCF_PHASE = -6,
    BT_CODE_CONNECTION_FAILED = -7,
};

enum ErrorCleanupSubStep {
    ERROR_CLEANUP_SUBSTEP_DISPLAY_ERROR,
    ERROR_CLEANUP_SUBSTEP_DISCONNECT,
    ERROR_CLEANUP_SUBSTEP_DISPLAY_RETURN,
    ERROR_CLEANUP_SUBSTEP_WAIT_RETURN,
};

#endif // POKEPLATINUM_WIFI_BATTLE_TOWER_SCREEN_H
