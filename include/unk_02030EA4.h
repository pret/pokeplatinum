#ifndef POKEPLATINUM_UNK_02030EA4_H
#define POKEPLATINUM_UNK_02030EA4_H

#include "struct_decls/struct_02030EC4_decl.h"

#include "savedata.h"

int WiFiQuestion_SaveSize(void);
void WiFiQuestion_Init(UnkStruct_02030EC4 *param0);
UnkStruct_02030EC4 *sub_02030EC4(SaveData *param0);
u32 sub_02030ED0(const UnkStruct_02030EC4 *param0);
u32 sub_02030ED4(const UnkStruct_02030EC4 *param0);
void sub_02030ED8(UnkStruct_02030EC4 *param0, u32 param1);
void sub_02030EDC(UnkStruct_02030EC4 *param0, u32 param1);

#endif // POKEPLATINUM_UNK_02030EA4_H
