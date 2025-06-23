#ifndef POKEPLATINUM_UNK_0205C980_H
#define POKEPLATINUM_UNK_0205C980_H

#include "string_template.h"

void TrainerInfo_LoadAppearanceVariants(u32 trainerId, int trainerGender, StringTemplate *stringTemplate);
int TrainerInfo_GetAppearanceIndex(u32 trainerId, int trainerGender, u32 variant);
int sub_0205CA0C(int param0, int param1);
int sub_0205CA14(int param0, int param1, int param2);
u16 *sub_0205CA4C(int heapID);

#endif // POKEPLATINUM_UNK_0205C980_H
