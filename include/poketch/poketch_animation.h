#ifndef POKEPLATINUM_OV25_02255540_H
#define POKEPLATINUM_OV25_02255540_H

#include <nnsys.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "poketch/struct_ov25_022555E8_decl.h"
#include "poketch/struct_ov25_02255810.h"
#include "poketch/struct_ov25_022558C4_decl.h"
#include "poketch/struct_ov25_02255958.h"

Ov25_540_AnimationManager *ov25_540_SetupAnimationManager(NNSG2dOamManagerInstance *oamMan, u32 heapID);
void ov25_540_FreeAnimationManager(Ov25_540_AnimationManager *animMan);
void ov25_540_UpdateAnimations(Ov25_540_AnimationManager *animMan);
Ov25_540_AnimatedSpriteData *ov25_540_SetupNewAnimatedSprite(Ov25_540_AnimationManager *animMan, const ov25_AnimationData *animData, const ov25_SpriteData *spriteData);
void ov25_540_RemoveAnimatedSprite(Ov25_540_AnimationManager *animMan, Ov25_540_AnimatedSpriteData *animatedSprite);
void ov25_540_UpdateAnimationIdx(Ov25_540_AnimatedSpriteData *animatedSprite, u32 animIdx);
BOOL ov25_540_AnimationInactive(Ov25_540_AnimatedSpriteData *animatedSprite);
void ov25_540_TranslateSprite(Ov25_540_AnimatedSpriteData *animatedSprite, fx32 x, fx32 y);
void ov25_540_SetSpritePosition(Ov25_540_AnimatedSpriteData *animatedSprite, fx32 x, fx32 y);
void ov25_540_GetSpritePosition(const Ov25_540_AnimatedSpriteData *animatedSprite, fx32 *x, fx32 *y);
void ov25_540_HideSprite(Ov25_540_AnimatedSpriteData *animatedSprite, BOOL isHidden);
void ov25_540_SetSpritePrority(Ov25_540_AnimationManager *animMan, Ov25_540_AnimatedSpriteData *animatedSprite, u32 priority);
void ov25_540_SetCParam(Ov25_540_AnimatedSpriteData *animatedSprite, u32 value);
void ov25_540_SetSpriteCharNo(Ov25_540_AnimatedSpriteData *animatedSprite, u32 value);
void ov25_Set_mosaic(Ov25_540_AnimatedSpriteData *animatedSprite, BOOL isMosaic);
void ov25_540_SetSpriteRotation(Ov25_540_AnimatedSpriteData *animatedSprite, u16 rotation);
BOOL ov25_540_LoadSpriteFromNARC(ov25_SpriteData *spriteData, enum NarcID narcID, u32 spriteId, u32 animId, enum HeapId heapId);
void ov25_540_FreeSpriteData(ov25_SpriteData *spriteData);

#endif // POKEPLATINUM_OV25_02255540_H
