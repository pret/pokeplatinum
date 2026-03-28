#ifndef POKEPLATINUM_UNK_0203061C_H
#define POKEPLATINUM_UNK_0203061C_H

#include "constants/battle_frontier_stats.h"

#include "struct_defs/battle_frontier.h"

#include "savedata.h"

int BattleFrontier_SaveSize(void);
void BattleFrontier_Init(BattleFrontier *frontier);
BattleFrontier *SaveData_GetBattleFrontier(SaveData *saveData);
u16 BattleFrontierStats_GetStat(BattleFrontier *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID);
u16 BattleFrontierStats_SetStat(BattleFrontier *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, u16 newValue);
void BattleFrontierStats_ClearAllWFCStats(BattleFrontier *frontier);
void BattleFrontierStats_ClearFriendStatsAndShift(BattleFrontier *frontier, int param1);
void BattleFrontierStats_ClearFriendStats(BattleFrontier *frontier, int param1, int param2);
u16 BattleFrontierStats_AddToStat(BattleFrontier *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, int addValue);
u16 BattleFrontierStats_SubtractFromStat(BattleFrontier *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, int subtractValue);
u16 BattleFrontierStats_SetIfBetter(BattleFrontier *frontier, enum BattleFrontierStatsIndex statIndex, int hostFriendID, u16 newValue);

#endif // POKEPLATINUM_UNK_0203061C_H
