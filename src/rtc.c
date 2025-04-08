#include "rtc.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "inlines.h"

typedef struct {
    BOOL valid;
    BOOL readInProgress;
    int framesSinceRead;
    RTCResult status;
    RTCDate date;
    RTCTime time;
    RTCDate tempDate;
    RTCTime tempTime;
} RTCState;

static void GetTimeCallback(RTCResult param0, void *param1);
static void StartRTCRead(RTCState *param0);

static RTCState sRTCState;

void InitRTC(void)
{
    RTC_Init();
    memset(&sRTCState, 0, sizeof(sRTCState));
    sRTCState.valid = 0;
    sRTCState.readInProgress = 0;
    sRTCState.framesSinceRead = 0;
    StartRTCRead(&sRTCState);
}

void UpdateRTC(void)
{
    if (sRTCState.readInProgress) {
        return;
    }

    sRTCState.framesSinceRead++;

    if (sRTCState.framesSinceRead > 10) {
        sRTCState.framesSinceRead = 0;
        StartRTCRead(&sRTCState);
    }
}

static void GetTimeCallback(RTCResult result, void *data)
{
    RTCState *state = data;

    state->status = result;

    GF_ASSERT(result == RTC_RESULT_SUCCESS);

    state->valid = 1;
    state->date = state->tempDate;
    state->time = state->tempTime;
    state->readInProgress = 0;
}

static void StartRTCRead(RTCState *param0)
{
    param0->readInProgress = 1;
    param0->status = RTC_GetDateTimeAsync(&param0->tempDate, &param0->tempTime, GetTimeCallback, param0);
    GF_ASSERT(param0->status == RTC_RESULT_SUCCESS);
}

void GetCurrentDateTime(RTCDate *date, RTCTime *time)
{
    GF_ASSERT(sRTCState.valid == 1);

    *date = sRTCState.date;
    *time = sRTCState.time;
}

void GetCurrentTime(RTCTime *time)
{
    GF_ASSERT(sRTCState.valid == 1);
    *time = sRTCState.time;
}

void GetCurrentDate(RTCDate *date)
{
    GF_ASSERT(sRTCState.valid == 1);
    *date = sRTCState.date;
}

int GetSecondsSinceMidnight(void)
{
    RTCTime *time = &sRTCState.time;

    return time->hour * 60 * 60 + time->minute * 60 + time->second;
}

s64 GetTimestamp(void)
{
    return RTC_ConvertDateTimeToSecond(&sRTCState.date, &sRTCState.time);
}

int DayNumberForDate(const RTCDate *date)
{
    int year, days;
    static const u16 monthStart[12] = {
        0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334
    };

    days = date->day;
    days += monthStart[date->month - 1];

    if (date->month >= 3) {
        year = date->year;

        if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {
            days++;
        }
    }

    return days;
}

BOOL IsNight(void)
{
    switch (GetTimeOfDay()) {
    case TIMEOFDAY_LATE_NIGHT:
    case TIMEOFDAY_NIGHT:
        return TRUE;
    }

    return FALSE;
}

enum TimeOfDay GetTimeOfDay(void)
{
    RTCTime time;

    GetCurrentTime(&time);
    return TimeOfDayForHour(time.hour);
}

enum TimeOfDay TimeOfDayForHour(int hour)
{
    static const u8 lookup[24] = {
        TIMEOFDAY_LATE_NIGHT,
        TIMEOFDAY_LATE_NIGHT,
        TIMEOFDAY_LATE_NIGHT,
        TIMEOFDAY_LATE_NIGHT,
        TIMEOFDAY_MORNING,
        TIMEOFDAY_MORNING,
        TIMEOFDAY_MORNING,
        TIMEOFDAY_MORNING,
        TIMEOFDAY_MORNING,
        TIMEOFDAY_MORNING,
        TIMEOFDAY_DAY,
        TIMEOFDAY_DAY,
        TIMEOFDAY_DAY,
        TIMEOFDAY_DAY,
        TIMEOFDAY_DAY,
        TIMEOFDAY_DAY,
        TIMEOFDAY_DAY,
        TIMEOFDAY_TWILIGHT,
        TIMEOFDAY_TWILIGHT,
        TIMEOFDAY_TWILIGHT,
        TIMEOFDAY_NIGHT,
        TIMEOFDAY_NIGHT,
        TIMEOFDAY_NIGHT,
        TIMEOFDAY_NIGHT,
    };

    GF_ASSERT(0 <= hour && hour < 24);
    return lookup[hour];
}

#define MAX_TIMESTAMP 3155759999

s64 TimeElapsed(s64 since, s64 until)
{
    RTCDate maxDate = { 99, 12, 31, 0 };
    RTCTime maxTime = { 23, 59, 59 };
    s64 maxTimestamp = RTC_ConvertDateTimeToSecond(&maxDate, &maxTime);

    GF_ASSERT(maxTimestamp == MAX_TIMESTAMP);

    if (since < until) {
        return until - since;
    } else {
        // BUG: This loses one second when rolling over.
        // e.g. TimeElapsed(MAX_TIMESTAMP, 0) == 0
        return until + (MAX_TIMESTAMP - since);
    }
}
