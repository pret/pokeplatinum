#include "unk_0205C980.h"

#include <nitro.h>
#include <string.h>

#include "graphics.h"
#include "heap.h"
#include "string_template.h"

static const int TRAINER_APPEARANCES[][3] = {
    // male appearances
    { 0x3, 0x3C, 0x3C }, // school kid
    { 0x5, 0x6, 0x6 }, // bug catcher
    { 0xB, 0x18, 0x18 }, // ace trainer (male)
    { 0x1f, 0x39, 0x39 }, // roughneck
    { 0x32, 0x30, 0x30 }, // ruin maniac
    { 0x33, 0xE, 0xE }, // black belt
    { 0x3E, 0x20, 0x20 }, // rich boy
    { 0x46, 0x31, 0x31 }, // psychic

    // female appearances
    { 0x6, 0x3, 0x3 }, // lass
    { 0x7, 0xA, 0xA }, // battle girl
    { 0xD, 0x24, 0x24 }, // beauty
    { 0xE, 0x19, 0x19 }, // ace trainer (female)
    { 0x23, 0x55, 0x55 }, // idol
    { 0x25, 0x23, 0x23 }, // socialite
    { 0x2A, 0x12, 0x12 }, // cowgirl
    { 0x3f, 0x21, 0x21 } // lady
};

static const int APPEARANCE_SHUFFLE_TABLE[][4] = {
    { 0x0, 0x1, 0x2, 0x3 },
    { 0x1, 0x6, 0x7, 0x0 },
    { 0x2, 0x3, 0x4, 0x5 },
    { 0x3, 0x0, 0x5, 0x6 },
    { 0x4, 0x1, 0x2, 0x7 },
    { 0x5, 0x2, 0x7, 0x0 },
    { 0x6, 0x3, 0x4, 0x1 },
    { 0x7, 0x4, 0x5, 0x6 }
};

void TrainerInfo_LoadAppearanceVariants(u32 trainerId, int trainerGender, StringTemplate *stringTemplate)
{
    int v0 = trainerId % 8;
    int variant;

    for (variant = 0; variant < 4; variant++) {
        int appearanceIndex = APPEARANCE_SHUFFLE_TABLE[v0][variant] + 8 * trainerGender;
        StringTemplate_SetTrainerClassName(stringTemplate, variant, TRAINER_APPEARANCES[appearanceIndex][1]);
    }
}

int TrainerInfo_GetAppearanceIndex(u32 trainerId, int trainerGender, u32 variant)
{
    int v0 = trainerId % 8;
    int v1 = APPEARANCE_SHUFFLE_TABLE[v0][variant] + 8 * trainerGender;

    return TRAINER_APPEARANCES[v1][0];
}

static int sub_0205C9E0(int param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 16 / 2; v0++) {
        if (TRAINER_APPEARANCES[v0 + (param0 * (16 / 2))][0] == param1) {
            return v0 + (param0 * (16 / 2));
        }
    }

    return 0;
}

int sub_0205CA0C(int param0, int param1)
{
    return sub_0205C9E0(param0, param1);
}

int sub_0205CA14(int param0, int param1, int param2)
{
    int v0 = sub_0205C9E0(param0, param1);

    switch (param2) {
    case 0:
        return v0;
        break;
    case 2:
        return TRAINER_APPEARANCES[v0][1];
        break;
    case 1:
        return TRAINER_APPEARANCES[v0][2];
        break;
    default:
        GF_ASSERT(0);
    }

    return 0;
}

u16 *sub_0205CA4C(int heapID)
{
    u8 *v0, *v1;
    NNSG2dPaletteData *v2, *v3;
    u16 *v4, *v5;
    int v6;

    v0 = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__RECORD, 7, &v2, heapID);
    v4 = Heap_AllocFromHeap(heapID, 16 * 18 * 2);
    v5 = (u16 *)v2->pRawData;

    for (v6 = 0; v6 < 16 * 16; v6++) {
        v4[v6] = v5[v6];
    }

    Heap_Free(v0);

    return v4;
}
