#ifndef POKEPLATINUM_BATTLE_CASTLE_HELPERS_H
#define POKEPLATINUM_BATTLE_CASTLE_HELPERS_H

#include "struct_defs/battle_frontier.h"

#include "overlay104/battle_castle.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "bg_window.h"
#include "field_battle_data_transfer.h"
#include "party.h"

#define LEVEL_ADJUSTMENT_NONE   0
#define LEVEL_ADJUSTMENT_UP_5   1
#define LEVEL_ADJUSTMENT_DOWN_5 2

void BattleCastle_PickOpponentTrainers(u8 challengeType, int currentRound, u16 trainerIDs[], u8 numTrainers);
u8 BattleCastle_GetPlayerPartySize(u8 challengeType, BOOL includePartnersMons);
u8 BattleCastle_GetOpponentPartySize(u8 challengeType, BOOL includeBothOpponents);
FieldBattleDTO *BattleCastle_SetupBattle(BattleCastle *battleCastle, FieldFrontierDTO *fieldData);
u8 BattleCastle_GetOpponentLevel(BattleCastle *battleCastle);
BOOL BattleCastle_IsMultiPlayerChallenge(u8 challengeType);
void BattleCastle_RevivePokemon(Party *party);
void BattleCastle_AddMonToParty(BattleCastle *battleCastle, Party *party, Pokemon *mon);
void BattleCastle_SetupOpponentsParty(BattleCastle *battleCastle);
u16 BattleCastle_GetCurrentRound(BattleCastle *battleCastle);
void BattleCastle_UpdateEmblemFrame(BgConfig *bgConfig, BattleCastle *battleCastle, u32 bgLayer);
void BattleCastle_SpendCastlePoints(BattleFrontierSave *frontier, u8 challengeType, int castlePoints);

#endif // POKEPLATINUM_BATTLE_CASTLE_HELPERS_H
