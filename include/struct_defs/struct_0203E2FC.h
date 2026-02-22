#ifndef POKEPLATINUM_STRUCT_0203E2FC_H
#define POKEPLATINUM_STRUCT_0203E2FC_H

#include "game_options.h"
#include "pokemon.h"
#include "trainer_info.h"

typedef struct {
    Pokemon *mon;
    Options *options;
    TrainerInfo *trainerInfo;
    u16 bgmID;
} EggHatchArgs;

#endif // POKEPLATINUM_STRUCT_0203E2FC_H
