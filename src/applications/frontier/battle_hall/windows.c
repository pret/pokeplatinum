#include "applications/frontier/battle_hall/windows.h"

#include <nitro.h>

#include "bg_window.h"
#include "render_window.h"

void BattleHallApp_InitWindows(BgConfig *bgConfig, Window *windows)
{
    static const WindowTemplate sWinTemplates[] = {
        { BG_LAYER_MAIN_0, 2, 19, 27, 4, 12, 1 },
        { BG_LAYER_MAIN_0, 24, 13, 7, 4, 13, 109 },
        { BG_LAYER_MAIN_0, 10, 20, 9, 2, 13, 137 },
        { BG_LAYER_MAIN_1, 1, 0, 31, 22, 13, 1 }
    };

    for (u8 i = 0; i < 4; i++) {
        Window_AddFromTemplate(bgConfig, &windows[i], &sWinTemplates[i]);
        Window_FillTilemap(&windows[i], 0);
    }
}

void BattleHallApp_FreeWindows(Window *windows)
{
    for (u16 i = 0; i < 4; i++) {
        Window_Remove(&windows[i]);
    }
}

void BattleHallApp_DrawWindow(BgConfig *bgConfig, Window *window)
{
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, 1015, 11, STANDARD_WINDOW_SYSTEM, HEAP_ID_BATTLE_HALL_APP);
    Window_DrawStandardFrame(window, TRUE, 1015, 11);
}

void BattleHallApp_DrawMessageBox(Window *window, int frame)
{
    LoadMessageBoxGraphics(window->bgConfig, Window_GetBgLayer(window), 985, 10, frame, HEAP_ID_BATTLE_HALL_APP);
    Window_FillTilemap(window, 15);
    Window_DrawMessageBoxWithScrollCursor(window, FALSE, 985, 10);
}
