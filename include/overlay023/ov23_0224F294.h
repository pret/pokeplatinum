#ifndef POKEPLATINUM_OV23_0224F294_H
#define POKEPLATINUM_OV23_0224F294_H

#include "struct_defs/underground_data.h"

#include "field/field_system_decl.h"
#include "overlay023/funcptr_ov23_0224F758.h"
#include "overlay023/struct_ov23_02250CD4.h"

#include "list_menu.h"
#include "sys_task_manager.h"

void ov23_0224F588(UndergroundData *param0);
void ov23_0224F5B8(void);
int ov23_0224F5F0(int param0, void *param1);
int ov23_0224F61C(int param0, void *param1);
void ov23_0224F634(int param0);
int ov23_0224F66C(int param0, void *param1);
int ov23_0224F684(int param0, void *param1);
int ov23_0224F69C(int param0, void *param1);
int ov23_0224F6C8(int param0, void *param1);
BOOL Underground_TryAddSphere(int sphereID, int sphereSize);
BOOL Underground_TryAddTreasure(int treasureID);
BOOL ov23_0224F730(int param0);
BOOL ov23_0224F744(int param0);
void ov23_0224F758(UnkFuncPtr_ov23_0224F758 param0, FieldSystem *fieldSystem);
void ov23_0224FB7C(UnkStruct_ov23_02250CD4 *param0);
void ov23_0224FD68(int param0);
void ov23_0224FD84(ListMenu *param0, u32 param1, u8 param2);
void ov23_0224FDBC(UnkStruct_ov23_02250CD4 *param0);
void ov23_0224FDE0(UnkStruct_ov23_02250CD4 *param0);
void ov23_02250128(int param0);
void ov23_02250184(UnkStruct_ov23_02250CD4 *param0);
void ov23_02250540(ListMenu *param0, u32 param1, u8 param2);
void ov23_02250578(UnkStruct_ov23_02250CD4 *param0);
void ov23_02250598(UnkStruct_ov23_02250CD4 *param0);
void ov23_02250A50(UnkFuncPtr_ov23_0224F758 param0, FieldSystem *fieldSystem);
void ov23_02250C3C(ListMenu *param0, u32 param1, u8 param2);
void ov23_02250CB0(UnkStruct_ov23_02250CD4 *param0);
void ov23_02250CD4(UnkStruct_ov23_02250CD4 *param0);
void ov23_02250D2C(UnkStruct_ov23_02250CD4 *param0);
void ov23_02250D5C(UnkStruct_ov23_02250CD4 *param0);
void ov23_02251044(void *param0, u32 param1);
void *ov23_022511B0(UnkFuncPtr_ov23_0224F758 param0, FieldSystem *fieldSystem);
void ov23_02251238(UnkStruct_ov23_02250CD4 *param0, int param1, int param2);
void ov23_02251270(SysTask *param0, void *param1);

#endif // POKEPLATINUM_OV23_0224F294_H
