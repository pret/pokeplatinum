#ifndef POKEPLATINUM_CURSOR_RENDERER_H
#define POKEPLATINUM_CURSOR_RENDERER_H

#include "battle/struct_ov16_0226DC24_decl.h"

#include "palette.h"
#include "sprite_system.h"

void CursorRenderer_LoadResources(SpriteSystem *spriteSys, SpriteManager *spriteMan, PaletteData *plttData, enum HeapID heapID, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID);
void CursorRenderer_UnloadResources(SpriteManager *spriteMan, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID);
CursorRenderer *CursorRenderer_New(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum HeapID heapID, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID, u32 priority, u32 bgPriority);
void CursorRenderer_Delete(CursorRenderer *cursorRenderer);
void BattleSystem_DrawCursorSprites(CursorRenderer *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, fx32 param9);
void CursorRenderer_DrawSpritesOnSubscreen(CursorRenderer *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8);
void CursorRenderer_DrawOnSubscreen(CursorRenderer *param0, int param1, int param2, int param3, int param4);
void BattleSystem_DrawCursor(CursorRenderer *param0, int param1, int param2, int param3, int param4, fx32 param5);
void CursorRenderer_DrawSplitAnchor(CursorRenderer *cursorRenderer, int x, int y, int animID, fx32 subscreenOffset);
void CursorRenderer_HideAllSprites(CursorRenderer *param0);
void CursorRenderer_HideSplitAnchor(CursorRenderer *param0);

#endif // POKEPLATINUM_CURSOR_RENDERER_H
