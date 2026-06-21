#include "battle_frontier_save.h"

#include <nitro.h>

#include "struct_defs/battle_frontier.h"

#include "battle_hall_save.h"
#include "savedata.h"
#include "unk_0202FF4C.h"
#include "unk_020302D0.h"
#include "unk_02030494.h"
#include "wifi_battle_tower_save.h"
#include "wifi_list.h"

int BattleFrontierSave_Size(void)
{
    return sizeof(BattleFrontierSave);
}

void BattleFrontier_Init(BattleFrontierSave *frontier)
{
    MI_CpuClear8(frontier, sizeof(BattleFrontierSave));

    WifiBattleTowerRecord_Init(&frontier->unk_950.wifiBattleTowerRecord);
    FrontierEasyChatMessages_Init(&frontier->unk_950.easyChatMessages);
    WifiBattleTowerDownloadData_Init(&frontier->unk_950.wifiBattleTowerDownloadData);
    sub_020300A4(&frontier->unk_1614.unk_00);
    BattleHallStreakFlags_Init(&frontier->hall.streakFlags);
    sub_02030410(&frontier->unk_161C.unk_00);
    sub_020305AC(&frontier->unk_1620.unk_00);
}

BattleFrontierSave *SaveData_GetBattleFrontier(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
}

u16 BattleFrontierSave_GetStat(BattleFrontierSave *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID)
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

u16 BattleFrontierSave_SetStat(BattleFrontierSave *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, u16 newValue)
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

void BattleFrontierSave_ClearAllWFCStats(BattleFrontierSave *frontier)
{
    BattleFrontierStats *stats = &frontier->stats;

    MI_CpuClear8(stats->wfcStats, sizeof(u16) * STATS_NUM_WFC_STATS * MAX_FRIENDS);

    for (int i = STATS_NUM_SOLO_STATS; i <= STATS_NUM_SOLO_STATS_AND_ACTIVE_FLAGS - 1; i++) {
        stats->soloStats[i] = 0;
    }
}

void BattleFrontierSave_ClearFriendStatsAndShift(BattleFrontierSave *frontier, int friendIdx)
{
    GF_ASSERT(friendIdx != 0xff);

    BattleFrontierStats *stats = &frontier->stats;
    int i;
    for (i = friendIdx; i < MAX_FRIENDS - 1; i++) {
        MI_CpuCopy8(stats->wfcStats[i + 1], stats->wfcStats[i], sizeof(u16) * STATS_NUM_WFC_STATS);

        for (int statIndex = STATS_NUM_SOLO_STATS; statIndex < STATS_NUM_SOLO_STATS_AND_ACTIVE_FLAGS - 1; statIndex += 2) {
            u16 activeFlag = BattleFrontierSave_GetStat(frontier, statIndex, i + 1);
            BattleFrontierSave_SetStat(frontier, statIndex, i, activeFlag);
        }
    }

    i = MAX_FRIENDS - 1;
    MI_CpuClear8(stats->wfcStats[i], sizeof(u16) * STATS_NUM_WFC_STATS);
}

void BattleFrontierSave_ClearFriendStats(BattleFrontierSave *frontier, int friendIndex, int unused)
{
    BattleFrontierStats *stats = &frontier->stats;
    MI_CpuClear8(stats->wfcStats[friendIndex], sizeof(u16) * STATS_NUM_WFC_STATS);
}

u16 BattleFrontierSave_AddToStat(BattleFrontierSave *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, int addValue)
{
    BattleFrontierStats *stats = &frontier->stats;
    u16 value = BattleFrontierSave_GetStat(frontier, statIndex, hostFriendID);
    value += addValue;

    return BattleFrontierSave_SetStat(frontier, statIndex, hostFriendID, value);
}

u16 BattleFrontierSave_SubtractFromStat(BattleFrontierSave *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, int subtractValue)
{
    BattleFrontierStats *stats = &frontier->stats;
    int value = BattleFrontierSave_GetStat(frontier, statIndex, hostFriendID) - subtractValue;

    if (value < 0) {
        value = 0;
    }

    return BattleFrontierSave_SetStat(frontier, statIndex, hostFriendID, value);
}

u16 BattleFrontierSave_SetIfBetter(BattleFrontierSave *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, u16 newValue)
{
    u16 currentValue = BattleFrontierSave_GetStat(frontier, statIndex, hostFriendID);

    if (currentValue < newValue) {
        return BattleFrontierSave_SetStat(frontier, statIndex, hostFriendID, newValue);
    }

    if (currentValue > 9999) {
        return BattleFrontierSave_SetStat(frontier, statIndex, hostFriendID, 9999);
    }

    return currentValue;
}
