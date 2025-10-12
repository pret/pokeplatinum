#ifndef POKEPLATINUM_POKETCH_COLOR_CHANGER_H
#define POKEPLATINUM_POKETCH_COLOR_CHANGER_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "poketch.h"

#define COLOR_CHANGER_TASK_SLOTS 4

#define COLOR_SLIDER_LEFT_X 56
#define COLOR_SLIDER_Y      148
#define COLOR_SLIDER_WIDTH  16

typedef struct ColorChangerData {
    enum PoketchScreenColor color;
} ColorChangerData;

typedef struct ColorChangerGraphics {
    const ColorChangerData *colorData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + COLOR_CHANGER_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *sprite;
    PoketchAnimation_SpriteData spriteData;
} ColorChangerGraphics;

enum ColorChangerGraphicsTask {
    COLOR_CHANGER_GRAPHICS_INIT = 0,
    COLOR_CHANGER_GRAPHICS_FREE,
    COLOR_CHANGER_GRAPHICS_UPDATE_COLOR,
};

BOOL PoketchColorChangerGraphics_New(ColorChangerGraphics **dest, const ColorChangerData *colorData, BgConfig *bgConfig);
void PoketchColorChangerGraphics_Free(ColorChangerGraphics *graphics);
void PoketchColorChangerGraphics_StartTask(ColorChangerGraphics *graphics, enum ColorChangerGraphicsTask taskID);
BOOL PoketchColorChanger_TaskIsNotActive(ColorChangerGraphics *graphics, enum ColorChangerGraphicsTask taskID);
BOOL PoketchColorChangerGraphics_NoActiveTasks(ColorChangerGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_COLOR_CHANGER_H
