#include <nitro/os.h>

#define REG_OS_TMCNT_H_E_MASK      REG_OS_TM0CNT_H_E_MASK
#define REG_OS_TMCNT_H_I_MASK      REG_OS_TM0CNT_H_I_MASK
#define REG_OS_TMCNT_H_CH_MASK     REG_OS_TM1CNT_H_CH_MASK

static u16 OSi_TimerReserved = 0;

#define OSi_TIMER_RESERVED_0   1
#define OSi_TIMER_RESERVED_1   2
#define OSi_TIMER_RESERVED_2   4
#define OSi_TIMER_RESERVED_3   8

u16 OSi_IsTimerReserved(int timerNum);
void OSi_SetTimerReserved(int timerNum);
void OSi_UnsetTimerReserved(int timerNum);

u16 OSi_IsTimerReserved (int timerNum)
{
	return (u16)(OSi_TimerReserved & (1 << timerNum));
}

void OSi_SetTimerReserved (int timerNum)
{
	OSi_TimerReserved |= (1 << timerNum);
}

void OSi_UnsetTimerReserved (int timerNum)
{
	OSi_TimerReserved &= ~(1 << timerNum);
}

void OS_StartTimer (OSTimer id, u16 count, OSTimerPrescaler preScale)
{
	SDK_ASSERT(OS_TIMER_0 <= id && id <= OS_TIMER_3);
	SDK_ASSERT(OS_TIMER_PRESCALER_1 <= preScale && preScale <= OS_TIMER_PRESCALER_1024);

	SDK_ASSERT(!OSi_IsTimerReserved(id));

	OS_SetTimerCount(id, (u16) ~count);
	OS_SetTimerControl(id, (u16)(REG_OS_TMCNT_H_E_MASK | REG_OS_TMCNT_H_I_MASK | preScale));
}

void OS_StartTimer32 (OSTimer32 id, u32 count, OSTimerPrescaler preScale)
{
	SDK_ASSERT(OS_TIMER32_01 <= id && id <= OS_TIMER32_23);
	SDK_ASSERT(OS_TIMER_PRESCALER_1 <= preScale && preScale <= OS_TIMER_PRESCALER_1024);

	SDK_ASSERT(!OSi_IsTimerReserved(id));
	SDK_ASSERT(!OSi_IsTimerReserved(id + 1));

	OS_SetTimerCount((OSTimer)((int)id + 1), (u16)((~count >> 16) & 0xffff));
	OS_SetTimerCount((OSTimer)id, (u16)(~count & 0xffff));

	OS_SetTimerControl((OSTimer)((int)id + 1),
	                   REG_OS_TMCNT_H_E_MASK | REG_OS_TMCNT_H_I_MASK | REG_OS_TMCNT_H_CH_MASK);
	OS_SetTimerControl((OSTimer)id, (u16)(REG_OS_TMCNT_H_E_MASK | preScale));
}

void OS_StartTimer48 (OSTimer48 id, u64 count, OSTimerPrescaler preScale)
{
	SDK_ASSERT(OS_TIMER48_012 <= id && id <= OS_TIMER48_123);
	SDK_ASSERT(OS_TIMER_PRESCALER_1 <= preScale && preScale <= OS_TIMER_PRESCALER_1024);

	SDK_ASSERT(!OSi_IsTimerReserved(id));
	SDK_ASSERT(!OSi_IsTimerReserved(id + 1));
	SDK_ASSERT(!OSi_IsTimerReserved(id + 2));

	OS_SetTimerCount((OSTimer)((int)id + 2), (u16)((~count >> 32) & 0xffff));
	OS_SetTimerCount((OSTimer)((int)id + 1), (u16)((~count >> 16) & 0xffff));
	OS_SetTimerCount((OSTimer)id, (u16)(~count & 0xffff));

	OS_SetTimerControl((OSTimer)((int)id + 2),
	                   REG_OS_TMCNT_H_E_MASK | REG_OS_TMCNT_H_I_MASK | REG_OS_TMCNT_H_CH_MASK);
	OS_SetTimerControl((OSTimer)((int)id + 1), REG_OS_TMCNT_H_E_MASK | REG_OS_TMCNT_H_CH_MASK);
	OS_SetTimerControl((OSTimer)id, (u16)(REG_OS_TMCNT_H_E_MASK | preScale));
}

void OS_StartTimer64 (u64 count, OSTimerPrescaler preScale)
{
	SDK_ASSERT(OS_TIMER_PRESCALER_1 <= preScale && preScale <= OS_TIMER_PRESCALER_1024);

	SDK_ASSERT(!OSi_IsTimerReserved(OS_TIMER_0));
	SDK_ASSERT(!OSi_IsTimerReserved(OS_TIMER_1));
	SDK_ASSERT(!OSi_IsTimerReserved(OS_TIMER_2));
	SDK_ASSERT(!OSi_IsTimerReserved(OS_TIMER_3));

	OS_SetTimerCount(OS_TIMER_3, (u16)((~count >> 48) & 0xffff));
	OS_SetTimerCount(OS_TIMER_2, (u16)((~count >> 32) & 0xffff));
	OS_SetTimerCount(OS_TIMER_1, (u16)((~count >> 16) & 0xffff));
	OS_SetTimerCount(OS_TIMER_0, (u16)(~count & 0xffff));

	OS_SetTimerControl(OS_TIMER_3,
	                   REG_OS_TMCNT_H_E_MASK | REG_OS_TMCNT_H_I_MASK | REG_OS_TMCNT_H_CH_MASK);
	OS_SetTimerControl(OS_TIMER_2, REG_OS_TMCNT_H_E_MASK | REG_OS_TMCNT_H_CH_MASK);
	OS_SetTimerControl(OS_TIMER_1, REG_OS_TMCNT_H_E_MASK | REG_OS_TMCNT_H_CH_MASK);
	OS_SetTimerControl(OS_TIMER_0, (u16)(REG_OS_TMCNT_H_E_MASK | preScale));
}

void OS_StopTimer (OSTimer id)
{
	SDK_ASSERT(OS_TIMER_0 <= id && id <= OS_TIMER_3);
	SDK_ASSERT(!OSi_IsTimerReserved(id));

	OS_SetTimerControl(id, 0);
}

void OS_StopTimer32 (OSTimer32 id)
{
	SDK_ASSERT(OS_TIMER32_01 <= id && id <= OS_TIMER32_23);

	SDK_ASSERT(!OSi_IsTimerReserved(id));
	SDK_ASSERT(!OSi_IsTimerReserved(id + 1));

	OS_StopTimer((OSTimer)((int)id + 1));
	OS_StopTimer((OSTimer)id);
}

void OS_StopTimer48 (OSTimer48 id)
{
	SDK_ASSERT(OS_TIMER48_012 <= id && id <= OS_TIMER48_123);

	SDK_ASSERT(!OSi_IsTimerReserved(id));
	SDK_ASSERT(!OSi_IsTimerReserved(id + 1));
	SDK_ASSERT(!OSi_IsTimerReserved(id + 2));

	OS_StopTimer((OSTimer)((int)id + 2));
	OS_StopTimer((OSTimer)((int)id + 1));
	OS_StopTimer((OSTimer)id);
}

void OS_StopTimer64 (void)
{
	SDK_ASSERT(!OSi_IsTimerReserved(OS_TIMER_0));
	SDK_ASSERT(!OSi_IsTimerReserved(OS_TIMER_1));
	SDK_ASSERT(!OSi_IsTimerReserved(OS_TIMER_2));
	SDK_ASSERT(!OSi_IsTimerReserved(OS_TIMER_3));

	OS_StopTimer(OS_TIMER_3);
	OS_StopTimer(OS_TIMER_2);
	OS_StopTimer(OS_TIMER_1);
	OS_StopTimer(OS_TIMER_0);
}