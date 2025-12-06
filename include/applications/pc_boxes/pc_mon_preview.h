#ifndef POKEPLATINUM_STRUCT_PC_MON_PREVIEW_H
#define POKEPLATINUM_STRUCT_PC_MON_PREVIEW_H

#include "string_gf.h"

typedef struct {
    void *mon;
    u16 species;
    u16 heldItem;
    u16 dexNum;
    u8 level;
    u8 markings;
    u8 type1;
    u8 type2;
    u8 gender;
    u8 isEgg;
    u8 padding_10[4];
    String *nickname;
    String *speciesName;
    String *heldItemName;
    String *nature;
    String *ability;
} PCMonPreview;

#endif // POKEPLATINUM_STRUCT_PC_MON_PREVIEW_H
