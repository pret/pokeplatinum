#include "play_time_manager.h"

#include <nitro.h>
#include <string.h>

#include "play_time.h"
#include "timer.h"

static BOOL sStarted = FALSE;
static u64 sDummy = 0;
static u64 sLastTimestamp = 0;
static u64 sCurrentTimestamp = 0;
static PlayTime *sPlayTime = NULL;

void PlayTime_FlagNotStarted()
{
    sStarted = FALSE;
}

void PlayTime_Start(PlayTime *playTime)
{
    sStarted = TRUE;
    sDummy = 0;
    sLastTimestamp = 0;
    sPlayTime = playTime;
    sCurrentTimestamp = Timer_GetCurrentTimestamp();
}

void PlayTime_IncrementTimer(void)
{
    if (sStarted) {
        u64 currentTimestamp = Timer_TicksToSeconds(Timer_GetCurrentTimestamp() - sCurrentTimestamp);

        if (currentTimestamp > sLastTimestamp) {
            PlayTime_Increment(sPlayTime, currentTimestamp - sLastTimestamp);
            sLastTimestamp = currentTimestamp;
        }
    }
}
