#ifndef POKEPLATINUM_GREAT_MARSH_LOOKOUT_SPRITE_H
#define POKEPLATINUM_GREAT_MARSH_LOOKOUT_SPRITE_H

#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

typedef struct GreatMarshLookoutSpriteManager {
    SpriteResourceCollection *resourceCollection[4];
    SpriteResource *resources[4];
    void *monSpriteTiles;
    void *monSpritePltt;
    PokemonSpriteTemplate spriteTemplate;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    Sprite *sprite;
    BOOL spriteShown;
    BOOL spriteTaskFinished;
} GreatMarshLookoutSpriteManager;

GreatMarshLookoutSpriteManager *GreatMarshLookout_AllocSpriteManager(const enum HeapID heapID);
void GreatMarshLookout_FreeSpriteManager(GreatMarshLookoutSpriteManager *spriteMan);
void GreatMarshLookout_CreateMonSprite(GreatMarshLookoutSpriteManager *spriteMan, const int species);
void GreatMarshLookout_ShowMonSprite(GreatMarshLookoutSpriteManager *spriteMan);
void GreatMarshLookout_StopShowingMonSprite(GreatMarshLookoutSpriteManager *spriteMan);
BOOL GreateMarshLookout_IsSpriteTaskFinished(GreatMarshLookoutSpriteManager *spriteMan);
void GreatMarshLookout_FreeSpriteResources(GreatMarshLookoutSpriteManager *spriteMan);

#endif // POKEPLATINUM_GREAT_MARSH_LOOKOUT_SPRITE_H
