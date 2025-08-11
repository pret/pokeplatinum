#ifndef POKEPLATINUM_PLAYTIME_H
#define POKEPLATINUM_PLAYTIME_H

#define SECONDS_PER_MINUTE   60
#define MINUTES_PER_HOUR     60
#define PLAYTIME_MAX_HOURS   999
#define PLAYTIME_MAX_MINUTES (MINUTES_PER_HOUR - 1)
#define PLAYTIME_MAX_SECONDS (SECONDS_PER_MINUTE - 1)

typedef struct PlayTime {
    u16 hours;
    u8 minutes;
    u8 seconds;
} PlayTime;

void PlayTime_Init(PlayTime *playTime);
void PlayTime_Increment(PlayTime *playTime, u32 seconds);
u16 PlayTime_GetHours(const PlayTime *playTime);
u8 PlayTime_GetMinutes(const PlayTime *playTime);
u8 PlayTime_GetSeconds(const PlayTime *playTime);

#endif // POKEPLATINUM_PLAYTIME_H
