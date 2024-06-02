#ifndef POKEPLATINUM_UNK_020507CC_H
#define POKEPLATINUM_UNK_020507CC_H

#include "struct_decls/struct_020507E4_decl.h"
#include "savedata.h"

int FieldEvents_SaveSize(void);
void FieldEvents_Init(Events * param0);
Events * SaveData_Events(SaveData * param0);
BOOL sub_020507F0(Events * param0, u16 param1);
void sub_0205081C(Events * param0, u16 param1);
void sub_02050844(Events * param0, u16 param1);
u8 * sub_02050870(Events * param0, u16 param1);
u16 * sub_020508B8(Events * param0, u16 param1);

#endif // POKEPLATINUM_UNK_020507CC_H
