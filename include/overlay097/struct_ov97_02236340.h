#ifndef POKEPLATINUM_STRUCT_OV97_02236340_H
#define POKEPLATINUM_STRUCT_OV97_02236340_H

#include "overlay097/struct_ov97_0223685C.h"

#define GBA_TOTAL_BOXES_COUNT   14

typedef struct {
    u8 currentBox;
    BoxPokemonGBA boxes[GBA_TOTAL_BOXES_COUNT][MON_PER_BOX_COUNT];
    u8 boxNames[GBA_TOTAL_BOXES_COUNT][BOX_NAME_LENGTH + 1];
    u8 boxWallpapers[GBA_TOTAL_BOXES_COUNT];
} PokemonStorageGBA;

#endif // POKEPLATINUM_STRUCT_OV97_02236340_H
