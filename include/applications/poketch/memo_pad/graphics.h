#ifndef POKEPLATINUM_POKETCH_MEMO_PAD_GRAPHICS_H
#define POKEPLATINUM_POKETCH_MEMO_PAD_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define MEMO_PAD_TASK_SLOTS 16

#define NUM_SPRITES 2

#define MEMO_PAD_WIDTH  78
#define MEMO_PAD_HEIGHT 75
#define ERASER_SIZE     4

typedef struct MemoPadData {
    BOOL pencilActive;
    u32 x;
    u32 y;
    u8 pixels[MEMO_PAD_WIDTH][MEMO_PAD_HEIGHT];
    u32 appID;
} MemoPadData;

typedef struct MemoPadGraphics {
    const MemoPadData *padData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + MEMO_PAD_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_SpriteData animData;
    PoketchAnimation_AnimatedSpriteData *sprites[NUM_SPRITES];
    Window *window;
} MemoPadGraphics;

enum MemoPadGraphicsTask {
    MEMO_PAD_GRAPHICS_INIT = 0,
    MEMO_PAD_GRAPHICS_CHANGE_TOOL,
    MEMO_PAD_GRAPHICS_PRINT_WINDOW,
    MEMO_PAD_GRAPHICS_UPDATE_CONTENT,
    MEMO_PAD_GRAPHICS_PRINT_WINDOW_2,
    MEMO_PAD_GRAPHICS_FREE,
};

BOOL MemoPadGraphics_New(MemoPadGraphics **graphics, const MemoPadData *padState, BgConfig *bgConfig);
void MemoPadGraphics_Free(MemoPadGraphics *graphics);
void PoketchMemoPadGraphics_StartTask(MemoPadGraphics *graphics, enum MemoPadGraphicsTask taskID);
BOOL PoketchMemoPadGraphics_TaskIsNotActive(MemoPadGraphics *graphics, enum MemoPadGraphicsTask taskID);
BOOL PoketchMemoPadGraphics_NoActiveTasks(MemoPadGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_MEMO_PAD_GRAPHICS_H
