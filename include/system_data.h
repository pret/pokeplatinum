#ifndef POKEPLATINUM_SYSTEM_DATA_H
#define POKEPLATINUM_SYSTEM_DATA_H

#include <nitro/rtc.h>

#include "savedata.h"

typedef struct GameTime {
    BOOL canary;
    RTCDate date;
    RTCTime time;
    u32 day;
    s64 startTimestamp;
    s64 firstCompletionTimestamp; // the first time the hall of fame was entered
    u32 penaltyInMinutes;
} GameTime;

typedef struct SystemData {
    s64 rtcOffset;
    u8 macAddress[6];
    u8 ownerBirthMonth;
    u8 ownerBirthDayOfMonth;
    GameTime gameTime;
    u8 isMysteryGiftUnlocked;
    u8 unused_49;
    s32 dwcProfileId;
    u32 unused_4E[3];
} SystemData;

int SystemData_SaveSize(void);
void SystemData_Clear(SystemData *systemData);
SystemData *SaveData_GetSystemData(SaveData *saveData);
GameTime *SaveData_GetGameTime(SaveData *saveData);
void SystemData_Init(SystemData *systemData);
BOOL SystemData_MatchesCurrentSystem(const SystemData *systemData);
BOOL SystemData_MatchesCurrentRTCOffset(const SystemData *systemData);
u8 SystemData_GetOwnerBirthMonth(const SystemData *systemData);
u8 SystemData_GetOwnerBirthDayOfMonth(const SystemData *systemData);
BOOL SystemData_IsMysteryGiftUnlocked(const SystemData *systemData);
void SystemData_SetMysteryGiftUnlocked(SystemData *systemData, BOOL isUnlocked);
s32 SystemData_GetDWCProfileId(const SystemData *systemData);
void SystemData_SetDWCProfileId(SystemData *systemData, s32 profileId);
void GameTime_Clear(GameTime *gameTime);
BOOL GameTime_HasPenalty(const GameTime *gameTime);
void GameTime_DecrementPenalty(GameTime *gameTime, int val);
void GameTime_StartPenalty(GameTime *gameTime);

#endif // POKEPLATINUM_SYSTEM_DATA_H
