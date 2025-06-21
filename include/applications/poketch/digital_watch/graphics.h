#ifndef POKEPLATINUM_POKETCH_digital_watch_graphics_H
#define POKEPLATINUM_POKETCH_digital_watch_graphics_H

#include "bg_window.h"

#define NUM_TASK_SLOTS 8

// Graphics
#define POKETCH_DIGITAL_WATCH_NARC_TILES_IDX   23
#define POKETCH_DIGITAL_WATCH_NARC_TILEMAP_IDX 24
#define POKETCH_CLOCK_DIGITS_TILEMAP_IDX       25
#define POKETCH_NUM_CLOCK_DIGITS               10

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
} WatchData;

typedef struct PoketchDigitalWatchGraphics {
    const WatchData *watchData;
    BgConfig *bgConfig;
    u32 activeTasks[2 + NUM_TASK_SLOTS];
    u16 digitsTilemap[POKETCH_DIGIT_TILEMAP_SIZE_BYTES];
} PoketchDigitalWatchGraphics;

enum DigitalWatchGraphicsTasks {
    TASK_DRAW_APP_SCREEN = 0,
    TASK_UPDATE_WATCH_DIGITS,
    TASK_TOGGLE_BACKLIGHT,
    TASK_FREE_GRAPHICS,
};

BOOL PoketchDigitalWatchGraphics_New(PoketchDigitalWatchGraphics **graphics, const WatchData *watchData, BgConfig *bgConfig);
void PoketchDigitalWatchGraphics_Free(PoketchDigitalWatchGraphics *graphics);
void PoketchDigitalWatchGraphics_StartTask(PoketchDigitalWatchGraphics *graphics, enum DigitalWatchGraphicsTasks taskID);
BOOL PoketchDigitalWatchGraphics_TaskIsNotActive(PoketchDigitalWatchGraphics *graphics, enum DigitalWatchGraphicsTasks taskID);
BOOL PoketchDigitalWatchGraphics_NoActiveTasks(PoketchDigitalWatchGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_digital_watch_graphics_H
