#ifndef POKEPLATINUM_TRAINERCARD_SAVEDATA_H
#define POKEPLATINUM_TRAINERCARD_SAVEDATA_H

#include "badges.h"
#include "savedata.h"
#include "trainer_card.h"

typedef struct TrainerCardSaveDataBadge {
    int polish;
} TrainerCardSaveDataBadge;

typedef struct TrainerCardSaveData {
    TrainerCardSaveDataBadge badges[MAX_BADGES];
    u8 signature[SIGNATURE_WIDTH * SIGNATURE_HEIGHT * 8];
} TrainerCardSaveData;

int TrainerCardSaveData_Size(void);
void TrainerCardSaveData_Init(TrainerCardSaveData *tcSaveData);
TrainerCardSaveData *SaveData_GetTrainerCardSaveData(SaveData *saveData);
u8 *TrainerCardSaveData_GetSignature(TrainerCardSaveData *tcSaveData);
TrainerCardSaveDataBadge *TrainerCardSaveData_GetTrainerCardSaveDataBadges(TrainerCardSaveData *tcSaveData);
int TrainerCardSaveDataBadge_GetPolish(u8 badgeID, TrainerCardSaveDataBadge *badges);
void TrainerCardSaveDataBadge_SetPolish(u8 badgeID, int polish, TrainerCardSaveDataBadge *badges);

#endif // POKEPLATINUM_TRAINERCARD_SAVEDATA_H
