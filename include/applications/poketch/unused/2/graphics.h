#ifndef POKEPLATINUM_POKETCH_UNUSED_2_GRAPHICS_H
#define POKEPLATINUM_POKETCH_UNUSED_2_GRAPHICS_H

#include "bg_window.h"

#define NUM_BUTTONS 6

typedef struct Unused2Data {
    u32 unused;
    BOOL buttonUnlocked[NUM_BUTTONS];
    u16 pressedButtonID;
} Unused2Data;

typedef struct UnusedApp2Graphics {
    const Unused2Data *appData;
    BgConfig *bgConfig;
    u32 activeTasks[6];
} UnusedApp2Graphics;

BOOL PoketchUnusedApp2Graphics_New(UnusedApp2Graphics **dest, const Unused2Data *data, BgConfig *bgConfig);
void PoketchUnusedApp2Graphics_Free(UnusedApp2Graphics *graphics);
void PoketchUnusedApp2Graphics_StartTask(UnusedApp2Graphics *graphics, u32 taskID);
BOOL PoketchUnusedApp2Graphics_TaskIsNotActive(UnusedApp2Graphics *graphics, u32 taskID);
BOOL PoketchUnusedApp2Graphics_NoActiveTasks(UnusedApp2Graphics *graphics);

#endif // POKEPLATINUM_POKETCH_UNUSED_2_GRAPHICS_H
