#ifndef POKEPLATINUM_BATTLE_ICON_H
#define POKEPLATINUM_BATTLE_ICON_H

#include <nnsys.h>

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"

#include "palette.h"

u32 BattleIcon_GetMoveTypeTiles(int param0);
u32 BattleIcon_GetMoveTypePaletteFileIndex(void);
u32 BattleIcon_GetMoveTypeCellsFileIndex(void);
u32 BattleIcon_GetMoveTypeAnimFileIndex(void);
u8 BattleIcon_GetMoveTypePaletteIndex(int param0);
u32 BattleIcon_GetNARCIndex(void);
void BattleIcon_MakeTypeSpriteTiles(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NNS_G2D_VRAM_TYPE vramType, int typeIndex, u32 resourceID);
void BattleIcon_MakeTypeSpritePalette(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NNS_G2D_VRAM_TYPE vramType, u32 resourceID);
void BattleIcon_LoadTypeSpritePalette(PaletteData *palette, enum PaletteBufferID bufferID, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NNS_G2D_VRAM_TYPE vramType, u32 resourceID);
void BattleIcon_MakeTypeSpriteCellsAnim(SpriteRenderer *param0, SpriteGfxHandler *param1, u32 param2, u32 param3);
void BattleIcon_UnloadTypeSpriteTiles(SpriteGfxHandler *param0, u32 param1);
void BattleIcon_UnloadTypeSpritePalette(SpriteGfxHandler *param0, u32 param1);
void BattleIcon_UnloadTypeSpriteCellsAnim(SpriteGfxHandler *param0, u32 param1, u32 param2);
CellActorData *BattleIcon_CreateCellActorForTypeSprite(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, const SpriteTemplate *param3);
void BattleIcon_DeleteMoveTypeCellActorData(CellActorData *param0);
u32 BattleIcon_GetMoveClassTiles(int param0);
u8 BattleIcon_GetMoveClassPaletteIndex(int param0);
u32 BattleIcon_GetMoveClassNARCIndex(void);
void BattleIcon_MakeMoveClassSpriteTiles(SpriteRenderer *param0, SpriteGfxHandler *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4);
void BattleIcon_UnloadMoveClassSpriteTiles(SpriteGfxHandler *param0, u32 param1);
void BattleIcon_DeleteMoveClassCellActorData(CellActorData *param0);

#endif // POKEPLATINUM_BATTLE_ICON_H
