#ifndef POKEPLATINUM_STRUCT_PC_MON_PREVIEW_H
#define POKEPLATINUM_STRUCT_PC_MON_PREVIEW_H

#include "strbuf.h"

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
    Strbuf *nickname;
    Strbuf *speciesName;
    Strbuf *heldItemName;
    Strbuf *nature;
    Strbuf *ability;
} PCMonPreview;

#endif // POKEPLATINUM_STRUCT_PC_MON_PREVIEW_H
