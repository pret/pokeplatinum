#ifndef POKEPLATINUM_OV104_0223BCBC_H
#define POKEPLATINUM_OV104_0223BCBC_H

#include "overlay104/struct_battle_arcade.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "field_battle_data_transfer.h"
#include "party.h"

void BattleArcade_PickOpponentTrainers(u8 challengeType, int currentRound, u16 trainerIDs[], u8 numTrainers);
u8 BattleArcade_GetPlayerPartySize(u8 challengeType, BOOL includePartnerMons);
u8 BattleArcade_GetOpponentPartySize(u8 challengeType, BOOL includeBothOpponents);
FieldBattleDTO *BattleArcade_SetupBattle(BattleArcade *battleArcade, FieldFrontierDTO *fieldData);
u8 BattleArcade_GetPokemonLevel(BattleArcade *battleArcade);
BOOL BattleArcade_IsMultiPlayerChallenge(u8 challengeType);
void BattleArcade_AddMonToParty(BattleArcade *battleArcade, Party *party, Pokemon *mon);
void BattleArcade_SetupOpponentsParty(BattleArcade *battleArcade);
u16 BattleArcade_GetFreeBPFromEvent(BattleArcade *battleArcade, u8 activeEffect);
u16 BattleArcade_GetCurrentRound(BattleArcade *battleArcade);
u8 BattleArcade_GetCategoryFromEffect(u8 effect);

#endif // POKEPLATINUM_OV104_0223BCBC_H
