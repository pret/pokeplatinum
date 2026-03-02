#ifndef POKEPLATINUM_APPEARENCE_H
#define POKEPLATINUM_APPEARENCE_H

#include "string_template.h"

void Appearance_LoadVariants(u32 trainerId, int trainerGender, StringTemplate *stringTemplate);
int Appearance_CalculateFromTrainerInfo(u32 trainerId, int trainerGender, u32 variant);
int Appearance_GetIndex(int gender, int appearance);
int Appearance_GetTrainerClass(int gender, int appearance, int param2);
u16 *sub_0205CA4C(enum HeapID heapID);

#endif // POKEPLATINUM_APPEARENCE_H
