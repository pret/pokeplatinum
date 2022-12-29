#ifndef NITRO_SND_COMMON_MAIN_H_
#define NITRO_SND_COMMON_MAIN_H_

#include <nitro/types.h>
#include <nitro/os.h>

#ifdef __cplusplus
extern "C" {
#endif

#define SND_PROC_INTERVAL 0xAA8

#define SND_MESSAGE_PERIODIC 1
#define SND_MESSAGE_WAKEUP_THREAD 2

#ifdef SDK_ARM9

void SND_Init(void);

#else

void SND_Init(u32 threadPrio);

void SND_CreateThread(u32 threadPrio);
BOOL SND_SetThreadPriority(u32 prio);

void SND_InitIntervalTimer(void);
void SND_StartIntervalTimer(void);
void SND_StopIntervalTimer(void);
OSMessage SND_WaitForIntervalTimer(void);
BOOL SND_SendWakeupMessage(void);

#endif

void SNDi_LockMutex(void);
void SNDi_UnlockMutex(void);

#ifdef __cplusplus
}
#endif

#endif
