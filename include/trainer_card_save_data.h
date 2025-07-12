#ifndef POKEPLATINUM_TRAINERCARD_SAVEDATA_H
#define POKEPLATINUM_TRAINERCARD_SAVEDATA_H

#include "badges.h"
#include "savedata.h"

typedef struct TrainerCardBadge {
    int cleanliness;
} TrainerCardBadge;

typedef struct TrainerCardSaveData {
    TrainerCardBadge badges[MAX_BADGES];
    u8 signature[1536];
} TrainerCardSaveData;

int TrainerCardSaveData_Size(void);
void TrainerCardSaveData_Init(TrainerCardSaveData *tcSaveData);
TrainerCardSaveData *SaveData_GetTrainerCardSaveData(SaveData *saveData);
u8 *TrainerCardSaveData_GetSignature(TrainerCardSaveData *tcSaveData);
TrainerCardBadge *TrainerCardSaveData_GetTrainerCardBadges(TrainerCardSaveData *tcSaveData);
int TrainerCardBadge_GetCleanliness(const u8 badgeID, TrainerCardBadge *badges);
void TrainerCardBadge_SetCleanliness(const u8 badgeID, const int cleanliness, TrainerCardBadge *badges);

#endif // POKEPLATINUM_TRAINERCARD_SAVEDATA_H
