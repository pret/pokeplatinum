#ifndef POKEPLATINUM_OV6_022426AC_H
#define POKEPLATINUM_OV6_022426AC_H

#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "unk_0200762C.h"

typedef struct GreatMarshLookout_SpriteResources {
    SpriteResourceCollection *unk_00[4];
    SpriteResource *unk_10[4];
    void *unk_20;
    void *unk_24;
    PokemonSpriteTemplate unk_28;
    SpriteList *unk_38;
    G2dRenderer unk_3C;
    Sprite *unk_1C8;
    BOOL unk_1CC;
    BOOL unk_1D0;
} GreatMarshLookout_SpriteResources;

GreatMarshLookout_SpriteResources *GreatMarshLookout_AllocSpriteResources(const int heapId);
void GreatMarshLookout_FreeSpriteResources(GreatMarshLookout_SpriteResources *resources);
void GreatMarshLookout_CreateLookoutMonSprite(GreatMarshLookout_SpriteResources *resources, const int species);
void ov6_022427F4(GreatMarshLookout_SpriteResources *param0);
void ov6_02242814(GreatMarshLookout_SpriteResources *param0);
BOOL ov6_02242820(GreatMarshLookout_SpriteResources *param0);
void ov6_02242828(GreatMarshLookout_SpriteResources *param0);

#endif // POKEPLATINUM_OV6_022426AC_H
