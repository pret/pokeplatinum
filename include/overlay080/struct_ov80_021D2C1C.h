#ifndef POKEPLATINUM_STRUCT_OV80_021D2C1C_H
#define POKEPLATINUM_STRUCT_OV80_021D2C1C_H

#include "overlay080/struct_ov80_021D2C5C.h"

typedef struct {
    u16 numBlocks;
    u8 flyTargetBlinkTimer;
    u8 flyTargetBlinkState;
    TownMapAppFlyDestination *hoveredFlyDest;
    TownMapAppFlyDestination *flyDestinationsList;
} TownMapAppFlyDestinations;

#endif // POKEPLATINUM_STRUCT_OV80_021D2C1C_H
