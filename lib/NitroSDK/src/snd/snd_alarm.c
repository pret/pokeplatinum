#include <nitro/snd/common/alarm.h>
#include <nitro/pxi.h>
#include <nitro/snd/common/work.h>

#ifdef SDK_ARM9

typedef struct AlarmCallbackInfo {
    void (* func) (void *);
    void * arg;
    u8 id;
    u8 pad;
    u16 pad2;
} AlarmCallbackInfo;

#endif

#ifdef SDK_ARM9
static AlarmCallbackInfo sCallbackTable[SND_ALARM_NUM];
#endif

#ifdef SDK_ARM7
static void AlarmHandler(void * arg);
#endif

#ifdef SDK_ARM9
void SND_AlarmInit (void) {
    int alarmNo;

    for (alarmNo = 0; alarmNo < SND_ALARM_NUM; alarmNo++) {
        AlarmCallbackInfo * info;

        info = &sCallbackTable[alarmNo];

        info->func = NULL;
        info->arg = NULL;
        info->id = 0;
    }
}
#else
void SND_AlarmInit (void) {
    int alarmNo;

    for (alarmNo = 0; alarmNo < SND_ALARM_NUM; alarmNo++) {
        SNDi_Work.alarm[alarmNo].enable = FALSE;
        SNDi_Work.alarm[alarmNo].id = 0;
    }
}

void SND_SetupAlarm (int alarmNo, OSTick tick, OSTick period, int id) {
    SNDAlarm * alarm;

    SDK_MINMAX_ASSERT(alarmNo, SND_ALARM_MIN, SND_ALARM_MAX);
    SDK_MINMAX_ASSERT(id, 0x00, 0xff);

    alarm = &SNDi_Work.alarm[alarmNo];

    if (alarm->enable) {
        OS_CancelAlarm(&alarm->alarm);
        alarm->enable = FALSE;
    }

    alarm->setting.tick = tick;
    alarm->setting.period = period;
    alarm->id = (u8)id;
}

void SND_StartAlarm (int alarmNo) {
    OSTick tick;
    OSTick period;
    SNDAlarm * alarm;
    void * arg;

    SDK_MINMAX_ASSERT(alarmNo, SND_ALARM_MIN, SND_ALARM_MAX);

    alarm = &SNDi_Work.alarm[alarmNo];

    if (alarm->enable) {
        OS_CancelAlarm(&alarm->alarm);
        alarm->enable = FALSE;
    }

    tick = alarm->setting.tick;
    period = alarm->setting.period;
    arg = (void *)((alarm->id << 8) | alarmNo);

    OS_CreateAlarm(&alarm->alarm);

    if (period == 0) {
        OS_SetAlarm(&alarm->alarm, tick, AlarmHandler, arg);
    } else {
        OS_SetPeriodicAlarm(&alarm->alarm, OS_GetTick() + tick, period, AlarmHandler, arg);
    }

    alarm->enable = TRUE;
}

void SND_StopAlarm (int alarmNo) {
    SNDAlarm * alarm;

    SDK_MINMAX_ASSERT(alarmNo, SND_ALARM_MIN, SND_ALARM_MAX);

    alarm = &SNDi_Work.alarm[alarmNo];

    if (!alarm->enable) {
        return;
    }

    OS_CancelAlarm(&alarm->alarm);

    alarm->id++;
    alarm->enable = FALSE;
}
#endif

#ifdef SDK_ARM7
static void AlarmHandler (void * arg) {
    while (PXI_SendWordByFifo(PXI_FIFO_TAG_SOUND, (u32)arg, FALSE) < 0) {
    }
}
#endif

#ifdef SDK_ARM9
void SNDi_IncAlarmId (int alarmNo) {
    AlarmCallbackInfo * info;

    SDK_MINMAX_ASSERT(alarmNo, SND_ALARM_MIN, SND_ALARM_MAX);

    info = &sCallbackTable[alarmNo];

    info->id++;
}

u8 SNDi_SetAlarmHandler (int alarmNo, SNDAlarmHandler handler, void * arg) {
    AlarmCallbackInfo * info;

    SDK_MINMAX_ASSERT(alarmNo, SND_ALARM_MIN, SND_ALARM_MAX);

    info = &sCallbackTable[alarmNo];

    info->func = handler;
    info->arg = arg;
    info->id++;

    return info->id;
}

void SNDi_CallAlarmHandler (int msg) {
    AlarmCallbackInfo * info;
    int alarmNo = msg & 0xff;
    int id = (msg >> 8) & 0xff;

    SDK_MINMAX_ASSERT(alarmNo, SND_ALARM_MIN, SND_ALARM_MAX);

    info = &sCallbackTable[alarmNo];

    if (id == info->id) {
        if (info->func != NULL) {
            info->func(info->arg);
        }
    }
}

#endif
