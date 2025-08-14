#ifndef POKEPLATINUM_OV84_022403F4_H
#define POKEPLATINUM_OV84_022403F4_H

#include "overlay084/ov84_0223B5A0.h"

u8 BagInterface_IsPocketHighlighterMoving(BagInterfaceManager *param0);
void BagInterface_InitSprites(BagInterfaceManager *param0);
void BagInterface_FreeSprites(BagInterfaceManager *param0);
void BagInterface_TickSpriteAnimations(BagInterfaceManager *param0);
void BahInterface_UpdateItemSprite(BagInterfaceManager *param0, u16 param1);
void BagInterface_SetHighlighterSpritesPalette(BagInterfaceManager *param0, u8 param1);
void BagInterface_StartMovingPocketHighlighter(BagInterfaceManager *param0);
void BagInterface_DoPocketHighlighterMovementStep(BagInterfaceManager *param0);
void BagInterface_ShowItemCountArrows(BagInterfaceManager *param0, u8 param1);
void BagInterface_ToggleItemCountArrows(BagInterfaceManager *param0, u8 param1);
void BagInterface_UpdateTypeAndCategoryIcons(BagInterfaceManager *param0, u16 param1, u8 param2);
void BagInterface_DrawBtnShockwaveSprite(BagInterfaceManager *param0, s16 param1, s16 param2);
void BagInterface_TickBtnShockwaveAnim(BagInterfaceManager *param0);

#endif // POKEPLATINUM_OV84_022403F4_H
