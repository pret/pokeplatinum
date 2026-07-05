#ifndef POKEPLATINUM_BATTLE_CURSOR_RENDERER_H
#define POKEPLATINUM_BATTLE_CURSOR_RENDERER_H

#include "palette.h"
#include "sprite_system.h"
#include "sys_task.h"

typedef struct CursorRenderer {
    ManagedSprite *sprites[5];
    SysTask *animTask;
} CursorRenderer;

void CursorRenderer_LoadResources(SpriteSystem *spriteSys, SpriteManager *spriteMan, PaletteData *plttData, enum HeapID heapID, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID);
void CursorRenderer_UnloadResources(SpriteManager *spriteMan, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID);
CursorRenderer *CursorRenderer_New(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum HeapID heapID, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID, u32 priority, u32 bgPriority);
void CursorRenderer_Delete(CursorRenderer *cursorRenderer);
void BattleSystem_DrawCursorSprites(CursorRenderer *cursorRenderer, int x0, int y0, int x1, int y1, int x2, int y2, int x3, int y3, fx32 subscreenOffset);
void CursorRenderer_DrawSpritesOnSubscreen(CursorRenderer *cursorRenderer, int x0, int y0, int x1, int y1, int x2, int y2, int x3, int y3);
void CursorRenderer_DrawOnSubscreen(CursorRenderer *cursorRenderer, int x1, int x2, int y1, int y2);
void BattleSystem_DrawCursor(CursorRenderer *cursorRenderer, int x1, int x2, int y1, int y2, fx32 subscreenOffset);
void CursorRenderer_DrawSplitAnchor(CursorRenderer *cursorRenderer, int x, int y, int animID, fx32 subscreenOffset);
void CursorRenderer_HideAllSprites(CursorRenderer *cursorRenderer);
void CursorRenderer_HideSplitAnchor(CursorRenderer *cursorRenderer);

#endif // POKEPLATINUM_BATTLE_CURSOR_RENDERER_H
