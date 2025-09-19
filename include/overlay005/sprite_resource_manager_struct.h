#ifndef POKEPLATINUM_SPRITE_RESOURCE_MANAGER_STRUCT_H
#define POKEPLATINUM_SPRITE_RESOURCE_MANAGER_STRUCT_H

#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

typedef struct {
    SpriteList *spriteList;
    G2dRenderer renderer;
    SpriteResourcesHeaderList *resourceHeaderList;
    SpriteResourceCollection *resourceCollections[6];
    SpriteResourceList *resourceLists[6];
    u16 resourceTypeCount;
    u16 heapID;
} SpriteResourceManager;

#endif // POKEPLATINUM_SPRITE_RESOURCE_MANAGER_STRUCT_H
