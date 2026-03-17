#ifndef POKEPLATINUM_OV104_0223B6F4_H
#define POKEPLATINUM_OV104_0223B6F4_H

#include "struct_defs/battle_frontier.h"

#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223BA10.h"

#include "bg_window.h"
#include "field_battle_data_transfer.h"
#include "party.h"
#include "pokemon.h"

void ov104_0223B760(u8 param0, int param1, u16 param2[], u8 param3);
u8 BattleCastle_GetPartySize(u8 challengeType, BOOL includePartnersMons);
u8 ov104_0223B7DC(u8 param0, BOOL param1);
FieldBattleDTO *ov104_0223B810(UnkStruct_ov104_0223BA10 *param0, UnkStruct_ov104_02230BE4 *param1);
u8 ov104_0223BA10(UnkStruct_ov104_0223BA10 *param0);
BOOL BattleCastle_IsMultiPlayerChallenge(u8 challengeType);
void ov104_0223BA24(Party *param0);
void ov104_0223BA7C(UnkStruct_ov104_0223BA10 *param0, Pokemon *param1);
void ov104_0223BAA0(UnkStruct_ov104_0223BA10 *param0, Party *param1, Pokemon *param2);
void ov104_0223BAB8(UnkStruct_ov104_0223BA10 *param0);
u16 ov104_0223BB60(UnkStruct_ov104_0223BA10 *param0);
void ov104_0223BB84(BgConfig *param0, UnkStruct_ov104_0223BA10 *param1, u32 param2);
u16 ov104_0223BC24(u16 param0);
void ov104_0223BC2C(BattleFrontier *frontier, u8 challengeType, int castlePoints);

#endif // POKEPLATINUM_OV104_0223B6F4_H
