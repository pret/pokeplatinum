#include "unk_0202C9F4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/seal_case.h"

#include "savedata.h"

int SealCase_SaveSize(void)
{
    return sizeof(SealCase);
}

void SealCase_Init(SealCase *sealCase)
{
    int size = SealCase_SaveSize();
    MI_CpuFill8(sealCase, 0, size);
}

void BallCapsule_Copy(const BallCapsule *src, BallCapsule *dst)
{
    MI_CpuCopy8(src, dst, sizeof(BallCapsule));
}

SealCase *SaveData_GetSealCase(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_SEAL_CASE);
}

BallCapsule *SealCase_GetCapsuleById(SealCase *sealCase, int capsuleId)
{
    GF_ASSERT(capsuleId < TOTAL_CAPSULES);
    return &sealCase->capsules[capsuleId];
}

void SealCase_CopyCapsuleFromId(SealCase *sealCase, BallCapsule *dst, int capsuleId)
{
    GF_ASSERT(capsuleId < TOTAL_CAPSULES);
    BallCapsule_Copy(dst, SealCase_GetCapsuleById(sealCase, capsuleId));
}

BallSeal *BallCapsule_GetBallSeals(BallCapsule *ballCapsule, int sealId)
{
    GF_ASSERT(sealId < SEALS_PER_CAPSULE);
    return &ballCapsule->seals[sealId];
}

u8 BallSeal_GetSealType(const BallSeal *seal)
{
    return seal->type;
}

u8 BallSeal_GetX(const BallSeal *seal)
{
    return seal->x;
}

u8 BallSeal_GetY(const BallSeal *seal)
{
    return seal->y;
}

SealCounts *SealCase_GetSealsObtained(SealCase *sealCase)
{
    return &sealCase->seals;
}

u8 SealCase_GetSealCount(const SealCounts *seals, int sealId)
{
    return seals->count[sealId];
}

BOOL SealIsOnCapsule(const BallCapsule *ballCapsule, int sealId)
{
    int unused, i;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (ballCapsule->seals[i].type == (sealId + 1)) {
            return TRUE;
        }
    }

    return FALSE;
}

int SealCase_CountSealOccurrenceInUse(const SealCase *sealCase, int sealId)
{
    int i, j;
    int count = 0;

    for (i = 0; i < TOTAL_CAPSULES; i++) {
        for (j = 0; j < SEALS_PER_CAPSULE; j++) {
            if (sealCase->capsules[i].seals[j].type == (sealId + 1)) {
                count++;
            }
        }
    }

    return count;
}

void SealCase_SetSealQuantity(SealCounts *seals, int sealId, int quantity)
{
    seals->count[sealId] = quantity;
}

BOOL GiveOrTakeSeal(SealCase *sealCase, int sealId, s16 quantity)
{
    int num;
    int total;

    num = SealCase_CountSealOccurrenceInUse(sealCase, sealId - 1);
    total = num + sealCase->seals.count[sealId - 1];

    if (quantity < 0) {
        if (sealCase->seals.count[sealId - 1] + quantity >= 0) {
            sealCase->seals.count[sealId - 1] += quantity;
        } else {
            return 0;
        }
    } else {
        if (total + quantity <= MAX_SEALS_PER_TYPE) {
            sealCase->seals.count[sealId - 1] += quantity;
        } else {
            return 0;
        }
    }

    return 1;
}

BOOL GiveOrTakeSeal2(SealCase *sealCase, int sealId, s16 quantity)
{
    int num;
    int total;

    num = SealCase_CountSealOccurrenceInUse(sealCase, sealId - 1);
    total = num;

    if (quantity < 0) {
        if (sealCase->seals.count[sealId - 1] + quantity >= 0) {
            sealCase->seals.count[sealId - 1] += quantity;
        } else {
            return 0;
        }
    } else {
        if (total + quantity <= MAX_SEALS_PER_TYPE) {
            sealCase->seals.count[sealId - 1] += quantity;

            if (sealCase->seals.count[sealId - 1] >= MAX_SEALS_PER_TYPE) {
                sealCase->seals.count[sealId - 1] = MAX_SEALS_PER_TYPE;
            }
        } else {
            return 0;
        }
    }

    return 1;
}

BOOL SealCase_CheckSealCount(SealCase *sealCase, int sealId, s16 quantity)
{
    int num = SealCase_CountSealOccurrenceInUse(sealCase, sealId - 1);
    int total = num + sealCase->seals.count[sealId - 1];

    if (quantity < 0) {
        if (sealCase->seals.count[sealId - 1] + quantity >= 0) {
            return TRUE;
        } else {
            return FALSE;
        }
    } else {
        if (total + quantity <= MAX_SEALS_PER_TYPE) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    return TRUE;
}

int SealCase_CountUniqueSeals(const SealCase *sealCase)
{
    int i;
    int totalUnique = 0;

    for (i = 1; i < SEAL_ID_MAX; i++) {
        if (SealCase_CountSealOccurrenceAnywhere(sealCase, i) != 0) {
            totalUnique++;
        }
    }

    return totalUnique;
}

int SealCase_CountSealOccurrenceAnywhere(const SealCase *sealCase, int sealId)
{
    int num;
    int total;

    num = SealCase_CountSealOccurrenceInUse(sealCase, sealId - 1);
    total = num + sealCase->seals.count[sealId - 1];

    return total;
}
