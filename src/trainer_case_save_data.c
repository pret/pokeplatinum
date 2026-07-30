#include "trainer_case_save_data.h"

#include <nitro.h>
#include <string.h>

#include "savedata.h"

int TrainerCaseSaveData_Size(void)
{
    return sizeof(TrainerCaseSaveData);
}

void TrainerCaseSaveData_Init(TrainerCaseSaveData *tcSaveData)
{
    memset(tcSaveData, 0, sizeof(TrainerCaseSaveData));

    int badgeID;
    TrainerCaseSaveDataBadge *badges = TrainerCaseSaveData_GetTrainerCaseSaveDataBadges(tcSaveData);

    for (badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        TrainerCaseSaveDataBadge_SetPolish(badgeID, BADGE_POLISH_THRESHOLD_NORMAL, badges);
    }
}

TrainerCaseSaveData *SaveData_GetTrainerCaseSaveData(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_TRAINER_CASE);
}

u8 *TrainerCaseSaveData_GetSignature(TrainerCaseSaveData *tcSaveData)
{
    return tcSaveData->signature;
}

TrainerCaseSaveDataBadge *TrainerCaseSaveData_GetTrainerCaseSaveDataBadges(TrainerCaseSaveData *tcSaveData)
{
    return tcSaveData->badges;
}

int TrainerCaseSaveDataBadge_GetPolish(u8 badgeID, TrainerCaseSaveDataBadge badges[])
{
    return badges[badgeID].polish;
}

void TrainerCaseSaveDataBadge_SetPolish(u8 badgeID, int polish, TrainerCaseSaveDataBadge badges[])
{
    badges[badgeID].polish = polish;
}
