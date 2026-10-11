#ifndef POKEPLATINUM_STRUCT_SPEAR_PILLAR_CUTSCENE_ARGS_H
#define POKEPLATINUM_STRUCT_SPEAR_PILLAR_CUTSCENE_ARGS_H

#include "game_options.h"
#include "trainer_info.h"

typedef struct SpearPillarCutsceneArgs {
    int playerGender;
    Options *options;
    const TrainerInfo *trainerInfo;
} SpearPillarCutsceneArgs;

#endif // POKEPLATINUM_STRUCT_SPEAR_PILLAR_CUTSCENE_ARGS_H
