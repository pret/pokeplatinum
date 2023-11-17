#ifndef POKEPLATINUM_UNK_0207C908_H
#define POKEPLATINUM_UNK_0207C908_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include <nnsys.h>

u32 sub_0207C908(int param0);
u32 sub_0207C920(void);
u32 sub_0207C924(void);
u32 sub_0207C928(void);
u8 sub_0207C92C(int param0);
u32 sub_0207C944(void);
void sub_0207C948(CellTransferStateData * param0, AnimationResourceCollection * param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4);
void sub_0207C97C(CellTransferStateData * param0, AnimationResourceCollection * param1, NNS_G2D_VRAM_TYPE param2, u32 param3);
void sub_0207C9B0(PaletteSys * param0, int param1, CellTransferStateData * param2, AnimationResourceCollection * param3, NNS_G2D_VRAM_TYPE param4, u32 param5);
void sub_0207C9EC(CellTransferStateData * param0, AnimationResourceCollection * param1, u32 param2, u32 param3);
void sub_0207CA34(AnimationResourceCollection * param0, u32 param1);
void sub_0207CA3C(AnimationResourceCollection * param0, u32 param1);
void sub_0207CA44(AnimationResourceCollection * param0, u32 param1, u32 param2);
CellActorData * sub_0207CA58(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, const UnkStruct_ov104_0223F9E0 * param3);
void sub_0207CA88(CellActorData * param0);
u32 sub_0207CA90(int param0);
u8 sub_0207CAA8(int param0);
u32 sub_0207CAC0(void);
void sub_0207CAC4(CellTransferStateData * param0, AnimationResourceCollection * param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4);
void sub_0207CAF8(AnimationResourceCollection * param0, u32 param1);
void sub_0207CB00(CellActorData * param0);

#endif // POKEPLATINUM_UNK_0207C908_H
