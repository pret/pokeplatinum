#ifndef ROWAN_INTRO_H
#define ROWAN_INTRO_H

#include <nitro.h>

#include "overlay_manager.h"

BOOL RowanIntro_Init(ApplicationManager *appMan, int *state);
BOOL RowanIntro_Main(ApplicationManager *appMan, int *state);
BOOL RowanIntro_Exit(ApplicationManager *appMan, int *state);

#endif // ROWAN_INTRO_H
