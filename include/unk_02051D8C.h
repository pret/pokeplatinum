#ifndef POKEPLATINUM_UNK_02051D8C_H
#define POKEPLATINUM_UNK_02051D8C_H

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202B628_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_0203CDB0_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207D99C_decl.h"
#include "struct_defs/struct_0209C370.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay006/battle_params.h"

BattleParams * sub_02051D8C(int param0, u32 param1);
BattleParams * sub_02051F24(int param0, int param1);
BattleParams * sub_02051F38(int param0, int param1);
BattleParams * sub_02051F4C(int param0, const UnkStruct_0203CDB0 * param1);
void sub_020520A4(BattleParams * param0);
void sub_0205213C(BattleParams * param0, Pokemon * param1, int param2);
void sub_02052164(BattleParams * param0, const Party * param1, int param2);
void sub_02052184(BattleParams * param0, const UnkStruct_02025E6C * param1, int param2);
void sub_020521A4(BattleParams * param0, const UnkStruct_0202CC84 * param1, int param2);
void sub_020521B8(BattleParams * param0, const UnkStruct_0203CDB0 * param1, UnkStruct_021C0794 * param2, int param3, UnkStruct_0202B628 * param4, UnkStruct_0207D99C * param5, UnkStruct_0209C370 * param6);
void sub_02052314(BattleParams * param0, const UnkStruct_0203CDB0 * param1);
void sub_02052348(BattleParams * param0, const UnkStruct_0203CDB0 * param1, int param2);
void sub_020524E4(BattleParams * param0, const UnkStruct_0203CDB0 * param1, const Party * param2, const u8 * param3);
void sub_020526CC(BattleParams * param0, const UnkStruct_0203CDB0 * param1, const u8 * param2);
void sub_020526E8(const BattleParams * param0, UnkStruct_0203CDB0 * param1);
void sub_02052754(const BattleParams * param0, UnkStruct_0203CDB0 * param1);
void sub_0205285C(BattleParams * param0);
BOOL sub_02052868(u32 param0);
BOOL sub_02052878(u32 param0);
BOOL sub_02052888(u32 param0);

#endif // POKEPLATINUM_UNK_02051D8C_H
