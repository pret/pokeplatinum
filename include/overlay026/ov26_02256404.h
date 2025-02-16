#ifndef POKEPLATINUM_OV26_02256404_H
#define POKEPLATINUM_OV26_02256404_H

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

BOOL ov26_02256404(DisplayData **param0, const ClockData *param1, BgConfig *param2);
void PoketchDigitalClock_FreeDisplayData(DisplayData *param0);
void PoketchDigitalClock_RunTaskFunction(DisplayData *param0, u32 param1);
BOOL ov26_022564CC(DisplayData *param0, u32 param1);
BOOL ov26_022564D8(DisplayData *param0);

#endif // POKEPLATINUM_OV26_02256404_H
