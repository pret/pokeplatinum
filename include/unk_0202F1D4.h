#ifndef POKEPLATINUM_UNK_0202F1D4_H
#define POKEPLATINUM_UNK_0202F1D4_H

#include "struct_decls/struct_0202F264_decl.h"
#include "struct_decls/struct_0202F298_decl.h"
#include "struct_decls/struct_0202F41C_decl.h"
#include "struct_decls/struct_02030A80_decl.h"

#include "field_battle_data_transfer.h"
#include "savedata.h"

int BattleRecording_SaveSize(void);
void BattleRecording_Init(BattleRecording *param0);
void sub_0202F1F8(SaveData *saveData, int heapID, int *param2);
void sub_0202F22C(void);
BOOL sub_0202F250(void);
BattleRecording *sub_0202F264(void);
void *sub_0202F27C(void);
BOOL sub_0202F298(SaveData *saveData, int param1, int *param2, FieldBattleDTO *param3, int param4);
BOOL sub_0202F330(SaveData *saveData, int param1, int *param2, int param3);
int sub_0202F3AC(SaveData *saveData, BattleRecording *param1, int param2, u16 *param3);
int sub_0202F41C(SaveData *saveData, int param1, int param2, int param3, u16 *param4, u16 *param5);
void sub_0202F4C0(int param0, int *param1, int *param2);
void sub_0202F858(void *param0, u32 param1, u32 param2);
void sub_0202F868(int param0, int param1, u8 param2);
u8 sub_0202F884(int param0, int param1);
void sub_0202F8AC(FieldBattleDTO *param0);
void sub_0202FAA8(int param0, u32 param1);
BOOL sub_0202FAC0(void);
void sub_0202FAFC(FieldBattleDTO *param0, SaveData *saveData);
UnkStruct_0202F41C *sub_0202FD88(int heapID);
UnkStruct_02030A80 *sub_0202FDB8(int heapID);
UnkStruct_02030A80 *sub_0202FDE8(void);
UnkStruct_0202F41C *sub_0202FE04(void);
void sub_0202FE20(UnkStruct_02030A80 *param0, UnkStruct_0202F41C *param1, UnkStruct_0202F298 *param2, FieldBattleDTO *param3, SaveData *saveData);
u64 sub_0202FE98(UnkStruct_0202F41C *param0, int param1, int param2);
UnkStruct_0202F41C *sub_0202FF2C(int heapID);
void sub_0202FF44(UnkStruct_0202F41C *param0);

#endif // POKEPLATINUM_UNK_0202F1D4_H
