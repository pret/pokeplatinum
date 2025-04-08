#ifndef POKEPLATINUM_UNK_02097624_H
#define POKEPLATINUM_UNK_02097624_H

#include "struct_decls/struct_02028430_decl.h"
#include "struct_defs/struct_02097728.h"

#include "pokemon.h"
#include "savedata.h"

UnkStruct_02097728 *sub_02097624(SaveData *param0, int param1, u8 param2, u8 param3, int param4);
UnkStruct_02097728 *sub_0209767C(SaveData *param0, int param1, u16 param2, int param3);
UnkStruct_02097728 *sub_020976BC(SaveData *param0, Pokemon *param1, int param2);
UnkStruct_02097728 *sub_020976F4(SaveData *param0, u8 param1, int param2);
BOOL sub_02097728(UnkStruct_02097728 *param0);
int sub_0209772C(UnkStruct_02097728 *param0, int param1, u8 param2);
int sub_02097750(UnkStruct_02097728 *param0, Pokemon *param1);
void sub_02097770(UnkStruct_02097728 *param0);
int sub_02097788(MailBox *param0, Pokemon *param1, int param2);
int sub_020977E4(MailBox *param0, u16 param1, Pokemon *param2, int param3);

#endif // POKEPLATINUM_UNK_02097624_H
