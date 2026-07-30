#ifndef POKEPLATINUM_EGG_HATCH_H
#define POKEPLATINUM_EGG_HATCH_H

#include "struct_defs/pokemon.h"

#include "applications/naming_screen.h"

#include "field_task.h"
#include "game_options.h"
#include "trainer_info.h"

typedef struct {
    Pokemon *mon;
    Options *options;
    TrainerInfo *trainerInfo;
    u16 bgmID;
} EggHatchArgs;

typedef struct {
    int state;
    BOOL nicknameMon;
    NamingScreenArgs *nameScreenArgs;
    EggHatchArgs args;
} EggHatchApp;

void EggHatch_HatchEgg(FieldTask *task, void *args);

#endif // POKEPLATINUM_EGG_HATCH_H
