#ifndef POKEPLATINUM_OV104_0223AF58_H
#define POKEPLATINUM_OV104_0223AF58_H

#include "overlay104/struct_battle_hall.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "field_battle_data_transfer.h"

#define BATTLE_HALL_MON_SUMMARY 0xfe

void ov104_0223AF58(u8 param0, u8 param1, u8 param2, u8 param3, u16 param4[]);
void ov104_0223AFB4(u8 param0, u8 param1, int param2, u8 param3, u8 param4, u16 param5[]);
void ov104_0223B0C8(u8 param0, u8 param1, u8 param2, u8 param3, u16 param4, u16 param5[], u8 param6);
FieldBattleDTO *FieldBattleDTO_NewBattleHall(BattleHall *battleHall, UnkStruct_ov104_02230BE4 *param1);
u8 BattleHall_GetPlayerPartySize(u8 challengeType);
u8 BattleHall_GetOpponentPartySize(u8 challengeType);
u8 BattleHall_CursorPosToType(u8 cursorPos);
BOOL BattleHall_IsMultiPlayerChallenge(u8 challengeType);
u8 ov104_0223B5C0(BattleHall *battleHall);
u16 BattleHall_GetHighestLevelInParty(BattleHall *battleHall);
fx32 BattleHall_GetLevelSquareRoot(u32 level);

#endif // POKEPLATINUM_OV104_0223AF58_H
