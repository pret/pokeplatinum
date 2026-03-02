#include "applications/frontier/battle_arcade/windows.h"

#include <nitro.h>

#include "bg_window.h"

static const WindowTemplate sWinTemplates[] = {
    {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 27,
        .height = 4,
        .palette = 12,
        .baseTile = 1,
    },
    {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 13,
        .width = 7,
        .height = 4,
        .palette = 13,
        .baseTile = 109,
    }
};

void BattleArcadeApp_InitWindows(BgConfig *bgConfig, Window *window)
{
    for (u8 i = 0; i < NELEMS(sWinTemplates); i++) {
        Window_AddFromTemplate(bgConfig, &window[i], &sWinTemplates[i]);
        Window_FillTilemap(&window[i], 0);
    }
}

void BattleArcadeApp_FreeWindows(Window *windows)
{
    for (u16 i = 0; i < NELEMS(sWinTemplates); i++) {
        Window_Remove(&windows[i]);
    }
}
