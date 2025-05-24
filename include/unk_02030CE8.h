#ifndef POKEPLATINUM_UNK_02030CE8_H
#define POKEPLATINUM_UNK_02030CE8_H

#include "struct_defs/struct_02030CEC.h"

#include "overlay096/struct_ov96_0223B574.h"

#include "savedata.h"

int Email_SaveSize(void);
void Email_Init(UnkStruct_02030CEC *param0);
void sub_02030D10(SaveData *saveData);
BOOL sub_02030D20(SaveData *saveData);
void sub_02030D38(SaveData *saveData, const char *param1);
char *sub_02030D50(SaveData *saveData);
void sub_02030D5C(SaveData *saveData, int param1, u32 param2);
u32 sub_02030D98(SaveData *saveData, int param1);
u32 sub_02030E48(SaveData *saveData, UnkStruct_ov96_0223B574 *param1);
void sub_02030E78(SaveData *saveData, UnkStruct_ov96_0223B574 *param1);

#endif // POKEPLATINUM_UNK_02030CE8_H
