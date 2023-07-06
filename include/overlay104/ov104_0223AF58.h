#ifndef POKEPLATINUM_OV104_0223AF58_H
#define POKEPLATINUM_OV104_0223AF58_H

#include "overlay006/battle_params.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223B5C0.h"

void ov104_0223AF58(u8 param0, u8 param1, u8 param2, u8 param3, u16 param4[]);
void ov104_0223AFB4(u8 param0, u8 param1, int param2, u8 param3, u8 param4, u16 param5[]);
void ov104_0223B0C8(u8 param0, u8 param1, u8 param2, u8 param3, u16 param4, u16 param5[], u8 param6);
BattleParams * ov104_0223B250(UnkStruct_ov104_0223B5C0 * param0, UnkStruct_ov104_02230BE4 * param1);
u8 ov104_0223B500(u8 param0);
u8 ov104_0223B50C(u8 param0);
u8 ov104_0223B5A4(u8 param0);
BOOL ov104_0223B5B0(u8 param0);
u8 ov104_0223B5C0(UnkStruct_ov104_0223B5C0 * param0);
u16 ov104_0223B64C(UnkStruct_ov104_0223B5C0 * param0);
fx32 ov104_0223B6C4(u32 param0);

#endif // POKEPLATINUM_OV104_0223AF58_H
