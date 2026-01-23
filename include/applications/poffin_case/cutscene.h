#ifndef POKEPLATINUM_APPLICATIONS_POFFIN_CASE_CUTSCENE_H
#define POKEPLATINUM_APPLICATIONS_POFFIN_CASE_CUTSCENE_H

#include "struct_defs/pokemon.h"

#include "overlay_manager.h"
#include "poffin.h"

typedef struct PoffinCutsceneData {
    Pokemon *mon;
    Poffin *poffin;
    u16 poffinType;
    u8 textDelay;
    u8 frame;
} PoffinCutsceneData;

BOOL PoffinCutscene_Init(ApplicationManager *appMan, int *state);
BOOL PoffinCutscene_Main(ApplicationManager *appMan, int *state);
BOOL PoffinCutscene_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_APPLICATIONS_POFFIN_CASE_CUTSCENE_H
