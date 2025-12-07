#ifndef POKEPLATINUM_STRUCT_POFFIN_SPRITE_H
#define POKEPLATINUM_STRUCT_POFFIN_SPRITE_H

#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

typedef struct PoffinSpriteItem {
    u8 inUse;
    u8 type;
    u16 index;
} PoffinSpriteItem;

typedef struct PoffinSpriteManager {
    enum HeapID heapID;
    int transferType;
    u16 unused;
    u16 numPalettes;
    u16 maxSprites;
    u16 vramType;
    SpriteList *spriteList;
    G2dRenderer renderer;
    u32 unused2;
    SpriteResourceCollection *ownedResources[4];
    SpriteResourceList *unownedResources[4];
    PoffinSpriteItem *poffinList;
} PoffinSpriteManager;

typedef struct PoffinSprite {
    u16 index;
    ManagedSprite *sprite;
} PoffinSprite;

#endif // POKEPLATINUM_STRUCT_POFFIN_SPRITE_H
