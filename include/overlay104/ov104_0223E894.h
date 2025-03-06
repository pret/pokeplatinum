#ifndef POKEPLATINUM_OV104_0223E894_H
#define POKEPLATINUM_OV104_0223E894_H

#include "overlay104/struct_ov104_0223E9EC.h"
#include "overlay104/struct_ov104_0223EA38.h"
#include "overlay104/struct_ov104_0223EA84_decl.h"
#include "overlay104/struct_ov104_0223EBD0_decl.h"
#include "overlay104/struct_ov104_0223F094.h"
#include "overlay104/struct_ov104_0223F174_decl.h"
#include "overlay104/struct_ov104_0223F1B4.h"

#include "bg_window.h"

void ov104_0223E894(int param0, u32 param1, u32 param2, BOOL *param3, u32 param4);
void ov104_0223E9CC(int param0, int param1);
void ov104_0223E9EC(UnkStruct_ov104_0223E9EC *param0, int param1, int param2, int param3, int param4);
BOOL ov104_0223E9F8(UnkStruct_ov104_0223E9EC *param0);
void ov104_0223EA28(UnkStruct_ov104_0223EA38 *param0, int param1, int param2, int param3);
BOOL ov104_0223EA38(UnkStruct_ov104_0223EA38 *param0);
UnkStruct_ov104_0223EA84 *ov104_0223EA64(u32 heapID);
void ov104_0223EA7C(UnkStruct_ov104_0223EA84 *param0);
void ov104_0223EA84(UnkStruct_ov104_0223EA84 *param0, int param1, int param2, int param3, int param4, int param5, Window *param6, u32 param7, u32 param8, u8 param9);
BOOL ov104_0223EADC(UnkStruct_ov104_0223EA84 *param0);
UnkStruct_ov104_0223EBD0 *ov104_0223EBA0(u32 heapID);
void ov104_0223EBD0(UnkStruct_ov104_0223EBD0 *param0);
void ov104_0223EBF0(UnkStruct_ov104_0223EBD0 *param0, u8 param1, u8 param2, Window *param3, u8 param4);
BOOL ov104_0223EC34(UnkStruct_ov104_0223EBD0 *param0);
BOOL ov104_0223EE44(UnkStruct_ov104_0223EBD0 *param0);
void ov104_0223F094(UnkStruct_ov104_0223F094 *param0, u32 param1);
void ov104_0223F0B0(UnkStruct_ov104_0223F094 *param0, u8 param1, u8 param2, u16 param3, fx32 param4, s16 param5, u32 param6, u32 param7, u32 param8);
UnkStruct_ov104_0223F174 *ov104_0223F1B4(u32 param0, UnkStruct_ov104_0223F1B4 *param1, int heapID);
void ov104_0223F258(UnkStruct_ov104_0223F174 *param0);
void *ov104_0223F27C(const UnkStruct_ov104_0223F174 *param0);

#endif // POKEPLATINUM_OV104_0223E894_H
