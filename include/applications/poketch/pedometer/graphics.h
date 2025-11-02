#ifndef POKEPLATINUM_POKETCH_PEDOMETER_GRAPHICS_H
#define POKEPLATINUM_POKETCH_PEDOMETER_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define PEDOMETER_TASK_SLOTS 4

#define NUM_DIGITS 5

enum PedometerButtonPosition {
    PEDOMETER_BUTTON_PRESSED = 0,
    PEDOMETER_BUTTON_UNPRESSED,
};

typedef struct PedometerData {
    u32 steps;
    enum PedometerButtonPosition buttonPosition;
} PedometerData;

typedef struct PedometerGraphics {
    const PedometerData *pedometerData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + PEDOMETER_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *buttonAnimation;
    PoketchAnimation_AnimatedSpriteData *digitsAnimation[NUM_DIGITS];
    PoketchAnimation_SpriteData buttonSprites;
    PoketchAnimation_SpriteData digitSprites;
} PedometerGraphics;

enum PedometerGraphicsTask {
    PEDOMETER_GRAPHICS_INIT = 0,
    PEDOMETER_GRAPHICS_FREE,
    PEDOMETER_GRAPHICS_UPDATE_BUTTON,
    PEDOMETER_GRAPHICS_UPDATE_VALUE,
};

BOOL PoketchPedometerGraphics_New(PedometerGraphics **graphics, const PedometerData *pedometerData, BgConfig *bgConfig);
void PoketchPedometerGraphics_Free(PedometerGraphics *graphics);
void PoketchPedometerGraphics_StartTask(PedometerGraphics *graphics, enum PedometerGraphicsTask taskID);
BOOL PoketchPedometerGraphics_TaskIsNotActive(PedometerGraphics *graphics, enum PedometerGraphicsTask taskID);
BOOL PoketchPedometerGraphics_NoActiveTasks(PedometerGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_PEDOMETER_GRAPHICS_H
