#include "battle/cursor_renderer.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

static void SysTask_AnimateCursorSprites(SysTask *task, void *cursorRendererPtr);
void CursorRenderer_UnloadResources(SpriteManager *spriteMan, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID);
void CursorRenderer_Delete(CursorRenderer *cursorRenderer);
void CursorRenderer_DrawOnSubscreen(CursorRenderer *cursorRenderer, int x1, int x2, int y1, int y2);
void CursorRenderer_HideAllSprites(CursorRenderer *cursorRenderer);

static const SpriteTemplate sCursorRendererSpriteTemplate = {
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

void CursorRenderer_LoadResources(SpriteSystem *spriteSys, SpriteManager *spriteMan, PaletteData *plttData, enum HeapID heapID, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID)
{
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, heapID);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(plttData, PLTTBUF_SUB_OBJ, spriteSys, spriteMan, narc, 80, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, plttResID);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSys, spriteMan, narc, 250, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, charResID);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSys, spriteMan, narc, 251, TRUE, cellResID);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSys, spriteMan, narc, 252, TRUE, animResID);
    NARC_dtor(narc);
}

void CursorRenderer_UnloadResources(SpriteManager *spriteMan, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID)
{
    SpriteManager_UnloadCharObjById(spriteMan, charResID);
    SpriteManager_UnloadPlttObjById(spriteMan, plttResID);
    SpriteManager_UnloadCellObjById(spriteMan, cellResID);
    SpriteManager_UnloadAnimObjById(spriteMan, animResID);
}

CursorRenderer *CursorRenderer_New(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum HeapID heapID, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID, u32 priority, u32 bgPriority)
{
    CursorRenderer *cursorRenderer;
    SpriteTemplate spriteTemplate;
    int i;

    spriteTemplate = sCursorRendererSpriteTemplate;
    spriteTemplate.resources[0] = charResID;
    spriteTemplate.resources[1] = plttResID;
    spriteTemplate.resources[2] = cellResID;
    spriteTemplate.resources[3] = animResID;
    spriteTemplate.priority = priority;
    spriteTemplate.bgPriority = bgPriority;

    cursorRenderer = Heap_Alloc(heapID, sizeof(CursorRenderer));
    MI_CpuClear8(cursorRenderer, sizeof(CursorRenderer));

    for (i = 0; i < 5; i++) {
        cursorRenderer->sprites[i] = SpriteSystem_NewSprite(spriteSys, spriteMan, &spriteTemplate);
        ManagedSprite_SetDrawFlag(cursorRenderer->sprites[i], 0);
    }

    cursorRenderer->animTask = SysTask_Start(SysTask_AnimateCursorSprites, cursorRenderer, 40000);
    return cursorRenderer;
}

void CursorRenderer_Delete(CursorRenderer *cursorRenderer)
{
    int i;

    for (i = 0; i < 5; i++) {
        Sprite_DeleteAndFreeResources(cursorRenderer->sprites[i]);
    }

    SysTask_Done(cursorRenderer->animTask);
    Heap_Free(cursorRenderer);
}

void BattleSystem_DrawCursorSprites(CursorRenderer *cursorRenderer, int x0, int y0, int x1, int y1, int x2, int y2, int x3, int y3, fx32 subscreenOffset)
{
    int i;

    ManagedSprite_SetPositionXYWithSubscreenOffset(cursorRenderer->sprites[0], x0, y0, subscreenOffset);
    ManagedSprite_SetPositionXYWithSubscreenOffset(cursorRenderer->sprites[1], x1, y1, subscreenOffset);
    ManagedSprite_SetPositionXYWithSubscreenOffset(cursorRenderer->sprites[2], x2, y2, subscreenOffset);
    ManagedSprite_SetPositionXYWithSubscreenOffset(cursorRenderer->sprites[3], x3, y3, subscreenOffset);

    ManagedSprite_SetAnim(cursorRenderer->sprites[0], 0);
    ManagedSprite_SetAnim(cursorRenderer->sprites[1], 1);
    ManagedSprite_SetAnim(cursorRenderer->sprites[2], 2);
    ManagedSprite_SetAnim(cursorRenderer->sprites[3], 3);

    for (i = 0; i < 4; i++) {
        ManagedSprite_SetDrawFlag(cursorRenderer->sprites[i], 1);
    }
}

void CursorRenderer_DrawSpritesOnSubscreen(CursorRenderer *cursorRenderer, int x0, int y0, int x1, int y1, int x2, int y2, int x3, int y3)
{
    BattleSystem_DrawCursorSprites(cursorRenderer, x0, y0, x1, y1, x2, y2, x3, y3, (192 << FX32_SHIFT));
}

void CursorRenderer_DrawOnSubscreen(CursorRenderer *cursorRenderer, int x1, int x2, int y1, int y2)
{
    CursorRenderer_DrawSpritesOnSubscreen(cursorRenderer, x1, y1, x2, y1, x1, y2, x2, y2);
}

void BattleSystem_DrawCursor(CursorRenderer *cursorRenderer, int x1, int x2, int y1, int y2, fx32 subscreenOffset)
{
    BattleSystem_DrawCursorSprites(cursorRenderer, x1, y1, x2, y1, x1, y2, x2, y2, subscreenOffset);
}

void CursorRenderer_DrawSplitAnchor(CursorRenderer *cursorRenderer, int x, int y, int animID, fx32 subscreenOffset)
{
    ManagedSprite_SetPositionXYWithSubscreenOffset(cursorRenderer->sprites[4], x, y, subscreenOffset);
    ManagedSprite_SetAnim(cursorRenderer->sprites[4], animID);
    ManagedSprite_SetDrawFlag(cursorRenderer->sprites[4], 1);
}

void CursorRenderer_HideAllSprites(CursorRenderer *cursorRenderer)
{
    int i;

    for (i = 0; i < 5; i++) {
        ManagedSprite_SetDrawFlag(cursorRenderer->sprites[i], 0);
    }
}

void CursorRenderer_HideSplitAnchor(CursorRenderer *cursorRenderer)
{
    ManagedSprite_SetDrawFlag(cursorRenderer->sprites[4], 0);
}

static void SysTask_AnimateCursorSprites(SysTask *task, void *cursorRendererPtr)
{
    CursorRenderer *cursorRenderer = cursorRendererPtr;
    int i;

    if (ManagedSprite_GetDrawFlag(cursorRenderer->sprites[0]) == 0) {
        return;
    }

    for (i = 0; i < 4; i++) {
        ManagedSprite_TickFrame(cursorRenderer->sprites[i]);
    }

    if (ManagedSprite_GetDrawFlag(cursorRenderer->sprites[4]) == 1) {
        ManagedSprite_TickFrame(cursorRenderer->sprites[4]);
    }
}
