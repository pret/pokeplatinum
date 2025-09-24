#ifndef POKEPLATINUM_STRUCT_OV80_021D2C5C_H
#define POKEPLATINUM_STRUCT_OV80_021D2C5C_H

#include "overlay080/struct_ov80_021D2C5C_sub1.h"

#include "sprite.h"

typedef struct {
    TownMapFlyDestDescriptor flyDestBlockDescriptor;
    BOOL isUnlocked;
    Sprite *sprite;
} TownMapAppFlyDestination;

#endif // POKEPLATINUM_STRUCT_OV80_021D2C5C_H
