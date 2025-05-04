#ifndef POKEPLATINUM_POKETCH_ANIMATION_H
#define POKEPLATINUM_POKETCH_ANIMATION_H

#include <nnsys.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "poketch/poketch_structs.h"

#define FLIP_NONE 0
#define FLIP_H    1
#define FLIP_V    2

PoketchAnimation_AnimationManager *PoketchAnimation_SetupAnimationManager(NNSG2dOamManagerInstance *oamMan, u32 heapID);
void PoketchAnimation_FreeAnimationManager(PoketchAnimation_AnimationManager *animMan);
void PoketchAnimation_UpdateAnimations(PoketchAnimation_AnimationManager *animMan);
PoketchAnimation_AnimatedSpriteData *PoketchAnimation_SetupNewAnimatedSprite(PoketchAnimation_AnimationManager *animMan, const PoketchAnimation_AnimationData *animData, const PoketchAnimation_SpriteData *spriteData);
void PoketchAnimation_RemoveAnimatedSprite(PoketchAnimation_AnimationManager *animMan, PoketchAnimation_AnimatedSpriteData *animatedSprite);
void PoketchAnimation_UpdateAnimationIdx(PoketchAnimation_AnimatedSpriteData *animatedSprite, u32 animIdx);
BOOL PoketchAnimation_AnimationInactive(PoketchAnimation_AnimatedSpriteData *animatedSprite);
void PoketchAnimation_TranslateSprite(PoketchAnimation_AnimatedSpriteData *animatedSprite, fx32 x, fx32 y);
void PoketchAnimation_SetSpritePosition(PoketchAnimation_AnimatedSpriteData *animatedSprite, fx32 x, fx32 y);
void PoketchAnimation_GetSpritePosition(const PoketchAnimation_AnimatedSpriteData *animatedSprite, fx32 *x, fx32 *y);
void PoketchAnimation_HideSprite(PoketchAnimation_AnimatedSpriteData *animatedSprite, BOOL isHidden);
void PoketchAnimation_SetSpritePrority(PoketchAnimation_AnimationManager *animMan, PoketchAnimation_AnimatedSpriteData *animatedSprite, u32 priority);
void PoketchAnimation_SetCParam(PoketchAnimation_AnimatedSpriteData *animatedSprite, u32 value);
void PoketchAnimation_SetSpriteCharNo(PoketchAnimation_AnimatedSpriteData *animatedSprite, u32 value);
void PoketchAnimation_SetMosaic(PoketchAnimation_AnimatedSpriteData *animatedSprite, BOOL isMosaic);
void PoketchAnimation_SetSpriteRotation(PoketchAnimation_AnimatedSpriteData *animatedSprite, u16 rotation);
BOOL PoketchAnimation_LoadSpriteFromNARC(PoketchAnimation_SpriteData *spriteData, enum NarcID narcID, u32 spriteId, u32 animId, enum HeapId heapId);
void PoketchAnimation_FreeSpriteData(PoketchAnimation_SpriteData *spriteData);

#endif // POKEPLATINUM_POKETCH_ANIMATION_H
