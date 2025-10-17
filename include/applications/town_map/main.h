#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAIN_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAIN_H

#include "generated/map_headers.h"

#include "field/field_system_decl.h"

#include "overlay_manager.h"
#include "overworld_map_history.h"

#define NUM_FLY_LOCATIONS       20
#define TOWN_MAP_HISTORY_LENGTH (OVERWORLD_MAP_HISTORY_LENGTH - 1) // Skip the last entry

enum TownMapMode {
    TOWN_MAP_MODE_ITEM = 0,
    TOWN_MAP_MODE_FLY,
    TOWN_MAP_MODE_WALL_MAP,

    NUM_TOWN_MAP_MODES,
};

typedef struct TownMapLocationHistoryEntry {
    int x;
    int z;
    u16 faceDirection;
    u16 isSet;
} TownMapLocationHistoryEntry;

typedef struct TownMapLocationDescCheckResults {
    u8 areaDescHasCheck : 2;
    u8 areaDescCheckResult : 2;
    u8 landmarkDescHasCheck : 2;
    u8 landmarkCheckResult : 2;
} TownMapLocationDescCheckResults;

typedef struct TownMapContext {
    int playerX;
    int playerZ;
    u8 padding_08[4];
    int trainerGender;
    BOOL flyLocationSelected;
    int flyLocationX;
    int flyLocationZ;
    enum MapHeader flyLocationMapHeader;
    TownMapLocationHistoryEntry locationHistory[TOWN_MAP_HISTORY_LENGTH];
    TownMapLocationDescCheckResults descCheckResults[200];
    u8 unlockedFlyLocations[NUM_FLY_LOCATIONS + 1];
    u8 townMapMode;
    u8 numDescChecks;
    u8 padding_13B;
    u16 unlockedHiddenLocations;
} TownMapContext;

void TownMapContext_Init(FieldSystem *fieldSystem, TownMapContext *townMapCtx, enum TownMapMode townMapMode);

BOOL TownMap_Init(ApplicationManager *appMan, int *unused);
BOOL TownMap_Main(ApplicationManager *appMan, int *unused);
BOOL TownMap_Exit(ApplicationManager *appMan, int *unused);

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_MAIN_H
