#ifndef POKEPLATINUM_TRAINER_CASE_SAVE_DATA_H
#define POKEPLATINUM_TRAINER_CASE_SAVEDATA_H

#include "constants/graphics.h"

#include "badges.h"
#include "savedata.h"
#include "trainer_case.h"

typedef struct TrainerCaseSaveDataBadge {
    int polish;
} TrainerCaseSaveDataBadge;

typedef struct TrainerCaseSaveData {
    TrainerCaseSaveDataBadge badges[MAX_BADGES];
    u8 signature[SIGNATURE_WIDTH * SIGNATURE_HEIGHT * TILE_SIZE_1BPP];
} TrainerCaseSaveData;

int TrainerCaseSaveData_Size(void);
void TrainerCaseSaveData_Init(TrainerCaseSaveData *tcSaveData);
TrainerCaseSaveData *SaveData_GetTrainerCaseSaveData(SaveData *saveData);
u8 *TrainerCaseSaveData_GetSignature(TrainerCaseSaveData *tcSaveData);
TrainerCaseSaveDataBadge *TrainerCaseSaveData_GetTrainerCaseSaveDataBadges(TrainerCaseSaveData *tcSaveData);
int TrainerCaseSaveDataBadge_GetPolish(u8 badgeID, TrainerCaseSaveDataBadge badges[]);
void TrainerCaseSaveDataBadge_SetPolish(u8 badgeID, int polish, TrainerCaseSaveDataBadge badges[]);

#endif // POKEPLATINUM_TRAINER_CASE_SAVEDATA_H
