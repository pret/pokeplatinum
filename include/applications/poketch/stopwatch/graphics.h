#ifndef POKEPLATINUM_POKETCH_STOPWATCH_GRAPHICS_H
#define POKEPLATINUM_POKETCH_STOPWATCH_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "sys_task_manager.h"

#define STOPWATCH_TASK_SLOTS 8

typedef struct TimerState {
    BOOL isActive;
    BOOL isReset;
    u32 subseconds;
    u32 seconds;
    u32 minutes;
    u32 hours;
    int buttonSequence;
} TimerState;

typedef struct PoketchStopwatchGraphics {
    const TimerState *timerState;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + STOPWATCH_TASK_SLOTS];
    u32 unused;
    PoketchAnimation_SpriteData voltorbSprites;
    PoketchAnimation_SpriteData digitSprites;
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *animSpriteData[9];
    SysTask *timerUpdateTask;
} PoketchStopwatchGraphics;

enum StopwatchGraphicsTask {
    STOPWATCH_GRAPHICS_INIT = 0,
    STOPWATCH_GRAPHICS_UPDATE = 1,
    STOPWATCH_GRAPHICS_FREE = 3,
};

BOOL PoketchStopwatchGraphics_New(PoketchStopwatchGraphics **dest, const TimerState *timerState, BgConfig *bgConfig);
void PoketchStopwatchGraphics_Free(PoketchStopwatchGraphics *graphics);
void PoketchStopwatchGraphics_StartTask(PoketchStopwatchGraphics *graphics, enum StopwatchGraphicsTask taskID);
BOOL PoketchStopwatchGraphics_TaskIsNotActive(PoketchStopwatchGraphics *graphics, enum StopwatchGraphicsTask taskID);
BOOL PoketchStopwatchGraphics_NoActiveTasks(PoketchStopwatchGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_STOPWATCH_GRAPHICS_H
