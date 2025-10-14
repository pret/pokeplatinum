#ifndef POKEPLATINUM_POKETCH_UNUSED_3_GRAPHICS_H
#define POKEPLATINUM_POKETCH_UNUSED_3_GRAPHICS_H

#include "bg_window.h"

typedef struct Unused3Data {
    u32 unused;
} Unused3Data;

typedef struct UnusedApp3Graphics {
    const Unused3Data *data;
    BgConfig *bgConfig;
    u32 activeTasks[10];
} UnusedApp3Graphics;

BOOL PoketchUnusedApp3Graphics_New(UnusedApp3Graphics **dest, const Unused3Data *data, BgConfig *bgConfig);
void PoketchUnusedApp3Graphics_Free(UnusedApp3Graphics *graphics);
void PoketchUnusedApp3Graphics_StartTask(UnusedApp3Graphics *graphics, u32 taskID);
BOOL PoketchUnusedApp3Graphics_TaskIsNotActive(UnusedApp3Graphics *graphics, u32 taskID);
BOOL PoketchUnusedApp3Graphics_NoActiveTasks(UnusedApp3Graphics *graphics);

#endif // POKEPLATINUM_POKETCH_UNUSED_3_GRAPHICS_H
