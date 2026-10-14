#ifndef POKEPLATINUM_SPEAR_PILLAR_MAIN_H
#define POKEPLATINUM_SPEAR_PILLAR_MAIN_H

#include "game_options.h"
#include "overlay_manager.h"
#include "trainer_info.h"

typedef struct SpearPillarCutsceneArgs {
    int playerGender;
    Options *options;
    const TrainerInfo *trainerInfo;
} SpearPillarCutsceneArgs;

int SpearPillarCutscene_Init(ApplicationManager *appMan, int *unused);
int SpearPillarCutscene_Main(ApplicationManager *appMan, int *state);
int SpearPillarCutscene_Exit(ApplicationManager *appMan, int *unused);

#endif // POKEPLATINUM_SPEAR_PILLAR_MAIN_H
