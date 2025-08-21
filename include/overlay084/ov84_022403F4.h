#ifndef POKEPLATINUM_OV84_022403F4_H
#define POKEPLATINUM_OV84_022403F4_H

#include "overlay084/ov84_0223B5A0.h"

u8 BagInterface_IsPocketHighlighterDoneMoving(BagInterface *interface);
void BagInterface_InitSprites(BagInterface *interface);
void BagInterface_FreeSprites(BagInterface *interface);
void BagInterface_TickSpriteAnimations(BagInterface *interface);
void BahInterface_UpdateItemSprite(BagInterface *interface, u16 param1);
void BagInterface_SetHighlighterSpritesPalette(BagInterface *interface, u8 param1);
void BagInterface_StartMovingPocketHighlighter(BagInterface *interface);
void BagInterface_DoPocketHighlighterMovementStep(BagInterface *interface);
void BagInterface_ShowItemCountArrows(BagInterface *interface, u8 param1);
void BagInterface_ToggleItemCountArrows(BagInterface *interface, u8 param1);
void BagInterface_UpdateTypeAndCategoryIcons(BagInterface *interface, u16 param1, u8 param2);
void BagInterface_DrawBtnShockwaveSprite(BagInterface *interface, s16 param1, s16 param2);
void BagInterface_TickBtnShockwaveAnim(BagInterface *interface);

#endif // POKEPLATINUM_OV84_022403F4_H
