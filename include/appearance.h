#ifndef POKEPLATINUM_APPEARENCE_H
#define POKEPLATINUM_APPEARENCE_H

#include "string_template.h"

enum AppearanceDataParam {
    APPEARANCE_DATA_INDEX = 0,
    APPEARANCE_DATA_TRAINER_CLASS_2,
    APPEARANCE_DATA_TRAINER_CLASS_1,
};

// these should be in the same order as trainer_appearance_pngs in res/graphics/trainer_case/meson.build
// limit of 16 here because each needs its own row in a 8bpp palette
enum TrainerAppearance {
    TRAINER_APPEARANCE_SCHOOL_KID_M = 0,
    TRAINER_APPEARANCE_BUG_CATCHER,
    TRAINER_APPEARANCE_ACE_TRAINER_M,
    TRAINER_APPEARANCE_ROUGHNECK,
    TRAINER_APPEARANCE_RUIN_MANIAC,
    TRAINER_APPEARANCE_BLACK_BELT,
    TRAINER_APPEARANCE_RICH_BOY,
    TRAINER_APPEARANCE_PSYCHIC_M,
    TRAINER_APPEARANCE_LASS,
    TRAINER_APPEARANCE_BATTLE_GIRL,
    TRAINER_APPEARANCE_BEAUTY,
    TRAINER_APPEARANCE_ACE_TRAINER_F,
    TRAINER_APPEARANCE_IDOL,
    TRAINER_APPEARANCE_SOCIALITE,
    TRAINER_APPEARANCE_COWGIRL,
    TRAINER_APPEARANCE_LADY,
};

#define TRAINER_APPEARANCE_DEFAULT -1

void Appearance_LoadVariants(u32 trainerId, int trainerGender, StringTemplate *stringTemplate);
int Appearance_CalculateFromTrainerInfo(u32 trainerId, int trainerGender, u32 variant);
enum TrainerAppearance Appearance_GetIndex(int gender, int appearance);
int Appearance_GetData(int gender, int appearance, enum AppearanceDataParam param);
u16 *sub_0205CA4C(enum HeapID heapID);

#endif // POKEPLATINUM_APPEARENCE_H
