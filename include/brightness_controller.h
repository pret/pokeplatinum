#ifndef POKEPLATINUM_BRIGHTNESS_CONTROLLER_H
#define POKEPLATINUM_BRIGHTNESS_CONTROLLER_H

#include "constants/graphics.h"

#define BRIGHTNESS_NO_SCREENS   (0)
#define BRIGHTNESS_MAIN_SCREEN  (1 << DS_SCREEN_MAIN)
#define BRIGHTNESS_SUB_SCREEN   (1 << DS_SCREEN_SUB)
#define BRIGHTNESS_BOTH_SCREENS (BRIGHTNESS_SUB_SCREEN | BRIGHTNESS_MAIN_SCREEN)

#define BRIGHTNESS_WHITE  16
#define BRIGHTNESS_NORMAL 0
#define BRIGHTNESS_BLACK  -16

void BrightnessController_StartTransition(u8 stepCount, s16 targetBrightness, s16 startBrightness, int planeMask, u32 screenSelect);
void BrightnessController_SetScreenBrightness(s16 brightness, int planeMask, u32 screenSelect);
void BrightnessController_ResetAllControllers(void);
void BrightnessController_ResetScreenController(u32 screenSelect);
void BrightnessController_Update(void);
BOOL BrightnessController_IsTransitionComplete(u32 screenSelect);

#endif // POKEPLATINUM_BRIGHTNESS_CONTROLLER_H
