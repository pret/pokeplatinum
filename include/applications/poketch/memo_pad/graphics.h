#ifndef POKEPLATINUM_POKETCH_MEMO_PAD_GRAPHICS_H
#define POKEPLATINUM_POKETCH_MEMO_PAD_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"

#include "bg_window.h"

#define NUM_TASK_SLOTS 16
#define NUM_SPRITES    2

#define MEMO_PAD_WIDTH  78
#define MEMO_PAD_HEIGHT 75
#define ERASER_SIZE     4

typedef struct MemoPadState {
    BOOL pencilActive;
    u32 x;
    u32 y;
    u8 pixels[MEMO_PAD_WIDTH][MEMO_PAD_HEIGHT];
    u32 appID;
} MemoPadState;

typedef struct MemoPadGraphics {
    const MemoPadState *padState;
    BgConfig *bgConfig;
    u32 activeTasks[NUM_TASK_SLOTS + 2];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_SpriteData animData;
    PoketchAnimation_AnimatedSpriteData *sprites[NUM_SPRITES];
    Window *window;
} MemoPadGraphics;

enum MemoPadGraphicsTasks {
    TASK_DRAW_APP_SCREEN = 0,
    TASK_CHANGE_DRAW_TOOL,
    TASK_PRINT_WINDOW,
    TASK_UPDATE_MEMO_CONTENT,
    TASK_PRINT_WINDOW_2,
    TASK_FREE_BG,
};

BOOL MemoPadGraphics_New(MemoPadGraphics **graphics, const MemoPadState *padState, BgConfig *bgConfig);
void MemoPadGraphics_Free(MemoPadGraphics *graphics);
void PoketchMemoPadGraphics_StartTask(MemoPadGraphics *graphics, enum MemoPadGraphicsTasks taskID);
BOOL PoketchMemoPadGraphics_TaskIsNotActive(MemoPadGraphics *graphics, enum MemoPadGraphicsTasks taskID);
BOOL PoketchMemoPadGraphics_NoActiveTasks(MemoPadGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_MEMO_PAD_GRAPHICS_H
