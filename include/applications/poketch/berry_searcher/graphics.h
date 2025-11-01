#ifndef POKEPLATINUM_POKETCH_BERRY_SEARCHER_GRAPHICS_H
#define POKEPLATINUM_POKETCH_BERRY_SEARCHER_GRAPHICS_H

#include "generated/hidden_locations.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "sys_task_manager.h"

#define BERRY_SEARCHER_TASK_SLOTS 4

#define MAX_MAP_BERRIES 64

typedef struct BerrySearcherData {
    int playerX;
    int playerY;
    int berryCount;
    struct {
        u8 x;
        u8 y;
    } berries[MAX_MAP_BERRIES];
    BOOL unused;
    BOOL playerPosUpdated;
    BOOL showHiddenLocations[HIDDEN_LOCATION_MAX];
} BerrySearcherData;

typedef struct BerrySearcherGraphics {
    const BerrySearcherData *mapData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + BERRY_SEARCHER_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *playerCursorSprite;
    PoketchAnimation_AnimatedSpriteData *berrySprites[MAX_MAP_BERRIES];
    PoketchAnimation_AnimatedSpriteData *hiddenLocationSprites[HIDDEN_LOCATION_MAX];
    PoketchAnimation_SpriteData animData;
    SysTask *updateTask;
    BOOL unused;
    int mosaicSize;
    int mosaicProgress;
    BOOL killRefreshTask;
} BerrySearcherGraphics;

enum BerrySearcherGraphicsTask {
    BERRY_SEARCHER_GRAPHICS_INIT = 0,
    BERRY_SEARCHER_GRAPHICS_FREE,
    BERRY_SEARCHER_GRAPHICS_REFRESH,
};

BOOL PoketchBerrySearcherGraphics_New(BerrySearcherGraphics **dest, const BerrySearcherData *mapData, BgConfig *bgConfig);
void PoketchBerrySearcherGraphics_Free(BerrySearcherGraphics *graphics);
void PoketchBerrySearcherGraphics_StartTask(BerrySearcherGraphics *graphics, enum BerrySearcherGraphicsTask taskId);
BOOL PoketchBerrySearcherGraphics_TaskIsNotActive(BerrySearcherGraphics *graphics, enum BerrySearcherGraphicsTask taskId);
BOOL PoketchBerrySearcherGraphics_NoActiveTasks(BerrySearcherGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_BERRY_SEARCHER_GRAPHICS_H
