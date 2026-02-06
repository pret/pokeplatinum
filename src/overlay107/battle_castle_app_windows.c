#include "overlay107/battle_castle_app_windows.h"

#include <nitro.h>

#include "constants/field_base_tiles.h"

#include "bg_window.h"
#include "render_window.h"

#define BASE_TILE_WINDOW_FRAME (1024 - STANDARD_WINDOW_TILE_COUNT)

static const WindowTemplate Unk_ov107_0224A288[] = {
    { BG_LAYER_MAIN_1, 2, 1, 29, 2, 13, 1 },
    { BG_LAYER_MAIN_1, 26, 19, 4, 3, 13, 59 },
    { BG_LAYER_MAIN_1, 0, 4, 32, 2, 13, 71 },
    { BG_LAYER_MAIN_1, 0, 9, 32, 2, 13, 135 },
    { BG_LAYER_MAIN_0, 5, 10, 24, 14, 13, 1 },
    { BG_LAYER_MAIN_0, 12, 2, 19, 12, 13, 1 },
    { BG_LAYER_MAIN_0, 2, 19, 27, 4, 12, 337 },
    { BG_LAYER_MAIN_0, 2, 19, 20, 4, 12, 445 },
    { BG_LAYER_MAIN_0, 2, 19, 17, 4, 12, 525 },
    { BG_LAYER_MAIN_0, 23, 13, 8, 10, 13, 593 },
    { BG_LAYER_MAIN_0, 20, 7, 11, 10, 13, 673 },
    { BG_LAYER_MAIN_0, 22, 9, 9, 8, 13, 673 },
    { BG_LAYER_MAIN_0, 5, 16, 27, 7, 12, 445 },
    { BG_LAYER_MAIN_0, 24, 13, 7, 4, 13, 634 },
    { BG_LAYER_MAIN_0, 24, 11, 7, 6, 13, 662 },
    { BG_LAYER_MAIN_0, 1, 1, 8, 4, 13, 704 },
    { BG_LAYER_MAIN_0, 1, 7, 10, 2, 13, 736 },
    { BG_LAYER_MAIN_0, 1, 13, 11, 2, 13, 756 }
};

static const WindowTemplate Unk_ov107_0224A228[] = {
    { BG_LAYER_MAIN_1, 2, 1, 29, 2, 13, 1 },
    { BG_LAYER_MAIN_1, 26, 19, 4, 3, 13, 59 },
    { BG_LAYER_MAIN_1, 0, 4, 32, 2, 13, 71 },
    { BG_LAYER_MAIN_1, 0, 9, 32, 2, 13, 135 },
    { BG_LAYER_MAIN_0, 4, 10, 26, 14, 13, 1 },
    { BG_LAYER_MAIN_0, 23, 15, 8, 8, 13, 1 },
    { BG_LAYER_MAIN_0, 22, 9, 9, 8, 13, 365 },
    { BG_LAYER_MAIN_0, 2, 19, 27, 4, 12, 437 },
    { BG_LAYER_MAIN_0, 2, 19, 20, 4, 12, 545 },
    { BG_LAYER_MAIN_0, 2, 19, 17, 4, 12, 625 },
    { BG_LAYER_MAIN_0, 24, 13, 7, 4, 13, 693 },
    { BG_LAYER_MAIN_0, 24, 11, 7, 6, 13, 721 }
};

static const struct {
    const WindowTemplate *templates;
    u32 numTemplates;
} sWinTemplates[2] = {
    { Unk_ov107_0224A288, 18 },
    { Unk_ov107_0224A228, 12 }
};

void BattleCastleApp_InitWindows(BgConfig *bgConfigs, Window *windows, u8 param2)
{
    const WindowTemplate *v1 = sWinTemplates[param2].templates;
    u32 numTemplates = sWinTemplates[param2].numTemplates;

    for (u8 i = 0; i < numTemplates; i++) {
        Window_AddFromTemplate(bgConfigs, &windows[i], &v1[i]);
        Window_FillTilemap(&windows[i], 0);
    }
}

void BattleCastleApp_FreeWindows(Window *windows, u8 param1)
{
    u16 i;
    u32 numTemplates = sWinTemplates[param1].numTemplates;

    for (i = 0; i < numTemplates; i++) {
        Window_Remove(&windows[i]);
    }
}

void BattleCastleApp_DrawWindow(BgConfig *bgConfig, Window *window)
{
    LoadStandardWindowGraphics(bgConfig, Window_GetBgLayer(window), BASE_TILE_WINDOW_FRAME, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_BATTLE_CASTLE_APP);
    Window_DrawStandardFrame(window, 1, BASE_TILE_WINDOW_FRAME, PLTT_11);
}

void BattleCastleApp_DrawMessageBox(Window *window, int frame)
{
    LoadMessageBoxGraphics(window->bgConfig, Window_GetBgLayer(window), BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_10, frame, HEAP_ID_BATTLE_CASTLE_APP);
    Window_FillTilemap(window, 15);
    Window_DrawMessageBoxWithScrollCursor(window, 1, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_10);
    Window_ScheduleCopyToVRAM(window);
}
