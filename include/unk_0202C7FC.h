#ifndef POKEPLATINUM_UNK_0202C7FC_H
#define POKEPLATINUM_UNK_0202C7FC_H

#include "struct_decls/struct_0202C834_decl.h"
#include "struct_decls/struct_0202C844_decl.h"

#include "savedata.h"

int TrainerCard_SaveSize(void);
void TrainerCard_Init(UnkStruct_0202C834 *param0);
UnkStruct_0202C834 *sub_0202C834(SaveData *param0);
u8 *sub_0202C840(UnkStruct_0202C834 *param0);
UnkStruct_0202C844 *sub_0202C844(UnkStruct_0202C834 *param0);
int sub_0202C848(const u8 param0, UnkStruct_0202C844 *param1);
void sub_0202C850(const u8 param0, const int param1, UnkStruct_0202C844 *param2);

#endif // POKEPLATINUM_UNK_0202C7FC_H
