#ifndef POKEPLATINUM_BRIGHTNESS_CONTROLLER_H
#define POKEPLATINUM_BRIGHTNESS_CONTROLLER_H

#include "constants/screen.h"

#define BRIGHTNESS_NO_SCREENS   (0)
#define BRIGHTNESS_MAIN_SCREEN  (1 << DS_SCREEN_MAIN)
#define BRIGHTNESS_SUB_SCREEN   (1 << DS_SCREEN_SUB)
#define BRIGHTNESS_BOTH_SCREENS (BRIGHTNESS_SUB_SCREEN | BRIGHTNESS_MAIN_SCREEN)

void BrightnessController_StartTransition(const u8 stepCount, const s16 tragetBrightness, const s16 startBrightness, const int planeMask, const u32 screenSelect);
void BrightnessController_SetScreenBrightness(const s16 brightness, const int planeMask, const u32 screenSelect);
void BrightnessController_ResetAllControllers(void);
void BrightnessController_ResetScreenController(const u32 screenSelect);
void BrightnessController_Update(void);
BOOL BrightnessController_IsTransitionComplete(u32 screenSelect);

#endif // POKEPLATINUM_BRIGHTNESS_CONTROLLER_H
