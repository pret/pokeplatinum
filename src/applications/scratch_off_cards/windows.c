#include "applications/scratch_off_cards/windows.h"

#include <nitro.h>

#include "constants/field_base_tiles.h"

#include "bg_window.h"
#include "render_window.h"

#define BASE_TILE_WINDOW_FRAME (1024 - STANDARD_WINDOW_TILE_COUNT)

static const WindowTemplate sWinTemplates[NUM_SCRATCH_WINDOWS] = {
    [SCRATCH_WINDOW_STOP_SCRATCH] = {
        .bgLayer = BG_LAYER_MAIN_2,
        .tilemapLeft = 2,
        .tilemapTop = 1,
        .width = 27,
        .height = 4,
        .palette = 12,
        .baseTile = 1,
    },
    [SCRATCH_WINDOW_UNUSED_1] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 24,
        .tilemapTop = 13,
        .width = 7,
        .height = 4,
        .palette = 13,
        .baseTile = 109,
    },
    [SCRATCH_WINDOW_ITEM_NAME_1] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 17,
        .tilemapTop = 3,
        .width = 11,
        .height = 5,
        .palette = 13,
        .baseTile = 137,
    },
    [SCRATCH_WINDOW_ITEM_NAME_2] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 17,
        .tilemapTop = 8,
        .width = 11,
        .height = 5,
        .palette = 13,
        .baseTile = 192,
    },
    [SCRATCH_WINDOW_ITEM_NAME_3] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 17,
        .tilemapTop = 14,
        .width = 11,
        .height = 5,
        .palette = 13,
        .baseTile = 247,
    },
    [SCRATCH_WINDOW_ITEM_NAME_4] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 17,
        .tilemapTop = 19,
        .width = 11,
        .height = 5,
        .palette = 13,
        .baseTile = 302,
    },
    [SCRATCH_WINDOW_MON_1] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 3,
        .width = 5,
        .height = 3,
        .palette = 13,
        .baseTile = 357,
    },
    [SCRATCH_WINDOW_MON_2] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 8,
        .width = 5,
        .height = 3,
        .palette = 13,
        .baseTile = 372,
    },
    [SCRATCH_WINDOW_MON_3] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 14,
        .width = 5,
        .height = 3,
        .palette = 13,
        .baseTile = 387,
    },
    [SCRATCH_WINDOW_MON_4] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 19,
        .width = 5,
        .height = 3,
        .palette = 13,
        .baseTile = 402,
    },
    [SCRATCH_WINDOW_START_CARD] = {
        .bgLayer = BG_LAYER_MAIN_2,
        .tilemapLeft = 10,
        .tilemapTop = 9,
        .width = 12,
        .height = 4,
        .palette = 13,
        .baseTile = 417,
    },
    [SCRATCH_WINDOW_UNUSED_11] = {
        .bgLayer = BG_LAYER_MAIN_2,
        .tilemapLeft = 10,
        .tilemapTop = 9,
        .width = 12,
        .height = 4,
        .palette = 13,
        .baseTile = 417,
    },
    [SCRATCH_WINDOW_TOO_BAD] = {
        .bgLayer = BG_LAYER_MAIN_2,
        .tilemapLeft = 10,
        .tilemapTop = 9,
        .width = 12,
        .height = 4,
        .palette = 13,
        .baseTile = 417,
    },
    [SCRATCH_WINDOW_NEXT_CARD] = {
        .bgLayer = BG_LAYER_MAIN_2,
        .tilemapLeft = 10,
        .tilemapTop = 21,
        .width = 13,
        .height = 3,
        .palette = 13,
        .baseTile = 465,
    },
    [SCRATCH_WINDOW_CANCEL] = {
        .bgLayer = BG_LAYER_MAIN_2,
        .tilemapLeft = 13,
        .tilemapTop = 21,
        .width = 13,
        .height = 3,
        .palette = 13,
        .baseTile = 465,
    },
    [SCRATCH_WINDOW_SELECT_CARD] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 27,
        .height = 4,
        .palette = 12,
        .baseTile = 1,
    }
};

void ScratchOffCardsApp_InitWindows(BgConfig *bgConfig, Window *windows)
{
    const WindowTemplate *templates = sWinTemplates;

    for (u8 i = 0; i < NELEMS(sWinTemplates); i++) {
        Window_AddFromTemplate(bgConfig, &windows[i], &templates[i]);
        Window_FillTilemap(&windows[i], 0);
    }
}

void ScratchOffCardsApp_FreeWindows(Window *windows)
{
    for (u16 i = 0; i < NELEMS(sWinTemplates); i++) {
        Window_Remove(&windows[i]);
    }
}

void ScratchOffCardsApp_DrawWindow(BgConfig *bgConfig, Window *window)
{
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_2, BASE_TILE_WINDOW_FRAME, 11, STANDARD_WINDOW_SYSTEM, HEAP_ID_SCRATCH_OFF_CARD_APP);
    Window_DrawStandardFrame(window, TRUE, BASE_TILE_WINDOW_FRAME, 11);
}

void ScratchOffCardsApp_DrawMessageBox(Window *window, int frame)
{
    LoadMessageBoxGraphics(window->bgConfig, Window_GetBgLayer(window), BASE_TILE_STANDARD_WINDOW_FRAME, 10, frame, HEAP_ID_SCRATCH_OFF_CARD_APP);
    Window_FillTilemap(window, 15);
    Window_DrawMessageBoxWithScrollCursor(window, 0, BASE_TILE_STANDARD_WINDOW_FRAME, 10);
}
