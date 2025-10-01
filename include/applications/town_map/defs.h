#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_DEFS_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_DEFS_H
#include <nnsys.h>

#include "generated/map_headers.h"

#include "bg_window.h"
#include "map_matrix.h"
#include "message.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "unk_0206B70C.h"

#define TOWN_MAP_GRID_SPACING  7
#define TOWN_MAP_GRID_X_OFFSET (+25)
#define TOWN_MAP_GRID_Y_OFFSET (-34)
#define TOWN_MAP_GRID_X(x)     (TOWN_MAP_GRID_SPACING * (x) + TOWN_MAP_GRID_X_OFFSET)
#define TOWN_MAP_GRID_Y(y)     (TOWN_MAP_GRID_SPACING * (y) + TOWN_MAP_GRID_Y_OFFSET)

typedef struct TownMapFlyDestDescriptor {
    int mapHeader;
    int unusedUnlockFirstArrivalFlag;
    u8 blockShape;
    u8 palette;
    u16 specialFlyDestID;
    u32 spriteX;
    u32 spriteY;
} TownMapFlyDestDescriptor;

typedef struct TownMapAppFlyDestination {
    TownMapFlyDestDescriptor flyDestBlockDescriptor;
    BOOL isUnlocked;
    Sprite *sprite;
} TownMapAppFlyDestination;

typedef struct TownMapAppFlyDestinations {
    u16 numBlocks;
    u8 flyTargetBlinkTimer;
    u8 flyTargetBlinkState;
    TownMapAppFlyDestination *hoveredFlyDest;
    TownMapAppFlyDestination *flyDestinationsList;
} TownMapAppFlyDestinations;

typedef struct TownMapBlock {
    u16 x;
    u16 z;
    u16 signpostType;
    u16 signpostNARCMemberIdx;
    u16 areaDescString;
    u16 landmarkDescString;
    u16 areaDescX;
    u16 locationDesc1Y;
    u16 landmarkDescX;
    u16 locationDesc2Y;
    u16 hiddenLocationFlags;
    u16 index;
} TownMapBlock;

typedef struct TownMapBlockList {
    int count;
    TownMapBlock *entries;
} TownMapBlockList;

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
    int numLocationHistoryEntries;
    SysTask *sysTask;
    u16 locationHistoryFrameCount;
    u8 currentShownHistLocationIdx;
    u8 previousShownHistLocationIdx;
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
    u8 zommedMapMvtDone;
    u8 zoomedMapMvtStage;
    u8 zoomedInMapTransitionStage;
    u8 unk_15_0 : 4;
    u8 currentSignpostType : 4;
    u16 zoomedMapMvtFrame;
    int x;
    int y;
    int hoveredLocationMapHeader;
    int prevLocationMapHeader;
    Window windows[NUM_TOWN_MAP_WINDOWS];
    Window *signpostWindow;
    TownMapScreenScroll unused_7C;
    TownMapScreenScroll zoomedInMapCoords;
    TownMapAppFlyDestinations *flyDestinations;
    TownMapBlock *hoveredBlock;
    TownMapLocationHistory locationHistory;
    Sprite *zoomBtnShockwave;
    Sprite *cursorSprite;
    Sprite *playerSprite;
    SysTask *sysTask;
} TownMapGraphicsManager;

typedef struct TownMapAppData TownMapAppData;

typedef int (*TownMapAppFunc)(TownMapAppData *);

struct TownMapAppData {
    u8 mode;
    u8 padding_01;
    u16 unlockedHiddenLocations;
    int heapID;
    int mainAppState;
    int appResInitState;
    int unused_10;
    int dummy_14;
    int initialCursorX;
    int initialCursorY;
    int playerX;
    int playerZ;
    BgConfig *bgConfig;
    TownMapContext *context;
    MainMapMatrixData *mainMapMatrixData;
    TownMapGraphicsManager *graphicsMan;
    TownMapAppFunc inputHandler;
    TownMapAppFlyDestinations *flyDestinations;
    TownMapBlockList *mapBlockList;
    TownMapLocationHistoryEntry unused[5];
    MessageLoader *locationNames;
    MessageLoader *townMapStrings;
    Strbuf *hoveredMapName;
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
