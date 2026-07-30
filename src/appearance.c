#include "appearance.h"

#include <nitro.h>
#include <string.h>

#include "generated/trainer_classes.h"

#include "graphics.h"
#include "heap.h"
#include "string_template.h"

#define APPEARANCES_COUNT 8
#define VARIANTS_COUNT    4

typedef struct Appearance {
    int index;
    int class1;
    int class2;
} Appearance;

static const Appearance sTrainerAppearances[APPEARANCES_COUNT * 2] = {
    // male appearances
    [TRAINER_APPEARANCE_SCHOOL_KID_M] = { 3, TRAINER_CLASS_SCHOOL_KID_MALE, TRAINER_CLASS_SCHOOL_KID_MALE },
    [TRAINER_APPEARANCE_BUG_CATCHER] = { 5, TRAINER_CLASS_BUG_CATCHER, TRAINER_CLASS_BUG_CATCHER },
    [TRAINER_APPEARANCE_ACE_TRAINER_M] = { 11, TRAINER_CLASS_ACE_TRAINER_MALE, TRAINER_CLASS_ACE_TRAINER_MALE },
    [TRAINER_APPEARANCE_ROUGHNECK] = { 31, TRAINER_CLASS_ROUGHNECK, TRAINER_CLASS_ROUGHNECK },
    [TRAINER_APPEARANCE_RUIN_MANIAC] = { 50, TRAINER_CLASS_RUIN_MANIAC, TRAINER_CLASS_RUIN_MANIAC },
    [TRAINER_APPEARANCE_BLACK_BELT] = { 51, TRAINER_CLASS_BLACK_BELT, TRAINER_CLASS_BLACK_BELT },
    [TRAINER_APPEARANCE_RICH_BOY] = { 62, TRAINER_CLASS_RICH_BOY, TRAINER_CLASS_RICH_BOY },
    [TRAINER_APPEARANCE_PSYCHIC_M] = { 70, TRAINER_CLASS_PSYCHIC_MALE, TRAINER_CLASS_PSYCHIC_MALE },

    // female appearances
    [TRAINER_APPEARANCE_LASS] = { 6, TRAINER_CLASS_LASS, TRAINER_CLASS_LASS },
    [TRAINER_APPEARANCE_BATTLE_GIRL] = { 7, TRAINER_CLASS_BATTLE_GIRL, TRAINER_CLASS_BATTLE_GIRL },
    [TRAINER_APPEARANCE_BEAUTY] = { 13, TRAINER_CLASS_BEAUTY, TRAINER_CLASS_BEAUTY },
    [TRAINER_APPEARANCE_ACE_TRAINER_F] = { 14, TRAINER_CLASS_ACE_TRAINER_FEMALE, TRAINER_CLASS_ACE_TRAINER_FEMALE },
    [TRAINER_APPEARANCE_IDOL] = { 35, TRAINER_CLASS_IDOL, TRAINER_CLASS_IDOL },
    [TRAINER_APPEARANCE_SOCIALITE] = { 37, TRAINER_CLASS_SOCIALITE, TRAINER_CLASS_SOCIALITE },
    [TRAINER_APPEARANCE_COWGIRL] = { 42, TRAINER_CLASS_COWGIRL, TRAINER_CLASS_COWGIRL },
    [TRAINER_APPEARANCE_LADY] = { 63, TRAINER_CLASS_LADY, TRAINER_CLASS_LADY }
};

static const int sAppearanceShuffleTable[APPEARANCES_COUNT][VARIANTS_COUNT] = {
    { 0, 1, 2, 3 },
    { 1, 6, 7, 0 },
    { 2, 3, 4, 5 },
    { 3, 0, 5, 6 },
    { 4, 1, 2, 7 },
    { 5, 2, 7, 0 },
    { 6, 3, 4, 1 },
    { 7, 4, 5, 6 }
};

void Appearance_LoadVariants(u32 trainerId, int trainerGender, StringTemplate *stringTemplate)
{
    int rnd = trainerId % APPEARANCES_COUNT;
    int variant;

    for (variant = 0; variant < VARIANTS_COUNT; variant++) {
        int appearanceIndex = sAppearanceShuffleTable[rnd][variant] + APPEARANCES_COUNT * trainerGender;
        StringTemplate_SetTrainerClassName(stringTemplate, variant, sTrainerAppearances[appearanceIndex].class1);
    }
}

int Appearance_CalculateFromTrainerInfo(u32 trainerId, int trainerGender, u32 variant)
{
    int rnd = trainerId % APPEARANCES_COUNT;
    int appearanceIndex = sAppearanceShuffleTable[rnd][variant] + APPEARANCES_COUNT * trainerGender;

    return sTrainerAppearances[appearanceIndex].index;
}

static enum TrainerAppearance GetAppearanceIndex(int gender, int appearance)
{
    for (int i = 0; i < APPEARANCES_COUNT; i++) {
        if (sTrainerAppearances[i + gender * APPEARANCES_COUNT].index == appearance) {
            return i + gender * APPEARANCES_COUNT;
        }
    }

    return 0;
}

enum TrainerAppearance Appearance_GetIndex(int gender, int appearance)
{
    return GetAppearanceIndex(gender, appearance);
}

int Appearance_GetData(int gender, int appearance, enum AppearanceDataParam param)
{
    enum TrainerAppearance appearanceIndex = GetAppearanceIndex(gender, appearance);

    switch (param) {
    case APPEARANCE_DATA_INDEX:
        return appearanceIndex;
    case APPEARANCE_DATA_TRAINER_CLASS_1:
        return sTrainerAppearances[appearanceIndex].class1;
    case APPEARANCE_DATA_TRAINER_CLASS_2:
        return sTrainerAppearances[appearanceIndex].class2;
    default:
        GF_ASSERT(FALSE);
        return 0;
    }
}

u16 *sub_0205CA4C(enum HeapID heapID)
{
    u8 *v0, *v1;
    NNSG2dPaletteData *v2, *v3;
    u16 *v4, *v5;
    int v6;

    v0 = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__RECORD, 7, &v2, heapID);
    v4 = Heap_Alloc(heapID, 16 * 18 * 2);
    v5 = (u16 *)v2->pRawData;

    for (v6 = 0; v6 < 16 * 16; v6++) {
        v4[v6] = v5[v6];
    }

    Heap_Free(v0);

    return v4;
}
