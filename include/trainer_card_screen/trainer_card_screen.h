#ifndef POKEPLATINUM_TRAINERCARD_SCREEN_H
#define POKEPLATINUM_TRAINERCARD_SCREEN_H

#include "overlay_manager.h"

BOOL TrainerCardScreen_Init(ApplicationManager *appMan, int *state);
BOOL TrainerCardScreen_Main(ApplicationManager *appMan, int *state);
BOOL TrainerCardScreen_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_TRAINERCARD_SCREEN_H
