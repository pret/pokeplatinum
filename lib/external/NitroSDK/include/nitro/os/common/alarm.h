#ifndef NITRO_OS_ALARM_H_
#define NITRO_OS_ALARM_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/os/common/thread.h>

typedef void (* OSAlarmHandler) (void *);

struct OSiAlarm {
    OSAlarmHandler handler;
    void * arg;

    u32 tag;
    OSTick fire;
    OSAlarm * prev;
    OSAlarm * next;

    OSTick period;
    OSTick start;
};

void OS_InitAlarm(void);

void OS_EndAlarm(void);

BOOL OS_IsAlarmAvailable(void);

void OS_CreateAlarm(OSAlarm * alarm);

void OS_SetAlarm(OSAlarm * alarm, OSTick tick, OSAlarmHandler handler, void * arg);

void OS_SetPeriodicAlarm(OSAlarm * alarm, OSTick start, OSTick period, OSAlarmHandler handler,
                         void * arg);

void OS_SetAlarmTag(OSAlarm * alarm, u32 tag);

void OS_CancelAlarm(OSAlarm * alarm);

void OS_CancelAlarms(u32 tag);

void OS_CancelAllAlarms(void);

struct OSiAlarmQueue {
    OSAlarm * head;
    OSAlarm * tail;
};
struct OSiAlarmQueue * OSi_GetAlarmQueue(void);

#ifdef __cplusplus
}
#endif

#endif
