#ifndef POKEPLATINUM_POKETCH_MARKING_MAP_GRAPHICS_H
#define POKEPLATINUM_POKETCH_MARKING_MAP_GRAPHICS_H

#include "generated/hidden_locations.h"
#include "generated/maps.h"
#include "generated/roaming_slots.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "sys_task_manager.h"

#define MARKING_MAP_TASK_SLOTS 4

#define NUM_MARKING_MAP_ICONS 6

typedef struct {
    int playerX;
    int playerY;
    BOOL positionsUpdated;
    struct {
        u8 x;
        u8 y;
        u8 priority;
        u8 isMoving;
    } markers[NUM_MARKING_MAP_ICONS];
    int activeMarker;
    BOOL markerMoving;
    BOOL showHiddenLocation[HIDDEN_LOCATION_MAX];
    struct {
        BOOL isActive;
        enum MapID mapID;
    } roamerData[ROAMING_SLOT_MAX];
} MarkingMapData;

typedef struct MarkingMapGraphics {
    const MarkingMapData *mapData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + MARKING_MAP_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *markerSprites[NUM_MARKING_MAP_ICONS];
    PoketchAnimation_AnimatedSpriteData *hiddenLocationSprites[HIDDEN_LOCATION_MAX];
    PoketchAnimation_AnimatedSpriteData *roamerSprites[ROAMING_SLOT_MAX];
    PoketchAnimation_AnimatedSpriteData *playerCursorSprite;
    PoketchAnimation_SpriteData animData;
    SysTask *updateTask;
} MarkingMapGraphics;

enum MarkingMapGraphicsTask {
    MARKING_MAP_GRAPHICS_INIT = 0,
    MARKING_MAP_GRAPHICS_FREE,
};

BOOL PoketchMarkingMapGraphics_New(MarkingMapGraphics **dest, const MarkingMapData *mapData, BgConfig *bgConfig);
void PoketchMarkingMapGraphics_Free(MarkingMapGraphics *graphics);
void PoketchMarkingMapGraphics_StartTask(MarkingMapGraphics *graphics, enum MarkingMapGraphicsTask taskID);
BOOL PoketchMarkingMapGraphics_TaskIsNotActive(MarkingMapGraphics *graphics, enum MarkingMapGraphicsTask taskID);
BOOL PoketchMarkingMapGraphics_NoActiveTasks(MarkingMapGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_MARKING_MAP_GRAPHICS_H
