#ifndef POKEPLATINUM_STRUCT_OV97_02236340_H
#define POKEPLATINUM_STRUCT_OV97_02236340_H

#include "overlay097/box_pokemon_gba.h"

#define GBA_TOTAL_BOXES_COUNT   14

typedef struct {
    u8 currentBox;
    BoxPokemonGBA unk_04[14][30];
    u8 boxNames[14][9];
    u8 unk_83C2[14];
} PokemonStorageGBA;

#endif // POKEPLATINUM_STRUCT_OV97_02236340_H
