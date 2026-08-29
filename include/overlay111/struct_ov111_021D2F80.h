#ifndef POKEPLATINUM_STRUCT_OV111_021D2F80_H
#define POKEPLATINUM_STRUCT_OV111_021D2F80_H

#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

typedef struct {
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *resourceCollections[4];
    SpriteResource *resources[5][4];
} ScratchOffCardsAppSpriteManager;

#endif // POKEPLATINUM_STRUCT_OV111_021D2F80_H
