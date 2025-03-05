#ifndef POKEPLATINUM_UNK_02092494_H
#define POKEPLATINUM_UNK_02092494_H

#include "struct_defs/struct_02090800.h"

#include "pokemon.h"
#include "trainer_info.h"

PokemonInfoDisplayStruct *sub_02092494(Pokemon *param0, BOOL param1, int heapID);
void sub_0209282C(PokemonInfoDisplayStruct *param0);
void sub_0209304C(Pokemon *param0, TrainerInfo *param1, int param2, int param3, int param4);
void UpdateBoxMonStatusAndTrainerInfo(BoxPokemon *boxMon, TrainerInfo *trainerInfo, int sel, int metLocation, int heapID);

#endif // POKEPLATINUM_UNK_02092494_H
