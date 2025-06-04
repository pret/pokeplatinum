#ifndef POKEPLATINUM_UNK_0207C908_H
#define POKEPLATINUM_UNK_0207C908_H

#include <nnsys.h>

#include "palette.h"
#include "sprite_system.h"

u32 GetIconFromMoveType(int moveType);
u32 sub_0207C920(void);
u32 GetMoveTypeIconCellBank(void);
u32 GetMoveTypeIconAnimBank(void);
u8 GetPaletteFromMoveType(int moveType);
enum NarcID GetBattleGraphicNarcIndex(void);
void sub_0207C948(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4);
void sub_0207C97C(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, u32 param3);
void sub_0207C9B0(PaletteData *param0, int param1, SpriteSystem *param2, SpriteManager *param3, NNS_G2D_VRAM_TYPE param4, u32 param5);
void sub_0207C9EC(SpriteSystem *param0, SpriteManager *param1, u32 param2, u32 param3);
void sub_0207CA34(SpriteManager *param0, u32 param1);
void sub_0207CA3C(SpriteManager *param0, u32 param1);
void sub_0207CA44(SpriteManager *param0, u32 param1, u32 param2);
ManagedSprite *CreateMoveSelectSprite(SpriteSystem *spriteSys, SpriteManager *spriteMan, int moveType, const SpriteTemplate *spriteTemplate);
void sub_0207CA88(ManagedSprite *param0);
u32 GetIconFromMoveCategory(int moveCat);
u8 GetPaletteFromMoveCategory(int moveCat);
enum NarcID GetBattleObjNarcID(void);
void sub_0207CAC4(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4);
void sub_0207CAF8(SpriteManager *param0, u32 param1);
void sub_0207CB00(ManagedSprite *param0);

#endif // POKEPLATINUM_UNK_0207C908_H
