#ifndef NITRO_OS_VALARM_H_
#define NITRO_OS_VALARM_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

typedef void (* OSVAlarmHandler) (void *);

typedef struct OSiVAlarm OSVAlarm;
struct OSiVAlarm {
    OSVAlarmHandler handler;
    void * arg;

    u32 tag;

    u32 frame;
    s16 fire;

    s16 delay;

    OSVAlarm * prev;
    OSVAlarm * next;

    BOOL period;

    BOOL finish;

    BOOL canceled;
};

void OS_InitVAlarm(void);

void OS_EndVAlarm(void);

BOOL OS_IsVAlarmAvailable(void);

void OS_CreateVAlarm(OSVAlarm * alarm);

#define OS_VALARM_DELAY_MAX HW_LCD_LINES
void OS_SetVAlarm(OSVAlarm * alarm, s16 count, s16 delay, OSVAlarmHandler handler, void * arg);

#define OSi_DELAYMARGIN 10
static inline void OS_SetOneTimeVAlarm (OSVAlarm * alarm, s16 count, OSVAlarmHandler handler,
                                        void * arg)
{
    OS_SetVAlarm(alarm, count, OSi_DELAYMARGIN, handler, arg);
}

void OS_SetPeriodicVAlarm(OSVAlarm * alarm, s16 count, s16 delay, OSVAlarmHandler handler,
                          void * arg);

void OS_SetVAlarmTag(OSVAlarm * alarm, u32 tag);

void OS_CancelVAlarm(OSVAlarm * alarm);

void OS_CancelVAlarms(u32 tag);

void OS_CancelAllVAlarms(void);

#ifdef __cplusplus
}
#endif

#endif
