#ifndef POKEPLATINUM_STRUCT_TRAINERCARD_SPRITE_DATA_H
#define POKEPLATINUM_STRUCT_TRAINERCARD_SPRITE_DATA_H

#include <nnsys.h>

#include "badges.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

typedef struct TrainerCardSpriteData {
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *spriteResourceCollection[4];
    SpriteResource *spriteResources[2][4];
    Sprite *sprites[MAX_BADGES * 3 + 1];
    void *badgePaletteBuffers[MAX_BADGES];
    NNSG2dPaletteData *badgePalettes[MAX_BADGES];
} TrainerCardSpriteData;

#endif // POKEPLATINUM_STRUCT_TRAINERCARD_SPRITE_DATA_H
