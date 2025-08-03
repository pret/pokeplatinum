#ifndef POKEPLATINUM_TRAINER_MEMO_H
#define POKEPLATINUM_TRAINER_MEMO_H

#include "struct_defs/struct_02090800.h"

#include "pokemon.h"
#include "trainer_info.h"

PokemonInfoDisplayStruct *sub_02092494(Pokemon *mon, BOOL isMine, int heapID);
void sub_0209282C(PokemonInfoDisplayStruct *infoDisplay);
void UpdateMonStatusAndTrainerInfo(Pokemon *mon, TrainerInfo *trainerInfo, int sel, int metLocation, int heapID);
void UpdateBoxMonStatusAndTrainerInfo(BoxPokemon *boxMon, TrainerInfo *trainerInfo, int sel, int metLocation, int heapID);

#endif // POKEPLATINUM_TRAINER_MEMO_H
