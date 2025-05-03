#ifndef POKEPLATINUM_OV25_02255540_H
#define POKEPLATINUM_OV25_02255540_H

#include <nnsys.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"

Ov25_540_AnimationManager *ov25_540_SetupAnimationManager(NNSG2dOamManagerInstance *param0, u32 heapID);
void ov25_540_FreeAnimationManager(Ov25_540_AnimationManager *param0);
void ov25_540_UpdateAnimations(Ov25_540_AnimationManager *param0);
Ov25_540_AnimatedSpriteData *ov25_540_SetupNewAnimatedSprite(Ov25_540_AnimationManager *param0, const ov25_AnimationData *param1, const ov25_SpriteData *param2);
void ov25_540_RemoveAnimatedSprite(Ov25_540_AnimationManager *param0, Ov25_540_AnimatedSpriteData *param1);
void ov25_540_UpdateAnimationIdx(Ov25_540_AnimatedSpriteData *param0, u32 animIdx);
BOOL ov25_540_AnimationInactive(Ov25_540_AnimatedSpriteData *param0);
void ov25_540_TranslateSprite(Ov25_540_AnimatedSpriteData *param0, fx32 param1, fx32 param2);
void ov25_540_SetSpritePosition(Ov25_540_AnimatedSpriteData *param0, fx32 param1, fx32 param2);
void ov25_540_GetSpritePosition(const Ov25_540_AnimatedSpriteData *param0, fx32 *param1, fx32 *param2);
void ov25_540_HideSprite(Ov25_540_AnimatedSpriteData *param0, BOOL param1);
void ov25_540_SetSpritePrority(Ov25_540_AnimationManager *param0, Ov25_540_AnimatedSpriteData *param1, u32 param2);
void ov25_540_SetCParam(Ov25_540_AnimatedSpriteData *param0, u32 param1);
void ov25_540_SetSpriteCharNo(Ov25_540_AnimatedSpriteData *param0, u32 param1);
void ov25_Set_mosaic(Ov25_540_AnimatedSpriteData *param0, BOOL param1);
void ov25_540_SetSpriteRotation(Ov25_540_AnimatedSpriteData *param0, u16 param1);
BOOL ov25_540_LoadSpriteFromNARC(ov25_SpriteData *param0, enum NarcID narcID, u32 param2, u32 param3, enum HeapId param4);
void ov25_540_FreeSpriteData(ov25_SpriteData *param0);

#endif // POKEPLATINUM_OV25_02255540_H
