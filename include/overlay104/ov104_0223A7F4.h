#ifndef POKEPLATINUM_OV104_0223A7F4_H
#define POKEPLATINUM_OV104_0223A7F4_H

#include "overlay104/frontier_data_transfer.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223ADA0.h"
#include "overlay104/struct_ov104_0224028C.h"

#include "field_battle_data_transfer.h"

void ov104_0223A860(u8 param0, int param1, u16 param2[], u8 param3);
const UnkStruct_ov104_0224028C *ov104_0223A8A8(int param0, int param1);
BOOL ov104_0223A918(const u16 param0[], const u16 param1[], int param2, int param3, u16 param4[], int param5, const UnkStruct_ov104_0224028C *param6, u16 param7, u8 param8[]);
u8 ov104_0223AA50(u8 param0);
u8 ov104_0223AA74(u8 param0, BOOL param1);
void ov104_0223AAA0(u16 param0, u8 param1, u16 *param2, FrontierPokemonDataDTO *param3, u8 *param4, u32 *param5, u16 param6, u16 *param7, u16 *param8);
void ov104_0223AB0C(u8 param0, u16 param1, u8 param2, FrontierPokemonDataDTO *param3, u16 *param4, FrontierPokemonDataDTO *param5, u8 *param6, u32 *param7, int param8);
FieldBattleDTO *ov104_0223ABA0(UnkStruct_ov104_0223ADA0 *param0, UnkStruct_ov104_02230BE4 *param1);
u8 ov104_0223ADA0(UnkStruct_ov104_0223ADA0 *param0);
void ov104_0223ADB0(UnkStruct_ov104_0223ADA0 *param0);
void ov104_0223AE30(UnkStruct_ov104_0223ADA0 *param0);
BOOL BattleFactory_IsMultiplayerChallenge(u8 challengeType);
u16 ov104_0223AF34(UnkStruct_ov104_0223ADA0 *param0);

#endif // POKEPLATINUM_OV104_0223A7F4_H
