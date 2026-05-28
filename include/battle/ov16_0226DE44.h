#ifndef POKEPLATINUM_OV16_0226DE44_H
#define POKEPLATINUM_OV16_0226DE44_H

#include "battle/struct_ov16_0226DEEC_decl.h"

#include "palette.h"
#include "sprite_system.h"

void Indicator_LoadResources(SpriteSystem *spriteSys, SpriteManager *spriteMan, u32 heapID, PaletteData *plttData, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID);
void Indicator_UnloadResources(SpriteManager *spriteMan, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID);
Indicator *Indicator_New(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum HeapID heapID, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID, u32 priority, u32 bgPriority);
void Indicator_Delete(Indicator *indicator);
void Indicator_Show(Indicator *indicator, int x, int y, fx32 subscreenOffset);
void Indicator_ShowOnSubscreen(Indicator *indicator, int x, int y);
void Indicator_Hide(Indicator *indicator);
void Indicator_SetExitTimer(Indicator *indicator, int timer);
BOOL Indicator_GetHasDropped(Indicator *indicator);

#endif // POKEPLATINUM_OV16_0226DE44_H
