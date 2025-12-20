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
BOOL SealIsOnCapsule(const BallCapsule *ballCapsule, int sealId);
int SealCase_CountSealOccurrenceInUse(const SealCase *sealCase, int sealId);
void SealCase_SetSealQuantity(SealCounts *sealCounts, int sealId, int quantity);
BOOL GiveOrTakeSeal(SealCase *sealCase, int sealId, s16 quantity);
BOOL GiveOrTakeSeal2(SealCase *sealCase, int sealId, s16 quantity);
BOOL SealCase_CheckSealCount(SealCase *sealCase, int sealId, s16 quantity);
int SealCase_CountUniqueSeals(const SealCase *sealCase);
int SealCase_CountSealOccurrenceAnywhere(const SealCase *sealCase, int sealId);

#endif // POKEPLATINUM_UNK_0202C9F4_H
