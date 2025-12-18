#ifndef POKEPLATINUM_POFFIN_SPRITE_H
#define POKEPLATINUM_POFFIN_SPRITE_H

#include "poffin_types.h"
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

PoffinSpriteManager *PoffinSpriteManager_New(enum HeapID heapID, u16 maxSprites, u16 numPalettes, u16 vramType, int transferType);
void PoffinSpriteManager_Free(PoffinSpriteManager *spriteMan);
void PoffinSpriteManager_DrawSprites(PoffinSpriteManager *spriteMan);
PoffinSprite *PoffinSprite_New(PoffinSpriteManager *spriteMan, enum PoffinType type, u16 x, u16 y, u16 z, u8 bgPriority, u8 priority, BOOL onSubScreen);
void PoffinSprite_UpdateType(PoffinSpriteManager *spriteMan, PoffinSprite *sprite, enum PoffinType poffinType);
void PoffinSprite_Free(PoffinSpriteManager *spriteMan, PoffinSprite *poffinSprite);

#endif // POKEPLATINUM_POFFIN_SPRITE_H
