#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_GRAPHICS_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_GRAPHICS_H

#include "applications/town_map/app_data_decl.h"
#include "applications/town_map/context.h"
#include "applications/town_map/fly_locations.h"
#include "applications/town_map/map_blocks.h"

#include "bg_window.h"
#include "sprite.h"
#include "sys_task_manager.h"

#define TOWN_MAP_GRID_SPACING  7
#define TOWN_MAP_GRID_X_OFFSET (+25)
#define TOWN_MAP_GRID_Y_OFFSET (-34)
#define TOWN_MAP_GRID_X(x)     (TOWN_MAP_GRID_SPACING * (x) + TOWN_MAP_GRID_X_OFFSET)
#define TOWN_MAP_GRID_Y(y)     (TOWN_MAP_GRID_SPACING * (y) + TOWN_MAP_GRID_Y_OFFSET)

enum TownMapWindow {
    TOWN_MAP_WINDOW_LOCATION_NAME,
    TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_1,
    TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_2,
    TOWN_MAP_WINDOW_LOCATION_DESCRIPTION,
    TOWN_MAP_WINDOW_BOTTOM_SCREEN_HEADER,
    NUM_TOWN_MAP_WINDOWS,
};

typedef struct TownMapLocationHistoryEntryWithSprite {
    int x;
    int y;
    u16 faceDirection;
    u8 index;
    u8 isSet;
    Sprite *sprite;
} TownMapLocationHistoryEntryWithSprite;

typedef struct TownMapLocationHistory {
    int entryCount;
    SysTask *sysTask;
    u16 frameCount;
    u8 currentShownIdx;
    u8 previousShownIdx;
    TownMapLocationHistoryEntryWithSprite entries[TOWN_MAP_HISTORY_LENGTH];
} TownMapLocationHistory;

typedef struct TownMapScreenScroll {
    int x;
    int y;
    int unused_08;
    int unused_0C;
} TownMapScreenScroll;

typedef struct TownMapGraphicsManager {
    int graphicsLoadStage;
    int taskState;
    int taskFrameCount;
    int unused_0C;
    u8 showingZoomedInMap;
    u8 queuedMovement;
    u8 zommedInMapMvtDone;
    u8 zoomedMapMvtStage;
    u8 zoomedInMapTransitionStage;
    u8 unk_15_0 : 4;
    u8 signpostType : 4;
    u16 zoomedInMapMvtFrame;
    int cursorX;
    int cursorZ;
    int hoveredLocationMapHeader;
    int prevLocationMapHeader;
    Window windows[NUM_TOWN_MAP_WINDOWS];
    Window *signpostWindow;
    TownMapScreenScroll unused_7C;
    TownMapScreenScroll zoomedInMapCoords;
    TownMapAppFlyLocationsManager *flyLocations;
    TownMapBlock *hoveredBlock;
    TownMapLocationHistory locationHistory;
    Sprite *zoomBtnShockwave;
    Sprite *cursorSprite;
    Sprite *playerSprite;
    SysTask *sysTask;
} TownMapGraphicsManager;

BOOL TownMap_CreateGraphicsMan(TownMapAppData *appData);
BOOL TownMap_LoadGraphics(TownMapAppData *appData);
BOOL TownMap_FadeInBothScreens(TownMapAppData *appData);
BOOL TownMap_FadeOutBothScreens(TownMapAppData *appData);
BOOL TownMap_HandleInput_Item(TownMapAppData *appData);
BOOL TownMap_UpdateBottomScreen(TownMapAppData *appData);
BOOL TownMap_UpdateFlyLocationSprites(TownMapAppData *appData);
BOOL TownMap_FreeGraphics(TownMapAppData *appData);
BOOL TownMap_UpdateDisplayedLocationInfo(TownMapAppData *appData);
BOOL TownMap_HandleInput_Fly(TownMapAppData *appData);
BOOL TownMap_FadeInTopScreen(TownMapAppData *appData);
BOOL TownMap_FadeOutTopScreen(TownMapAppData *appData);
BOOL TownMap_HandleInput_WallMap(TownMapAppData *appData);

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_GRAPHICS_H
