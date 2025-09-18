#ifndef POKEPLATINUM_POKETCH_COUNTER_GRAPHICS_H
#define POKEPLATINUM_POKETCH_COUNTER_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define COUNTER_TASK_SLOTS 4

#define NUM_DIGITS 4

enum CounterButtonPosition {
    COUNTER_BUTTON_PRESSED = 0,
    COUNTER_BUTTON_UNPRESSED,
};

typedef struct CounterData {
    u32 value;
    enum CounterButtonPosition buttonPosition;
} CounterData;

typedef struct CounterGraphics {
    const CounterData *counterData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + COUNTER_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *buttonAnimation;
    PoketchAnimation_AnimatedSpriteData *digitsAnimation[NUM_DIGITS];
    PoketchAnimation_SpriteData buttonSprites;
    PoketchAnimation_SpriteData digitSprites;
} CounterGraphics;

enum CounterGraphicsTask {
    COUNTER_GRAPHICS_INIT = 0,
    COUNTER_GRAPHICS_FREE,
    COUNTER_GRAPHICS_UPDATE_BUTTON,
    COUNTER_GRAPHICS_UPDATE_VALUE,
};

BOOL PoketchCounterGraphics_New(CounterGraphics **graphics, const CounterData *counterState, BgConfig *bgConfig);
void PoketchCounterGraphics_Free(CounterGraphics *graphics);
void PoketchCounterGraphics_StartTask(CounterGraphics *graphics, enum CounterGraphicsTask taskID);
BOOL PoketchCounterGraphics_TaskIsNotActive(CounterGraphics *graphics, enum CounterGraphicsTask taskID);
BOOL PoketchCounterGraphics_NoActiveTasks(CounterGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_COUNTER_GRAPHICS_H
