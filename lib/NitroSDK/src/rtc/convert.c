
#include <nitro/types.h>
#include <nitro/rtc.h>

static s32 sDayOfYear[12] = {0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334};

static inline BOOL RTCi_IsLeapYear (u32 year) {
    return !((year & 0x03));
}

s32 RTC_ConvertDateToDay (const RTCDate * date) {
    s32 dayNum;

    if (date->year >= 100
        || (date->month < 1) || (date->month > 12)
        || (date->day < 1) || (date->day > 31)
        || (date->week >= RTC_WEEK_MAX) || (date->month < 1) || (date->month > 12)) {
        return -1;
    }

    dayNum = (s32)(date->day - 1);
    dayNum += sDayOfYear[date->month - 1];
    if ((date->month >= 3) && RTCi_IsLeapYear(date->year)) {
        dayNum++;
    }

    dayNum += date->year * 365;

    dayNum += (date->year + 3) / 4;

    return dayNum;
}

s32 RTCi_ConvertTimeToSecond (const RTCTime * time) {
    return (s32)((time->hour * 60 + time->minute) * 60 + time->second);
}

s64 RTC_ConvertDateTimeToSecond (const RTCDate * date, const RTCTime * time) {
    s32 day, sec;
    day = RTC_ConvertDateToDay(date);
    if (day == -1) {
        return -1;
    }
    sec = RTCi_ConvertTimeToSecond(time);
    if (sec == -1) {
        return -1;
    }
    return ((s64)day) * (60 * 60 * 24) + sec;
}

void RTC_ConvertDayToDate (RTCDate * date, s32 day) {
    u32 year;
    s32 month;

    if (day < 0) {
        day = 0;
    }
    if (day > 36524) {
        day = 36524;
    }

    date->week = (RTCWeek)((day + 6) % 7);

    for (year = 0; year < 99; year++) {
        s32 prev = day;
        day -= (RTCi_IsLeapYear(year)) ? 366 : 365;
        if (day < 0) {
            day = prev;
            break;
        }
    }
    if (day > 365) {
        day = 365;
    }

    date->year = year;

    if (RTCi_IsLeapYear(year)) {
        if (day < 31 + 29) {
            if (day < 31) {
                month = 1;
            } else {
                month = 2;
                day -= 31;
            }
            date->month = (u32)month;
            date->day = (u32)(day + 1);
            return;
        } else {
            day--;
        }
    }

    for (month = 11; month >= 0; month--) {
        if (day >= sDayOfYear[month]) {
            date->month = (u32)(month + 1);
            date->day = (u32)(day - sDayOfYear[month] + 1);
            return;
        }
    }

    SDK_ASSERT("Internal Error.");
}

void RTCi_ConvertSecondToTime (RTCTime * time, s32 sec) {
    if (sec < 0) {
        sec = 0;
    }
    if (sec > 86399) {
        sec = 86399;
    }

    time->second = (u32)(sec % 60);
    sec /= 60;
    time->minute = (u32)(sec % 60);
    sec /= 60;
    time->hour = (u32)sec;
}

void RTC_ConvertSecondToDateTime (RTCDate * date, RTCTime * time, s64 sec) {
    if (sec < 0) {
        sec = 0;
    } else if (sec > 3155759999) {
        sec = 3155759999;
    }
    RTCi_ConvertSecondToTime(time, (s32)(sec % 86400));
    RTC_ConvertDayToDate(date, (s32)(sec / 86400));
}

RTCWeek RTC_GetDayOfWeek (RTCDate * date) {
    int cent;
    int year = (int)(2000 + date->year);
    int month = (int)date->month;
    int day = (int)date->day;

    month -= 2;
    if (month < 1) {
        month += 12;
        --year;
    }

    cent = year / 100;
    year %= 100;
    return (RTCWeek)(((26 * month - 2) / 10 + day + year + year / 4 + cent / 4 + 5 * cent) % 7);
}
