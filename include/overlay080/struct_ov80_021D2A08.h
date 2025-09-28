#ifndef POKEPLATINUM_STRUCT_OV80_021D2A08_H
#define POKEPLATINUM_STRUCT_OV80_021D2A08_H

#include <nnsys.h>

#include "generated/map_headers.h"

#include "struct_defs/struct_0203D8AC.h"

#include "overlay080/struct_ov80_021D259C.h"
#include "overlay080/struct_ov80_021D2AF4.h"
#include "overlay080/struct_ov80_021D2C1C.h"
#include "overlay080/struct_ov80_021D2E10.h"

#include "bg_window.h"
#include "map_matrix.h"
#include "message.h"
#include "sprite_system.h"
#include "strbuf.h"

typedef struct UnkStruct_ov80_021D2A08_t {
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
    MainMapMatrixData *mapMatrixData;
    void *graphicsMan;
    int (*inputHandler)(struct UnkStruct_ov80_021D2A08_t *);
    TownMapAppFlyDestinations *flyDestinations;
    TownMapBlockList *mapBlockList;
    TownMapLocationHistoryEntry playerLocationHistory[5];
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
} TownMapAppData;

#endif // POKEPLATINUM_STRUCT_OV80_021D2A08_H
