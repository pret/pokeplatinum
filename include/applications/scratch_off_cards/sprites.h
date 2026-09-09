#ifndef POKEPLATINUM_SCRATCH_OFF_CARDS_SPRITES_H
#define POKEPLATINUM_SCRATCH_OFF_CARDS_SPRITES_H

#include <nitro/fx/fx.h>

#include "applications/scratch_off_cards/sprite_manager.h"

#include "sprite.h"

typedef struct ScratchOffCardsAppSprite {
    u16 unused;
    u8 onSubScreen;
    u8 unused2[9];
    Sprite *sprite;
} ScratchOffCardsAppSprite;

ScratchOffCardsAppSprite *ScratchOffCardsAppSprite_New(ScratchOffCardsAppSpriteManager *spriteMan, u32 resourceID, u32 animID, u16 x, u16 y, u8 onSubScreen, u32 resourcePriority, u32 priority);
void *ScratchOffCardsAppSprite_Free(ScratchOffCardsAppSprite *appSprite);
void ScratchOffCardsAppSprite_SetDrawFlag(ScratchOffCardsAppSprite *appSprite, int draw);
void ScratchOffCardsAppSprite_SetPriority(ScratchOffCardsAppSprite *appSprite, u32 priority);
void ScratchOffCardsAppSprite_SetPosition(ScratchOffCardsAppSprite *appSprite, int x, int y);
void ScratchOffCardsAppSprite_GetPosition(ScratchOffCardsAppSprite *appSprite, int *x, int *y);
void ScratchOffCardsAppSprite_SetAnim(ScratchOffCardsAppSprite *appSprite, u32 animID);
void ScratchOffCardsSprite_SetAffineScaleNormal(ScratchOffCardsAppSprite *appSprite, u32 unused);
void ScratchOffCardsSprite_SetAffineScaleDouble(ScratchOffCardsAppSprite *appSprite, VecFx32 *scale);
void ScratchOffCardsAppSprite_UpdatePalette(ScratchOffCardsAppSprite *appSprite, u32 palette);
void ScratchOffCardsAppSprite_SetAnimateFlag(ScratchOffCardsAppSprite *sprite, BOOL animate);
void ScratchOffCardsAppSprite_SetMosaicFlag(ScratchOffCardsAppSprite *appSprite, BOOL mosaic);
BOOL ScratchOffCardsAppSprite_IsAnimated(ScratchOffCardsAppSprite *appSprite);

#endif // POKEPLATINUM_SCRATCH_OFF_CARDS_SPRITES_H
