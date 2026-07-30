#ifndef POKEPLATINUM_OV104_0223BCBC_H
#define POKEPLATINUM_OV104_0223BCBC_H

#include "overlay104/struct_battle_arcade.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "field_battle_data_transfer.h"
#include "party.h"
#include "pokemon.h"

void ov104_0223BD28(u8 param0, int param1, u16 param2[], u8 param3);
u8 BattleArcade_GetPlayerPartySize(u8 challengeType, BOOL includePartnerMons);
u8 BattleArcade_GetOpponentPartySize(u8 challengeType, BOOL includeBothOpponents);
FieldBattleDTO *FieldBattleDTO_NewBattleArcade(BattleArcade *battleArcade, FieldFrontierDTO *fieldData);
u8 BattleArcade_GetPokemonLevel(BattleArcade *battleArcade);
BOOL BattleArcade_IsMultiPlayerChallenge(u8 challengeType);
void ov104_0223C010(BattleArcade *battleArcade, Pokemon *param1);
void ov104_0223C034(BattleArcade *battleArcade, Party *param1, Pokemon *param2);
void ov104_0223C04C(BattleArcade *battleArcade);
u16 ov104_0223C0BC(BattleArcade *battleArcade, u8 param1);
u16 ov104_0223C124(BattleArcade *battleArcade);
u8 BattleArcade_GetCategoryFromEffect(u8 effect);

#endif // POKEPLATINUM_OV104_0223BCBC_H
