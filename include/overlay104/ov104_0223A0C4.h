#ifndef POKEPLATINUM_OV104_0223A0C4_H
#define POKEPLATINUM_OV104_0223A0C4_H

#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_0204B404.h"
#include "unk_020244AC.h"
#include "overlay006/battle_params.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223A348.h"

BOOL ov104_0223A0C4(UnkStruct_0204AFC4 * param0, UnkStruct_ov104_0223A348 * param1, u16 param2, int param3, u16 * param4, u16 * param5, UnkStruct_0204B404 * param6, int param7);
void ov104_0223A30C(SaveData * param0, UnkStruct_ov104_0223A348 * param1, const u8 param2);
BattleParams * ov104_0223A580(UnkStruct_0204AFC4 * param0, UnkStruct_ov104_02230BE4 * param1);
void ov104_0223A734(UnkStruct_0204AFC4 * param0, u16 param1);
u16 ov104_0223A750(UnkStruct_0204AFC4 * param0, const u16 * param1);
int ov104_0223A790(u8 param0);

#endif // POKEPLATINUM_OV104_0223A0C4_H
