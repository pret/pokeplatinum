#ifndef POKEPLATINUM_UNK_020218BC_H
#define POKEPLATINUM_UNK_020218BC_H

#include "struct_defs/struct_020095C4.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay115/struct_ov115_02261520.h"

#include <nitro/gx.h>
#include <nnsys.h>
#include <nitro/fx/fx.h>

GraphicElementManager * sub_020218BC(const UnkStruct_020095C4 * param0);
BOOL sub_02021964(GraphicElementManager * param0);
BOOL sub_020219A4(GraphicElementManager * param0, u8 param1);
BOOL sub_020219C0(GraphicElementManager * param0);
void sub_020219F8(const GraphicElementManager * param0);
void sub_02021A78(GraphicElementData * param0);
GraphicElementData * sub_02021AA0(const UnkStruct_ov115_02261520 * param0);
GraphicElementData * sub_02021B90(const UnkStruct_ov83_0223D9A8 * param0);
void sub_02021BD4(GraphicElementData * param0);
void sub_02021C50(GraphicElementData * param0, const VecFx32 * param1);
void sub_02021C60(GraphicElementData * param0, const VecFx32 * param1);
void sub_02021C70(GraphicElementData * param0, const VecFx32 * param1);
void sub_02021C80(GraphicElementData * param0, const VecFx32 * param1, int param2);
void sub_02021C94(GraphicElementData * param0, u16 param1);
void sub_02021C98(GraphicElementData * param0, u16 param1, int param2);
void sub_02021CAC(GraphicElementData * param0, int param1);
void sub_02021CC8(GraphicElementData * param0, int param1);
void sub_02021CE4(GraphicElementData * param0, fx32 param1);
void sub_02021CF8(GraphicElementData * param0, int param1);
void sub_02021D0C(GraphicElementData * param0, int param1);
const VecFx32 * sub_02021D28(const GraphicElementData * param0);
const VecFx32 * sub_02021D2C(const GraphicElementData * param0);
u16 sub_02021D30(const GraphicElementData * param0);
int sub_02021D34(const GraphicElementData * param0);
int sub_02021D3C(const GraphicElementData * param0);
u32 sub_02021D44(const GraphicElementData * param0);
void SpriteActor_SetSpriteAnimActive(GraphicElementData * param0, u32 param1);
void sub_02021DCC(GraphicElementData * param0, u32 param1);
void sub_02021DE0(GraphicElementData * param0);
u32 sub_02021E24(const GraphicElementData * param0);
void sub_02021E2C(GraphicElementData * param0, fx32 param1);
void SpriteActor_SetAnimFrame(GraphicElementData * param0, u16 param1);
u16 sub_02021E74(const GraphicElementData * param0);
void sub_02021E80(GraphicElementData * param0, u8 param1);
u8 sub_02021E88(const GraphicElementData * param0);
void sub_02021E90(GraphicElementData * param0, u32 param1);
void sub_02021EC4(GraphicElementData * param0, u32 param1);
u32 sub_02021EE8(const GraphicElementData * param0);
void sub_02021EF0(GraphicElementData * param0, u32 param1);
void sub_02021F24(GraphicElementData * param0, u32 param1);
u32 sub_02021F48(const GraphicElementData * param0);
void sub_02021F58(GraphicElementData * param0, u32 param1);
u32 sub_02021F74(const GraphicElementData * param0);
void sub_02021F7C(GraphicElementData * param0, const NNSG2dImageProxy * param1);
NNSG2dImageProxy * SpriteActor_ImageProxy(GraphicElementData * param0);
NNSG2dImagePaletteProxy * sub_02021F9C(GraphicElementData * param0);
void sub_02021FA0(GraphicElementData * param0, BOOL param1);
NNS_G2D_VRAM_TYPE sub_02021FC8(const GraphicElementData * param0);
BOOL sub_02021FD0(GraphicElementData * param0);
void sub_02021FE0(GraphicElementData * param0, GXOamMode param1);
void sub_02022014(int param0);
void sub_0202204C(int param0);
u32 sub_0202207C(const GraphicElementData * param0, u32 param1, u32 param2);
u32 sub_020220F4(const GraphicElementData * param0);

#endif // POKEPLATINUM_UNK_020218BC_H
