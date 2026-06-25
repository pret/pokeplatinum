#ifndef POKEPLATINUM_BATTLE_INDICATOR_H
#define POKEPLATINUM_BATTLE_INDICATOR_H

#include "palette.h"
#include "sprite_system.h"
#include "sys_task.h"

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
Indicator *Indicator_New(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum HeapID heapID, u32 charResID, u32 plttResID, u32 cellResID, u32 animResID, u32 priority, u32 bgPriority);
void Indicator_Delete(Indicator *indicator);
void Indicator_Show(Indicator *indicator, int x, int y, fx32 subscreenOffset);
void Indicator_ShowOnSubscreen(Indicator *indicator, int x, int y);
void Indicator_Hide(Indicator *indicator);
void Indicator_SetExitTimer(Indicator *indicator, int timer);
BOOL Indicator_GetHasDropped(Indicator *indicator);

#endif // POKEPLATINUM_BATTLE_INDICATOR_H
