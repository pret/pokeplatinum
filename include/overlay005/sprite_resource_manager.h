#ifndef POKEPLATINUM_SPRITE_RESOURCE_MANAGER_H
#define POKEPLATINUM_SPRITE_RESOURCE_MANAGER_H

#include "narc.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_system.h"
#include "sprite_util.h"

typedef struct SpriteResourceManager {
    SpriteList *spriteList;
    G2dRenderer renderer;
    SpriteResourcesHeaderList *resourceHeaderList;
    SpriteResourceCollection *resourceCollections[SPRITE_RESOURCE_MAX];
    SpriteResourceList *resourceLists[SPRITE_RESOURCE_MAX];
    u16 resourceTypeCount;
    u16 heapID;
} SpriteResourceManager;

void SpriteResourceManager_Init(SpriteResourceManager *spriteManager, const SpriteResourceDataPaths *resourcePaths, u32 maxSprites, u32 heapID);
void SpriteResourceManager_Free(SpriteResourceManager *spriteManager);
Sprite *SpriteResourceManager_CreateSprite(SpriteResourceManager *spriteManager, const SpriteTemplateFromResourceHeader *template);
void SpriteResourceManager_SetCapacities(SpriteResourceManager *spriteManager, SpriteResourceCapacities *capacities, u32 maxElements, u32 heapID);
void SpriteResourceManager_AddPalette(SpriteResourceManager *spriteManager, int data, int size, int offset, int vramType, int paletteIdx, int id);
void SpriteResourceManager_LoadPalette(SpriteResourceManager *spriteManager, NARC *narc, int memberIdx, BOOL compressed, int paletteIdx, int vramType, int id);
void SpriteResourceManager_AddCell(SpriteResourceManager *spriteManager, int data, int size, int offset, int id);
void SpriteResourceManager_LoadCell(SpriteResourceManager *spriteManager, NARC *narc, int memberIdx, BOOL compressed, int id);
void SpriteResourceManager_AddAnimation(SpriteResourceManager *spriteManager, int data, int size, int offset, int id);
void SpriteResourceManager_LoadAnimation(SpriteResourceManager *spriteManager, NARC *narc, int memberIdx, BOOL compressed, int id);
void SpriteResourceManager_AddTiles(SpriteResourceManager *spriteManager, int data, int size, BOOL compressed, int vramType, int id);
void SpriteResourceManager_LoadTiles(SpriteResourceManager *spriteManager, NARC *narc, int memberIdx, BOOL compressed, int vramType, int id);
ManagedSprite *SpriteResourceManager_CreateManagedSprite(SpriteResourceManager *spriteManager, const SpriteTemplate *template);
void SpriteResourceManager_Cleanup(SpriteResourceManager *spriteManager);

#endif // POKEPLATINUM_SPRITE_RESOURCE_MANAGER_H
