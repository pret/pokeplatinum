#ifndef POKEPLATINUM_END_CREDITS_COMMON_H
#define POKEPLATINUM_END_CREDITS_COMMON_H

#include "cutscenes/end_credits/defs.h"

#include "sprite_system.h"

void EndCreditsCommon_Load3DModelStartingPositions(EndCreditsApp *endCreditsApp, int bikeSceneIndex);
void EndCreditsCommon_Set3DModelStartingPositions(EndCreditsApp *endCreditsApp);
BOOL EndCreditsCommon_Scroll3DModels(EndCreditsApp *endCreditsApp, s32 nightModelType);
void EndCreditsCommon_LoadMemoryImage(EndCreditsApp *endCreditsApp, int index, int bgLayer, int twinleaf);
void EndCreditsCommon_AnimatePlayerSprite(EndCreditsApp *endCreditsApp, ManagedSprite *managedSprite);

#endif // POKEPLATINUM_END_CREDITS_COMMON_H
