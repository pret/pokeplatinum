#ifndef POKEPLATINUM_POKETCH_UNUSED_1_GRAPHICS_H
#define POKEPLATINUM_POKETCH_UNUSED_1_GRAPHICS_H

#include "bg_window.h"

typedef struct Unused1Data {
    u32 unused;
} Unused1Data;

typedef struct UnusedApp1Graphics {
    const Unused1Data *data;
    BgConfig *bgConfig;
    u32 activeTasks[10];
} UnusedApp1Graphics;

BOOL PoketchUnusedApp1Graphics_New(UnusedApp1Graphics **dest, const Unused1Data *data, BgConfig *bgConfig);
void PoketchUnusedApp1Graphics_Free(UnusedApp1Graphics *graphics);
void PoketchUnusedApp1Graphics_StartTask(UnusedApp1Graphics *graphics, u32 taskID);
BOOL PoketchUnusedApp1Graphics_TaskIsNotActive(UnusedApp1Graphics *graphics, u32 taskID);
BOOL PoketchUnusedApp1Graphics_NoActiveTasks(UnusedApp1Graphics *graphics);

#endif // POKEPLATINUM_POKETCH_UNUSED_1_GRAPHICS_H
