#ifndef POKEPLATINUM_PLAYTIME_H
#define POKEPLATINUM_PLAYTIME_H

typedef struct PlayTime {
    u16 hours;
    u8 minutes;
    u8 seconds;
} PlayTime;

void PlayTime_Init(PlayTime *playtime);
void PlayTime_Increment(PlayTime *playtime, u32 seconds);
u16 PlayTime_GetHours(const PlayTime *playtime);
u8 PlayTime_GetMinutes(const PlayTime *playtime);
u8 PlayTime_GetSeconds(const PlayTime *playtime);

#endif // POKEPLATINUM_PLAYTIME_H
