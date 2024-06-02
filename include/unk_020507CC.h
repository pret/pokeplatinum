#ifndef POKEPLATINUM_UNK_020507CC_H
#define POKEPLATINUM_UNK_020507CC_H

#include "struct_decls/struct_020507E4_decl.h"
#include "savedata.h"

int FieldEvents_SaveSize(void);
void FieldEvents_Init(FieldEvents * param0);
FieldEvents * SaveData_GetFieldEvents(SaveData * param0);
BOOL sub_020507F0(FieldEvents * param0, u16 param1);
void sub_0205081C(FieldEvents * param0, u16 param1);
void sub_02050844(FieldEvents * param0, u16 param1);
u8 * sub_02050870(FieldEvents * param0, u16 param1);
u16 * sub_020508B8(FieldEvents * param0, u16 param1);

#endif // POKEPLATINUM_UNK_020507CC_H
