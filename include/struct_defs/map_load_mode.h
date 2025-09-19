#ifndef POKEPLATINUM_STRUCT_MAP_LOAD_MODE_H
#define POKEPLATINUM_STRUCT_MAP_LOAD_MODE_H

#include "overlay005/bottom_screen_manager.h"

typedef struct MapLoadMode {
    u32 bottomScreenMode : BOTTOM_SCREEN_MODE_POKETCH_UNAVAILABLE;
    u32 skipMapAttributes : 4;
    u32 useSimpleTerrainCollisions : 4;
    u32 unk_00_12 : 4;
    u32 useSeparateTerrainAttributes : 4;
    u32 unk_00_20 : 4;
    u32 separateTerrainAttributesBlockCount : 8;
    u32 unk_04;
} MapLoadMode;

#endif // POKEPLATINUM_STRUCT_MAP_LOAD_MODE_H
