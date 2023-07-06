#ifndef POKEPLATINUM_OV104_0223B6F4_H
#define POKEPLATINUM_OV104_0223B6F4_H

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay006/battle_params.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223BA10.h"

void ov104_0223B760(u8 param0, int param1, u16 param2[], u8 param3);
u8 ov104_0223B7A8(u8 param0, BOOL param1);
u8 ov104_0223B7DC(u8 param0, BOOL param1);
BattleParams * ov104_0223B810(UnkStruct_ov104_0223BA10 * param0, UnkStruct_ov104_02230BE4 * param1);
u8 ov104_0223BA10(UnkStruct_ov104_0223BA10 * param0);
BOOL ov104_0223BA14(u8 param0);
void ov104_0223BA24(Party * param0);
void ov104_0223BA7C(UnkStruct_ov104_0223BA10 * param0, Pokemon * param1);
void ov104_0223BAA0(UnkStruct_ov104_0223BA10 * param0, Party * param1, Pokemon * param2);
void ov104_0223BAB8(UnkStruct_ov104_0223BA10 * param0);
u16 ov104_0223BB60(UnkStruct_ov104_0223BA10 * param0);
void ov104_0223BB84(UnkStruct_02018340 * param0, UnkStruct_ov104_0223BA10 * param1, u32 param2);
u16 ov104_0223BC24(u16 param0);
void ov104_0223BC2C(UnkStruct_0203068C * param0, u8 param1, int param2);

#endif // POKEPLATINUM_OV104_0223B6F4_H
