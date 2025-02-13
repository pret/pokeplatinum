#ifndef POKEPLATINUM_BRIGHTNESS_CONTROLLER_H
#define POKEPLATINUM_BRIGHTNESS_CONTROLLER_H

#define SCREEN_A 1
#define SCREEN_B 2

void BrightnessController_StartTransition(const u8 step_count, const s16 traget_brightness, const s16 start_brightness, const int plane_mask, const u32 screen_select);
void BrightnessController_SetScreenBrightness(const s16 brightness, const int plane_mask, const u32 screen_select);
void BrightnessController_ResetAllControllers(void);
void BrightnessController_ResetScreenController(const u32 screen_select);
void BrightnessController_Update(void);
BOOL BrightnessController_IsTransitionComplete(u32 screen_select);

#endif // POKEPLATINUM_BRIGHTNESS_CONTROLLER_H
