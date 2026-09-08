#ifndef POKEPLATINUM_STRUCT_BATTLE_FRONTIER_H
#define POKEPLATINUM_STRUCT_BATTLE_FRONTIER_H

#include "constants/battle_frontier_stats.h"

#include "struct_defs/struct_0202D080.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "battle_arcade_save.h"
#include "battle_castle_save.h"
#include "battle_factory_save.h"
#include "battle_hall_save.h"
#include "wifi_list.h"

typedef struct BattleFrontierStats {
    u16 soloStats[STATS_NUM_SOLO_STATS_AND_ACTIVE_FLAGS];
    u16 wfcStats[MAX_FRIENDS][STATS_NUM_WFC_STATS];
} BattleFrontierStats;

typedef struct BattleFrontierSave {
    BattleFrontierStats stats;
    union {
        WifiBattleTowerSave wifiBattleTowerSave;
        BattleFactorySave factorySave;
        BattleHallSave hallSave;
        BattleCastleSave castleSave;
        BattleArcadeSave arcadeSave;
    };
    struct {
        WifiBattleTowerRecord wifiBattleTowerRecord;
        FrontierEasyChatMessages easyChatMessages;
        WifiBattleTowerDownloadData wifiBattleTowerDownloadData;
    } unk_950;
    struct {
        BattleFactoryStreakFlags streakFlags;
    } factory;
    struct {
        BattleHallStreakFlags streakFlags;
    } hall;
    struct {
        BattleCastlePersistentSave persistentSave;
    } castle;
    struct {
        BattleArcadeStreakFlags streakFlags;
    } arcade;
} BattleFrontierSave;

#endif // POKEPLATINUM_STRUCT_BATTLE_FRONTIER_H
