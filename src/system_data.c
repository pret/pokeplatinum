#include "system_data.h"

#include "constants/savedata/save_table.h"

#include "rtc.h"
#include "savedata.h"

int SystemData_SaveSize()
{
    return sizeof(SystemData);
}

void SystemData_Clear(SystemData *systemData)
{
    MI_CpuClearFast(systemData, sizeof(SystemData));
    GameTime_Clear(&systemData->gameTime);
}

SystemData *SaveData_GetSystemData(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_SYSTEM);
}

GameTime *SaveData_GetGameTime(SaveData *saveData)
{
    return &SaveData_GetSystemData(saveData)->gameTime;
}

void SystemData_Init(SystemData *systemData)
{
    OSOwnerInfo ownerInfo;

    systemData->rtcOffset = OS_GetOwnerRtcOffset();
    OS_GetMacAddress(systemData->macAddress);

    OS_GetOwnerInfo(&ownerInfo);
    systemData->ownerBirthMonth = ownerInfo.birthday.month;
    systemData->ownerBirthDayOfMonth = ownerInfo.birthday.day;
}

BOOL SystemData_MatchesCurrentSystem(const SystemData *systemData)
{
    u8 currMacAddress[6];
    OS_GetMacAddress(currMacAddress);

    for (int i = 0; i < 6; i++) {
        if (systemData->macAddress[i] != currMacAddress[i]) {
            return FALSE;
        }
    }

    return TRUE;
}

BOOL SystemData_MatchesCurrentRTCOffset(const SystemData *systemData)
{
    return OS_GetOwnerRtcOffset() == systemData->rtcOffset;
}

u8 SystemData_GetOwnerBirthMonth(const SystemData *systemData)
{
    return systemData->ownerBirthMonth;
}

u8 SystemData_GetOwnerBirthDayOfMonth(const SystemData *systemData)
{
    return systemData->ownerBirthDayOfMonth;
}

BOOL SystemData_IsMysteryGiftUnlocked(const SystemData *param0)
{
    return param0->isMysteryGiftUnlocked;
}

void SystemData_SetMysteryGiftUnlocked(SystemData *param0, BOOL param1)
{
    param0->isMysteryGiftUnlocked = param1;
}

s32 sub_02025D74(const SystemData *param0)
{
    return param0->unk_4C;
}

void sub_02025D78(SystemData *param0, s32 param1)
{
    if (param0->unk_4C == 0) {
        param0->unk_4C = param1;
    }
}

void GameTime_Clear(GameTime *gameTime)
{
    gameTime->canary = TRUE;
    GetCurrentDateTime(&gameTime->date, &gameTime->time);
    gameTime->day = RTC_ConvertDateToDay(&gameTime->date);
    gameTime->startTimestamp = RTC_ConvertDateTimeToSecond(&gameTime->date, &gameTime->time);
    gameTime->firstCompletionTimestamp = 0;
    gameTime->penaltyInMinutes = 0;
}

BOOL GameTime_HasPenalty(const GameTime *gameTime)
{
    return gameTime->penaltyInMinutes != 0;
}

void GameTime_DecrementPenalty(GameTime *gameTime, int val)
{
    if (gameTime->penaltyInMinutes > 24 * 60) {
        gameTime->penaltyInMinutes = 24 * 60;
    }

    if (gameTime->penaltyInMinutes < val) {
        gameTime->penaltyInMinutes = 0;
    } else {
        gameTime->penaltyInMinutes -= val;
    }
}

void GameTime_StartPenalty(GameTime *gameTime)
{
    gameTime->penaltyInMinutes = 60 * 24;
    GetCurrentDateTime(&gameTime->date, &gameTime->time);
    gameTime->day = RTC_ConvertDateToDay(&gameTime->date);
}
