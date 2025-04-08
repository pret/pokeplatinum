#ifndef POKEPLATINUM_UNK_02027F84_H
#define POKEPLATINUM_UNK_02027F84_H

#include "struct_decls/struct_02027F8C_decl.h"

#include "savedata.h"

int PalPad_SaveSize(void);
PalPad *SaveData_PalPad(SaveData *saveData);
void PalPad_Init(PalPad *param0);
const u16 *sub_02027FBC(const PalPad *param0, int param1);
u8 sub_02027FC4(const PalPad *param0, int param1);
BOOL sub_02027FCC(const PalPad *param0, const PalPad *param1);
void sub_02027FEC(PalPad *param0, PalPad *param1, int param2, int heapID);
int sub_020280E0(PalPad *param0, u32 param1);

#endif // POKEPLATINUM_UNK_02027F84_H
