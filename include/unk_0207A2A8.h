#ifndef POKEPLATINUM_UNK_0207A2A8_H
#define POKEPLATINUM_UNK_0207A2A8_H

#include "struct_decls/struct_02098700_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_0202610C.h"

#include "pokemon.h"

HeightWeightData *sub_0207A2A8(int param0);
void sub_0207A2C0(HeightWeightData *param0);
BOOL sub_0207A2D0(const BattleRegulation *param0, Pokemon *param1, const HeightWeightData *param2);
int sub_0207A3AC(const BattleRegulation *param0, Party *param1, const HeightWeightData *param2, u8 *param3);
int sub_0207A594(const BattleRegulation *param0, Party *param1, const HeightWeightData *param2);

#endif // POKEPLATINUM_UNK_0207A2A8_H
