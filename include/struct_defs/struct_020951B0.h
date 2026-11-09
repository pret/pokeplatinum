#ifndef POKEPLATINUM_STRUCT_020951B0_H
#define POKEPLATINUM_STRUCT_020951B0_H

#include "struct_defs/photo_accessory.h"
#include "struct_defs/struct_02029C88.h"

typedef struct OpponentDressUp {
    PhotoAccessory accessories[CONTEST_PHOTO_ACCESSORY_COUNT];
    u8 numAccessories;
    s8 monPriority;
    s8 backdrop;
    u8 padding_53;
} OpponentDressUp;

#endif // POKEPLATINUM_STRUCT_020951B0_H
