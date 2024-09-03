#ifndef POKEPLATINUM_Pokedex_HeightWeight_H
#define POKEPLATINUM_Pokedex_HeightWeight_H

#include "struct_decls/struct_02098700_decl.h"

HeightWeightData *Pokedex_HeightWeightData(int param0);
void Pokedex_HeightWeightData_Free(HeightWeightData *hw_data);
void Pokedex_HeightWeightData_Load(HeightWeightData *hw_data, int trainer_isgirl, int param2);
void Pokedex_HeightWeightData_Release(HeightWeightData *hw_data);
int Pokedex_HeightWeightData_Height(const HeightWeightData *hw_data, int dex_number);
int Pokedex_HeightWeightData_Weight(const HeightWeightData *hw_data, int dex_number);
short Pokedex_HeightWeightData_TrainerPos(const HeightWeightData *hw_data, int dex_number);
short Pokedex_HeightWeightData_PokemonPos(const HeightWeightData *hw_data, int dex_number);
short Pokedex_HeightWeightData_TrainerScale(const HeightWeightData *hw_data, int dex_number);
short Pokedex_HeightWeightData_PokemonScale(const HeightWeightData *hw_data, int dex_number);

#endif // POKEPLATINUM_Pokedex_HeightWeight_H
