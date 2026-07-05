#include "battle_frontier_stats.h"

#include "constants/battle_frontier.h"
#include "constants/battle_frontier_stats.h"
#include "constants/versions.h"

#include "nintendo_wfc/main.h"

#include "battle_tower_modes.h"
#include "communication_information.h"
#include "communication_system.h"
#include "save_player.h"
#include "trainer_info.h"

enum BattleFrontierStatsIndex BattleFrontierStats_GetFactoryLatestStreakIdx(u8 isOpenLevel, u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_FACTORY_LATEST_STREAK_50_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_FACTORY_LATEST_STREAK_50_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_FACTORY_LATEST_STREAK_50_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_FACTORY_LATEST_STREAK_50_MULTI_WFC;
        break;
    }

    return index + (isOpenLevel * 4);
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetFactoryRecordStreakIdx(u8 isOpenLevel, u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_FACTORY_RECORD_STREAK_50_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_FACTORY_RECORD_STREAK_50_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_FACTORY_RECORD_STREAK_50_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_FACTORY_RECORD_STREAK_50_MULTI_WFC;
        break;
    }

    return index + (isOpenLevel * 4);
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetFactoryLatestTradeCountIndex(u8 isOpenLevel, u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_FACTORY_LATEST_TRADE_COUNT_50_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_FACTORY_LATEST_TRADE_COUNT_50_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_FACTORY_LATEST_TRADE_COUNT_50_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_FACTORY_LATEST_TRADE_COUNT_50_MULTI_WFC;
        break;
    }

    return index + (isOpenLevel * 4);
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetFactoryRecordTradeCountIndex(u8 isOpenLevel, u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_FACTORY_RECORD_TRADE_COUNT_50_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_FACTORY_RECORD_TRADE_COUNT_50_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_FACTORY_RECORD_TRADE_COUNT_50_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_FACTORY_RECORD_TRADE_COUNT_50_MULTI_WFC;
        break;
    }

    return index + (isOpenLevel * 4);
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetHallCurrentTypeRanksIndex(u8 challengeType, u8 pokemonType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_HALL_CURRENT_RANKS_NORMAL_FIGHTING_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_HALL_CURRENT_RANKS_NORMAL_FIGHTING_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_HALL_CURRENT_RANKS_NORMAL_FIGHTING_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_HALL_CURRENT_RANKS_NORMAL_FIGHTING_MULTI_WFC;
        break;
    }

    index += pokemonType / 2;
    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetHallLatestStreakIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_HALL_LATEST_STREAK_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_HALL_LATEST_STREAK_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_HALL_LATEST_STREAK_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_HALL_LATEST_STREAK_MULTI_WFC;
        break;
    }

    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetHallCurrentStreakIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_HALL_CURRENT_STREAK_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_HALL_CURRENT_STREAK_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_HALL_CURRENT_STREAK_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_HALL_CURRENT_STREAK_MULTI_WFC;
        break;
    }

    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetHallLatestSpeciesIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_HALL_LATEST_SPECIES_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_HALL_LATEST_SPECIES_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_HALL_LATEST_SPECIES_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_HALL_LATEST_SPECIES_MULTI_WFC;
        break;
    }

    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetHallRecordStreakIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = FRONTIER_CHALLENGE_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = FRONTIER_CHALLENGE_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = FRONTIER_CHALLENGE_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = 2;
        GF_ASSERT(FALSE);
        break;
    }

    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleRankIndex(u8 challengeType, u8 rankType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_CASTLE_RANK_HEALING_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_CASTLE_RANK_HEALING_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_CASTLE_RANK_HEALING_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_CASTLE_RANK_HEALING_MULTI_WFC;
        break;
    }

    index += rankType;
    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleLatestStreakIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_CASTLE_LATEST_STREAK_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_CASTLE_LATEST_STREAK_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_CASTLE_LATEST_STREAK_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_CASTLE_LATEST_STREAK_MULTI_WFC;
        break;
    }

    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleRecordStreakIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_CASTLE_RECORD_STREAK_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_CASTLE_RECORD_STREAK_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_CASTLE_RECORD_STREAK_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_CASTLE_RECORD_STREAK_MULTI_WFC;
        break;
    }

    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleLatestCPIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_CASTLE_LATEST_CP_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_CASTLE_LATEST_CP_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_CASTLE_LATEST_CP_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_CASTLE_LATEST_CP_MULTI_WFC;
        break;
    }

    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleSpentCPIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_CASTLE_SPENT_CP_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_CASTLE_SPENT_CP_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_CASTLE_SPENT_CP_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_CASTLE_SPENT_CP_MULTI_WFC;
        break;
    }

    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleRecordCPIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_CASTLE_RECORD_CP_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_CASTLE_RECORD_CP_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_CASTLE_RECORD_CP_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_CASTLE_RECORD_CP_MULTI_WFC;
        break;
    }

    return index;
}

int BattleFrontierStats_GetHostFriendIdx(u32 statIndex)
{
    if (statIndex < 100) {
        return 0xff;
    }

    return NintendoWFC_GetHostFriendIdx();
}

static u8 GetPartnerGameCode(void)
{
    TrainerInfo *trainerInfo = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    GF_ASSERT(trainerInfo != NULL);

    return TrainerInfo_GameCode(trainerInfo);
}

u8 sub_0205E6D8(SaveData *saveData)
{
    if (TrainerInfo_GameCode(SaveData_GetTrainerInfo(saveData)) == VERSION_NONE) {
        return 1;
    }

    if (GetPartnerGameCode() == VERSION_NONE) {
        return 1;
    }

    return 0;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetArcadeLatestStreakIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_ARCADE_LATEST_STREAK_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_ARCADE_LATEST_STREAK_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_ARCADE_LATEST_STREAK_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_ARCADE_LATEST_STREAK_MULTI_WFC;
        break;
    }

    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetArcadeCurrentStreakIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        index = STAT_ARCADE_RECORD_STREAK_SINGLE;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        index = STAT_ARCADE_RECORD_STREAK_DOUBLE;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        index = STAT_ARCADE_RECORD_STREAK_MULTI;
        break;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        index = STAT_ARCADE_RECORD_STREAK_MULTI_WFC;
        break;
    }

    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetTowerLatestStreakIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case BATTLE_TOWER_MODE_SINGLE:
        index = STAT_TOWER_LATEST_STREAK_SINGLE;
        break;
    case BATTLE_TOWER_MODE_DOUBLE:
        index = STAT_TOWER_LATEST_STREAK_DOUBLE;
        break;
    case BATTLE_TOWER_MODE_MULTI:
        index = STAT_TOWER_LATEST_STREAK_MULTI;
        break;
    case BATTLE_TOWER_MODE_LINK_MULTI:
        index = STAT_TOWER_LATEST_STREAK_LINK_MULTI;
        break;
    case BATTLE_TOWER_MODE_WIFI:
        index = STAT_TOWER_LATEST_STREAK_WIFI;
        break;
    case BATTLE_TOWER_MODE_6:
        index = STAT_TOWER_LATEST_STREAK_MODE_6;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return index;
}

enum BattleFrontierStatsIndex BattleFrontierStats_GetTowerRecordStreakIndex(u8 challengeType)
{
    enum BattleFrontierStatsIndex index;

    switch (challengeType) {
    case BATTLE_TOWER_MODE_SINGLE:
        index = STAT_TOWER_RECORD_STREAK_SINGLE;
        break;
    case BATTLE_TOWER_MODE_DOUBLE:
        index = STAT_TOWER_RECORD_STREAK_DOUBLE;
        break;
    case BATTLE_TOWER_MODE_MULTI:
        index = STAT_TOWER_RECORD_STREAK_MULTI;
        break;
    case BATTLE_TOWER_MODE_LINK_MULTI:
        index = STAT_TOWER_RECORD_STREAK_LINK_MULTI;
        break;
    case BATTLE_TOWER_MODE_WIFI:
        index = STAT_TOWER_RECORD_STREAK_WIFI;
        break;
    case BATTLE_TOWER_MODE_6:
        index = STAT_TOWER_RECORD_STREAK_MODE_6;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return index;
}
