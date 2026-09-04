#ifndef POKEPLATINUM_SCRATCH_OFF_CARDS_MAIN_H
#define POKEPLATINUM_SCRATCH_OFF_CARDS_MAIN_H

#include "overlay_manager.h"
#include "savedata.h"

typedef struct ScratchOffCardsAppArgs {
    SaveData *saveData;
    u8 dummy;
    u8 unused[3];
    u16 wonItems[3];
    u16 wonItemsCount[3];
    u16 dummy2;
    u16 unused2;
} ScratchOffCardsAppArgs;

BOOL ScratchOffCardApp_Init(ApplicationManager *appMan, int *state);
BOOL ScratchOffCardApp_Main(ApplicationManager *appMan, int *state);
BOOL ScratchOffCardApp_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_SCRATCH_OFF_CARDS_MAIN_H
