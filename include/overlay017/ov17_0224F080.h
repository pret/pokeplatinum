#ifndef POKEPLATINUM_OV17_0224F080_H
#define POKEPLATINUM_OV17_0224F080_H

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include <nnsys.h>

u32 ov17_0224F080(int param0);
u32 ov17_0224F098(void);
u32 ov17_0224F09C(void);
u8 ov17_0224F0A0(int param0);
u32 ov17_0224F0B8(void);
void ov17_0224F0BC(CellTransferStateData * param0, AnimationResourceCollection * param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4);
void ov17_0224F0F0(CellTransferStateData * param0, AnimationResourceCollection * param1, u32 param2, u32 param3);
void ov17_0224F138(AnimationResourceCollection * param0, u32 param1);
void ov17_0224F140(AnimationResourceCollection * param0, u32 param1, u32 param2);
CellActorData * ov17_0224F154(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, const UnkStruct_ov104_0223F9E0 * param3);
void ov17_0224F184(CellActorData * param0);

#endif // POKEPLATINUM_OV17_0224F080_H
