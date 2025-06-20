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

BallSealCoords *BallCapsule_GetBallSealCoords(BallCapsule *ballCapsule, int sealNum)
{
    GF_ASSERT(sealNum < SEALS_PER_CAPSULE);
    return &ballCapsule->seals[sealNum];
}

u8 sub_0202CA7C(const BallSealCoords *coords)
{
    return coords->unk_00;
}

u8 sub_0202CA80(const BallSealCoords *coords)
{
    return coords->unk_01;
}

u8 sub_0202CA84(const BallSealCoords *coords)
{
    return coords->unk_02;
}

SealsObtained *SealCase_GetSealsObtained(SealCase *sealCase)
{
    return &sealCase->seals;
}

u8 SealCase_GetSealsObtainedCount(const SealsObtained *seals, int param1)
{
    return seals->count[param1];
}

BOOL sub_0202CA94(const BallCapsule *ballCapsule, int param1)
{
    int v0, i;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (ballCapsule->seals[i].unk_00 == (param1 + 1)) {
            return TRUE;
        }
    }

    return FALSE;
}

int sub_0202CAB0(const SealCase *sealCase, int param1)
{
    int i, j;
    int v2 = 0;

    for (i = 0; i < TOTAL_CAPSULES; i++) {
        for (j = 0; j < SEALS_PER_CAPSULE; j++) {
            if (sealCase->capsules[i].seals[j].unk_00 == (param1 + 1)) {
                v2++;
            }
        }
    }

    return v2;
}

void sub_0202CADC(SealsObtained *seals, int param1, int param2)
{
    seals->count[param1] = param2;
}

BOOL sub_0202CAE0(SealCase *param0, int param1, s16 param2)
{
    int v0;
    int v1;

    v0 = sub_0202CAB0(param0, param1 - 1);
    v1 = v0 + param0->seals.count[param1 - 1];

    if (param2 < 0) {
        if (param0->seals.count[param1 - 1] + param2 >= 0) {
            param0->seals.count[param1 - 1] += param2;
        } else {
            return 0;
        }
    } else {
        if (v1 + param2 <= MAX_SEALS_PER_TYPE) {
            param0->seals.count[param1 - 1] += param2;
        } else {
            return 0;
        }
    }

    return 1;
}

BOOL sub_0202CB20(SealCase *sealCase, int param1, s16 param2)
{
    int v0;
    int v1;

    v0 = sub_0202CAB0(sealCase, param1 - 1);
    v1 = v0;

    if (param2 < 0) {
        if (sealCase->seals.count[param1 - 1] + param2 >= 0) {
            sealCase->seals.count[param1 - 1] += param2;
        } else {
            return 0;
        }
    } else {
        if (v1 + param2 <= MAX_SEALS_PER_TYPE) {
            sealCase->seals.count[param1 - 1] += param2;

            if (sealCase->seals.count[param1 - 1] >= MAX_SEALS_PER_TYPE) {
                sealCase->seals.count[param1 - 1] = MAX_SEALS_PER_TYPE;
            }
        } else {
            return 0;
        }
    }

    return 1;
}

BOOL sub_0202CB70(SealCase *sealCase, int param1, s16 param2)
{
    int v0 = sub_0202CAB0(sealCase, param1 - 1);
    int v1 = v0 + sealCase->seals.count[param1 - 1];

    if (param2 < 0) {
        if (sealCase->seals.count[param1 - 1] + param2 >= 0) {
            return TRUE;
        } else {
            return FALSE;
        }
    } else {
        if (v1 + param2 <= MAX_SEALS_PER_TYPE) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    return TRUE;
}

int sub_0202CBA8(const SealCase *sealCase)
{
    int i;
    int v1 = 0;

    for (i = 1; i < (80 + 1); i++) {
        if (sub_0202CBC8(sealCase, i) != 0) {
            v1++;
        }
    }

    return v1;
}

int sub_0202CBC8(const SealCase *sealCase, int param1)
{
    int v0;
    int v1;

    v0 = sub_0202CAB0(sealCase, param1 - 1);
    v1 = v0 + sealCase->seals.count[param1 - 1];

    return v1;
}
