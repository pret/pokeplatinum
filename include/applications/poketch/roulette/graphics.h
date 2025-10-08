#ifndef POKEPLATINUM_POKETCH_ROULETTE_GRAPHICS_H
#define POKEPLATINUM_POKETCH_ROULETTE_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define ROULETTE_TASK_SLOTS 4

#define NUM_SPRITES 4

#define DRAWING_REGION_WIDTH  156
#define DRAWING_REGION_HEIGHT 150

typedef struct RouletteData {
    u32 x;
    u32 y;
    u32 appID;
    u8 pixels[DRAWING_REGION_WIDTH][DRAWING_REGION_HEIGHT];
    u8 playButtonPressed;
    u8 stopButtonPressed;
    u8 clearButtonPressed;
} RouletteData;

typedef struct RouletteGraphics {
    const RouletteData *rouletteData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + ROULETTE_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *sprites[NUM_SPRITES];
    PoketchAnimation_SpriteData animData;
    Window window;
    u32 windowBaseTile;
    BOOL killSpinnerTask;
    BOOL stopSpinner;
    BOOL spinnerUpToSpeed;
    u16 spinnerAngle;
    u16 rotationSpeed;
    u32 stopDelay;
} RouletteGraphics;

enum RouletteGraphicsTask {
    ROULETTE_GRAPHICS_INIT = 0,
    ROULETTE_GRAPHICS_FREE,
    ROULETTE_GRAPHICS_UNUSED,
    ROULETTE_GRAPHICS_UPDATE_DRAWING,
    ROULETTE_GRAPHICS_UNUSED2,
    ROULETTE_GRAPHICS_UPDATE_BUTTONS,
    ROULETTE_GRAPHICS_CLEAR_DRAWING,
    ROULETTE_GRAPHICS_RUN_SPINNER,
    ROULETTE_GRAPHICS_STOP_SPINNER,
};

BOOL PoketchRouletteGraphics_New(RouletteGraphics **dest, const RouletteData *rouletteData, BgConfig *bgConfig);
void PoketchRouletteGraphics_Free(RouletteGraphics *graphics);
void PoketchRouletteGraphics_StartTask(RouletteGraphics *graphics, enum RouletteGraphicsTask taskID);
BOOL PoketchRouletteGraphics_TaskIsNotActive(RouletteGraphics *graphics, enum RouletteGraphicsTask taskID);
BOOL PoketchRouletteGraphics_NoActiveTasks(RouletteGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_ROULETTE_GRAPHICS_H
