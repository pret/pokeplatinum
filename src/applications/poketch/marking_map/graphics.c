#include "applications/poketch/marking_map/graphics.h"

#include <nitro.h>

#include "generated/hidden_locations.h"
#include "generated/roaming_slots.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_map.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task.h"

#include "res/graphics/poketch/poketch.naix"

#define ANIMATION_INDEX_CURSOR          0
#define ANIMATION_INDEX_MARKER          1
#define ANIMATION_INDEX_MARKER_BIG      8
#define ANIMATION_INDEX_HIDDEN_LOCATION 14
#define ANIMATION_INDEX_ROAMER          18

static void SetupSprites(MarkingMapGraphics *graphics, const MarkingMapData *mapData);
static void UnloadSprites(MarkingMapGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_UpdateMap(SysTask *task, void *taskData);

BOOL PoketchMarkingMapGraphics_New(MarkingMapGraphics **dest, const MarkingMapData *mapData, BgConfig *bgConfig)
{
    MarkingMapGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(MarkingMapGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, MARKING_MAP_TASK_SLOTS);

        graphics->mapData = mapData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();

        SetupSprites(graphics, mapData);

        *dest = graphics;
        return TRUE;
    }

    return FALSE;
}

void PoketchMarkingMapGraphics_Free(MarkingMapGraphics *graphics)
{
    if (graphics != NULL) {
        UnloadSprites(graphics);
        Heap_Free(graphics);
    }
}

static void SetupSprites(MarkingMapGraphics *graphics, const MarkingMapData *mapData)
{
    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, map_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchAnimation_LoadSpriteFromNARC(&graphics->animData, NARC_INDEX_GRAPHIC__POKETCH, map_cell_NCER_lz, map_anim_NANR_lz, HEAP_ID_POKETCH_APP);

    PoketchAnimation_AnimationData animData;
    animData.flip = NNS_G2D_RENDERERFLIP_NONE;
    animData.oamPriority = 2;
    animData.hasAffineTransform = FALSE;

    u32 x, y;
    PoketchMap_GetPositionOnMap(mapData->playerX, mapData->playerY, &x, &y);

    animData.translation.x = x << FX32_SHIFT;
    animData.translation.y = y << FX32_SHIFT;
    animData.priority = 1;
    animData.animIdx = ANIMATION_INDEX_CURSOR;
    graphics->playerCursorSprite = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->animData);

    animData.hasAffineTransform = TRUE;
    for (int i = 0; i < NUM_MARKING_MAP_ICONS; i++) {
        animData.translation.x = mapData->markers[i].x << FX32_SHIFT;
        animData.translation.y = mapData->markers[i].y << FX32_SHIFT;
        animData.priority = 2 + mapData->markers[i].priority;
        animData.animIdx = ANIMATION_INDEX_MARKER + i;
        graphics->markerSprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->animData);
    }

    for (int i = 0; i < HIDDEN_LOCATION_MAX; i++) {
        PoketchMap_GetHiddenLocationPosition(i, &x, &y);

        animData.translation.x = x << FX32_SHIFT;
        animData.translation.y = y << FX32_SHIFT;
        animData.priority = 9;
        animData.animIdx = ANIMATION_INDEX_HIDDEN_LOCATION + i;

        graphics->hiddenLocationSprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->animData);

        if (mapData->showHiddenLocation[i] == FALSE) {
            PoketchAnimation_HideSprite(graphics->hiddenLocationSprites[i], TRUE);
        }
    }

    for (int i = 0; i < ROAMING_SLOT_MAX; i++) {
        int positionFound = PoketchMap_GetPositionFromMapID(mapData->roamerData[i].mapID, &x, &y);

        animData.translation.x = x << FX32_SHIFT;
        animData.translation.y = y << FX32_SHIFT;
        animData.priority = 8;
        animData.animIdx = ANIMATION_INDEX_ROAMER;

        graphics->roamerSprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->animData);

        if ((mapData->roamerData[i].isActive == FALSE) || (positionFound == FALSE)) {
            PoketchAnimation_HideSprite(graphics->roamerSprites[i], TRUE);
        }
    }

    graphics->updateTask = SysTask_Start(Task_UpdateMap, graphics, 3);
}

static void UnloadSprites(MarkingMapGraphics *graphics)
{
    SysTask_Done(graphics->updateTask);

    for (int i = 0; i < NUM_MARKING_MAP_ICONS; i++) {
        if (graphics->markerSprites[i]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->markerSprites[i]);
            graphics->markerSprites[i] = NULL;
        }
    }

    for (int i = 0; i < HIDDEN_LOCATION_MAX; i++) {
        if (graphics->hiddenLocationSprites[i]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->hiddenLocationSprites[i]);
            graphics->hiddenLocationSprites[i] = NULL;
        }
    }

    for (int i = 0; i < ROAMING_SLOT_MAX; i++) {
        if (graphics->roamerSprites[i]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->roamerSprites[i]);
            graphics->roamerSprites[i] = NULL;
        }
    }

    PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->playerCursorSprite);
    PoketchAnimation_FreeSpriteData(&graphics->animData);
}

static const PoketchTask sMarkingMapTasks[] = {
    { MARKING_MAP_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { MARKING_MAP_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { 0 }
};

void PoketchMarkingMapGraphics_StartTask(MarkingMapGraphics *graphics, enum MarkingMapGraphicsTask taskID)
{
    PoketchTask_Start(sMarkingMapTasks, taskID, graphics, graphics->mapData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchMarkingMapGraphics_TaskIsNotActive(MarkingMapGraphics *graphics, enum MarkingMapGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchMarkingMapGraphics_NoActiveTasks(MarkingMapGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    MarkingMapGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_DrawBackground(SysTask *task, void *taskMan)
{
    static const BgTemplate bgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    MarkingMapGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, map_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, marking_map_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    MarkingMapGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_UpdateMap(SysTask *task, void *taskData)
{
    MarkingMapGraphics *graphics = taskData;
    const MarkingMapData *mapData = graphics->mapData;

    if (mapData->markerMoving) {
        int activeMarker = mapData->activeMarker;

        if (mapData->markers[activeMarker].isMoving) {
            PoketchAnimation_SetSpritePrority(graphics->animMan, graphics->markerSprites[activeMarker], 0);
            PoketchAnimation_UpdateAnimationIdx(graphics->markerSprites[activeMarker], ANIMATION_INDEX_MARKER_BIG + activeMarker);
        } else {
            PoketchAnimation_SetSpritePrority(graphics->animMan, graphics->markerSprites[activeMarker], 2 + mapData->markers[activeMarker].priority);
            PoketchAnimation_UpdateAnimationIdx(graphics->markerSprites[activeMarker], ANIMATION_INDEX_MARKER + activeMarker);
        }

        PoketchAnimation_SetSpritePosition(graphics->markerSprites[activeMarker], mapData->markers[activeMarker].x << FX32_SHIFT, mapData->markers[activeMarker].y << FX32_SHIFT);
    }

    if (mapData->positionsUpdated) {
        u32 x, y;

        PoketchMap_GetPositionOnMap(mapData->playerX, mapData->playerY, &x, &y);
        PoketchAnimation_SetSpritePosition(graphics->playerCursorSprite, x << FX32_SHIFT, y << FX32_SHIFT);

        for (u32 i = 0; i < ROAMING_SLOT_MAX; i++) {
            if (mapData->roamerData[i].isActive) {
                if (PoketchMap_GetPositionFromMapID(mapData->roamerData[i].mapID, &x, &y)) {
                    PoketchAnimation_SetSpritePosition(graphics->roamerSprites[i], x << FX32_SHIFT, y << FX32_SHIFT);
                    PoketchAnimation_HideSprite(graphics->roamerSprites[i], FALSE);
                } else {
                    PoketchAnimation_HideSprite(graphics->roamerSprites[i], TRUE);
                }
            } else {
                PoketchAnimation_HideSprite(graphics->roamerSprites[i], TRUE);
            }
        }
    }
}
