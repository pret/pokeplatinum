#include "applications/frontier/records/windows.h"

#include <nitro.h>

#include "bg_window.h"

static const WindowTemplate sFactoryWinTemplates[] = {
    [WINDOW_HEADER] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 2,
        .width = 30,
        .height = 2,
        .palette = 13,
        .baseTile = 1,
    },
    [WINDOW_FACTORY_LEVEL_50_HEADER] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 7,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 61,
    },
    [WINDOW_FACTORY_LEVEL_50_LATEST] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 10,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 117,
    },
    [WINDOW_FACTORY_LEVEL_50_RECORD] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 12,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 173,
    },
    [WINDOW_FACTORY_OPEN_LEVEL_HEADER] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 15,
        .width = 16,
        .height = 2,
        .palette = 13,
        .baseTile = 229,
    },
    [WINDOW_FACTORY_OPEN_LEVEL_LATEST] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 18,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 261,
    },
    [WINDOW_FACTORY_OPEN_LEVEL_RECORD] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 20,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 317,
    },
};

static const WindowTemplate sHallWinTemplates[] = {
    [WINDOW_HEADER] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 2,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 1,
    },
    [WINDOW_HALL_MON_NAME] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 7,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 57,
    },
    [WINDOW_HALL_LATEST] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 10,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 113,
    },
    [WINDOW_HALL_RECORD] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 13,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 169,
    },
};

static const WindowTemplate sCastleWinTemplates[] = {
    [WINDOW_HEADER] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 2,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 1,
    },
    [WINDOW_CASTLE_POINTS] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 18,
        .tilemapTop = 7,
        .width = 12,
        .height = 2,
        .palette = 13,
        .baseTile = 57,
    },
    [WINDOW_CASTLES_LATEST] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 10,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 81,
    },
    [WINDOW_CASTLES_RECORD] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 13,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 137,
    },
};

static const WindowTemplate sArcadeWinTemplates[] = {
    [WINDOW_HEADER] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 2,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 1,
    },
    [WINDOW_ARCADE_LATEST] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 8,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 57,
    },
    [WINDOW_ARCADE_RECORD] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 11,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 113,
    },
};

static const WindowTemplate sTowerWinTemplates[] = {
    [WINDOW_HEADER] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 2,
        .width = 30,
        .height = 2,
        .palette = 13,
        .baseTile = 1,
    },
    [WINDOW_TOWER_MULTI_W_TRAINER] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 7,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 61,
    },
    [WINDOW_TOWER_SOLO_LATEST] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 7,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 117,
    },
    [WINDOW_TOWER_SOLO_RECORD] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 10,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 173,
    },
    [WINDOW_TOWER_MULTI_LATEST] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 10,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 117,
    },
    [WINDOW_TOWER_MULTI_RECORD] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 12,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 173,
    },
    [WINDOW_TOWER_MULTI_W_FRIEND] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 15,
        .width = 16,
        .height = 2,
        .palette = 13,
        .baseTile = 229,
    },
    [WINDOW_TOWER_W_FRIEND_LATEST] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 18,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 261,
    },
    [WINDOW_TOWER_W_FRIEND_RECORD] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 20,
        .width = 28,
        .height = 2,
        .palette = 13,
        .baseTile = 317,
    },
};

static const struct {
    const WindowTemplate *templates;
    u32 count;
} sWinTemplates[] = {
    [WINDOW_GROUP_FACTORY] = { sFactoryWinTemplates, NELEMS(sFactoryWinTemplates) },
    [WINDOW_GROUP_HALL] = { sHallWinTemplates, NELEMS(sHallWinTemplates) },
    [WINDOW_GROUP_CASTLE] = { sCastleWinTemplates, NELEMS(sCastleWinTemplates) },
    [WINDOW_GROUP_ARCADE] = { sArcadeWinTemplates, NELEMS(sArcadeWinTemplates) },
    [WINDOW_GROUP_TOWER] = { sTowerWinTemplates, NELEMS(sTowerWinTemplates) }
};

void FrontierRecordsApp_InitWindows(BgConfig *bgConfig, Window *window, u8 facility)
{
    const WindowTemplate *templates = sWinTemplates[facility].templates;
    u32 numTemplates = sWinTemplates[facility].count;

    for (u8 i = 0; i < numTemplates; i++) {
        Window_AddFromTemplate(bgConfig, &window[i], &templates[i]);
        Window_FillTilemap(&window[i], 0);
    }
}

void FrontierRecordsApp_FreeWindows(Window *windows, u8 facility)
{
    u16 i;
    u32 numTemplates = sWinTemplates[facility].count;

    for (i = 0; i < numTemplates; i++) {
        Window_Remove(&windows[i]);
    }
}
