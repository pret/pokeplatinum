#ifndef POKEPLATINUM_OV40_0225645C_H
#define POKEPLATINUM_OV40_0225645C_H

#include "constants/daycare.h"
#include "generated/genders.h"

#include "applications/poketch/poketch_animation.h"

#include "bg_window.h"
#include "sys_task_manager.h"

#define NUM_DAYCARE_SPRITES 11

#define NUM_TASK_SLOTS 4

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
    u32 activeTasks[2 + NUM_TASK_SLOTS];
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

enum DaycareGraphicsTasks {
    TASK_DRAW_APP_BACKGROUND = 0,
    TASK_FREE_BACKGROUND,
    TASK_RELOAD_DAYCARE_STATE,
};

BOOL DaycareCheckerGraphics_New(DaycareCheckerGraphics **graphics, const DaycareStatus *daycareStatus, BgConfig *bgConfig);
void DaycareCheckerGraphics_Free(DaycareCheckerGraphics *graphics);
void PoketchDaycareCheckerGraphics_StartTask(DaycareCheckerGraphics *graphics, enum DaycareGraphicsTasks taskID);
BOOL PoketchDaycareCheckerGraphics_TaskIsNotActive(DaycareCheckerGraphics *graphics, enum DaycareGraphicsTasks taskID);
BOOL PoketchDaycareCheckerGraphics_NoActiveTasks(DaycareCheckerGraphics *graphics);

#endif // POKEPLATINUM_OV40_0225645C_H
