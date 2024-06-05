#ifndef POKEPLATINUM_UNK_020507CC_H
#define POKEPLATINUM_UNK_020507CC_H

#include "struct_decls/struct_020507E4_decl.h"
#include "savedata.h"

int VarsFlags_Size(void);
void VarsFlags_Init(VarsFlags * param0);
VarsFlags * SaveData_GetVarsFlags(SaveData * param0);
BOOL sub_020507F0(VarsFlags * param0, u16 param1);
void sub_0205081C(VarsFlags * param0, u16 param1);
void sub_02050844(VarsFlags * param0, u16 param1);
u8 * sub_02050870(VarsFlags * param0, u16 param1);
u16 * sub_020508B8(VarsFlags * param0, u16 param1);

#endif // POKEPLATINUM_UNK_020507CC_H
