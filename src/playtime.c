#include <nitro.h>

#include "struct_defs/playtime.h"

#include "playtime.h"

#define PLAYTIME_MAX_HOURS 999
#define PLAYTIME_MAX_MINUTES 59
#define PLAYTIME_MAX_SECONDS 59

void Playtime_Initialize(Playtime *param0)
{
    param0->hours = 0;
    param0->minutes = 0;
    param0->seconds = 0;
}

void Playtime_Increase(Playtime *playtime, u32 seconds)
{
    // u32 hours, minutes, newSeconds;

    if (playtime->hours == PLAYTIME_MAX_HOURS 
        && playtime->minutes == PLAYTIME_MAX_MINUTES 
        && playtime->seconds == PLAYTIME_MAX_SECONDS) {
        return;
    }

    u32 hours = playtime->hours;
    u32 minutes = playtime->minutes;
    u32 newSeconds = playtime->seconds + seconds;

    if (newSeconds > PLAYTIME_MAX_SECONDS) {
        minutes = playtime->minutes + newSeconds / (PLAYTIME_MAX_SECONDS + 1);
        newSeconds %= PLAYTIME_MAX_SECONDS + 1;

        if (minutes > PLAYTIME_MAX_MINUTES) {
            hours = playtime->hours + minutes / (PLAYTIME_MAX_MINUTES + 1);
            minutes %= PLAYTIME_MAX_MINUTES + 1;

            if (hours >= PLAYTIME_MAX_HOURS) {
                hours = PLAYTIME_MAX_HOURS;
                minutes = PLAYTIME_MAX_MINUTES;
                newSeconds = PLAYTIME_MAX_SECONDS;
            }
        }
    }

    playtime->hours = hours;
    playtime->minutes = minutes;
    playtime->seconds = newSeconds;
}

u16 Playtime_GetHours(const Playtime *playtime)
{
    return playtime->hours;
}

u8 Playtime_GetMinutes(const Playtime *playtime)
{
    return playtime->minutes;
}

u8 Playtime_GetSeconds(const Playtime *playtime)
{
    return playtime->seconds;
}
