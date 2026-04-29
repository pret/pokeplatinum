#include "battle_frontier_stats.h"

#include <nitro.h>

#include "struct_defs/battle_frontier.h"

#include "savedata.h"
#include "unk_0202D05C.h"
#include "unk_0202FF4C.h"
#include "unk_02030108.h"
#include "unk_020302D0.h"
#include "unk_02030494.h"
#include "wifi_list.h"

int BattleFrontier_SaveSize(void)
{
    return sizeof(BattleFrontier);
}

void BattleFrontier_Init(BattleFrontier *frontier)
{
    MI_CpuClear8(frontier, sizeof(BattleFrontier));

    sub_0202D06C(&frontier->unk_950.unk_00);
    sub_0202D080(&frontier->unk_950.unk_168);
    sub_0202D0AC(&frontier->unk_950.unk_188);
    sub_020300A4(&frontier->unk_1614.unk_00);
    sub_02030260(&frontier->unk_1618.unk_00);
    sub_02030410(&frontier->unk_161C.unk_00);
    sub_020305AC(&frontier->unk_1620.unk_00);
}

BattleFrontier *SaveData_GetBattleFrontier(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
}

u16 BattleFrontierStats_GetStat(BattleFrontier *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID)
{
    BattleFrontierStats *stats = &frontier->stats;

    if (statIndex < STATS_NUM_SOLO_STATS_AND_ACTIVE_FLAGS) {
        if (statIndex >= STATS_NUM_SOLO_STATS) {
            int flagGroup, bit;

            if (hostFriendID < 16) {
                flagGroup = statIndex;
                bit = hostFriendID;
            } else {
                flagGroup = statIndex + 1;
                bit = hostFriendID - 16;
            }

            return (stats->soloStats[flagGroup] >> bit) & 1;
        }

        return stats->soloStats[statIndex];
    } else {
        if (hostFriendID == -1) {
            GF_ASSERT(FALSE);
            return 0;
        }

        return stats->wfcStats[hostFriendID][statIndex - STATS_NUM_SOLO_STATS_AND_ACTIVE_FLAGS];
    }
}

u16 BattleFrontierStats_SetStat(BattleFrontier *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, u16 newValue)
{
    BattleFrontierStats *stats = &frontier->stats;

    if (newValue > 9999) {
        newValue = 9999;
    }

    if (statIndex < STATS_NUM_SOLO_STATS_AND_ACTIVE_FLAGS) {
        if (statIndex >= STATS_NUM_SOLO_STATS) {
            int flagGroup, bit;

            GF_ASSERT(hostFriendID != 0xff);

            if (hostFriendID < 16) {
                flagGroup = statIndex;
                bit = hostFriendID;
            } else {
                flagGroup = statIndex + 1;
                bit = hostFriendID - 16;
            }

            if (newValue == 0) {
                stats->soloStats[flagGroup] &= 0xffff ^ (1 << bit);
            } else {
                stats->soloStats[flagGroup] |= 1 << bit;
            }
        } else {
            GF_ASSERT(hostFriendID == 0xff);
            stats->soloStats[statIndex] = newValue;
        }
    } else {
        GF_ASSERT(hostFriendID != 0xff);
        stats->wfcStats[hostFriendID][statIndex - STATS_NUM_SOLO_STATS_AND_ACTIVE_FLAGS] = newValue;
    }

    return newValue;
}

void BattleFrontierStats_ClearAllWFCStats(BattleFrontier *frontier)
{
    BattleFrontierStats *stats = &frontier->stats;

    MI_CpuClear8(stats->wfcStats, sizeof(u16) * STATS_NUM_WFC_STATS * MAX_FRIENDS);

    for (int i = STATS_NUM_SOLO_STATS; i <= STATS_NUM_SOLO_STATS_AND_ACTIVE_FLAGS - 1; i++) {
        stats->soloStats[i] = 0;
    }
}

void BattleFrontierStats_ClearFriendStatsAndShift(BattleFrontier *frontier, int friendIdx)
{
    GF_ASSERT(friendIdx != 0xff);

    BattleFrontierStats *stats = &frontier->stats;
    int i;
    for (i = friendIdx; i < MAX_FRIENDS - 1; i++) {
        MI_CpuCopy8(stats->wfcStats[i + 1], stats->wfcStats[i], sizeof(u16) * STATS_NUM_WFC_STATS);

        for (int statIndex = STATS_NUM_SOLO_STATS; statIndex < STATS_NUM_SOLO_STATS_AND_ACTIVE_FLAGS - 1; statIndex += 2) {
            u16 activeFlag = BattleFrontierStats_GetStat(frontier, statIndex, i + 1);
            BattleFrontierStats_SetStat(frontier, statIndex, i, activeFlag);
        }
    }

    i = MAX_FRIENDS - 1;
    MI_CpuClear8(stats->wfcStats[i], sizeof(u16) * STATS_NUM_WFC_STATS);
}

void BattleFrontierStats_ClearFriendStats(BattleFrontier *frontier, int friendIndex, int unused)
{
    BattleFrontierStats *stats = &frontier->stats;
    MI_CpuClear8(stats->wfcStats[friendIndex], sizeof(u16) * STATS_NUM_WFC_STATS);
}

u16 BattleFrontierStats_AddToStat(BattleFrontier *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, int addValue)
{
    BattleFrontierStats *stats = &frontier->stats;
    u16 value = BattleFrontierStats_GetStat(frontier, statIndex, hostFriendID);
    value += addValue;

    return BattleFrontierStats_SetStat(frontier, statIndex, hostFriendID, value);
}

u16 BattleFrontierStats_SubtractFromStat(BattleFrontier *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, int subtractValue)
{
    BattleFrontierStats *stats = &frontier->stats;
    int value = BattleFrontierStats_GetStat(frontier, statIndex, hostFriendID) - subtractValue;

    if (value < 0) {
        value = 0;
    }

    return BattleFrontierStats_SetStat(frontier, statIndex, hostFriendID, value);
}

u16 BattleFrontierStats_SetIfBetter(BattleFrontier *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, u16 newValue)
{
    u16 currentValue = BattleFrontierStats_GetStat(frontier, statIndex, hostFriendID);

    if (currentValue < newValue) {
        return BattleFrontierStats_SetStat(frontier, statIndex, hostFriendID, newValue);
    }

    if (currentValue > 9999) {
        return BattleFrontierStats_SetStat(frontier, statIndex, hostFriendID, 9999);
    }

    return currentValue;
}
