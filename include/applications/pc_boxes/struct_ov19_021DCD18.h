#ifndef POKEPLATINUM_STRUCT_OV19_021DCD18_H
#define POKEPLATINUM_STRUCT_OV19_021DCD18_H

#include <nnsys.h>

#include "sprite.h"

typedef struct {
    Sprite *sprite;
    NNSG2dImageProxy imageProxy;
    u32 spriteIndex;
    u16 plttIndex;
    u16 markings;
    u16 heldItem;
    u8 padding_32[2];
} MonIcon;

#endif // POKEPLATINUM_STRUCT_OV19_021DCD18_H
