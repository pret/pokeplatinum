#ifndef POKEPLATINUM_UNK_02028124_H
#define POKEPLATINUM_UNK_02028124_H

#include "struct_decls/struct_02028430_decl.h"
#include "struct_defs/mail.h"
#include "struct_defs/sentence.h"

#include "savedata.h"

void sub_02028124(Mail *param0);
BOOL sub_0202817C(Mail *param0);
Mail *sub_0202818C(int heapID);
void sub_020281A0(Mail *param0, Mail *param1);
void sub_020281AC(Mail *param0, u8 param1, u8 param2, SaveData *param3);
u32 sub_02028308(const Mail *param0);
u16 *sub_0202830C(Mail *param0);
u8 sub_02028310(const Mail *param0);
u8 sub_02028314(const Mail *param0);
void sub_02028318(Mail *param0, const u8 param1);
u8 sub_02028320(const Mail *param0);
u8 sub_02028324(const Mail *param0);
u16 sub_02028328(const Mail *param0, u8 param1, u8 param2, u16 param3);
u16 sub_02028408(const Mail *param0);
Sentence *sub_0202840C(Mail *param0, u8 param1);
void sub_0202841C(Mail *param0, Sentence *param1, u8 param2);
UnkStruct_02028430 *sub_02028430(SaveData *param0);
int Mail_SaveSize(void);
void Mail_Init(UnkStruct_02028430 *param0);
int sub_0202845C(UnkStruct_02028430 *param0, int param1);
void sub_02028470(UnkStruct_02028430 *param0, int param1, int param2);
void sub_02028480(UnkStruct_02028430 *param0, int param1, int param2, Mail *param3);
int sub_02028494(UnkStruct_02028430 *param0, int param1);
Mail *sub_020284A8(UnkStruct_02028430 *param0, int param1, int param2, int heapID);
void sub_020284CC(UnkStruct_02028430 *param0, int param1, int param2, Mail *param3);

#endif // POKEPLATINUM_UNK_02028124_H
