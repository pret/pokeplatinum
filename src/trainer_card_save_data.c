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
    TrainerCardSaveDataBadge *badges;

    badges = TrainerCardSaveData_GetTrainerCardSaveDataBadges(tcSaveData);

    for (badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        TrainerCardSaveDataBadge_SetPolish(badgeID, BADGE_POLISH_THRESHOLD_NORMAL, badges);
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

TrainerCardSaveDataBadge *TrainerCardSaveData_GetTrainerCardSaveDataBadges(TrainerCardSaveData *tcSaveData)
{
    return tcSaveData->badges;
}

int TrainerCardSaveDataBadge_GetPolish(u8 badgeID, TrainerCardSaveDataBadge *badges)
{
    return badges[badgeID].polish;
}

void TrainerCardSaveDataBadge_SetPolish(u8 badgeID, int polish, TrainerCardSaveDataBadge *badges)
{
    badges[badgeID].polish = polish;
}
