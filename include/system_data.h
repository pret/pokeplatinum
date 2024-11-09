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
    s64 playTimestamp;
    u32 penaltyInMinutes;
} GameTime;

typedef struct SystemData {
    s64 rtcOffset;
    u8 macAddress[6];
    u8 ownerBirthMonth;
    u8 ownerBirthDayOfMonth;
    GameTime gameTime;
    u8 unk_48;
    u8 unk_49;
    s32 unk_4C;
    u32 unk_50[3];
} SystemData;

int SystemData_SaveSize(void);
void SystemData_Clear(SystemData *systemData);
SystemData *SaveData_GetSystemData(SaveData *systemData);
GameTime *SaveData_GetGameTime(SaveData *saveData);
void SystemData_Init(SystemData *systemData);
BOOL SystemData_MatchesCurrentSystem(const SystemData *systemData);
BOOL SystemData_MatchesCurrentRTCOffset(const SystemData *systemData);
u8 SystemData_GetOwnerBirthMonth(const SystemData *systemData);
u8 SystemData_GetOwnerBirthDayOfMonth(const SystemData *systemData);
BOOL sub_02025D64(const SystemData *param0);
void sub_02025D6C(SystemData *param0, BOOL param1);
s32 sub_02025D74(const SystemData *param0);
void sub_02025D78(SystemData *param0, s32 param1);
void GameTime_Clear(GameTime *gameTime);
BOOL GameTime_HasPenalty(const GameTime *gameTime);
void GameTime_DecrementPenalty(GameTime *gameTime, int val);
void GameTime_StartPenalty(GameTime *gameTime);

#endif // POKEPLATINUM_SYSTEM_DATA_H
