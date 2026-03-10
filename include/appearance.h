#ifndef POKEPLATINUM_APPEARENCE_H
#define POKEPLATINUM_APPEARENCE_H

#include "string_template.h"

enum AppearanceDataParam {
    APPEARANCE_DATA_INDEX = 0,
    APPEARANCE_DATA_TRAINER_CLASS_2,
    APPEARANCE_DATA_TRAINER_CLASS_1,
};

void Appearance_LoadVariants(u32 trainerId, int trainerGender, StringTemplate *stringTemplate);
int Appearance_CalculateFromTrainerInfo(u32 trainerId, int trainerGender, u32 variant);
int Appearance_GetIndex(int gender, int appearance);
int Appearance_GetData(int gender, int appearance, enum AppearanceDataParam param);
u16 *sub_0205CA4C(enum HeapID heapID);

#endif // POKEPLATINUM_APPEARENCE_H
