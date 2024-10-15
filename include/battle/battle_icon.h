#ifndef POKEPLATINUM_BATTLE_ICON_H
#define POKEPLATINUM_BATTLE_ICON_H

#include <nnsys.h>

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"

#define NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ__TYPE_PALETTE 74

u32 BattleIcon_TypeIndexToNARCMember(int param0);
u32 BattleIcon_GetPaletteNARCMember(void);
u32 sub_0207C924(void);
u32 sub_0207C928(void);
u8 BattleIcon_TypeIndexToPaletteIndex(int param0);
u32 BattleIcon_GetNARCIndex(void);
void BattleIcon_MakeTypeSpriteTiles(SpriteRenderer *param0, SpriteGfxHandler *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4);
void BattleIcon_MakeTypeSpritePalette(SpriteRenderer *param0, SpriteGfxHandler *param1, NNS_G2D_VRAM_TYPE param2, u32 param3);
void sub_0207C9B0(PaletteData *param0, int param1, SpriteRenderer *param2, SpriteGfxHandler *param3, NNS_G2D_VRAM_TYPE param4, u32 param5);
void sub_0207C9EC(SpriteRenderer *param0, SpriteGfxHandler *param1, u32 param2, u32 param3);
void sub_0207CA34(SpriteGfxHandler *param0, u32 param1);
void sub_0207CA3C(SpriteGfxHandler *param0, u32 param1);
void sub_0207CA44(SpriteGfxHandler *param0, u32 param1, u32 param2);
CellActorData *sub_0207CA58(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, const SpriteTemplate *param3);
void sub_0207CA88(CellActorData *param0);
u32 BattleIcon_MoveTypeIndexToNARCMember(int param0);
u8 BattleIcon_MoveTypeIndexToPaletteIndex(int param0);
u32 BattleIcon_GetMoveTypeNARCIndex(void);
void BattleIcon_MakeMoveTypeSpriteTiles(SpriteRenderer *param0, SpriteGfxHandler *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4);
void sub_0207CAF8(SpriteGfxHandler *param0, u32 param1);
void sub_0207CB00(CellActorData *param0);

#endif // POKEPLATINUM_BATTLE_ICON_H
