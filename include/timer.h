#ifndef POKEPLATINUM_TIMER_H
#define POKEPLATINUM_TIMER_H

void Timer_Start(void);
u64 Timer_GetCurrentTimestamp(void);
u64 Timer_TicksToSeconds(u64 ticks);
u64 Timer_TicksToMilliSeconds(u64 ticks);

#endif // POKEPLATINUM_TIMER_H
