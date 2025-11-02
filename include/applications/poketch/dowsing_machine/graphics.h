#ifndef POKEPLATINUM_POKETCH_DOWSING_MACHINE_GRAPHICS_H
#define POKEPLATINUM_POKETCH_DOWSING_MACHINE_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define DOWSING_MACHINE_TASK_SLOTS 8

#define MAX_DOWSING_ITEMS 8

typedef struct DowsingMachineItemPosition {
    u16 x;
    u16 y;
    u16 range;
} DowsingMachineItemPosition;

typedef struct DowsingMachineData {
    u32 touchX;
    u32 touchY;
    int dowsingResult;
    u32 itemCount;
    DowsingMachineItemPosition itemPositions[MAX_DOWSING_ITEMS];
    BOOL unused;
} DowsingMachineData;

typedef struct DowsingMachingGraphics {
    const DowsingMachineData *dowsingData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + DOWSING_MACHINE_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *radarSprite;
    PoketchAnimation_AnimatedSpriteData *itemSprites[MAX_DOWSING_ITEMS];
    PoketchAnimation_SpriteData animData;
    BOOL allowAnimations;
    u16 palette[16];
} DowsingMachineGraphics;

enum DowsingMachineGraphicsTask {
    DOWSING_MACHINE_GRAPHICS_INIT = 0,
    DOWSING_MACHINE_GRAPHICS_FREE,
    DOWSING_MACHINE_GRAPHICS_START_PING,
};

BOOL PoketchDowsingMachineGraphics_New(DowsingMachineGraphics **graphics, const DowsingMachineData *dowsingData, BgConfig *bgConfig);
void PoketchDowsingMachineGraphics_Free(DowsingMachineGraphics *graphics);
void PoketchDowsingMachineGraphics_StartTask(DowsingMachineGraphics *graphics, enum DowsingMachineGraphicsTask taskID);
BOOL PoketchDowsingMachineGraphics_TaskIsNotActive(DowsingMachineGraphics *graphics, enum DowsingMachineGraphicsTask taskID);
BOOL PoketchDowsingMachineGraphics_NoActiveTasks(DowsingMachineGraphics *graphics);
void PoketchDowsingMachineGraphics_StopAllAnimations(DowsingMachineGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_DOWSING_MACHINE_GRAPHICS_H
