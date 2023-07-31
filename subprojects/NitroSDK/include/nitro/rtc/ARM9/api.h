#ifndef NITRO_RTC_ARM9_API_H_
#define NITRO_RTC_ARM9_API_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/rtc/common/type.h>
#include <nitro/rtc/common/fifo.h>
#include <nitro/pxi.h>

typedef enum RTCWeek {
    RTC_WEEK_SUNDAY = 0,
    RTC_WEEK_MONDAY,
    RTC_WEEK_TUESDAY,
    RTC_WEEK_WEDNESDAY,
    RTC_WEEK_THURSDAY,
    RTC_WEEK_FRIDAY,
    RTC_WEEK_SATURDAY,
    RTC_WEEK_MAX
} RTCWeek;

typedef enum RTCAlarmChan {
    RTC_ALARM_CHAN_1 = 0,
    RTC_ALARM_CHAN_2,
    RTC_ALARM_CHAN_MAX
} RTCAlarmChan;

typedef enum RTCAlarmStatus {
    RTC_ALARM_STATUS_OFF = 0,
    RTC_ALARM_STATUS_ON,
    RTC_ALARM_STATUS_MAX
} RTCAlarmStatus;

#define RTC_ALARM_ENABLE_NONE 0x0000
#define RTC_ALARM_ENABLE_WEEK 0x0001
#define RTC_ALARM_ENABLE_HOUR 0x0002
#define RTC_ALARM_ENABLE_MINUTE 0x0004
#define RTC_ALARM_ENABLE_ALL (RTC_ALARM_ENABLE_WEEK | RTC_ALARM_ENABLE_HOUR | RTC_ALARM_ENABLE_MINUTE)

typedef enum RTCResult {
    RTC_RESULT_SUCCESS = 0,
    RTC_RESULT_BUSY,
    RTC_RESULT_ILLEGAL_PARAMETER,
    RTC_RESULT_SEND_ERROR,
    RTC_RESULT_INVALID_COMMAND,
    RTC_RESULT_ILLEGAL_STATUS,
    RTC_RESULT_FATAL_ERROR,
    RTC_RESULT_MAX
} RTCResult;

typedef void (* RTCCallback) (RTCResult result, void * arg);
typedef void (* RTCInterrupt) (void);

typedef struct RTCDate {
    u32 year;
    u32 month;
    u32 day;
    RTCWeek week;
} RTCDate;

typedef struct RTCTime {
    u32 hour;
    u32 minute;
    u32 second;
} RTCTime;

typedef struct RTCTimeEx {
    s32 hour;
    s32 minute;
    s32 second;
    s32 millisecond;
} RTCTimeEx;

typedef struct RTCAlarmParam {
    RTCWeek week;
    u32 hour;
    u32 minute;
    u32 enable;
} RTCAlarmParam;

void RTC_Init(void);

RTCResult RTC_GetDate(RTCDate * date);

RTCResult RTC_GetTime(RTCTime * time);

RTCResult RTC_GetDateTime(RTCDate * date, RTCTime * time);

RTCResult RTC_GetDateTimeExByTick(RTCDate * date, RTCTimeEx * time);

RTCResult RTC_SetDate(const RTCDate * date);

RTCResult RTC_SetTime(const RTCTime * time);

RTCResult RTC_SetDateTime(const RTCDate * date, const RTCTime * time);

RTCResult RTC_GetAlarmStatus(RTCAlarmChan chan, RTCAlarmStatus * status);

RTCResult RTC_GetAlarmParam(RTCAlarmChan chan, RTCAlarmParam * param);

RTCResult RTC_SetAlarmStatus(RTCAlarmChan chan, const RTCAlarmStatus * status);

RTCResult RTC_SetAlarmParam(RTCAlarmChan chan, const RTCAlarmParam * param);

RTCResult RTC_GetDateAsync(RTCDate * date, RTCCallback callback, void * arg);

RTCResult RTC_GetTimeAsync(RTCTime * time, RTCCallback callback, void * arg);

RTCResult RTC_GetDateTimeAsync(RTCDate * date, RTCTime * time, RTCCallback callback, void * arg);

RTCResult RTC_SetDateAsync(const RTCDate * date, RTCCallback callback, void * arg);

RTCResult RTC_SetTimeAsync(const RTCTime * time, RTCCallback callback, void * arg);

RTCResult RTC_SetDateTimeAsync(const RTCDate * date, const RTCTime * time, RTCCallback callback,
                               void * arg);

RTCResult RTC_GetAlarmStatusAsync(RTCAlarmChan chan, RTCAlarmStatus * status, RTCCallback callback,
                                  void * arg);

RTCResult RTC_GetAlarmParamAsync(RTCAlarmChan chan, RTCAlarmParam * param, RTCCallback callback,
                                 void * arg);

void RTC_SetAlarmInterrupt(RTCInterrupt interrupt);

RTCResult RTC_SetAlarmStatusAsync(RTCAlarmChan chan, const RTCAlarmStatus * status,
                                  RTCCallback callback, void * arg);

RTCResult RTC_SetAlarmParamAsync(RTCAlarmChan chan, const RTCAlarmParam * param,
                                 RTCCallback callback, void * arg);

BOOL RTCi_ResetAsync(void);
BOOL RTCi_SetHourFormatAsync(void);
BOOL RTCi_ReadRawDateTimeAsync(void);
BOOL RTCi_WriteRawDateTimeAsync(void);
BOOL RTCi_ReadRawDateAsync(void);
BOOL RTCi_WriteRawDateAsync(void);
BOOL RTCi_ReadRawTimeAsync(void);
BOOL RTCi_WriteRawTimeAsync(void);
BOOL RTCi_ReadRawPulseAsync(void);
BOOL RTCi_WriteRawPulseAsync(void);
BOOL RTCi_ReadRawAlarm1Async(void);
BOOL RTCi_WriteRawAlarm1Async(void);
BOOL RTCi_ReadRawAlarm2Async(void);
BOOL RTCi_WriteRawAlarm2Async(void);
BOOL RTCi_ReadRawStatus1Async(void);
BOOL RTCi_WriteRawStatus1Async(void);
BOOL RTCi_ReadRawStatus2Async(void);
BOOL RTCi_WriteRawStatus2Async(void);
BOOL RTCi_ReadRawAdjustAsync(void);
BOOL RTCi_WriteRawAdjustAsync(void);
BOOL RTCi_ReadRawFreeAsync(void);
BOOL RTCi_WriteRawFreeAsync(void);
RTCResult RTCi_SetRegStatus2Async(const RTCRawStatus2 * status2, RTCCallback callback, void * arg);
RTCResult RTCi_SetRegAdjustAsync(const RTCRawAdjust * adjust, RTCCallback callback, void * arg);
RTCResult RTCi_SetRegAdjust(const RTCRawAdjust * Adjust);
RTCResult RTCi_SetRegStatus2(const RTCRawStatus2 * status2);

#ifdef __cplusplus
}
#endif

#endif
