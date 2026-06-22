#ifndef POKEPLATINUM_STRUCT_BATTLE_FRONTIER_H
#define POKEPLATINUM_STRUCT_BATTLE_FRONTIER_H

#include "constants/battle_frontier_stats.h"

#include "struct_defs/struct_0202D080.h"
#include "struct_defs/struct_0202FF58.h"
#include "struct_defs/struct_020300F4.h"
#include "struct_defs/struct_020304A0.h"
#include "struct_defs/struct_020305B8.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "battle_hall_save.h"
#include "unk_020302D0.h"
#include "wifi_list.h"

typedef struct BattleFrontierStats {
    u16 soloStats[STATS_NUM_SOLO_STATS_AND_ACTIVE_FLAGS];
    u16 wfcStats[MAX_FRIENDS][STATS_NUM_WFC_STATS];
} BattleFrontierStats;

typedef struct BattleFrontierSave {
    BattleFrontierStats stats;
    union {
        WifiBattleTowerSave wifiBattleTowerSave;
        UnkStruct_0202FF58 unk_8E0_val2;
        BattleHallSave hallSave;
        BattleCastleSave castleSave;
        UnkStruct_020304A0 unk_8E0_val5;
    };
    struct {
        WifiBattleTowerRecord wifiBattleTowerRecord;
        FrontierEasyChatMessages easyChatMessages;
        WifiBattleTowerDownloadData wifiBattleTowerDownloadData;
    } unk_950;
    struct {
        UnkStruct_020300F4 unk_00;
    } unk_1614;
    struct {
        BattleHallStreakFlags streakFlags;
    } hall;
    struct {
        BattleCastlePersistentSave persistentSave;
    } castle;
    struct {
        UnkStruct_020305B8 unk_00;
    } unk_1620;
} BattleFrontierSave;

#endif // POKEPLATINUM_STRUCT_BATTLE_FRONTIER_H
