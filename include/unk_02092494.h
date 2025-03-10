#ifndef POKEPLATINUM_UNK_02092494_H
#define POKEPLATINUM_UNK_02092494_H

#include "struct_defs/struct_02090800.h"

#include "pokemon.h"
#include "trainer_info.h"

PokemonInfoDisplayStruct *sub_02092494(Pokemon *param0, BOOL param1, int heapID);
void sub_0209282C(PokemonInfoDisplayStruct *param0);
void UpdateMonStatusAndTrainerInfo(Pokemon *mon, TrainerInfo *trainerInfo, int sel, int metLocation, int heapID);
void UpdateBoxMonStatusAndTrainerInfo(BoxPokemon *boxMon, TrainerInfo *trainerInfo, int sel, int metLocation, int heapID);

#endif // POKEPLATINUM_UNK_02092494_H
