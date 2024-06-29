#ifndef POKEPLATINUM_OV19_021D61B0_H
#define POKEPLATINUM_OV19_021D61B0_H

#include "struct_decls/struct_02007768_decl.h"
#include "sys_task_manager.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D5DF8_decl.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/funcptr_ov19_021D79B8.h"
#include "overlay019/struct_ov19_021D8318.h"
#include "overlay019/struct_ov19_021D8E00.h"
#include "overlay019/struct_ov19_021DA384.h"
#include "cell_actor.h"
#include "overlay019/struct_ov19_021DBA9C.h"
#include "overlay019/struct_ov19_021DC680.h"
#include "overlay019/struct_ov19_021DE3E8_decl.h"

#include <nnsys.h>

BOOL ov19_021D61B0(UnkStruct_ov19_021D61B0 ** param0, const UnkStruct_ov19_021D4DF0 * param1, const UnkStruct_ov19_021D5DF8 * param2);
void ov19_021D64A0(UnkStruct_ov19_021D61B0 * param0);
void ov19_021D6594(UnkStruct_ov19_021D61B0 * param0, u32 param1);
BOOL ov19_021D6600(UnkStruct_ov19_021D61B0 * param0, u32 param1);
BOOL ov19_021D6628(UnkStruct_ov19_021D61B0 * param0);
SysTask * ov19_021D77C8(SysTaskFunc param0, void * param1, u32 param2);
NNSG2dImagePaletteProxy * ov19_021D77D0(UnkStruct_ov19_021D61B0 * param0);
UnkStruct_ov19_021DA384 * ov19_021D77D8(UnkStruct_ov19_021D61B0 * param0);
UnkStruct_ov19_021D8318 * ov19_021D77E0(UnkStruct_ov19_021D61B0 * param0);
UnkStruct_ov19_021DC680 * ov19_021D77E8(UnkStruct_ov19_021D61B0 * param0);
UnkStruct_ov19_021D8E00 * ov19_021D77F4(UnkStruct_ov19_021D61B0 * param0);
UnkStruct_ov19_021DE3E8 * ov19_021D7800(UnkStruct_ov19_021D61B0 * param0);
UnkStruct_ov19_021DBA9C * ov19_021D780C(UnkStruct_ov19_021D61B0 * param0);
UnkStruct_02007768 * ov19_021D7818(UnkStruct_ov19_021D61B0 * param0);
int ov19_021D7820(UnkStruct_ov19_021D61B0 * param0);
void ov19_021D783C(CellActorResourceData * param0, NNSG2dImageProxy * param1, NNSG2dImagePaletteProxy * param2, NNSG2dCellDataBank * param3, NNSG2dCellAnimBankData * param4, u32 param5);
CellActor * ov19_021D785C(CellActorCollection * param0, CellActorResourceData * param1, u32 param2, u32 param3, u32 param4, int param5);
void ov19_021D78AC(CellActor * param0, u32 param1);
void ov19_021D78C8(const u16 * param0, u16 * param1, u32 param2, u16 param3, u32 param4);
const UnkStruct_ov19_021D5DF8 * ov19_021D7964(UnkStruct_ov19_021D61B0 * param0);
void ov19_021D79B8(void * param0, UnkFuncPtr_ov19_021D79B8 param1, void * param2);

#endif // POKEPLATINUM_OV19_021D61B0_H
