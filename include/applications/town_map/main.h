#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAIN_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAIN_H

#include <nnsys.h>

#include "generated/map_headers.h"

#include "applications/town_map/app_data_decl.h"
#include "applications/town_map/context.h"
#include "applications/town_map/fly_locations.h"
#include "applications/town_map/graphics.h"
#include "applications/town_map/map_blocks.h"

#include "bg_window.h"
#include "map_matrix.h"
#include "message.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"

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

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAIN_H
