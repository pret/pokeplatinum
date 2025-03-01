#ifndef POKEPLATINUM_STRUCT_OV97_02236340_H
#define POKEPLATINUM_STRUCT_OV97_02236340_H

#include "constants/gba/pokemon_storage_system.h"

#include "overlay097/box_pokemon_gba.h"

typedef struct {
    u8 currentBox;
    BoxPokemonGBA boxes[GBA_MAX_PC_BOXES][GBA_MAX_MONS_PER_BOX];
    u8 boxNames[GBA_MAX_PC_BOXES][9];
    u8 boxWallpapers[GBA_MAX_PC_BOXES];
} PokemonStorageGBA;

#endif // POKEPLATINUM_STRUCT_OV97_02236340_H
