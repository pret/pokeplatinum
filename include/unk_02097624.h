#ifndef POKEPLATINUM_UNK_02097624_H
#define POKEPLATINUM_UNK_02097624_H

#include "struct_defs/mail.h"
#include "struct_defs/struct_02097728.h"

#include "pokemon.h"
#include "savedata.h"

UnkStruct_02097728 *sub_02097624(SaveData *saveData, int param1, u8 param2, u8 param3, int heapID);
UnkStruct_02097728 *sub_0209767C(SaveData *saveData, int param1, u16 param2, int heapID);
UnkStruct_02097728 *sub_020976BC(SaveData *saveData, Pokemon *param1, int heapID);
UnkStruct_02097728 *sub_020976F4(SaveData *saveData, u8 param1, int heapID);
BOOL sub_02097728(UnkStruct_02097728 *param0);
int sub_0209772C(UnkStruct_02097728 *param0, int param1, u8 param2);
int sub_02097750(UnkStruct_02097728 *param0, Pokemon *param1);
void sub_02097770(UnkStruct_02097728 *param0);
int sub_02097788(MailBox *mailBox, Pokemon *mon, int heapID);
int sub_020977E4(MailBox *param0, u16 param1, Pokemon *param2, int heapID);

#endif // POKEPLATINUM_UNK_02097624_H
