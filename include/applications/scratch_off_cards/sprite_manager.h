#ifndef POKEPLATINUM_SCRATCH_OFF_CARDS_SPRITE_MANAGER_H
#define POKEPLATINUM_SCRATCH_OFF_CARDS_SPRITE_MANAGER_H

#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

typedef struct {
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *resourceCollections[4];
    SpriteResource *resources[5][4];
} ScratchOffCardsAppSpriteManager;

#define RESOURCE_ID_MON_SPRITES_SUB  0
#define RESOURCE_ID_MON_SPRITES_MAIN 1
#define RESOURCE_ID_CARD_SPRITES     2
#define RESOURCE_ID_BOX_SPRITES      3
#define RESOURCE_ID_WIN_POPUP_SPRITE 4

void ScratchOffCardsApp_InitSpriteManager(ScratchOffCardsAppSpriteManager *spriteMan);
Sprite *ScratchOffCardsApp_InitSprite(ScratchOffCardsAppSpriteManager *spriteMan, u32 resourceID, u32 animID, u32 resourcePriority, u32 priority, u8 onSubScreen);
void ScratchOffCardsApp_FreeSprites(ScratchOffCardsAppSpriteManager *spriteMan);
void ScratchOffCardsApp_UpdateBoxPalettes(ScratchOffCardsAppSpriteManager *spriteMan, int index);

#endif // POKEPLATINUM_SCRATCH_OFF_CARDS_SPRITE_MANAGER_H
