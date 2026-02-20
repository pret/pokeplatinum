#include "applications/frontier/battle_castle/windows.h"

#include <nitro.h>

#include "constants/field_base_tiles.h"

#include "bg_window.h"
#include "render_window.h"

#define BASE_TILE_WINDOW_FRAME (1024 - STANDARD_WINDOW_TILE_COUNT)

static const WindowTemplate sSelfAppWinTemplates[] = {
    [SELF_APP_WINDOW_HEADER] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 2,
        .tilemapTop = 1,
        .width = 29,
        .height = 2,
        .palette = 13,
        .baseTile = 1,
    },
    [SELF_APP_WINDOW_EXIT] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 26,
        .tilemapTop = 19,
        .width = 4,
        .height = 3,
        .palette = 13,
        .baseTile = 59,
    },
    [SELF_APP_WINDOW_LEVELS] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 0,
        .tilemapTop = 4,
        .width = 32,
        .height = 2,
        .palette = 13,
        .baseTile = 71,
    },
    [SELF_APP_WINDOW_HP_BARS] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 0,
        .tilemapTop = 9,
        .width = 32,
        .height = 2,
        .palette = 13,
        .baseTile = 135,
    },
    [SELF_APP_WINDOW_SUMMARY_SCREEN] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 5,
        .tilemapTop = 10,
        .width = 24,
        .height = 14,
        .palette = 13,
        .baseTile = 1,
    },
    [SELF_APP_WINDOW_ITEM_SELECT_MENU] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 12,
        .tilemapTop = 2,
        .width = 19,
        .height = 12,
        .palette = 13,
        .baseTile = 1,
    },
    [SELF_APP_WINDOW_MSG_BOX] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 27,
        .height = 4,
        .palette = 12,
        .baseTile = 337,
    },
    [SELF_APP_WINDOW_MON_SELECTION_MSG_BOX] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 20,
        .height = 4,
        .palette = 12,
        .baseTile = 445,
    },
    [SELF_APP_WINDOW_MON_OPTIONS_MSG_BOX] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 17,
        .height = 4,
        .palette = 12,
        .baseTile = 525,
    },
    [SELF_APP_WINDOW_MON_OPTIONS_MENU] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 23,
        .tilemapTop = 13,
        .width = 8,
        .height = 10,
        .palette = 13,
        .baseTile = 593,
    },
    [SELF_APP_WINDOW_HEAL_MENU] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 20,
        .tilemapTop = 7,
        .width = 11,
        .height = 10,
        .palette = 13,
        .baseTile = 673,
    },
    [SELF_APP_WINDOW_RENTAL_MENU] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 22,
        .tilemapTop = 9,
        .width = 9,
        .height = 8,
        .palette = 13,
        .baseTile = 673,
    },
    [SELF_APP_WINDOW_SELECTED_ITEM_NAME] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 5,
        .tilemapTop = 16,
        .width = 27,
        .height = 7,
        .palette = 12,
        .baseTile = 445,
    },
    [SELF_APP_WINDOW_YES_NO_MENU] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 24,
        .tilemapTop = 13,
        .width = 7,
        .height = 4,
        .palette = 13,
        .baseTile = 634,
    },
    [SELF_APP_WINDOW_UNUSED] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 24,
        .tilemapTop = 11,
        .width = 7,
        .height = 6,
        .palette = 13,
        .baseTile = 662,
    },
    [SELF_APP_WINDOW_ITEM_SELECT_PLAYER_INFO] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 1,
        .tilemapTop = 1,
        .width = 8,
        .height = 4,
        .palette = 13,
        .baseTile = 704,
    },
    [SELF_APP_WINDOW_ITEM_SELECT_MON_INFO] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 1,
        .tilemapTop = 7,
        .width = 10,
        .height = 2,
        .palette = 13,
        .baseTile = 736,
    },
    [SELF_APP_WINDOW_ITEM_SELECT_MON_HP] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 1,
        .tilemapTop = 13,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 756,
    }
};

static const WindowTemplate sOpponentAppWinTemplates[] = {
    [OPPONENT_APP_WINDOW_HEADER] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 2,
        .tilemapTop = 1,
        .width = 29,
        .height = 2,
        .palette = 13,
        .baseTile = 1,
    },
    [OPPONENT_APP_WINDOW_EXIT] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 26,
        .tilemapTop = 19,
        .width = 4,
        .height = 3,
        .palette = 13,
        .baseTile = 59,
    },
    [OPPONENT_APP_WINDOW_LEVELS] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 0,
        .tilemapTop = 4,
        .width = 32,
        .height = 2,
        .palette = 13,
        .baseTile = 71,
    },
    [OPPONENT_APP_WINDOW_HP_BARS] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 0,
        .tilemapTop = 9,
        .width = 32,
        .height = 2,
        .palette = 13,
        .baseTile = 135,
    },
    [OPPONENT_APP_WINDOW_SUMMARY_SCREEN] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 4,
        .tilemapTop = 10,
        .width = 26,
        .height = 14,
        .palette = 13,
        .baseTile = 1,
    },
    [OPPONENT_APP_WINDOW_MON_OPTIONS_MENU] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 23,
        .tilemapTop = 15,
        .width = 8,
        .height = 8,
        .palette = 13,
        .baseTile = 1,
    },
    [OPPONENT_APP_WINDOW_SUMMARY_MENU] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 22,
        .tilemapTop = 9,
        .width = 9,
        .height = 8,
        .palette = 13,
        .baseTile = 365,
    },
    [OPPONENT_APP_WINDOW_MSG_BOX] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 27,
        .height = 4,
        .palette = 12,
        .baseTile = 437,
    },
    [OPPONENT_APP_WINDOW_MON_SELECTION_MSG_BOX] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 20,
        .height = 4,
        .palette = 12,
        .baseTile = 545,
    },
    [OPPONENT_APP_WINDOW_MON_OPTION_MSG_BOX] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 17,
        .height = 4,
        .palette = 12,
        .baseTile = 625,
    },
    [OPPONENT_APP_WINDOW_YES_NO_MENU] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 24,
        .tilemapTop = 13,
        .width = 7,
        .height = 4,
        .palette = 13,
        .baseTile = 693,
    },
    [OPPONENT_APP_WINDOW_LEVEL_MENU] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 24,
        .tilemapTop = 11,
        .width = 7,
        .height = 6,
        .palette = 13,
        .baseTile = 721,
    }
};

static const struct {
    const WindowTemplate *templates;
    u32 numTemplates;
} sWinTemplates[2] = {
    { sSelfAppWinTemplates, NUM_SELF_APP_WINDOWS },
    { sOpponentAppWinTemplates, NUM_OPPONENT_APP_WINDOWS }
};

void BattleCastleApp_InitWindows(BgConfig *bgConfigs, Window *windows, u8 isOpponentApp)
{
    const WindowTemplate *template = sWinTemplates[isOpponentApp].templates;
    u32 numTemplates = sWinTemplates[isOpponentApp].numTemplates;

    for (u8 i = 0; i < numTemplates; i++) {
        Window_AddFromTemplate(bgConfigs, &windows[i], &template[i]);
        Window_FillTilemap(&windows[i], 0);
    }
}

void BattleCastleApp_FreeWindows(Window *windows, u8 isOpponentApp)
{
    u16 i;
    u32 numTemplates = sWinTemplates[isOpponentApp].numTemplates;

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
