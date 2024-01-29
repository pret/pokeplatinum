#ifndef POKEPLATINUM_UNK_0200C6E4_H
#define POKEPLATINUM_UNK_0200C6E4_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay104/struct_ov104_0223F9E0.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include <nitro/gx.h>
#include <nnsys.h>

CellTransferStateData * sub_0200C6E4(int param0);
AnimationResourceCollection * sub_0200C704(CellTransferStateData * param0);
UnkStruct_0200C738 * sub_0200C738(CellTransferStateData * param0);
BOOL sub_0200C73C(CellTransferStateData * param0, const UnkStruct_ov104_0224133C * param1, const UnkStruct_ov104_022412F4 * param2, int param3);
BOOL sub_0200C7C0(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2);
void sub_0200C7E4(GraphicElementData * param0);
void sub_0200C7EC(AnimationResourceCollection * param0);
void sub_0200C800(void);
void sub_0200C808(void);
void sub_0200C810(AnimationResourceCollection * param0);
void sub_0200C81C(AnimationResourceCollection * param0);
void sub_0200C82C(AnimationResourceCollection * param0);
void sub_0200C880(CellTransferStateData * param0);
void sub_0200C8A0(CellTransferStateData * param0, AnimationResourceCollection * param1);
void sub_0200C8B0(CellTransferStateData * param0, AnimationResourceCollection * param1);
void sub_0200C8D4(CellTransferStateData * param0);
BOOL sub_0200C8F0(CellTransferStateData * param0, AnimationResourceCollection * param1, const UnkStruct_ov7_0224F2EC * param2);
GraphicElementData * sub_0200CA08(CellTransferStateData * param0, AnimationResourceCollection * param1, const UnkStruct_ov7_0224F358 * param2);
GraphicElementData * sub_0200CA44(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, s16 param3, s16 param4, s16 param5, u16 param6, int param7, int param8, int param9, int param10, int param11, int param12, int param13);
BOOL sub_0200CB30(CellTransferStateData * param0, AnimationResourceCollection * param1, const UnkStruct_ov104_02241308 * param2);
BOOL sub_0200CBDC(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, int param4, int param5, int param6);
BOOL sub_0200CC3C(CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, int param4, int param5, int param6);
s8 sub_0200CC9C(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, int param4, int param5, int param6, int param7);
s8 sub_0200CD0C(CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, int param4, int param5, int param6, int param7);
u8 sub_0200CD7C(PaletteSys * param0, int param1, CellTransferStateData * param2, AnimationResourceCollection * param3, int param4, int param5, int param6, int param7, int param8, int param9);
u8 sub_0200CDC4(PaletteSys * param0, int param1, CellTransferStateData * param2, AnimationResourceCollection * param3, NARC * param4, int param5, int param6, int param7, int param8, int param9);
BOOL sub_0200CE0C(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, int param4, int param5);
BOOL sub_0200CE24(CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, int param4, int param5);
BOOL sub_0200CE3C(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, int param4, int param5);
BOOL sub_0200CE54(CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, int param4, int param5);
CellActorData * sub_0200CE6C(CellTransferStateData * param0, AnimationResourceCollection * param1, const UnkStruct_ov104_0223F9E0 * param2);
const NNSG2dImagePaletteProxy * sub_0200D04C(AnimationResourceCollection * param0, int param1);
u32 sub_0200D05C(AnimationResourceCollection * param0, int param1, NNS_G2D_VRAM_TYPE param2);
BOOL sub_0200D070(AnimationResourceCollection * param0, int param1);
BOOL sub_0200D080(AnimationResourceCollection * param0, int param1);
BOOL sub_0200D090(AnimationResourceCollection * param0, int param1);
BOOL sub_0200D0A0(AnimationResourceCollection * param0, int param1);
void sub_0200D0B0(CellTransferStateData * param0, AnimationResourceCollection * param1);
void sub_0200D0F4(CellActorData * param0);
void sub_0200D324(GraphicElementData * param0);
void sub_0200D330(CellActorData * param0);
void sub_0200D33C(CellActorData * param0);
void sub_0200D34C(CellActorData * param0, fx32 param1);
u32 sub_0200D358(CellActorData * param0);
void sub_0200D364(CellActorData * param0, u32 param1);
void sub_0200D370(CellActorData * param0, u32 param1);
u32 sub_0200D37C(CellActorData * param0);
void sub_0200D388(GraphicElementData * param0, int param1);
void sub_0200D390(CellActorData * param0, int param1);
void sub_0200D39C(GraphicElementData * param0, fx32 param1);
void sub_0200D3A4(CellActorData * param0, fx32 param1);
BOOL sub_0200D3B0(GraphicElementData * param0);
BOOL sub_0200D3B8(CellActorData * param0);
void sub_0200D3C4(GraphicElementData * param0, u16 param1);
void sub_0200D3CC(CellActorData * param0, u16 param1);
u16 sub_0200D3D8(GraphicElementData * param0);
u16 sub_0200D3E0(CellActorData * param0);
void sub_0200D3EC(GraphicElementData * param0, int param1);
void sub_0200D3F4(CellActorData * param0, int param1);
int sub_0200D400(GraphicElementData * param0);
int sub_0200D408(CellActorData * param0);
void sub_0200D414(GraphicElementData * param0, int param1);
void sub_0200D41C(CellActorData * param0, int param1);
void sub_0200D428(GraphicElementData * param0, int param1);
void sub_0200D430(CellActorData * param0, int param1);
int sub_0200D43C(CellActorData * param0);
void sub_0200D448(GraphicElementData * param0, int param1);
int  sub_0200D454(CellActorData * param0);
void sub_0200D460(CellActorData * param0, int param1);
void sub_0200D46C(GraphicElementData * param0, int param1);
void sub_0200D474(CellActorData * param0, int param1);
u32 sub_0200D480(GraphicElementData * param0);
u32 sub_0200D488(CellActorData * param0);
void sub_0200D494(GraphicElementData * param0, s16 param1, s16 param2);
void sub_0200D4C4(CellActorData * param0, s16 param1, s16 param2);
void sub_0200D4D0(GraphicElementData * param0, s16 param1, s16 param2, fx32 param3);
void sub_0200D500(CellActorData * param0, s16 param1, s16 param2, fx32 param3);
void sub_0200D50C(GraphicElementData * param0, s16 * param1, s16 * param2);
void sub_0200D550(CellActorData * param0, s16 * param1, s16 * param2);
void sub_0200D55C(GraphicElementData * param0, s16 * param1, s16 * param2, fx32 param3);
void sub_0200D5A0(CellActorData * param0, s16 * param1, s16 * param2, fx32 param3);
void sub_0200D5AC(GraphicElementData * param0, s16 param1, s16 param2);
void sub_0200D5DC(CellActorData * param0, s16 param1, s16 param2);
void sub_0200D5E8(CellActorData * param0, fx32 param1, fx32 param2);
void sub_0200D614(CellActorData * param0, fx32 param1, fx32 param2);
void sub_0200D638(CellActorData * param0, fx32 * param1, fx32 * param2);
void sub_0200D650(CellActorData * param0, fx32 param1, fx32 param2, fx32 param3);
void sub_0200D67C(CellActorData * param0, fx32 * param1, fx32 * param2, fx32 param3);
void sub_0200D69C(GraphicElementData * param0, int param1);
void sub_0200D6A4(CellActorData * param0, int param1);
void sub_0200D6B0(GraphicElementData * param0, f32 param1, f32 param2);
void sub_0200D6E8(CellActorData * param0, f32 param1, f32 param2);
void sub_0200D6F4(GraphicElementData * param0, f32 param1, f32 param2);
void sub_0200D74C(CellActorData * param0, f32 param1, f32 param2);
void sub_0200D758(GraphicElementData * param0, f32 * param1, f32 * param2);
void sub_0200D788(CellActorData * param0, f32 * param1, f32 * param2);
void sub_0200D794(GraphicElementData * param0, u16 param1);
void sub_0200D79C(CellActorData * param0, u16 param1);
void sub_0200D7A8(GraphicElementData * param0, s32 param1);
void sub_0200D7C0(CellActorData * param0, s32 param1);
void sub_0200D7CC(GraphicElementData * param0, int param1);
void sub_0200D7D4(CellActorData * param0, int param1);
void sub_0200D7E0(CellActorData * param0, s16 param1, s16 param2);
void sub_0200D7FC(CellActorData * param0, BOOL param1);
void sub_0200D808(GraphicElementData * param0, GXOamMode param1);
void sub_0200D810(CellActorData * param0, GXOamMode param1);
u32 sub_0200D81C(CellActorData * param0);
BOOL sub_0200D828(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL sub_0200D888(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL sub_0200D8E8(CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, BOOL param4, int param5, int param6);
void sub_0200D948(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, BOOL param4, int param5);
void sub_0200D97C(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, BOOL param4, int param5);
GraphicElementManager * sub_0200D9B0(AnimationResourceCollection * param0);
void sub_0200D9B4(CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, BOOL param4, int param5);

#endif // POKEPLATINUM_UNK_0200C6E4_H
