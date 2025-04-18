#ifndef POKEPLATINUM_OV25_02255540_H
#define POKEPLATINUM_OV25_02255540_H

#include <nnsys.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"

UnkStruct_ov25_022555E8 *ov25_02255540(NNSG2dOamManagerInstance *param0, u32 heapID);
void ov25_022555E8(UnkStruct_ov25_022555E8 *param0);
void ov25_02255614(UnkStruct_ov25_022555E8 *param0);
UnkStruct_ov25_022558C4 *ov25_02255810(UnkStruct_ov25_022555E8 *param0, const UnkStruct_ov25_02255810 *param1, const UnkStruct_ov25_02255958 *param2);
void ov25_022558B0(UnkStruct_ov25_022555E8 *param0, UnkStruct_ov25_022558C4 *param1);
void ov25_022558C4(UnkStruct_ov25_022558C4 *param0, u32 param1);
BOOL ov25_022558E0(UnkStruct_ov25_022558C4 *param0);
void ov25_022558F0(UnkStruct_ov25_022558C4 *param0, fx32 param1, fx32 param2);
void ov25_02255900(UnkStruct_ov25_022558C4 *param0, fx32 param1, fx32 param2);
void ov25_02255908(const UnkStruct_ov25_022558C4 *param0, fx32 *param1, fx32 *param2);
void ov25_02255914(UnkStruct_ov25_022558C4 *param0, BOOL param1);
void ov25_0225591C(UnkStruct_ov25_022555E8 *param0, UnkStruct_ov25_022558C4 *param1, u32 param2);
void ov25_02255938(UnkStruct_ov25_022558C4 *param0, u32 param1);
void ov25_02255940(UnkStruct_ov25_022558C4 *param0, u32 param1);
void ov25_02255948(UnkStruct_ov25_022558C4 *param0, BOOL param1);
void ov25_02255950(UnkStruct_ov25_022558C4 *param0, u16 param1);
BOOL ov25_02255958(UnkStruct_ov25_02255958 *param0, enum NarcID narcID, u32 param2, u32 param3, enum HeapId param4);
void ov25_022559B0(UnkStruct_ov25_02255958 *param0);

#endif // POKEPLATINUM_OV25_02255540_H
