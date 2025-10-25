#ifndef POKEPLATINUM_POKETCH_UNUSED_4_GRAPHICS_H
#define POKEPLATINUM_POKETCH_UNUSED_4_GRAPHICS_H

#include "bg_window.h"

typedef struct Unused4Data {
    u32 appID;
} Unused4Data;

typedef struct UnusedApp4Graphics {
    const Unused4Data *data;
    BgConfig *bgConfig;
    u32 activeTasks[10];
} UnusedApp4Graphics;

BOOL PoketchUnusedApp4Graphics_New(UnusedApp4Graphics **dest, const Unused4Data *data, BgConfig *bgConfig);
void PoketchUnusedApp4Graphics_Free(UnusedApp4Graphics *graphics);
void PoketchUnusedApp4Graphics_StartTask(UnusedApp4Graphics *graphics, u32 taskID);
BOOL PoketchUnusedApp4Graphics_TaskIsNotActive(UnusedApp4Graphics *graphics, u32 taskID);
BOOL PoketchUnusedApp4Graphics_NoActiveTasks(UnusedApp4Graphics *graphics);

#endif // POKEPLATINUM_POKETCH_UNUSED_4_GRAPHICS_H
