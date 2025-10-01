#ifndef POKEPLATINUM_UNK_0206B70C_H
#define POKEPLATINUM_UNK_0206B70C_H

#include "generated/map_headers.h"

#include "field/field_system_decl.h"

#include "overworld_map_history.h"

#define NUM_FLY_LOCATIONS       20
#define TOWN_MAP_HISTORY_LENGTH (OVERWORLD_MAP_HISTORY_LENGTH - 1) // Skip the last entry

typedef struct TownMapLocationHistoryEntry {
    int x;
    int y;
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
    int flyDestSelected;
    int flyDestX;
    int flyDestY;
    enum MapHeader flyDestMapHeader;
    TownMapLocationHistoryEntry locationHistory[TOWN_MAP_HISTORY_LENGTH];
    TownMapLocationDescCheckResults descCheckResults[200];
    u8 unlockedFlyDestination[NUM_FLY_LOCATIONS + 1];
    u8 townMapMode;
    u8 numDescChecks;
    u8 padding_13B;
    u16 unlockedHiddenLocations;
} TownMapContext;

void TownMapContext_Init(FieldSystem *fieldSystem, TownMapContext *townMapCtx, int townMapMode);

#endif // POKEPLATINUM_UNK_0206B70C_H
