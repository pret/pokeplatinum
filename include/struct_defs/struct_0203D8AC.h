#ifndef POKEPLATINUM_STRUCT_0203D8AC_H
#define POKEPLATINUM_STRUCT_0203D8AC_H

#include "generated/map_headers.h"

#include "struct_defs/union_0206B878.h"

#include "overlay080/struct_ov80_021D259C.h"

typedef struct {
    int playerX;
    int playerY;
    u8 padding_08[4];
    int trainerGender;
    int flyDestSelected;
    int flyDestX;
    int flyDestY;
    enum MapHeader flyDestMapHeader;
    TownMapLocationHistoryEntry locationHistory[5];
    TownMapLocationDescCheckResults descCheckResults[200];
    u8 unlockedFlyDestination[21];
    u8 townMapMode;
    u8 numDescChecks;
    u8 padding_13B;
    u16 unlockedHiddenLocations;
} TownMapContext;

#endif // POKEPLATINUM_STRUCT_0203D8AC_H
