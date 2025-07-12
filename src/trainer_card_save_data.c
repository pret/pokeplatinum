#include "trainer_card_save_data.h"

#include <nitro.h>
#include <string.h>

#include "savedata.h"

int TrainerCardSaveData_Size(void)
{
    return sizeof(TrainerCardSaveData);
}

void TrainerCardSaveData_Init(TrainerCardSaveData *tcSaveData)
{
    memset(tcSaveData, 0, sizeof(TrainerCardSaveData));

    int badgeID;
    TrainerCardBadge *badges;

    badges = TrainerCardSaveData_GetTrainerCardBadges(tcSaveData);

    for (badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        TrainerCardBadge_SetCleanliness(badgeID, 140, badges);
    }
}

TrainerCardSaveData *SaveData_GetTrainerCardSaveData(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_TRAINER_CARD);
}

u8 *TrainerCardSaveData_GetSignature(TrainerCardSaveData *tcSaveData)
{
    return tcSaveData->signature;
}

TrainerCardBadge *TrainerCardSaveData_GetTrainerCardBadges(TrainerCardSaveData *tcSaveData)
{
    return tcSaveData->badges;
}

int TrainerCardBadge_GetCleanliness(const u8 badgeID, TrainerCardBadge *badges)
{
    return badges[badgeID].cleanliness;
}

void TrainerCardBadge_SetCleanliness(const u8 badgeID, const int cleanliness, TrainerCardBadge *badges)
{
    badges[badgeID].cleanliness = cleanliness;
}
