#ifndef POKEPLATINUM_APPLICATIONS_DIPLOMA_H
#define POKEPLATINUM_APPLICATIONS_DIPLOMA_H

#include "overlay_manager.h"
#include "savedata.h"

typedef struct DiplomaData {
    SaveData *saveData;
    BOOL isNatDex;
} DiplomaData;

BOOL Diploma_Init(ApplicationManager *appMan, int *state);
BOOL Diploma_Main(ApplicationManager *appMan, int *state);
BOOL Diploma_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_APPLICATIONS_DIPLOMA_H
