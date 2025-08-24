#ifndef POKEPLATINUM_OV84_022403F4_H
#define POKEPLATINUM_OV84_022403F4_H

#include "overlay084/ov84_0223B5A0.h"

enum BagUISprite {
    BAG_SPRITE_BAG = 0,
    BAG_SPRITE_POCKET_HIGHLIGHT,
    BAG_SPRITE_POCKET_SELECTOR_LEFT_ARROW,
    BAG_SPRITE_POCKET_SELECTOR_RIGHT_ARROW,
    BAG_SPRITE_ITEM_HIGHLIGHT,
    BAG_SPRITE_ITEM_SORTING_POS_BAR,
    BAG_SPRITE_PRESSED_BUTTON_SHOCKWAVE,
    BAG_SPRITE_ITEM,
    BAG_SPRITE_ITEM_COUNT_ARROW_UP,
    BAG_SPRITE_ITEM_COUNT_ARROW_DOWN,
    BAG_SPRITE_MOVE_TYPE,
    BAG_SPRITE_MOVE_CATEGORY,
    NUM_BAG_UI_SPRITES,
};

enum BagUIItemCountArrowsPosition {
    BAG_ITEM_COUNT_ARROWS_POS_TRASH = 0,
    BAG_ITEM_COUNT_ARROWS_POS_SELL,
};

void BagUI_InitSprites(BagController *controller);
void BagUI_FreeSprites(BagController *controller);
void BagUI_TickSpriteAnimations(BagController *controller);
void BagUI_UpdateItemSprite(BagController *controller, u16 item);
void BagUI_SetHighlightSpritesPalette(BagController *controller, u8 palette);
u8 BagUI_IsPocketHighlightDoneMoving(BagController *controller);
void BagUI_StartMovingPocketHighlight(BagController *controller);
void BagUI_StepPocketHighlightMovement(BagController *controller);
void BagUI_ShowItemCountArrows(BagController *controller, u8 position);
void BagUI_ToggleItemCountArrows(BagController *controller, u8 show);
void BagUI_UpdateTypeAndCategoryIcons(BagController *controller, u16 item, u8 draw);
void BagUI_DrawBtnShockwave(BagController *controller, s16 x, s16 y);
void BagUI_TickBtnShockwaveAnim(BagController *controller);

#endif // POKEPLATINUM_OV84_022403F4_H
