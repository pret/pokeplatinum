#ifndef POKEPLATINUM_POKETCH_BACKLIGHT_TOGGLE_GRAPHICS_H
#define POKEPLATINUM_POKETCH_BACKLIGHT_TOGGLE_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define BACKLIGHT_TOGGLE_TASK_SLOTS 4

typedef struct BacklightData {
    BOOL isOn;
} BacklightData;

typedef struct BacklightToggleGraphics {
    const BacklightData *backlight;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + BACKLIGHT_TOGGLE_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *animation;
    PoketchAnimation_SpriteData sprite;
} BacklightToggleGraphics;

enum BacklightToggleGraphicsTask {
    BACKLIGHT_TOGGLE_GRAPHICS_INIT = 0,
    BACKLIGHT_TOGGLE_GRAPHICS_FREE,
    BACKLIGHT_TOGGLE_GRAPHICS_UPDATE_SWITCH
};

BOOL PoketchBacklightToggleGraphics_New(BacklightToggleGraphics **dest, const BacklightData *backlight, BgConfig *bgConfig);
void PoketchBacklightToggleGraphics_Free(BacklightToggleGraphics *graphics);
void PoketchBacklightToggleGraphics_StartTask(BacklightToggleGraphics *graphics, enum BacklightToggleGraphicsTask taskID);
BOOL PoketchBacklighToggleGraphics_TaskIsNotActive(BacklightToggleGraphics *graphics, enum BacklightToggleGraphicsTask taskID);
BOOL PoketchBacklightToggle_NoActiveTasks(BacklightToggleGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_BACKLIGHT_TOGGLE_GRAPHICS_H
