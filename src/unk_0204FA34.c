#include "unk_0204FA34.h"

#include <nitro.h>

#include "constants/battle_frontier.h"

#include "struct_defs/battle_frontier.h"

#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "battle_hall_save.h"
#include "communication_system.h"
#include "savedata.h"

void BattleHall_ProcessSelectedSpeciesMsg(int netID, int unused, void *data, void *context)
{
    BattleHallSameSpeciesCheck *myData = context;
    const BattleHallSameSpeciesCheck *partnersData = data;

    myData->receivedMessages++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    myData->partnersSpecies = partnersData->species;
    return;
}

void sub_0204FA50(SaveData *saveData, BattleHallStreakFlags *param1, u8 challengeType)
{
    u8 v1[4];

    v1[0] = 0;
    BattleHallStreakFlags_SetFlag(param1, 5, challengeType, 0, v1);

    if (challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
        BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), STAT_HALL_WFC_STREAK_ACTIVE, 0);
    }

    BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetHallLatestStreakIndex(challengeType), 0);

    return;
}
