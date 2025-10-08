#ifndef POKEPLATINUM_POKETCH_ALARM_CLOCK_GRAPHICS_H
#define POKEPLATINUM_POKETCH_ALARM_CLOCK_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define ALARM_CLOCK_TASK_SLOTS 8

#define NUM_SPRITES 13

typedef struct AlarmClockData {
    u8 alarmSet;
    s8 currentHour;
    s8 currentMinute;
    s8 alarmHour;
    s8 alarmMinute;
} AlarmClockData;

typedef struct AlarmClockGraphics {
    const AlarmClockData *clockData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + ALARM_CLOCK_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *sprites[NUM_SPRITES];
    PoketchAnimation_SpriteData alarmSprites;
    PoketchAnimation_SpriteData digitSprites;
    BOOL stopAlarm;
    u32 digitBlinkTimer;
    BOOL showDigits;
} AlarmClockGraphics;

enum AlarmClockGraphicsTask {
    ALARM_CLOCK_GRAPHICS_INIT = 0,
    ALARM_CLOCK_GRAPHICS_FREE,
    ALARM_CLOCK_GRAPHICS_SHOW_CURRENT_TIME,
    ALARM_CLOCK_GRAPHICS_ENTER_EDIT_MODE,
    ALARM_CLOCK_GRAPHICS_UPDATE_DIGITS,
    ALARM_CLOCK_GRAPHICS_SOUND_ALARM,
};

BOOL PoketchAlarmClockGraphics_New(AlarmClockGraphics **dest, const AlarmClockData *clockData, BgConfig *bgConfig);
void PoketchAlarmClockGraphics_Free(AlarmClockGraphics *graphics);
void PoketchAlarmClockGraphics_StartTask(AlarmClockGraphics *graphics, enum AlarmClockGraphicsTask taskID);
BOOL PoketchAlarmClockGraphics_TaskIsNotActive(AlarmClockGraphics *graphics, enum AlarmClockGraphicsTask taskID);
BOOL PoketchAlarmClockGraphics_NoActiveTasks(AlarmClockGraphics *graphics);
void StopSoundingAlarm(AlarmClockGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_ALARM_CLOCK_GRAPHICS_H
