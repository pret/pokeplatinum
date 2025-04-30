#ifndef POKEPLATINUM_UNK_02030EA4_H
#define POKEPLATINUM_UNK_02030EA4_H

#include "struct_decls/struct_02030EC4_decl.h"

#include "savedata.h"

int WiFiQuestion_SaveSize(void);
void WiFiQuestion_Init(WiFiQuestions *param0);
WiFiQuestions *SaveData_GetWiFiQuestions(SaveData *saveData);
u32 sub_02030ED0(const WiFiQuestions *param0);
u32 sub_02030ED4(const WiFiQuestions *param0);
void sub_02030ED8(WiFiQuestions *param0, u32 param1);
void sub_02030EDC(WiFiQuestions *param0, u32 param1);

#endif // POKEPLATINUM_UNK_02030EA4_H
