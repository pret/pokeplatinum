#include "unk_02017428.h"

#include <nitro.h>
#include <string.h>

#include "play_time.h"
#include "unk_02022844.h"

static BOOL sStarted = FALSE;
static u64 Unk_021BF668 = 0;
static u64 Unk_021BF660 = 0;
static u64 Unk_021BF670 = 0;
static PlayTime *sPlayTime = NULL;

void PlayTime_FlagNotStarted()
{
    sStarted = FALSE;
}

void PlayTime_Start(PlayTime *playTime)
{
    sStarted = TRUE;
    Unk_021BF668 = 0;
    Unk_021BF660 = 0;
    sPlayTime = playTime;
    Unk_021BF670 = sub_0202293C();
}

void sub_02017458(void)
{
    if (sStarted) {
        u64 v0 = sub_0202295C(sub_0202293C() - Unk_021BF670);

        if (v0 > Unk_021BF660) {
            PlayTime_Increment(sPlayTime, (v0 - Unk_021BF660));
            Unk_021BF660 = v0;
        }
    }
}
