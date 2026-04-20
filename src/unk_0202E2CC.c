#include "unk_0202E2CC.h"

#include <nitro.h>
#include <string.h>

#include "constants/tv_broadcast.h"

#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"
#include "struct_defs/struct_0202E828.h"
#include "struct_defs/struct_0202E834.h"
#include "struct_defs/tv.h"
#include "struct_defs/tv_segment_contest_hall_showcased_pokemon.h"

#include "inlines.h"
#include "rtc.h"
#include "savedata.h"

static void TVBroadcast_ClearPlayedSegments(TVBroadcast *broadcast);
static TVSegmentInstance *sub_0202E4DC(TVBroadcast *broadcast, int param1);

int TVBroadcast_SaveSize(void)
{
    return sizeof(TVBroadcast);
}

void TVBroadcast_Init(TVBroadcast *broadcast)
{
    MI_CpuClearFast(broadcast, sizeof(TVBroadcast));
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0202E2EC(TVBroadcast *broadcast)
{
    MI_CpuClearFast(broadcast->unk_0C, sizeof(TVSegmentInstance) * 4);
    MI_CpuClearFast(broadcast->unk_C4, sizeof(TVSegmentInstance) * 4);
    MI_CpuClearFast(broadcast->unk_17C, sizeof(TVSegmentInstance) * 4);

    TVBroadcast_ClearWatchProgress(broadcast);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void TVBroadcast_UpdateProgramTimeSlot(TVBroadcast *broadcast, int deltaMinutes, int currentMinute)
{
    int i;

    if (broadcast->timeSlotMinutesRemaining > deltaMinutes) {
        broadcast->timeSlotMinutesRemaining -= deltaMinutes;
    } else {
        broadcast->timeSlotMinutesRemaining = 15 - currentMinute % 15;

        if (broadcast->timeSlotMinutesRemaining == 0) {
            broadcast->timeSlotMinutesRemaining = 15;
        }

        broadcast->programFinished = FALSE;

        for (i = 0; i < TV_BROADCAST_MAX_PLAYED_SEGMENTS; i++) {
            broadcast->playedSegments[i] = 0;
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void TVBroadcast_ClearWatchProgress(TVBroadcast *broadcast)
{
    TVBroadcast_SetProgramFinished(broadcast, FALSE);
    TVBroadcast_ClearPlayedSegments(broadcast);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void TVBroadcast_SetProgramFinished(TVBroadcast *broadcast, BOOL finished)
{
    broadcast->programFinished = finished;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

BOOL TVBroadcast_IsProgramFinished(const TVBroadcast *broadcast)
{
    return broadcast->programFinished;
}

void TVBroadcast_SetPlayedSegment(TVBroadcast *broadcast, int segmentID)
{
    int i;

    for (i = 0; i < TV_BROADCAST_MAX_PLAYED_SEGMENTS; i++) {
        if (broadcast->playedSegments[i] == NULL) {
            broadcast->playedSegments[i] = segmentID;
            SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
            return;
        }
    }

    GF_ASSERT(FALSE);

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

static void TVBroadcast_ClearPlayedSegments(TVBroadcast *broadcast)
{
    int i;

    for (i = 0; i < TV_BROADCAST_MAX_PLAYED_SEGMENTS; i++) {
        broadcast->playedSegments[i] = 0;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

BOOL TVBroadcast_IsPlayedSegment(const TVBroadcast *broadcast, int segmentID)
{
    int i;

    for (i = 0; i < TV_BROADCAST_MAX_PLAYED_SEGMENTS; i++) {
        if (broadcast->playedSegments[i] == segmentID) {
            return TRUE;
        }
    }

    return FALSE;
}

int TVBroadcast_CountPlayedSegments(const TVBroadcast *broadcast)
{
    int i, playedCount;

    for (i = 0, playedCount = 0; i < TV_BROADCAST_MAX_PLAYED_SEGMENTS; i++) {
        if (broadcast->playedSegments[i] != 0) {
            playedCount++;
        }
    }

    return playedCount;
}

static void sub_0202E3F4(TVSegmentInstance *param0, int segmentID, const u8 *param2)
{
    RTCDate time;
    GetCurrentDate(&time);

    param0->timestamp = Date_Encode(&time);
    param0->segmentID = segmentID;
    param0->timesPlayed = 0;

    MI_CpuCopyFast(param2, param0->segment, 40);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

BOOL TVBroadcast_SaveSegmentData(TVBroadcast *broadcast, int param1, int param2, const u8 *param3)
{
    int i;
    TVSegmentInstance *v1 = sub_0202E4DC(broadcast, param1);

    for (i = 0; i < 4; i++) {
        if (v1[i].segmentID == param2) {
            if (v1[i].timesPlayed >= 3) {
                sub_0202E3F4(&v1[i], param2, param3);
                return 1;
            }

            return 0;
        }
    }

    for (i = 0; i < 4; i++) {
        if (v1[i].segmentID == 0) {
            sub_0202E3F4(&v1[i], param2, param3);
            return 1;
        }
    }

    for (i = 0; i < 4; i++) {
        if (v1[i].timesPlayed >= 3) {
            sub_0202E3F4(&v1[i], param2, param3);
            return 1;
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);

    return 0;
}

const u16 *sub_0202E4C8(const TVWifiEpisode *param0)
{
    return param0->name;
}

int sub_0202E4CC(const TVWifiEpisode *param0)
{
    return param0->language;
}

int sub_0202E4D0(const TVWifiEpisode *param0)
{
    return param0->gameVersion;
}

TVSegmentInstance *sub_0202E4D4(TVWifiEpisode *param0)
{
    return &param0->details;
}

TVSegmentInstance *sub_0202E4D8(TVSegmentInstance *param0)
{
    return param0;
}

static TVSegmentInstance *sub_0202E4DC(TVBroadcast *broadcast, int param1)
{
    TVSegmentInstance *v0 = NULL;

    switch (param1) {
    case 1:
        v0 = broadcast->unk_17C;
        break;
    case 2:
        v0 = broadcast->unk_0C;
        break;
    case 3:
        v0 = broadcast->unk_C4;
        break;
    case 4:
    case 5:
        GF_ASSERT(0);
    }

    return v0;
}

static TVWifiEpisode *sub_0202E518(TVBroadcast *broadcast, int param1)
{
    TVWifiEpisode *v0 = NULL;

    switch (param1) {
    case 2:
        v0 = broadcast->unk_234;
        break;
    case 3:
        v0 = broadcast->unk_684;
        break;
    case 1:
        v0 = broadcast->unk_8AC;
        break;
    case 4:
    case 5:
        GF_ASSERT(0);
    }

    return v0;
}

int sub_0202E55C(const TVSegmentInstance *param0)
{
    return param0->segmentID;
}

void sub_0202E560(TVSegmentInstance *param0)
{
    if (param0->timesPlayed < 3) {
        param0->timesPlayed++;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void *sub_0202E574(TVSegmentInstance *param0)
{
    return param0->segment;
}

static int sub_0202E578(const TVSegmentInstance *param0, int param1, int param2, BOOL param3, u8 *param4)
{
    int v0, v1;

    for (v1 = 0, v0 = 0; v0 < param1; v0++) {
        if (param0[v0].segmentID == param2) {
            int v2 = param0[v0].timesPlayed;

            if (param3 && v2) {
                param4[v1] = v0 + 1;
                v1++;
            } else if (!param3 && (v2 == 0)) {
                param4[v1] = v0 + 1;
                v1++;
            }
        }
    }

    return v1;
}

static int sub_0202E5B8(const TVWifiEpisode *param0, int param1, int param2, BOOL param3, u8 *param4)
{
    int v0, v1;

    for (v1 = 0, v0 = 0; v0 < param1; v0++) {
        int v2 = param0[v0].details.timesPlayed;

        if (param0[v0].details.segmentID == param2) {
            if (param3 && v2) {
                param4[v1] = sub_0202E7D0(v0 + 1);
                v1++;
            } else if (!param3 && (v2 == 0)) {
                param4[v1] = sub_0202E7D0(v0 + 1);
                v1++;
            }
        }
    }

    return v1;
}

int sub_0202E614(const TVBroadcast *broadcast, int param1, int param2, BOOL param3, BOOL param4, u8 *param5)
{
    switch (param1) {
    case 2:
        if (param3) {
            return sub_0202E578(broadcast->unk_0C, 4, param2, param4, param5);
        } else {
            return sub_0202E5B8(broadcast->unk_234, 16, param2, param4, param5);
        }
    case 3:
        if (param3) {
            return sub_0202E578(broadcast->unk_C4, 4, param2, param4, param5);
        } else {
            return sub_0202E5B8(broadcast->unk_684, 8, param2, param4, param5);
        }
    case 1:
        if (param3) {
            return sub_0202E578(broadcast->unk_17C, 4, param2, param4, param5);
        } else {
            return sub_0202E5B8(broadcast->unk_8AC, 8, param2, param4, param5);
        }
    case 4:
        return 0;
    case 5:
        return 0;
    }

    return 0;
}

BOOL sub_0202E6B0(TVBroadcast *broadcast, int param1, int param2)
{
    int v0;
    int i;
    u8 v2[4];
    TVSegmentInstance *v3;

    MI_CpuClear8(v2, 4);

    v0 = sub_0202E614(broadcast, param1, param2, 1, 0, v2);

    if (v0 != 0) {
        return 0;
    }

    v0 = sub_0202E614(broadcast, param1, param2, 1, 1, v2);

    if (v0 != 0) {
        for (i = 0; i < 4 & v2[i] != 0; i++) {
            v3 = sub_0202E768(broadcast, param1, v2[i]);

            if (v3->timesPlayed >= 3) {
                return 1;
            }
        }

        return 0;
    }

    for (i = 1; i <= 4; i++) {
        v3 = sub_0202E768(broadcast, param1, i);

        if ((v3->segmentID == 0) || (v3->timesPlayed >= 3)) {
            return 1;
        }
    }

    return 0;
}

TVSegmentInstance *sub_0202E768(TVBroadcast *broadcast, int param1, int param2)
{
    TVSegmentInstance *v0;

    GF_ASSERT(sub_0202E7C0(param2) == 1);

    param2 &= ~0x80;
    v0 = sub_0202E4DC(broadcast, param1);

    return &v0[param2 - 1];
}

TVWifiEpisode *sub_0202E794(TVBroadcast *broadcast, int param1, int param2)
{
    TVWifiEpisode *v0;

    GF_ASSERT(sub_0202E7C0(param2) == 0);

    param2 &= ~0x80;
    v0 = sub_0202E518(broadcast, param1);

    return &v0[param2 - 1];
}

BOOL sub_0202E7C0(int param0)
{
    if (param0 & 0x80) {
        return 0;
    } else {
        return 1;
    }
}

int sub_0202E7D0(int param0)
{
    return param0 | 0x80;
}

TVSegment_ContestHall_ShowcasedPokemon *TVBroadcast_GetShowcasedPokemon(TVBroadcast *broadcast)
{
    return &broadcast->showcasedPokemon;
}

UnkStruct_0202E7E4 *sub_0202E7E4(TVBroadcast *broadcast)
{
    return &broadcast->unk_ADE;
}

UnkStruct_0202E7F0 *sub_0202E7F0(TVBroadcast *broadcast)
{
    return &broadcast->unk_B02;
}

UnkStruct_0202E7FC *sub_0202E7FC(TVBroadcast *broadcast)
{
    return &broadcast->unk_B04;
}

UnkStruct_0202E808 *TVBroadcast_GetSafariGameData(TVBroadcast *broadcast)
{
    return &broadcast->safariGame;
}

UnkStruct_0202E810 *sub_0202E810(TVBroadcast *broadcast)
{
    return &broadcast->unk_B10;
}

UnkStruct_0202E81C *sub_0202E81C(TVBroadcast *broadcast)
{
    return &broadcast->unk_B2E;
}

UnkStruct_0202E828 *sub_0202E828(TVBroadcast *broadcast)
{
    return &broadcast->unk_B44;
}

UnkStruct_0202E834 *sub_0202E834(TVBroadcast *broadcast)
{
    return &broadcast->unk_B4C;
}
