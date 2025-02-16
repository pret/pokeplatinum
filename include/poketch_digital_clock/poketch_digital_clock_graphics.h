#ifndef POKEPLATINUM_POKETCH_DIGITAL_CLOCK_GRAPHICS_H
#define POKEPLATINUM_POKETCH_DIGITAL_CLOCK_GRAPHICS_H

#include "bg_window.h"

#define SYS_TASK_FUNC_SETUP_BACKGROUND         0
#define SYS_TASK_FUNC_UPDATE_CLOCK_DIGITS      1
#define SYS_TASK_FUNC_TOGGLE_BACKLIGHT_PALETTE 2
#define SYS_TASK_FUNC_FREE_BACKGROUND          3

typedef struct DisplayData_t DisplayData;

typedef struct {
    RTCTime time;
    u32 backlightActive;
} ClockData;

BOOL PoketchDigitalClock_SetupDisplayData(DisplayData **displayData, const ClockData *clockData, BgConfig *bgConfig);
void PoketchDigitalClock_FreeDisplayData(DisplayData *displayData);
void PoketchDigitalClock_RunTaskFunction(DisplayData *displayData, u32 functionID);
BOOL ov26_022564CC(DisplayData *displayData, u32 param1);
BOOL ov26_022564D8(DisplayData *displayData);

#endif // POKEPLATINUM_POKETCH_DIGITAL_CLOCK_GRAPHICS_H
