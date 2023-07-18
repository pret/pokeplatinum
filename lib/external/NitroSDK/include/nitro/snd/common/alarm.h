#ifndef NITRO_SND_COMMON_ALARM_H_
#define NITRO_SND_COMMON_ALARM_H_

#include <nitro/types.h>
#include <nitro/os.h>

#ifdef __cplusplus
extern "C" {
#endif

#define SND_ALARM_NUM 8
#define SND_ALARM_MIN 0
#define SND_ALARM_MAX (SND_ALARM_NUM - 1)

#define SND_ALARM_PRESCALER 32

typedef void (* SNDAlarmHandler) (void *);

typedef struct SNDAlarm {
    u8 enable;
    u8 id;
    u16 padding;

    struct {
        OSTick tick;
        OSTick period;
    } setting;

    OSAlarm alarm;
} SNDAlarm;

void SND_AlarmInit(void);

#ifdef SDK_ARM7

void SND_SetupAlarm(int alarmNo, OSTick tick, OSTick period, int id);

void SND_StartAlarm(int alarmNo);
void SND_StopAlarm(int alarmNo);

#endif

#ifdef SDK_ARM9

void SNDi_IncAlarmId(int alarmNo);

u8 SNDi_SetAlarmHandler(int alarmNo, SNDAlarmHandler handler, void * arg);

void SNDi_CallAlarmHandler(int alarmNo);

#endif

#ifdef __cplusplus
}
#endif

#endif
