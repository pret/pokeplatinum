#ifndef POKEPLATINUM_END_CREDITS_SCENES_H
#define POKEPLATINUM_END_CREDITS_SCENES_H

#include "cutscenes/end_credits/defs.h"

void EndCreditsScenes_RunSceneLoadFuncs(EndCreditsApp *endCreditsApp, int scene);
void EndCreditsScenes_RunSceneUnloadFuncs(EndCreditsApp *endCreditsApp, int scene);
BOOL EndCreditsScenes_RunScene(EndCreditsApp *endCreditsApp, int scene);

#endif // POKEPLATINUM_END_CREDITS_SCENES_H
