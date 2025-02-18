#ifndef POKEPLATINUM_POKETCH_DIGITAL_WATCH_DISPLAY_H
#define POKEPLATINUM_POKETCH_DIGITAL_WATCH_DISPLAY_H

#include "bg_window.h"

// Display Tasks
#define NUM_TASK_SLOTS 8

#define DISPLAY_TASK_SETUP_BACKGROUND    0
#define DISPLAY_TASK_UPDATE_WATCH_DIGITS 1
#define DISPLAY_TASK_TOGGLE_BACKLIGHT    2
#define DISPLAY_TASK_FREE_BACKGROUND     3

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

typedef struct DisplayManager {
    const WatchData *watchData;
    BgConfig *bgConfig;
    u32 taskList[2 + NUM_TASK_SLOTS];
    u16 digitsTilemap[POKETCH_DIGIT_TILEMAP_SIZE_BYTES];
} DisplayManager;

BOOL PoketchDigitalWatch_SetupDisplayManager(DisplayManager **displayManager, const WatchData *watchData, BgConfig *bgConfig);
void PoketchDigitalWatch_FreeDisplayManager(DisplayManager *displayManager);
void PoketchDigitalWatch_StartDisplayTask(DisplayManager *displayManager, u32 taskID);
BOOL PoketchDigitalWatch_DisplayTaskIsNotActive(DisplayManager *displayManager, u32 taskID);
BOOL PoketchDigitalWatch_NoActiveDisplayTasks(DisplayManager *displayManager);

#endif // POKEPLATINUM_POKETCH_DIGITAL_WATCH_DISPLAY_H
