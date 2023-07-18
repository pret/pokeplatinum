#ifndef NITRO_RTC_ARM9_CONVERT_H_
#define NITRO_RTC_ARM9_CONVERT_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>

s32 RTC_ConvertDateToDay(const RTCDate * date);

s32 RTCi_ConvertTimeToSecond(const RTCTime * time);

s64 RTC_ConvertDateTimeToSecond(const RTCDate * date, const RTCTime * time);

void RTC_ConvertDayToDate(RTCDate * date, s32 day);

void RTCi_ConvertSecondToTime(RTCTime * time, s32 sec);

void RTC_ConvertSecondToDateTime(RTCDate * date, RTCTime * time, s64 sec);

RTCWeek RTC_GetDayOfWeek(RTCDate * date);

#ifdef __cplusplus
}
#endif

#endif
