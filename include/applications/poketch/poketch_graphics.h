#ifndef POKEPLATINUM_POKETCH_GRAPHICS_H
#define POKEPLATINUM_POKETCH_GRAPHICS_H

#include <nnsys.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"

enum PoketchGraphicsTask {
    TASK_SETUP_BACKGROUND = 0,
    TASK_REVEAL_SCREEN_1,
    TASK_REVEAL_SCREEN_2,
    TASK_UNUSED_1,
    TASK_CONCEAL_SCREEN,
    TASK_UNUSED_2,
    TASK_UP_HALF_PRESSED,
    TASK_UP_RELEASED,
    TASK_UP_PRESSED,
    TASK_DOWN_HALF_PRESSED,
    TASK_DOWN_RELEASED,
    TASK_DOWN_PRESSED,
    TASK_LOAD_APP_COUNTER,
    TASK_UPDATE_APP_COUNTER,
    TASK_UNLOAD_APP_COUNTER,
    TASK_UNUSED_3,
    TASK_UNUSED_4,
    TASK_FREE_TILEMAP,
};

BOOL PoketchGraphics_Main(PoketchGraphics_TaskData **taskDataPtr, const PoketchGraphics_ConstTaskData *constTaskData, NNSG2dOamManagerInstance *oamMan, PoketchSystem *poketchSys);
PoketchAnimation_AnimationManager *PoketchGraphics_GetAnimationManager(void);
BgConfig *PoketchGraphics_GetBgConfig(void);
void PoketchGraphics_LoadActivePalette(u32 bgOffset, u32 objOffset);
void PoketchGraphics_LoadActiveBacklightPalette(u32, u32);
void PoketchGraphics_CopyActivePalette(u16 *dest);
void PoketchGraphics_Close(PoketchGraphics_TaskData *taskData);
void PoketchGraphics_StartTask(PoketchGraphics_TaskData *taskData, u32 taskId);
BOOL PoketchGraphics_TaskIsNotActive(PoketchGraphics_TaskData *taskData, u32 taskId);
BOOL PoketchGraphics_NoActiveTasks(PoketchGraphics_TaskData *taskData);

#endif // POKEPLATINUM_POKETCH_GRAPHICS_H
