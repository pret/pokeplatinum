#include "battle/indicator.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "math_util.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"

// This is the bouncing arrow sprite used in the catch tutorial
typedef struct Indicator {
    ManagedSprite *sprite;
    SysTask *animTask;
    int x;
    int y;
    int bounceAngle;
    fx32 subscreenOffset;
    s16 exitTimer;
    u8 exitPending;
    u8 hasDropped;
    u8 isExiting;
    u8 exitStep;
    u8 exitFrameCount;
} Indicator;

void Indicator_LoadResources(SpriteSystem *spriteSys, SpriteManager *spriteMan, u32 heapID, PaletteData *plttData, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID);
void Indicator_UnloadResources(SpriteManager *spriteMan, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID);
void Indicator_Delete(Indicator *indicator);
void Indicator_Show(Indicator *indicator, int x, int y, fx32 subscreenOffset);
void Indicator_Hide(Indicator *indicator);
static void SysTask_AnimateIndicator(SysTask *task, void *indicatorPtr);
static void Indicator_ResetAnimation(Indicator *indicator);

static const SpriteTemplate sIndicatorSpriteTemplate = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x0, 0x0, 0x0, 0x0, 0xFFFFFFFF, 0xFFFFFFFF },
    0x0,
    0x0
};

void Indicator_LoadResources(SpriteSystem *spriteSys, SpriteManager *spriteMan, u32 heapID, PaletteData *plttData, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__EV_POKESELECT, heapID);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(plttData, PLTTBUF_SUB_OBJ, spriteSys, spriteMan, narc, 11, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, plttResID);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSys, spriteMan, narc, 10, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, charResID);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSys, spriteMan, narc, 12, FALSE, cellResID);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSys, spriteMan, narc, 13, FALSE, animResID);
    NARC_dtor(narc);
}

void Indicator_UnloadResources(SpriteManager *spriteMan, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID)
{
    SpriteManager_UnloadCharObjById(spriteMan, charResID);
    SpriteManager_UnloadPlttObjById(spriteMan, plttResID);
    SpriteManager_UnloadCellObjById(spriteMan, cellResID);
    SpriteManager_UnloadAnimObjById(spriteMan, animResID);
}

Indicator *Indicator_New(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum HeapID heapID, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID, u32 priority, u32 bgPriority)
{
    Indicator *indicator;
    SpriteTemplate spriteTemplate;

    spriteTemplate = sIndicatorSpriteTemplate;

    spriteTemplate.resources[0] = charResID;
    spriteTemplate.resources[1] = plttResID;
    spriteTemplate.resources[2] = cellResID;
    spriteTemplate.resources[3] = animResID;
    spriteTemplate.priority = priority;
    spriteTemplate.bgPriority = bgPriority;

    indicator = Heap_Alloc(heapID, sizeof(Indicator));
    MI_CpuClear8(indicator, sizeof(Indicator));

    indicator->sprite = SpriteSystem_NewSprite(spriteSys, spriteMan, &spriteTemplate);
    ManagedSprite_SetDrawFlag(indicator->sprite, 0);

    indicator->subscreenOffset = (192 << FX32_SHIFT);
    indicator->animTask = SysTask_Start(SysTask_AnimateIndicator, indicator, 999);

    return indicator;
}

void Indicator_Delete(Indicator *indicator)
{
    Sprite_DeleteAndFreeResources(indicator->sprite);
    SysTask_Done(indicator->animTask);
    Heap_Free(indicator);
}

void Indicator_Show(Indicator *indicator, int x, int y, fx32 subscreenOffset)
{
    Indicator_ResetAnimation(indicator);

    indicator->x = x;
    indicator->y = y;
    indicator->subscreenOffset = subscreenOffset;

    ManagedSprite_SetPositionXYWithSubscreenOffset(indicator->sprite, x, y, subscreenOffset);
    ManagedSprite_SetDrawFlag(indicator->sprite, TRUE);
}

void Indicator_ShowOnSubscreen(Indicator *indicator, int x, int y)
{
    Indicator_Show(indicator, x, y, (192 << FX32_SHIFT));
}

void Indicator_Hide(Indicator *indicator)
{
    ManagedSprite_SetDrawFlag(indicator->sprite, FALSE);
    Indicator_ResetAnimation(indicator);
}

void Indicator_SetExitTimer(Indicator *indicator, int timer)
{
    indicator->exitTimer = timer;
}

BOOL Indicator_GetHasDropped(Indicator *indicator)
{
    return indicator->hasDropped;
}

static void SysTask_AnimateIndicator(SysTask *task, void *indicatorPtr)
{
    Indicator *indicator = indicatorPtr;

    if (indicator->hasDropped == 1) {
        indicator->hasDropped = 0;
    }

    if (indicator->exitTimer > 0) {
        indicator->exitTimer--;

        if (indicator->exitTimer == 0) {
            indicator->exitPending = 1;
        }
    }

    if (ManagedSprite_GetDrawFlag(indicator->sprite) == 0) {
        return;
    }

    if (indicator->isExiting == 0) {
        int v1;

        indicator->bounceAngle += (10 * 100);

        if (indicator->bounceAngle >= 180 * 100) {
            indicator->bounceAngle -= 180 * 100;

            if (indicator->exitPending == 1) {
                indicator->isExiting = 1;
                indicator->exitPending = 0;
            }
        }

        if (indicator->isExiting == 0) {
            v1 = FX_Mul(CalcSineDegrees(indicator->bounceAngle / 100), 14 << FX32_SHIFT) / FX32_ONE;
            ManagedSprite_SetPositionXYWithSubscreenOffset(indicator->sprite, indicator->x, indicator->y - v1, indicator->subscreenOffset);
        }
    }

    if (indicator->isExiting == 1) {
        switch (indicator->exitStep) {
        case 0:
            indicator->exitFrameCount++;

            if (indicator->exitFrameCount > 3) {
                indicator->exitFrameCount = 0;
                indicator->exitStep++;
            }
            break;
        case 1:
            ManagedSprite_SetPositionXYWithSubscreenOffset(indicator->sprite, indicator->x, indicator->y + 8, indicator->subscreenOffset);
            indicator->hasDropped = 1;
            indicator->exitStep++;
            break;
        case 2:
            indicator->exitFrameCount++;

            if (indicator->exitFrameCount > 2) {
                ManagedSprite_SetPositionXYWithSubscreenOffset(indicator->sprite, indicator->x, indicator->y + 2, indicator->subscreenOffset);
                indicator->exitFrameCount = 0;
                indicator->exitStep++;
            }
            break;
        case 3:
            indicator->exitFrameCount++;

            if (indicator->exitFrameCount > 2) {
                Indicator_Hide(indicator);
                indicator->exitFrameCount = 0;
                indicator->exitStep++;
            }
            break;
        default:
            break;
        }
    }

    ManagedSprite_TickFrame(indicator->sprite);
}

static void Indicator_ResetAnimation(Indicator *indicator)
{
    indicator->bounceAngle = 0;
    indicator->isExiting = 0;
    indicator->exitStep = 0;
    indicator->exitFrameCount = 0;
}
