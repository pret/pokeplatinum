#ifndef POKEPLATINUM_TRAINERCARD_SCREEN_H
#define POKEPLATINUM_TRAINERCARD_SCREEN_H

#include "overlay_manager.h"

enum BadgePolishLevels {
    BADGE_POLISH_LEVEL_FILTHY,
    BADGE_POLISH_LEVEL_DIRTY,
    BADGE_POLISH_LEVEL_NORMAL,
    BADGE_POLISH_LEVEL_2_SPARKLES,
    BADGE_POLISH_LEVEL_4_SPARKLES,
    BADGE_POLISH_LEVEL_COUNT
};

BOOL TrainerCardScreen_Init(ApplicationManager *appMan, int *state);
BOOL TrainerCardScreen_Main(ApplicationManager *appMan, int *state);
BOOL TrainerCardScreen_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_TRAINERCARD_SCREEN_H
