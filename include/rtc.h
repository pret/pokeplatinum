#ifndef POKEPLATINUM_RTC_H
#define POKEPLATINUM_RTC_H


#include <nitro/rtc.h>

enum TimeOfDay {
    TOD_MORNING = 0,
    TOD_DAY = 1,
    TOD_TWILIGHT = 2,
    TOD_NIGHT = 3,
    TOD_LATE_NIGHT = 4,
};

void InitRTC(void);
void UpdateRTC(void);
void GetCurrentDateTime(RTCDate * date, RTCTime * time);
void GetCurrentTime(RTCTime * time);
void GetCurrentDate(RTCDate * date);
int GetSecondsSinceMidnight(void);
s64 GetTimestamp(void);
int DayNumberForDate(const RTCDate * date);
BOOL IsNight(void);
enum TimeOfDay GetTimeOfDay(void);
enum TimeOfDay TimeOfDayForHour(int hour);
s64 TimeElapsed(s64 since, s64 until);

#endif // POKEPLATINUM_RTC_H
