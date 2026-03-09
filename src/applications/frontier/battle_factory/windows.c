#include "applications/frontier/battle_factory/windows.h"

#include <nitro.h>

#include "constants/field_base_tiles.h"

#include "bg_window.h"
#include "render_window.h"

#define BASE_TILE_WINDOW_FRAME (1024 - STANDARD_WINDOW_TILE_COUNT)

void BattleFactoryApp_InitWindows(BgConfig *bgConfig, Window *windows)
{
    static const WindowTemplate sWinTemplates[] = {
        [WINDOW_PLAYERS_NAME] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 1,
            .tilemapTop = 1,
            .width = 10,
            .height = 2,
            .palette = 13,
            .baseTile = 1,
        },
        [WINDOW_PARTNERS_NAME] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 22,
            .tilemapTop = 1,
            .width = 10,
            .height = 2,
            .palette = 13,
            .baseTile = 21,
        },
        [WINDOW_SELECTED_MON_NAME_1] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 1,
            .tilemapTop = 4,
            .width = 9,
            .height = 2,
            .palette = 13,
            .baseTile = 41,
        },
        [WINDOW_SELECTED_MON_NAME_2] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 1,
            .tilemapTop = 6,
            .width = 9,
            .height = 2,
            .palette = 13,
            .baseTile = 59,
        },
        [WINDOW_SELECTED_MON_NAME_3] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 1,
            .tilemapTop = 8,
            .width = 9,
            .height = 2,
            .palette = 13,
            .baseTile = 77,
        },
        [WINDOW_MESSAGE_BOX] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 2,
            .tilemapTop = 19,
            .width = 17,
            .height = 4,
            .palette = 12,
            .baseTile = 95,
        },
        [WINDOW_UNUSED] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 23,
            .tilemapTop = 19,
            .width = 8,
            .height = 4,
            .palette = 13,
            .baseTile = 163,
        },
        [WINDOW_MENU] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 23,
            .tilemapTop = 17,
            .width = 8,
            .height = 6,
            .palette = 13,
            .baseTile = 195,
        },
        [WINDOW_PARTNERS_MON_NAME_1] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 22,
            .tilemapTop = 4,
            .width = 9,
            .height = 2,
            .palette = 13,
            .baseTile = 243,
        },
        [WINDOW_PARTNERS_MON_NAME_2] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 22,
            .tilemapTop = 6,
            .width = 9,
            .height = 2,
            .palette = 13,
            .baseTile = 261,
        }
    };

    for (u8 i = 0; i < NUM_FACTORY_APP_WINDOWS; i++) {
        Window_AddFromTemplate(bgConfig, &windows[i], &sWinTemplates[i]);
        Window_FillTilemap(&windows[i], 0);
    }
}

void BattleFactoryApp_FreeWindows(Window *windows)
{
    for (u16 i = 0; i < NUM_FACTORY_APP_WINDOWS; i++) {
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
