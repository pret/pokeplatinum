#ifndef POKEPLATINUM_APPLICATIONS_BAG_SPRITES_H
#define POKEPLATINUM_APPLICATIONS_BAG_SPRITES_H

#include "applications/bag/defs.h"

void BagUI_InitSprites(BagController *controller);
void BagUI_FreeSprites(BagController *controller);
void BagUI_TickSpriteAnimations(BagController *controller);
void BagUI_UpdateItemSprite(BagController *controller, u16 item);
void BagUI_SetHighlightSpritesPalette(BagController *controller, u8 palette);
void BagUI_StartMovingPocketHighlight(BagController *controller);
void BagUI_StepPocketHighlightMovement(BagController *controller);
u8 BagUI_IsPocketHighlightDoneMoving(BagController *controller);
void BagUI_ShowItemCountArrows(BagController *controller, u8 position);
void BagUI_ToggleItemCountArrows(BagController *controller, u8 show);
void BagUI_UpdateTypeAndCategoryIcons(BagController *controller, u16 item, u8 draw);
void BagUI_DrawBtnShockwave(BagController *controller, s16 x, s16 y);
void BagUI_TickBtnShockwaveAnim(BagController *controller);

#endif // POKEPLATINUM_APPLICATIONS_BAG_SPRITES_H
