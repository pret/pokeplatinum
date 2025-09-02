#ifndef POKEPLATINUM_POKETCH_STOPWATCH_GRAPHICS_H
#define POKEPLATINUM_POKETCH_STOPWATCH_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"

#include "bg_window.h"
#include "sys_task_manager.h"

#define NUM_TASK_SLOTS 8

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
    u32 activeTasks[2 + NUM_TASK_SLOTS];
    u32 unused;
    PoketchAnimation_SpriteData voltorbSprites;
    PoketchAnimation_SpriteData digitSprites;
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *animSpriteData[9];
    SysTask *timerUpdateTask;
} PoketchStopwatchGraphics;

enum StopwatchGraphicsTask {
    TASK_DRAW_APP_SCREEN = 0,
    TASK_UPDATE_GRAPHICS = 1,
    TASK_FREE_GRAPHICS = 3,
};

BOOL PoketchStopwatchGraphics_New(PoketchStopwatchGraphics **graphics, const TimerState *timerState, BgConfig *bgConfig);
void PoketchStopwatchGraphics_Free(PoketchStopwatchGraphics *graphics);
void PoketchStopwatchGraphics_StartTask(PoketchStopwatchGraphics *graphics, enum StopwatchGraphicsTask taskID);
BOOL PoketchStopwatchGraphics_TaskIsNotActive(PoketchStopwatchGraphics *graphics, enum StopwatchGraphicsTask taskID);
BOOL PoketchStopwatchGraphics_NoActiveTasks(PoketchStopwatchGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_STOPWATCH_GRAPHICS_H
