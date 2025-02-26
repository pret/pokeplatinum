#ifndef POKEPLATINUM_UNK_0207C908_H
#define POKEPLATINUM_UNK_0207C908_H

#include <nnsys.h>

#include "palette.h"
#include "sprite_system.h"

u32 sub_0207C908(int param0);
u32 sub_0207C920(void);
u32 sub_0207C924(void);
u32 sub_0207C928(void);
u8 sub_0207C92C(int param0);
u32 sub_0207C944(void);
void sub_0207C948(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4);
void sub_0207C97C(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, u32 param3);
void MoveTypeIcon_LoadPalette(PaletteData *param0, int param1, SpriteSystem *param2, SpriteManager *param3, NNS_G2D_VRAM_TYPE param4, u32 param5);
void sub_0207C9EC(SpriteSystem *param0, SpriteManager *param1, u32 param2, u32 param3);
void sub_0207CA34(SpriteManager *param0, u32 param1);
void sub_0207CA3C(SpriteManager *param0, u32 param1);
void sub_0207CA44(SpriteManager *param0, u32 param1, u32 param2);
ManagedSprite *sub_0207CA58(SpriteSystem *param0, SpriteManager *param1, int param2, const SpriteTemplate *param3);
void sub_0207CA88(ManagedSprite *param0);
u32 sub_0207CA90(int param0);
u8 sub_0207CAA8(int param0);
u32 sub_0207CAC0(void);
void sub_0207CAC4(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4);
void sub_0207CAF8(SpriteManager *param0, u32 param1);
void sub_0207CB00(ManagedSprite *param0);

#endif // POKEPLATINUM_UNK_0207C908_H
