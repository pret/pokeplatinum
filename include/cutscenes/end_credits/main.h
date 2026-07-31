#ifndef POKEPLATINUM_END_CREDITS_MAIN_H
#define POKEPLATINUM_END_CREDITS_MAIN_H

#include "cutscenes/end_credits/defs.h"

#include "overlay_manager.h"

int EndCreditsApp_Init(ApplicationManager *appMan, int *state);
int EndCreditsApp_Main(ApplicationManager *appMan, int *state);
int EndCreditsApp_Exit(ApplicationManager *appMan, int *state);
void EndCredits_FreeAppResources(EndCreditsApp *endCreditsApp);
void EndCredits_InitFinalScenes(EndCreditsApp *endCreditsApp);

#endif // POKEPLATINUM_END_CREDITS_MAIN_H
