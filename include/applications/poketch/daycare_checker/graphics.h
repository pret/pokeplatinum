#ifndef POKEPLATINUM_POKETCH_DAYCARE_CHECKER_GRAPHICS_H
#define POKEPLATINUM_POKETCH_DAYCARE_CHECKER_GRAPHICS_H

#include "constants/daycare.h"
#include "generated/genders.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "sys_task_manager.h"

#define DAYCARE_CHECKER_TASK_SLOTS 4

#define NUM_DAYCARE_SPRITES 11

typedef struct DaycareStatus {
    u8 numMons;
    u8 hasEgg;
    u32 iconSpriteIndices[NUM_DAYCARE_MONS];
    u32 levels[NUM_DAYCARE_MONS];
    enum Gender genders[NUM_DAYCARE_MONS];
    u16 species[NUM_DAYCARE_MONS];
    u16 forms[NUM_DAYCARE_MONS];
} DaycareStatus;

typedef struct DaycareCheckerGraphics {
    const DaycareStatus *dayCareSummary;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + DAYCARE_CHECKER_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *sprites[NUM_DAYCARE_SPRITES];
    PoketchAnimation_SpriteData symbolAnimData;
    PoketchAnimation_SpriteData monAnimData;
    u32 monIconOffset;
    u32 mosaicSize;
    u32 mosaicProgress;
    BOOL clearMosaicSize;
    BOOL updateMosaic;
    SysTask *mosaicTask;
} DaycareCheckerGraphics;

enum DaycareGraphicsTask {
    DAYCARE_CHECKER_GRAPHICS_INIT = 0,
    DAYCARE_CHECKER_GRAPHICS_FREE,
    DAYCARE_CHECKER_GRAPHICS_RELOAD,
};

BOOL PoketchDaycareCheckerGraphics_New(DaycareCheckerGraphics **dest, const DaycareStatus *daycareStatus, BgConfig *bgConfig);
void PoketchDaycareCheckerGraphics_Free(DaycareCheckerGraphics *graphics);
void PoketchDaycareCheckerGraphics_StartTask(DaycareCheckerGraphics *graphics, enum DaycareGraphicsTask taskID);
BOOL PoketchDaycareCheckerGraphics_TaskIsNotActive(DaycareCheckerGraphics *graphics, enum DaycareGraphicsTask taskID);
BOOL PoketchDaycareCheckerGraphics_NoActiveTasks(DaycareCheckerGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_DAYCARE_CHECKER_GRAPHICS_H
