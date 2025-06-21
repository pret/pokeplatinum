#ifndef POKEPLATINUM_UNK_0202C9F4_H
#define POKEPLATINUM_UNK_0202C9F4_H

#include "struct_defs/seal_case.h"

#include "savedata.h"

int SealCase_SaveSize(void);
void SealCase_Init(SealCase *sealCase);
void BallCapsule_Copy(const BallCapsule *src, BallCapsule *dst);
SealCase *SaveData_GetSealCase(SaveData *saveData);
BallCapsule *SealCase_GetCapsuleById(SealCase *sealCase, int capsuleId);
void SealCase_CopyCapsuleFromId(SealCase *sealCase, BallCapsule *dst, int capsuleId);
BallSeal *BallCapsule_GetBallSeals(BallCapsule *ballCapsule, int sealNum);
u8 BallSeal_GetSealType(const BallSeal *seal);
u8 BallSeal_GetX(const BallSeal *seal);
u8 BallSeal_GetY(const BallSeal *seal);
SealCounts *SealCase_GetSealsObtained(SealCase *sealCase);
u8 SealCase_GetSealCount(const SealCounts *seals, int sealNum);
BOOL sub_0202CA94(const BallCapsule *param0, int param1);
int sub_0202CAB0(const SealCase *param0, int param1);
void sub_0202CADC(SealCounts *param0, int param1, int param2);
BOOL sub_0202CAE0(SealCase *param0, int param1, s16 param2);
BOOL sub_0202CB20(SealCase *param0, int param1, s16 param2);
BOOL sub_0202CB70(SealCase *param0, int param1, s16 param2);
int sub_0202CBA8(const SealCase *param0);
int sub_0202CBC8(const SealCase *param0, int param1);

#endif // POKEPLATINUM_UNK_0202C9F4_H
