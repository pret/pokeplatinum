#ifndef POKEPLATINUM_POKETCH_ANALOG_WATCH_GRAPHICS_H
#define POKEPLATINUM_POKETCH_ANALOG_WATCH_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "sys_task_manager.h"

#define ANALOG_WATCH_TASK_SLOTS 8

#define NUM_SPRITES 2

typedef struct AnalogWatchData {
    RTCTime time;
    BOOL isBright;
} AnalogWatchData;

typedef struct AnalogWatchGraphics {
    const AnalogWatchData *watchData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + ANALOG_WATCH_TASK_SLOTS];
    SysTask *emptyTask;
    PoketchAnimation_SpriteData clockHandSprites;
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *animSpriteData[NUM_SPRITES];
} AnalogWatchGraphics;

enum AnalogWatchGraphicsTask {
    ANALOG_WATCH_GRAPHICS_INIT = 0,
    ANALOG_WATCH_GRAPHICS_TIME,
    ANALOG_WATCH_GRAPHICS_BRIGHTNESS,
    ANALOG_WATCH_GRAPHICS_FREE,
};

BOOL PoketchAnalogWatch_New(AnalogWatchGraphics **graphics, const AnalogWatchData *watchData, BgConfig *bgConfig);
void PoketchAnalogWatchGraphics_Free(AnalogWatchGraphics *graphics);
void PoketchAnalogWatchGraphics_StartTask(AnalogWatchGraphics *graphics, enum AnalogWatchGraphicsTask taskID);
BOOL PoketchAnalogWatchGraphics_TaskIsNotActive(AnalogWatchGraphics *graphics, enum AnalogWatchGraphicsTask taskID);
BOOL PoketchAnalogWatchGraphics_NoActiveTasks(AnalogWatchGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_ANALOG_WATCH_GRAPHICS_H
