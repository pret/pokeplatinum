#ifndef POKEPLATINUM_OV23_0224F294_H
#define POKEPLATINUM_OV23_0224F294_H

#include "struct_defs/underground.h"

#include "field/field_system_decl.h"
#include "overlay023/funcptr_ov23_0224F758.h"
#include "overlay023/struct_ov23_02250CD4.h"

#include "list_menu.h"
#include "sys_task_manager.h"

void ov23_0224F588(Underground *underground);
void ov23_0224F5B8(void);
int Underground_GetGoodAtSlotPC2(int slot, void *param1);
int Underground_GetGoodAtSlotBag2(int slot, void *param1);
void Underground_RemoveSelectedGoodBag(int goodID);
int Underground_GetTrapAtSlot2(int slot, void *param1);
int Underground_GetSphereTypeAtSlot2(int slot, void *param1);
int Underground_GetSphereSizeAtSlot2(int slot, void *param1);
int Underground_GetTreasureAtSlot2(int slot, void *param1);
BOOL Underground_TryAddSphere2(int sphereID, int sphereSize);
BOOL Underground_TryAddTreasure2(int treasureID);
BOOL Underground_TryAddTrap2(int trapID);
BOOL Underground_TryAddGoodBag2(int goodID);
void ov23_0224F758(UnkFuncPtr_ov23_0224F758 param0, FieldSystem *fieldSystem);
void ov23_0224FB7C(UnkStruct_ov23_02250CD4 *param0);
void Underground_RemoveSelectedTrap(int trapID);
void ov23_0224FD84(ListMenu *param0, u32 param1, u8 param2);
void ov23_0224FDBC(UnkStruct_ov23_02250CD4 *param0);
void ov23_0224FDE0(UnkStruct_ov23_02250CD4 *param0);
void Underground_RemoveSelectedSphere(int sphereType);
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
