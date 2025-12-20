#ifndef POKEPLATINUM_POKETCH_DIGITAL_WATCH_GRAPHICS_H
#define POKEPLATINUM_POKETCH_DIGITAL_WATCH_GRAPHICS_H

#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define DIGITAL_WATCH_TASK_SLOTS 8

#define POKETCH_NUM_CLOCK_DIGITS 10

#define POKETCH_CLOCK_DIGIT_WIDTH     4
#define POKETCH_CLOCK_DIGIT_HEIGHT    9
#define POKETCH_CLOCK_DIGIT_GAP       1
#define POKETCH_CLOCK_HOURS_DIGIT_X   3
#define POKETCH_CLOCK_HOURS_DIGIT_Y   7
#define POKETCH_CLOCK_MINUTES_DIGIT_X 15
#define POKETCH_CLOCK_MINUTES_DIGIT_Y 7

#define POKETCH_DIGIT_TILEMAP_WIDTH      (POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS)
#define POKETCH_DIGIT_TILEMAP_HEIGHT     (POKETCH_CLOCK_DIGIT_HEIGHT)
#define POKETCH_DIGIT_TILEMAP_SIZE_BYTES (POKETCH_DIGIT_TILEMAP_WIDTH * POKETCH_DIGIT_TILEMAP_HEIGHT)

typedef struct {
    RTCTime time;
    u32 backlightActive;
} DigitalWatchData;

typedef struct PoketchDigitalWatchGraphics {
    const DigitalWatchData *watchData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + DIGITAL_WATCH_TASK_SLOTS];
    u16 digitsTilemap[POKETCH_DIGIT_TILEMAP_SIZE_BYTES];
} PoketchDigitalWatchGraphics;

enum DigitalWatchGraphicsTask {
    DIGITAL_WATCH_GRAPHICS_INIT = 0,
    DIGITAL_WATCH_GRAPHICS_UPDATE_DIGITS,
    DIGITAL_WATCH_GRAPHICS_TOGGLE_BACKLIGHT,
    DIGITAL_WATCH_GRAPHICS_FREE,
};

BOOL PoketchDigitalWatchGraphics_New(PoketchDigitalWatchGraphics **dest, const DigitalWatchData *watchData, BgConfig *bgConfig);
void PoketchDigitalWatchGraphics_Free(PoketchDigitalWatchGraphics *graphics);
void PoketchDigitalWatchGraphics_StartTask(PoketchDigitalWatchGraphics *graphics, enum DigitalWatchGraphicsTask taskID);
BOOL PoketchDigitalWatchGraphics_TaskIsNotActive(PoketchDigitalWatchGraphics *graphics, enum DigitalWatchGraphicsTask taskID);
BOOL PoketchDigitalWatchGraphics_NoActiveTasks(PoketchDigitalWatchGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_DIGITAL_WATCH_GRAPHICS_H
