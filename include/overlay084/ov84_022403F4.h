#ifndef POKEPLATINUM_OV84_022403F4_H
#define POKEPLATINUM_OV84_022403F4_H

#include "overlay084/ov84_0223B5A0.h"

enum BagUIItemCountArrowsPosition {
    BAG_UI_ARROWS_POS_TRASH = 0,
    BAG_UI_ARROWS_POS_SELL,
};

u8 BagInterface_IsPocketHighlighterDoneMoving(BagInterface *interface);
void BagInterface_InitSprites(BagInterface *interface);
void BagInterface_FreeSprites(BagInterface *interface);
void BagInterface_TickSpriteAnimations(BagInterface *interface);
void BahInterface_UpdateItemSprite(BagInterface *interface, u16 item);
void BagInterface_SetHighlighterSpritesPalette(BagInterface *interface, u8 palette);
void BagInterface_StartMovingPocketHighlighter(BagInterface *interface);
void BagInterface_DoPocketHighlighterMovementStep(BagInterface *interface);
void BagInterface_ShowItemCountArrows(BagInterface *interface, u8 position);
void BagInterface_ToggleItemCountArrows(BagInterface *interface, u8 show);
void BagInterface_UpdateTypeAndCategoryIcons(BagInterface *interface, u16 item, u8 draw);
void BagInterface_DrawBtnShockwaveSprite(BagInterface *interface, s16 x, s16 y);
void BagInterface_TickBtnShockwaveAnim(BagInterface *interface);

#endif // POKEPLATINUM_OV84_022403F4_H
