#ifndef POKEPLATINUM_OV111_021D2F80_H
#define POKEPLATINUM_OV111_021D2F80_H

#include "overlay111/struct_ov111_021D2F80.h"

#include "sprite.h"

#define RESOURCE_ID_MON_SPRITES_SUB  0
#define RESOURCE_ID_MON_SPRITES_MAIN 1
#define RESOURCE_ID_CARD_SPRITES     2
#define RESOURCE_ID_BOX_SPRITES      3
#define RESOURCE_ID_WIN_POPUP_SPRITE 4

void ScratchOffCardsApp_InitSpriteManager(ScratchOffCardsAppSpriteManager *spriteMan);
Sprite *ScratchOffCardsApp_InitSprite(ScratchOffCardsAppSpriteManager *spriteMan, u32 resourceID, u32 animID, u32 resourcePriority, u32 priority, u8 onSubScreen);
void ScratchOffCardsApp_FreeSprites(ScratchOffCardsAppSpriteManager *spriteMan);
void ScratchOffCardsApp_UpdateBoxPalettes(ScratchOffCardsAppSpriteManager *spriteMan, int index);

#endif // POKEPLATINUM_OV111_021D2F80_H
