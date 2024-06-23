#ifndef POKEPLATINUM_UNK_02098700_H
#define POKEPLATINUM_UNK_02098700_H

#include "struct_decls/struct_02098700_decl.h"

HeightWeightData *Pokedex_HeightWeightData(int param0);
void Pokedex_HeightWeightData_Free(HeightWeightData *param0);
void Pokedex_HeightWeightData_Load(HeightWeightData *param0, int param1, int param2);
void Pokedex_HeightWeightData_Release(HeightWeightData *param0);
int sub_02098808(const HeightWeightData *param0, int param1);
int Pokedex_HeightWeightData_Weight(const HeightWeightData *param0, int param1);
short sub_02098848(const HeightWeightData *param0, int param1);
short sub_02098868(const HeightWeightData *param0, int param1);
short sub_02098888(const HeightWeightData *param0, int param1);
short sub_020988A8(const HeightWeightData *param0, int param1);

#endif // POKEPLATINUM_UNK_02098700_H
