#include "applications/frontier/battle_factory/windows.h"

#include <nitro.h>

#include "constants/field_base_tiles.h"

#include "bg_window.h"
#include "render_window.h"

#define BASE_TILE_WINDOW_FRAME (1024 - STANDARD_WINDOW_TILE_COUNT)

void BattleFactoryApp_InitWindows(BgConfig *bgConfig, Window *windows)
{
    static const WindowTemplate sWinTemplates[] = {
        { BG_LAYER_MAIN_1, 1, 1, 10, 2, 13, 1 },
        { BG_LAYER_MAIN_1, 22, 1, 10, 2, 13, 21 },
        { BG_LAYER_MAIN_1, 1, 4, 9, 2, 13, 41 },
        { BG_LAYER_MAIN_1, 1, 6, 9, 2, 13, 59 },
        { BG_LAYER_MAIN_1, 1, 8, 9, 2, 13, 77 },
        { BG_LAYER_MAIN_1, 2, 19, 17, 4, 12, 95 },
        { BG_LAYER_MAIN_1, 23, 19, 8, 4, 13, 163 },
        { BG_LAYER_MAIN_1, 23, 17, 8, 6, 13, 195 },
        { BG_LAYER_MAIN_1, 22, 4, 9, 2, 13, 243 },
        { BG_LAYER_MAIN_1, 22, 6, 9, 2, 13, 261 }
    };

    for (u8 i = 0; i < 10; i++) {
        Window_AddFromTemplate(bgConfig, &windows[i], &sWinTemplates[i]);
        Window_FillTilemap(&windows[i], 0);
    }
}

void BattleFactoryApp_FreeWindows(Window *windows)
{
    for (u16 i = 0; i < 10; i++) {
        Window_Remove(&windows[i]);
    }
}

void BattleFactoryApp_DrawWindow(BgConfig *bgConfig, Window *window)
{
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_1, BASE_TILE_WINDOW_FRAME, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_BATTLE_FACTORY_APP);
    Window_DrawStandardFrame(window, TRUE, BASE_TILE_WINDOW_FRAME, PLTT_11);
}

void BattleFactoryApp_DrawMessageBox(Window *window, int frame)
{
    LoadMessageBoxGraphics(window->bgConfig, Window_GetBgLayer(window), BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_10, frame, HEAP_ID_BATTLE_FACTORY_APP);
    Window_FillTilemap(window, 15);
    Window_DrawMessageBoxWithScrollCursor(window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_10);
}
