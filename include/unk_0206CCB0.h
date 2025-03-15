#ifndef POKEPLATINUM_UNK_0206CCB0_H
#define POKEPLATINUM_UNK_0206CCB0_H

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0206D140_decl.h"

#include "field/field_system_decl.h"
#include "overlay006/struct_ov6_022465F4_decl.h"

#include "pokemon.h"
#include "savedata.h"
#include "string_template.h"
#include "trainer_info.h"

int sub_0206CD00(int param0, FieldSystem *fieldSystem, StringTemplate *param2, UnkStruct_ov6_022465F4 *param3, u16 *param4);
BOOL sub_0206CD2C(int param0, FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param2);
void sub_0206CF14(TVBroadcast *param0, Pokemon *param1, int param2, int param3, int param4);
void sub_0206CF48(TVBroadcast *param0, Pokemon *param1, int param2);
void sub_0206CF9C(TVBroadcast *param0, int param1);
void sub_0206CFB4(TVBroadcast *param0, int param1);
void sub_0206CFCC(TVBroadcast *param0, int param1);
void sub_0206CFE4(TVBroadcast *param0, BOOL param1, u16 param2);
void sub_0206D000(TVBroadcast *param0);
void sub_0206D018(TVBroadcast *param0, Pokemon *param1);
void sub_0206D048(TVBroadcast *param0, Pokemon *param1);
void sub_0206D088(TVBroadcast *param0, u8 param1, const TrainerInfo *param2);
void sub_0206D0C8(TVBroadcast *param0, u16 param1);
void sub_0206D0F0(TVBroadcast *param0);
void sub_0206D104(TVBroadcast *param0);
void sub_0206D12C(TVBroadcast *param0);
UnkStruct_0206D140 *sub_0206D140(int heapID);
void sub_0206D158(UnkStruct_0206D140 *param0);
void sub_0206D160(UnkStruct_0206D140 *param0, Pokemon *param1, int param2, int param3, u32 param4);
void sub_0206D1B8(FieldSystem *fieldSystem, const UnkStruct_0206D140 *param1, int param2);
void sub_0206D340(FieldSystem *fieldSystem, BOOL param1, u16 param2, Pokemon *param3);
void sub_0206D424(FieldSystem *fieldSystem);
void sub_0206D430(FieldSystem *fieldSystem);
void sub_0206D4AC(FieldSystem *fieldSystem, u16 param1);
void sub_0206D504(SaveData *param0, u16 param1, u8 param2);
void sub_0206D578(FieldSystem *fieldSystem, Pokemon *param1);
void sub_0206D60C(FieldSystem *fieldSystem, Pokemon *param1);
void sub_0206D6C8(FieldSystem *fieldSystem, int param1, int param2);
void sub_0206D720(FieldSystem *fieldSystem);
void sub_0206D7C4(FieldSystem *fieldSystem);
void sub_0206D90C(TVBroadcast *param0, Pokemon *param1, u16 param2);
void sub_0206D914(FieldSystem *fieldSystem, u16 param1, u8 param2, u16 param3);
void sub_0206D9B4(TVBroadcast *param0, Pokemon *param1, u8 param2);
void sub_0206DAB8(FieldSystem *fieldSystem, const TrainerInfo *param1);
void sub_0206DAD4(FieldSystem *fieldSystem, const TrainerInfo *param1);
void sub_0206DB20(FieldSystem *fieldSystem);
void sub_0206DB5C(FieldSystem *fieldSystem, u8 param1);
void sub_0206DBB0(SaveData *param0, u32 param1, Pokemon *param2, BOOL param3);
void sub_0206DC6C(FieldSystem *fieldSystem, u32 param1, Pokemon *param2);
void sub_0206DD38(FieldSystem *fieldSystem, u32 param1, u32 param2, u32 param3);
void sub_0206DDB8(SaveData *saveData, Pokemon *mon, u32 monDataParam);
void sub_0206DEEC(FieldSystem *fieldSystem, u16 param1, u16 param2);
void sub_0206DF60(FieldSystem *fieldSystem, u16 param1);
void sub_0206DFE0(SaveData *param0);
void sub_0206E060(SaveData *param0);
void sub_0206E0E0(FieldSystem *fieldSystem, u16 param1);
void sub_0206E174(FieldSystem *fieldSystem, u16 param1);
void sub_0206E264(FieldSystem *fieldSystem, u16 param1);
void sub_0206E2BC(FieldSystem *fieldSystem, u16 param1);
void sub_0206E398(FieldSystem *fieldSystem, u16 param1);
void sub_0206E414(FieldSystem *fieldSystem, u16 param1);
void sub_0206E448(FieldSystem *fieldSystem, u16 param1);
void sub_0206E4DC(FieldSystem *fieldSystem, u16 param1);
void sub_0206E5A0(FieldSystem *fieldSystem, u16 param1);
void sub_0206E668(FieldSystem *fieldSystem, u16 param1);
void sub_0206E6A8(FieldSystem *fieldSystem, u16 param1);
void sub_0206E6E8(FieldSystem *fieldSystem, u16 param1);
void sub_0206E728(FieldSystem *fieldSystem, u16 param1);
void sub_0206E768(FieldSystem *fieldSystem, u16 param1);
void sub_0206F2F0(SaveData *param0);

#endif // POKEPLATINUM_UNK_0206CCB0_H
