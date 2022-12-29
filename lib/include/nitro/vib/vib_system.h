#ifndef PULSE_VIB_H
#define PULSE_VIB_H

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

#define VIB_PULSE_NUM_MAX 6

#define VIB_ON_TIME_MAX 15

#define VIB_REST_TIME_MIN 15

typedef struct {
    u32 pulse_num;
    u32 rest_time;
    u32 on_time[VIB_PULSE_NUM_MAX];
    u32 off_time[VIB_PULSE_NUM_MAX];
    u32 repeat_num;
} VIBPulseState;

typedef void (* VIBCartridgePulloutCallback) (void);

extern BOOL VIB_Init(void);

extern void VIB_End(void);

extern void VIB_StartPulse(const VIBPulseState * state);

extern void VIB_StopPulse(void);

extern BOOL VIB_IsExecuting(void);

extern void VIB_SetCartridgePulloutCallback(VIBCartridgePulloutCallback func);

extern BOOL VIB_IsCartridgeEnabled(void);

#ifdef __cplusplus
}
#endif

#endif
