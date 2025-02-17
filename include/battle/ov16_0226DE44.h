#ifndef POKEPLATINUM_OV16_0226DE44_H
#define POKEPLATINUM_OV16_0226DE44_H

#include "battle/struct_ov16_0226DEEC_decl.h"

#include "palette.h"
#include "sprite_system.h"

void CatchingTutorialFinger_LoadResources(SpriteSystem *param0, SpriteManager *param1, u32 param2, PaletteData *param3, u32 param4, u32 param5, u32 param6, u32 param7);
void CatchingTutorialFinger_FreeResources(SpriteManager *param0, u32 param1, u32 param2, u32 param3, u32 param4);
CatchingTutorialFinger *CatchingTutorialFinger_Create(SpriteSystem *param0, SpriteManager *param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
void CatchingTutorialFinger_Free(CatchingTutorialFinger *param0);
void CatchingTutorialFinger_SetPosition(CatchingTutorialFinger *param0, int param1, int param2, fx32 param3);
void ov16_0226DFB0(CatchingTutorialFinger *param0, int param1, int param2);
void ov16_0226DFBC(CatchingTutorialFinger *param0);
void CatchingTutorialFinger_RequestTouch(CatchingTutorialFinger *param0, int param1);
BOOL CatchingTutorialFinger_CheckTouchAnimationFinished(CatchingTutorialFinger *param0);

#endif // POKEPLATINUM_OV16_0226DE44_H
