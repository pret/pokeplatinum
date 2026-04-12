#ifndef POKEPLATINUM_UNK_0205DFC4_H
#define POKEPLATINUM_UNK_0205DFC4_H

#include "constants/battle_frontier_stats.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "field_task.h"
#include "savedata.h"

u16 GetNumberDigitCount(u32 number);
u16 Item_IsTMHM(u16 item);
u16 Pokedex_GetRatingMessageID_Local(u16 pokemonSeen, u16 reachedEternaCity);
u16 Pokedex_GetRatingMessageID_National(u16 pokemonCaught, u16 playerGender);
u16 SaveData_GetFirstNonEggInParty(SaveData *saveData);
BOOL HasAllLegendaryTitansInParty(SaveData *saveData);
void MapObject_Shake(FieldTask *task, MapObject *mapObj, u16 times, u16 speed, u16 xOffset, u16 zOffset);
void MapObject_Flicker(FieldTask *task, MapObject *mapObj, u16 times, u16 delay);
enum BattleFrontierStatsIndex BattleFrontierStats_GetFactoryLatestStreakIdx(u8 isOpenLevel, u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetFactoryRecordStreakIdx(u8 isOpenLevel, u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetFactoryLatestTradeCountIndex(u8 isOpenLevel, u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetFactoryRecordTradeCountIndex(u8 isOpenLevel, u8 challengeType);
enum BattleFrontierStatsIndex sub_0205E4E0(u8 param0, u8 param1);
enum BattleFrontierStatsIndex BattleFrontierStats_GetHallLatestStreakIndex(u8 challengeType);
enum BattleFrontierStatsIndex sub_0205E534(u8 param0);
enum BattleFrontierStatsIndex BattleFrontierStats_GetHallLatestSpeciesIndex(u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetHallRecordStreakIndex(u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleRankIndex(u8 challengeType, u8 rankType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleLatestStreakIndex(u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleRecordStreakIndex(u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleLatestCPIndex(u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleSpentCPIndex(u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetCastleRecordCPIndex(u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetArcadeLatestStreakIndex(u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetArcadeCurrentStreakIndex(u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetTowerLatestStreakIndex(u8 challengeType);
enum BattleFrontierStatsIndex BattleFrontierStats_GetTowerRecordStreakIndex(u8 challengeType);
int BattleFrontierStats_GetHostFriendIdx(u32 statIndex);
u8 sub_0205E6D8(SaveData *saveData);

#endif // POKEPLATINUM_UNK_0205DFC4_H
