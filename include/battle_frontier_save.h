#ifndef POKEPLATINUM_BATTLE_FRONTIER_SAVE_H
#define POKEPLATINUM_BATTLE_FRONTIER_SAVE_H

#include "constants/battle_frontier_stats.h"

#include "struct_defs/battle_frontier.h"

#include "battle_frontier_stats.h"
#include "savedata.h"

#define BattleFrontierSave_GetStatAutoHostIdx(frontierSave, statIndex)               BattleFrontierSave_GetStat(frontierSave, statIndex, BattleFrontierStats_GetHostFriendIdx(statIndex))
#define BattleFrontierSave_SetStatAutoHostIdx(frontierSave, statIndex, newValue)     BattleFrontierSave_SetStat(frontierSave, statIndex, BattleFrontierStats_GetHostFriendIdx(statIndex), newValue)
#define BattleFrontierSave_SetIfBetterAutoHostIdx(frontierSave, statIndex, newValue) BattleFrontierSave_SetIfBetter(frontierSave, statIndex, BattleFrontierStats_GetHostFriendIdx(statIndex), newValue)

int BattleFrontierSave_Size(void);
void BattleFrontier_Init(BattleFrontierSave *frontier);
BattleFrontierSave *SaveData_GetBattleFrontier(SaveData *saveData);
u16 BattleFrontierSave_GetStat(BattleFrontierSave *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID);
u16 BattleFrontierSave_SetStat(BattleFrontierSave *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, u16 newValue);
void BattleFrontierSave_ClearAllWFCStats(BattleFrontierSave *frontier);
void BattleFrontierSave_ClearFriendStatsAndShift(BattleFrontierSave *frontier, int friendIdx);
void BattleFrontierSave_ClearFriendStats(BattleFrontierSave *frontier, int friendIndex, int unused);
u16 BattleFrontierSave_AddToStat(BattleFrontierSave *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, int addValue);
u16 BattleFrontierSave_SubtractFromStat(BattleFrontierSave *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, int subtractValue);
u16 BattleFrontierSave_SetIfBetter(BattleFrontierSave *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, u16 newValue);

#endif // POKEPLATINUM_BATTLE_FRONTIER_SAVE_H
