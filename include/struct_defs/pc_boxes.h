#ifndef POKEPLATINUM_PC_BOXES_DECL_H
#define POKEPLATINUM_PC_BOXES_DECL_H

#include "constants/pc_boxes.h"

#include "struct_defs/pokemon.h"

typedef struct PCBoxes {
    u32 currentBoxID;
    BoxPokemon boxMons[MAX_PC_BOXES][MAX_MONS_PER_BOX];
    u16 names[MAX_PC_BOXES][PC_BOX_NAME_BUFFER_LEN];
    u8 wallpapers[MAX_PC_BOXES];
    u8 unlockedWallpapers;
} PCBoxes;

#endif // POKEPLATINUM_PC_BOXES_DECL_H
