#ifndef POKEPLATINUM_END_CREDITS_SCENES_H
#define POKEPLATINUM_END_CREDITS_SCENES_H

#include "cutscenes/end_credits/defs.h"

void EndCreditsScenes_RunSceneLoadFuncs(EndCreditsApp *endCreditsApp, int scene);
void EndCreditsScenes_RunSceneUnloadFuncs(EndCreditsApp *endCreditsApp, int scene);
BOOL EndCreditsScenes_RunScene(EndCreditsApp *endCreditsApp, int scene);
BOOL EndCreditsMorningScene_Run(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager);
BOOL EndCreditsDayScene_Run(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager);
BOOL EndCreditsNightScene_Run(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager);
BOOL EndCreditsMemoriesScene_Run1(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager);
BOOL EndCreditsMemoriesScene_Run2(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager);
BOOL EndCreditsTwinleafScene_Run(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager);
BOOL EndCreditsFinScene_Run(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager);

#endif // POKEPLATINUM_END_CREDITS_SCENES_H
