#ifndef POKEPLATINUM_UNK_0202C9F4_H
#define POKEPLATINUM_UNK_0202C9F4_H

#include "struct_decls/struct_0202CA1C_decl.h"
#include "struct_decls/struct_0202CA88_decl.h"
#include "struct_defs/struct_0202CA28.h"
#include "struct_defs/struct_0202CA64.h"

#include "savedata.h"

int BallSeal_SaveSize(void);
void BallSeal_Init(BallSeals *param0);
void sub_0202CA10(const UnkStruct_0202CA28 *param0, UnkStruct_0202CA28 *param1);
BallSeals *SaveData_GetBallSeals(SaveData *saveData);
UnkStruct_0202CA28 *sub_0202CA28(BallSeals *param0, int param1);
void sub_0202CA40(BallSeals *param0, UnkStruct_0202CA28 *param1, int param2);
UnkStruct_0202CA64 *sub_0202CA64(UnkStruct_0202CA28 *param0, int param1);
u8 sub_0202CA7C(const UnkStruct_0202CA64 *param0);
u8 sub_0202CA80(const UnkStruct_0202CA64 *param0);
u8 sub_0202CA84(const UnkStruct_0202CA64 *param0);
UnkStruct_0202CA88 *sub_0202CA88(BallSeals *param0);
u8 sub_0202CA90(const UnkStruct_0202CA88 *param0, int param1);
BOOL sub_0202CA94(const UnkStruct_0202CA28 *param0, int param1);
int sub_0202CAB0(const BallSeals *param0, int param1);
void sub_0202CADC(UnkStruct_0202CA88 *param0, int param1, int param2);
BOOL sub_0202CAE0(BallSeals *param0, int param1, s16 param2);
BOOL sub_0202CB20(BallSeals *param0, int param1, s16 param2);
BOOL sub_0202CB70(BallSeals *param0, int param1, s16 param2);
int sub_0202CBA8(const BallSeals *param0);
int sub_0202CBC8(const BallSeals *param0, int param1);

#endif // POKEPLATINUM_UNK_0202C9F4_H
