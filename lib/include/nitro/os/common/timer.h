#ifndef NITRO_OS_TIMER_H_
#define NITRO_OS_TIMER_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/ioreg.h>

typedef enum {
    OS_TIMER_PRESCALER_1 = (0UL << REG_OS_TM0CNT_H_PS_SHIFT),
    OS_TIMER_PRESCALER_64 = (1UL << REG_OS_TM0CNT_H_PS_SHIFT),
    OS_TIMER_PRESCALER_256 = (2UL << REG_OS_TM0CNT_H_PS_SHIFT),
    OS_TIMER_PRESCALER_1024 = (3UL << REG_OS_TM0CNT_H_PS_SHIFT)
} OSTimerPrescaler;

typedef enum {
    OS_TIMER_0 = 0,
    OS_TIMER_1 = 1,
    OS_TIMER_2 = 2,
    OS_TIMER_3 = 3
} OSTimer;

typedef enum {
    OS_TIMER32_01 = 0,
    OS_TIMER32_12 = 1,
    OS_TIMER32_23 = 2
} OSTimer32;

typedef enum {
    OS_TIMER48_012 = 0,
    OS_TIMER48_123 = 1
} OSTimer48;

static inline void OS_SetTimerCount (OSTimer id, u16 count)
{
    SDK_ASSERT(OS_TIMER_0 <= id && id <= OS_TIMER_3);
    *((REGType16 *)((u32)REG_TM0CNT_L_ADDR + id * 4)) = count;
}

static inline void OS_SetTimerControl (OSTimer id, u16 control)
{
    SDK_ASSERT(OS_TIMER_0 <= id && id <= OS_TIMER_3);
    *((REGType16 *)((u32)REG_TM0CNT_H_ADDR + id * 4)) = control;
}

void OS_StartTimer(OSTimer id, u16 count, OSTimerPrescaler preScale);

void OS_StartTimer32(OSTimer32 id, u32 count, OSTimerPrescaler preScale);

void OS_StartTimer48(OSTimer48 id, u64 count, OSTimerPrescaler preScale);

void OS_StartTimer64(u64 count, OSTimerPrescaler preScale);

void OS_StopTimer(OSTimer id);

void OS_StopTimer32(OSTimer32 id);

void OS_StopTimer48(OSTimer48 id);

void OS_StopTimer64(void);

#ifdef __cplusplus
}
#endif

#endif
