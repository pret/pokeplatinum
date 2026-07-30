#ifndef POKEPLATINUM_APPLICATIONS_TRAINER_CASE_MAIN_H
#define POKEPLATINUM_APPLICATIONS_TRAINER_CASE_MAIN_H

#include "overlay_manager.h"

BOOL TrainerCaseApp_Init(ApplicationManager *appMan, int *state);
BOOL TrainerCaseApp_Main(ApplicationManager *appMan, int *state);
BOOL TrainerCaseApp_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_APPLICATIONS_TRAINER_CASE_MAIN_H
