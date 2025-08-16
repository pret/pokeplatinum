#ifndef POKEPLATINUM_OV84_022403F4_H
#define POKEPLATINUM_OV84_022403F4_H

#include "overlay084/ov84_0223B5A0.h"

u8 BagInterface_IsPocketHighlighterDoneMoving(BagInterface *param0);
void BagInterface_InitSprites(BagInterface *param0);
void BagInterface_FreeSprites(BagInterface *param0);
void BagInterface_TickSpriteAnimations(BagInterface *param0);
void BahInterface_UpdateItemSprite(BagInterface *param0, u16 param1);
void BagInterface_SetHighlighterSpritesPalette(BagInterface *param0, u8 param1);
void BagInterface_StartMovingPocketHighlighter(BagInterface *param0);
void BagInterface_DoPocketHighlighterMovementStep(BagInterface *param0);
void BagInterface_ShowItemCountArrows(BagInterface *param0, u8 param1);
void BagInterface_ToggleItemCountArrows(BagInterface *param0, u8 param1);
void BagInterface_UpdateTypeAndCategoryIcons(BagInterface *param0, u16 param1, u8 param2);
void BagInterface_DrawBtnShockwaveSprite(BagInterface *param0, s16 param1, s16 param2);
void BagInterface_TickBtnShockwaveAnim(BagInterface *param0);

#endif // POKEPLATINUM_OV84_022403F4_H
