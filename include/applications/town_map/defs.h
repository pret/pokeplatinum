#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_DEFS_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_DEFS_H

#include "applications/town_map/main.h"

#include "bg_window.h"
#include "map_matrix.h"
#include "message.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "sys_task_manager.h"

#define TOWN_MAP_GRID_SPACING  7
#define TOWN_MAP_GRID_X_OFFSET (+25)
#define TOWN_MAP_GRID_Y_OFFSET (-34)
#define TOWN_MAP_GRID_X(x)     (TOWN_MAP_GRID_SPACING * (x) + TOWN_MAP_GRID_X_OFFSET)
#define TOWN_MAP_GRID_Y(y)     (TOWN_MAP_GRID_SPACING * (y) + TOWN_MAP_GRID_Y_OFFSET)

enum TownMapWindow {
    TOWN_MAP_WINDOW_LOCATION_NAME,
    TOWN_MAP_WINDOW_SIGNPOST_NAME_1,
    TOWN_MAP_WINDOW_SIGNPOST_NAME_2,
    TOWN_MAP_WINDOW_LOCATION_DESCRIPTION,
    TOWN_MAP_WINDOW_BOTTOM_SCREEN_HEADER,
    NUM_TOWN_MAP_WINDOWS,
};

typedef struct TownMapBlock {
    u16 x;
    u16 z;
    u16 signpostType;
    u16 signpostNARCMemberIdx;
    u16 areaDescString;
    u16 landmarkDescString;
    u16 areaDescX;
    u16 areaDescY;
    u16 landmarkDescX;
    u16 landmarkDescY;
    u16 hiddenLocationFlags;
    u16 index;
} TownMapBlock;

typedef struct TownMapBlockList {
    int count;
    TownMapBlock *entries;
} TownMapBlockList;

typedef struct TownMapFlyLocationDescriptor {
    int mapHeader;
    int unusedUnlockFirstArrivalFlag;
    u8 blockShape;
    u8 palette;
    u16 specialFlyLocationID;
    u32 spriteX;
    u32 spriteY;
} TownMapFlyLocationDescriptor;

typedef struct TownMapAppFlyLocation {
    TownMapFlyLocationDescriptor descriptor;
    BOOL isUnlocked;
    Sprite *sprite;
} TownMapAppFlyLocation;

typedef struct TownMapAppFlyLocationsManager {
    u16 count;
    u8 blinkTimer;
    u8 blinkState;
    TownMapAppFlyLocation *hovered;
    TownMapAppFlyLocation *flyLocationsList;
} TownMapAppFlyLocationsManager;

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
    u8 zoomedInMapMvtDone;
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

typedef struct TownMapAppData TownMapAppData;

typedef BOOL (*TownMapAppFunc)(TownMapAppData *);

struct TownMapAppData {
    u8 mode;
    u8 padding_01;
    u16 unlockedHiddenLocations;
    enum HeapID heapID;
    int mainAppState;
    int appResInitState;
    int unused_10;
    int dummy_14;
    int initialCursorX;
    int initialCursorZ;
    int playerX;
    int playerZ;
    BgConfig *bgConfig;
    TownMapContext *context;
    MainMapMatrixData *mainMapMatrixData;
    TownMapGraphicsManager *graphicsMan;
    TownMapAppFunc inputHandler;
    TownMapAppFlyLocationsManager *unused_3C;
    TownMapBlockList *mapBlockList;
    TownMapLocationHistoryEntry unused_44[5];
    MessageLoader *locationNames;
    MessageLoader *townMapStrings;
    String *hoveredMapName;
    BOOL locationChanged;
    enum MapHeader hoveredMapHeader;
    TownMapBlock *hoveredMapBlock;
    void *topScreenMapFile;
    void *topScreenBGFile;
    void *hiddenLocationsBGFile;
    void *zoomedInBGFile;
    void *zoomedInMapFile;
    void *zoomButtonStatesFile;
    void *zoomButtonScreenFile;
    void *hiddenLocationsMapFile;
    NNSG2dScreenData *fullScreenMap;
    NNSG2dScreenData *fullScreenBG;
    NNSG2dScreenData *hiddenLocationsFullScreenMapGraphics;
    NNSG2dScreenData *zoomedInBG;
    NNSG2dScreenData *zoomedInMap;
    NNSG2dScreenData *zoomButtonStates;
    NNSG2dScreenData *zoomButtonScreen;
    NNSG2dScreenData *hiddenLocationsZoomedInMapGraphics;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteMan;
    ManagedSprite *unused_E0;
};

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_DEFS_H
