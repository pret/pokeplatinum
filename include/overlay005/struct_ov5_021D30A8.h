#ifndef POKEPLATINUM_STRUCT_OV5_021D30A8_H
#define POKEPLATINUM_STRUCT_OV5_021D30A8_H

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

#endif // POKEPLATINUM_STRUCT_OV5_021D30A8_H
