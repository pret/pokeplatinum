#ifndef POKEPLATINUM_Pokedex_HeightWeight_H
#define POKEPLATINUM_Pokedex_HeightWeight_H

typedef struct HeightWeightData {
    int *height;
    int *weight;
    short *trainerPos;
    short *pokemonPos;
    short *trainerScale;
    short *pokemonScale;
} HeightWeightData;

HeightWeightData *Pokedex_HeightWeightData(int heapID);
void Pokedex_HeightWeightData_Free(HeightWeightData *HWData);
void Pokedex_HeightWeightData_Load(HeightWeightData *HWData, int trainerIsGirl, int heapID);
void Pokedex_HeightWeightData_Release(HeightWeightData *HWData);
int Pokedex_HeightWeightData_Height(const HeightWeightData *HWData, int species);
int Pokedex_HeightWeightData_Weight(const HeightWeightData *HWData, int species);
short Pokedex_HeightWeightData_TrainerPos(const HeightWeightData *HWData, int species);
short Pokedex_HeightWeightData_PokemonPos(const HeightWeightData *HWData, int species);
short Pokedex_HeightWeightData_TrainerScale(const HeightWeightData *HWData, int species);
short Pokedex_HeightWeightData_PokemonScale(const HeightWeightData *HWData, int species);

#endif // POKEPLATINUM_Pokedex_HeightWeight_H
