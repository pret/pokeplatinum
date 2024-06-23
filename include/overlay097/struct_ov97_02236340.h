#ifndef POKEPLATINUM_STRUCT_OV97_02236340_H
#define POKEPLATINUM_STRUCT_OV97_02236340_H

#include "overlay097/box_pokemon_gba.h"

#define GBA_TOTAL_BOXES_COUNT 14

typedef struct {
    u8 currentBox;
    BoxPokemonGBA boxes[GBA_TOTAL_BOXES_COUNT][30];
    u8 boxNames[GBA_TOTAL_BOXES_COUNT][9];
    u8 boxWallpapers[GBA_TOTAL_BOXES_COUNT];
} PokemonStorageGBA;

#endif // POKEPLATINUM_STRUCT_OV97_02236340_H
