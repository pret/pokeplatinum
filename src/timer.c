#include "timer.h"

#include <nitro.h>
#include <string.h>

static void UpdateTimer(void);
static u64 CalculateCurrentTimestamp(void);

static vu64 sTimerValue = 0;
static BOOL sShouldResetTimer = FALSE;

void Timer_Start(void)
{
    sTimerValue = 0;
    sShouldResetTimer = FALSE;

    OS_SetTimerControl(OS_TIMER_3, 0);
    OS_SetTimerCount(OS_TIMER_3, 0);
    OS_SetTimerControl(OS_TIMER_3, (u16)((u16)(REG_OS_TM3CNT_H_E_MASK | REG_OS_TM3CNT_H_I_MASK | OS_TIMER_PRESCALER_64)));
    OS_SetIrqFunction(OS_IE_TIMER3, UpdateTimer);
    OS_EnableIrqMask(OS_IE_TIMER3);
}

static void UpdateTimer(void)
{
    sTimerValue++;

    if (sShouldResetTimer) {
        OS_SetTimerControl(OS_TIMER_3, 0);
        OS_SetTimerCount(OS_TIMER_3, 0);
        OS_SetTimerControl(OS_TIMER_3, (u16)((u16)(REG_OS_TM3CNT_H_E_MASK | REG_OS_TM3CNT_H_I_MASK | OS_TIMER_PRESCALER_64)));

        sShouldResetTimer = FALSE;
    }

    OS_SetIrqCheckFlag(OS_IE_TIMER3);
    OS_SetIrqFunction(OS_IE_TIMER3, UpdateTimer);
}

static u64 CalculateCurrentTimestamp(void)
{
    vu16 timerLow;
    vu64 timerHigh;
    OSIntrMode irqState = OS_DisableInterrupts();

    timerLow = *(REGType16 *)((u32)REG_TM0CNT_L_ADDR + (OS_TIMER_3) * 4);
    timerHigh = sTimerValue & 0xffffffffffffULL;

    if (reg_OS_IF & (OS_IE_TIMER3) && !(timerLow & 0x8000)) {
        timerHigh++;
    }

    OS_RestoreInterrupts(irqState);

    return (timerHigh << 16) | timerLow;
}

u64 Timer_GetCurrentTimestamp(void)
{
    return CalculateCurrentTimestamp();
}

u64 Timer_TicksToMilliSeconds(u64 ticks)
{
    return OS_TicksToMilliSeconds(ticks);
}

u64 Timer_TicksToSeconds(u64 ticks)
{
    return OS_TicksToSeconds(ticks);
}
