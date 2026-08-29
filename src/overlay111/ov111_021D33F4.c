#include "overlay111/ov111_021D33F4.h"

#include <nitro.h>
#include <string.h>

#include "overlay111/ov111_021D2F80.h"
#include "overlay111/struct_ov111_021D2F80.h"

#include "heap.h"
#include "sprite.h"

ScratchOffCardsAppSprite *ScratchOffCardsAppSprite_New(ScratchOffCardsAppSpriteManager *spriteMan, u32 resourceID, u32 animID, u16 x, u16 y, u8 onSubScreen, u32 resourcePriority, u32 priority)
{
    ScratchOffCardsAppSprite *appSprite = Heap_Alloc(HEAP_ID_SCRATCH_OFF_CARD_APP, sizeof(ScratchOffCardsAppSprite));
    memset(appSprite, 0, sizeof(ScratchOffCardsAppSprite));
    appSprite->sprite = ScratchOffCardsApp_InitSprite(spriteMan, resourceID, animID, resourcePriority, priority, onSubScreen);
    appSprite->onSubScreen = onSubScreen;

    ScratchOffCardsAppSprite_SetPosition(appSprite, x, y);

    return appSprite;
}

void *ScratchOffCardsAppSprite_Free(ScratchOffCardsAppSprite *appSprite)
{
    Sprite_Delete(appSprite->sprite);
    Heap_Free(appSprite);
    return NULL;
}

void ScratchOffCardsAppSprite_SetDrawFlag(ScratchOffCardsAppSprite *appSprite, int draw)
{
    Sprite_SetDrawFlag(appSprite->sprite, draw);
}

void ScratchOffCardsAppSprite_SetPriority(ScratchOffCardsAppSprite *appSprite, u32 priority)
{
    Sprite_SetPriority(appSprite->sprite, priority);
}

void ScratchOffCardsAppSprite_SetPosition(ScratchOffCardsAppSprite *appSprite, int x, int y)
{
    VecFx32 pos;
    pos.x = x * FX32_ONE;
    pos.y = y * FX32_ONE;

    if (appSprite->onSubScreen == TRUE) {
        pos.y += FX32_CONST(512);
    }

    Sprite_SetPosition(appSprite->sprite, &pos);
}

void ScratchOffCardsAppSprite_GetPosition(ScratchOffCardsAppSprite *appSprite, int *x, int *y)
{
    const VecFx32 *pos = Sprite_GetPosition(appSprite->sprite);

    *x = pos->x / FX32_ONE;
    *y = pos->y / FX32_ONE;
}

void ScratchOffCardsAppSprite_SetAnim(ScratchOffCardsAppSprite *appSprite, u32 animID)
{
    Sprite_SetAnimSpeed(appSprite->sprite, FX32_ONE);
    Sprite_SetAnimNoRestart(appSprite->sprite, animID);
}

static const VecFx32 sCardScaleFactors[] = {
    { FX32_ONE, FX32_ONE, FX32_ONE },
    { FX32_CONST(1.2), FX32_CONST(1.2), FX32_CONST(1.2) },
    { FX32_CONST(1.25), FX32_CONST(1.25), FX32_CONST(1.25) },
    { FX32_CONST(1.3333), FX32_CONST(1.3333), FX32_CONST(1.3333) },
    { FX32_CONST(1.5), FX32_CONST(1.5), FX32_CONST(1.5) },
    { FX32_CONST(1.8), FX32_CONST(1.8), FX32_CONST(1.8) },
    { FX32_CONST(1.142857), FX32_CONST(1.142857), FX32_CONST(1.142857) },
    { FX32_CONST(0.5), FX32_CONST(0.5), FX32_CONST(0.5) },
    { FX32_CONST(0.75), FX32_CONST(0.75), FX32_CONST(0.75) },
    { FX32_CONST(0.8), FX32_CONST(0.8), FX32_CONST(0.8) },
    { FX32_CONST(0.857142), FX32_CONST(0.857142), FX32_CONST(0.857142) }
};

void ScratchOffCardsSprite_SetAffineScaleNormal(ScratchOffCardsAppSprite *appSprite, u32 unused)
{
    Sprite_SetAffineScaleEx(appSprite->sprite, &sCardScaleFactors[0], AFFINE_OVERWRITE_MODE_NORMAL);
}

void ScratchOffCardsSprite_SetAffineScaleDouble(ScratchOffCardsAppSprite *appSprite, VecFx32 *scale)
{
    Sprite_SetAffineScaleEx(appSprite->sprite, scale, AFFINE_OVERWRITE_MODE_DOUBLE);
}

void ScratchOffCardsAppSprite_UpdatePalette(ScratchOffCardsAppSprite *appSprite, u32 palette)
{
    Sprite_SetExplicitPaletteWithOffset(appSprite->sprite, palette);
}

void ScratchOffCardsAppSprite_SetAnimateFlag(ScratchOffCardsAppSprite *sprite, BOOL animate)
{
    Sprite_SetAnimateFlag(sprite->sprite, animate);
    Sprite_SetAnimSpeed(sprite->sprite, FX32_ONE);
    Sprite_SetAnim(sprite->sprite, Sprite_GetActiveAnim(sprite->sprite));
}

void ScratchOffCardsAppSprite_SetMosaicFlag(ScratchOffCardsAppSprite *appSprite, BOOL mosaic)
{
    Sprite_SetMosaicFlag(appSprite->sprite, mosaic);
}

BOOL ScratchOffCardsAppSprite_IsAnimated(ScratchOffCardsAppSprite *appSprite)
{
    return Sprite_IsAnimated(appSprite->sprite);
}
