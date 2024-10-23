#ifndef POKEPLATINUM_UNK_0200C6E4_H
#define POKEPLATINUM_UNK_0200C6E4_H

#include <nitro/gx.h>
#include <nnsys.h>

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200C738.h"

#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "cell_actor.h"
#include "palette.h"

SpriteRenderer *sub_0200C6E4(int param0);
SpriteGfxHandler *sub_0200C704(SpriteRenderer *param0);
UnkStruct_0200C738 *sub_0200C738(SpriteRenderer *param0);
BOOL sub_0200C73C(SpriteRenderer *param0, const UnkStruct_ov104_0224133C *param1, const UnkStruct_ov104_022412F4 *param2, int param3);
BOOL sub_0200C7C0(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2);
void sub_0200C7E4(CellActor *param0);
void sub_0200C7EC(SpriteGfxHandler *param0);
void sub_0200C800(void);
void sub_0200C808(void);
void sub_0200C810(SpriteGfxHandler *param0);
void sub_0200C81C(SpriteGfxHandler *param0);
void sub_0200C82C(SpriteGfxHandler *param0);
void sub_0200C880(SpriteRenderer *param0);
void sub_0200C8A0(SpriteRenderer *param0, SpriteGfxHandler *param1);
void sub_0200C8B0(SpriteRenderer *param0, SpriteGfxHandler *param1);
void sub_0200C8D4(SpriteRenderer *param0);
BOOL sub_0200C8F0(SpriteRenderer *param0, SpriteGfxHandler *param1, const UnkStruct_ov7_0224F2EC *param2);
CellActor *sub_0200CA08(SpriteRenderer *param0, SpriteGfxHandler *param1, const UnkStruct_ov7_0224F358 *param2);
CellActor *sub_0200CA44(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, s16 param3, s16 param4, s16 param5, u16 param6, int param7, int param8, int param9, int param10, int param11, int param12, int param13);
BOOL sub_0200CB30(SpriteRenderer *param0, SpriteGfxHandler *param1, const UnkStruct_ov104_02241308 *param2);
BOOL sub_0200CBDC(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL SpriteRenderer_LoadCharResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int fileID, BOOL compressed, int vram, int resID);
s8 sub_0200CC9C(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, int param4, int param5, int param6, int param7);
s8 sub_0200CD0C(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2, int param3, int param4, int param5, int param6, int param7);
u8 sub_0200CD7C(PaletteData *param0, int param1, SpriteRenderer *param2, SpriteGfxHandler *param3, int param4, int param5, int param6, int param7, int param8, int param9);
u8 SpriteRenderer_LoadPalette(PaletteData *palette, enum PaletteBufferID paletteBuffer, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int fileID, BOOL compressed, int palID, int vram, int resID);
BOOL sub_0200CE0C(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, int param4, int param5);
BOOL SpriteRenderer_LoadCellResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int fileID, BOOL compressed, int resID);
BOOL sub_0200CE3C(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, int param4, int param5);
BOOL SpriteRenderer_LoadAnimResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int fileID, BOOL compressed, int resID);
CellActorData *SpriteActor_LoadResources(SpriteRenderer *param0, SpriteGfxHandler *param1, const SpriteTemplate *param2);
const NNSG2dImagePaletteProxy *sub_0200D04C(SpriteGfxHandler *param0, int param1);
u32 sub_0200D05C(SpriteGfxHandler *param0, int param1, NNS_G2D_VRAM_TYPE param2);
BOOL SpriteGfxHandler_UnloadCharObjById(SpriteGfxHandler *param0, int param1);
BOOL SpriteGfxHandler_UnloadPlttObjById(SpriteGfxHandler *param0, int param1);
BOOL SpriteGfxHandler_UnloadCellObjById(SpriteGfxHandler *param0, int param1);
BOOL SpriteGfxHandler_UnloadAnimObjById(SpriteGfxHandler *param0, int param1);
void sub_0200D0B0(SpriteRenderer *param0, SpriteGfxHandler *param1);
void sub_0200D0F4(CellActorData *param0);
void SpriteActor_UpdateObject(CellActor *param0);
void sub_0200D330(CellActorData *param0);
void sub_0200D33C(CellActorData *param0);
void sub_0200D34C(CellActorData *param0, fx32 param1);
u32 sub_0200D358(CellActorData *param0);
void sub_0200D364(CellActorData *param0, u32 param1);
void sub_0200D370(CellActorData *param0, u32 param1);
u32 sub_0200D37C(CellActorData *param0);
void sub_0200D388(CellActor *param0, int param1);
void sub_0200D390(CellActorData *param0, int param1);
void sub_0200D39C(CellActor *param0, fx32 param1);
void sub_0200D3A4(CellActorData *param0, fx32 param1);
BOOL sub_0200D3B0(CellActor *param0);
BOOL sub_0200D3B8(CellActorData *param0);
void sub_0200D3C4(CellActor *param0, u16 param1);
void sub_0200D3CC(CellActorData *param0, u16 param1);
u16 sub_0200D3D8(CellActor *param0);
u16 sub_0200D3E0(CellActorData *param0);
void SpriteActor_DrawSprite(CellActor *param0, int param1);
void SpriteActor_EnableObject(CellActorData *param0, int param1);
int sub_0200D400(CellActor *param0);
int sub_0200D408(CellActorData *param0);
void sub_0200D414(CellActor *param0, int param1);
void sub_0200D41C(CellActorData *param0, int param1);
void sub_0200D428(CellActor *param0, int param1);
void sub_0200D430(CellActorData *param0, int param1);
int sub_0200D43C(CellActorData *param0);
void sub_0200D448(CellActor *param0, int param1);
int sub_0200D454(CellActorData *param0);
void sub_0200D460(CellActorData *param0, int param1);
void sub_0200D46C(CellActor *param0, int param1);
void sub_0200D474(CellActorData *param0, int param1);
u32 sub_0200D480(CellActor *param0);
u32 sub_0200D488(CellActorData *param0);
void SpriteActor_SetPositionXY(CellActor *param0, s16 param1, s16 param2);
void SpriteActor_SetSpritePositionXY(CellActorData *param0, s16 param1, s16 param2);
void sub_0200D4D0(CellActor *param0, s16 param1, s16 param2, fx32 param3);
void sub_0200D500(CellActorData *param0, s16 param1, s16 param2, fx32 param3);
void sub_0200D50C(CellActor *param0, s16 *param1, s16 *param2);
void SpriteActor_GetSpritePositionXY(CellActorData *param0, s16 *param1, s16 *param2);
void sub_0200D55C(CellActor *param0, s16 *param1, s16 *param2, fx32 param3);
void sub_0200D5A0(CellActorData *param0, s16 *param1, s16 *param2, fx32 param3);
void sub_0200D5AC(CellActor *param0, s16 param1, s16 param2);
void sub_0200D5DC(CellActorData *param0, s16 param1, s16 param2);
void sub_0200D5E8(CellActorData *param0, fx32 param1, fx32 param2);
void sub_0200D614(CellActorData *param0, fx32 param1, fx32 param2);
void sub_0200D638(CellActorData *param0, fx32 *param1, fx32 *param2);
void sub_0200D650(CellActorData *param0, fx32 param1, fx32 param2, fx32 param3);
void sub_0200D67C(CellActorData *param0, fx32 *param1, fx32 *param2, fx32 param3);
void sub_0200D69C(CellActor *param0, int param1);
void sub_0200D6A4(CellActorData *param0, int param1);
void sub_0200D6B0(CellActor *param0, f32 param1, f32 param2);
void sub_0200D6E8(CellActorData *param0, f32 param1, f32 param2);
void sub_0200D6F4(CellActor *param0, f32 param1, f32 param2);
void sub_0200D74C(CellActorData *param0, f32 param1, f32 param2);
void sub_0200D758(CellActor *param0, f32 *param1, f32 *param2);
void sub_0200D788(CellActorData *param0, f32 *param1, f32 *param2);
void sub_0200D794(CellActor *param0, u16 param1);
void sub_0200D79C(CellActorData *param0, u16 param1);
void sub_0200D7A8(CellActor *param0, s32 param1);
void sub_0200D7C0(CellActorData *param0, s32 param1);
void sub_0200D7CC(CellActor *param0, int param1);
void sub_0200D7D4(CellActorData *param0, int param1);
void sub_0200D7E0(CellActorData *param0, s16 param1, s16 param2);
void sub_0200D7FC(CellActorData *param0, BOOL param1);
void sub_0200D808(CellActor *param0, GXOamMode param1);
void SpriteActor_SetOAMMode(CellActorData *param0, GXOamMode param1);
u32 sub_0200D81C(CellActorData *param0);
BOOL sub_0200D828(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL sub_0200D888(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL sub_0200D8E8(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2, int param3, BOOL param4, int param5, int param6);
void sub_0200D948(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, BOOL param4, int param5);
void sub_0200D97C(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, BOOL param4, int param5);
CellActorCollection *sub_0200D9B0(SpriteGfxHandler *param0);
void sub_0200D9B4(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2, int param3, BOOL param4, int param5);

#endif // POKEPLATINUM_UNK_0200C6E4_H
