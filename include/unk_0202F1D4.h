#ifndef POKEPLATINUM_UNK_0202F1D4_H
#define POKEPLATINUM_UNK_0202F1D4_H

#include "struct_decls/struct_0202F264_decl.h"
#include "struct_decls/struct_0202F298_decl.h"
#include "struct_decls/struct_0202F41C_decl.h"
#include "struct_decls/struct_02030A80_decl.h"
#include "savedata.h"
#include "overlay006/battle_params.h"

int BattleRecording_SaveSize(void);
void BattleRecording_Init(BattleRecording * param0);
void sub_0202F1F8(SaveData * param0, int param1, int * param2);
void sub_0202F22C(void);
BOOL sub_0202F250(void);
BattleRecording * sub_0202F264(void);
void * sub_0202F27C(void);
BOOL sub_0202F298(SaveData * param0, int param1, int * param2, BattleParams * param3, int param4);
BOOL sub_0202F330(SaveData * param0, int param1, int * param2, int param3);
int sub_0202F3AC(SaveData * param0, BattleRecording * param1, int param2, u16 * param3);
int sub_0202F41C(SaveData * param0, int param1, int param2, int param3, u16 * param4, u16 * param5);
void sub_0202F4C0(int param0, int * param1, int * param2);
void sub_0202F858(void * param0, u32 param1, u32 param2);
void sub_0202F868(int param0, int param1, u8 param2);
u8 sub_0202F884(int param0, int param1);
void sub_0202F8AC(BattleParams * param0);
void sub_0202FAA8(int param0, u32 param1);
BOOL sub_0202FAC0(void);
void sub_0202FAFC(BattleParams * param0, SaveData * param1);
UnkStruct_0202F41C * sub_0202FD88(int param0);
UnkStruct_02030A80 * sub_0202FDB8(int param0);
UnkStruct_02030A80 * sub_0202FDE8(void);
UnkStruct_0202F41C * sub_0202FE04(void);
void sub_0202FE20(UnkStruct_02030A80 * param0, UnkStruct_0202F41C * param1, UnkStruct_0202F298 * param2, BattleParams * param3, SaveData * param4);
u64 sub_0202FE98(UnkStruct_0202F41C * param0, int param1, int param2);
UnkStruct_0202F41C * sub_0202FF2C(int param0);
void sub_0202FF44(UnkStruct_0202F41C * param0);

#endif // POKEPLATINUM_UNK_0202F1D4_H
