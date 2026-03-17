#include "applications/poketch/berry_searcher/graphics.h"

#include <nitro.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_map.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"

#include "res/graphics/poketch/poketch.naix"

#define ANIM_INDEX_CURSOR          0
#define ANIM_INDEX_BERRY           7
#define ANIM_INDEX_HIDDEN_LOCATION 14

static void AddMapLegend(BerrySearcherGraphics *graphics, u32 tileOffset);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_RefreshMap(SysTask *task, void *taskMan);
static void Task_UpdatePlayerPosition(SysTask *task, void *taskData);

static void SetupSprites(BerrySearcherGraphics *graphics);
static void UnloadSprites(BerrySearcherGraphics *graphics);
static void SetBerryPositions(BerrySearcherGraphics *graphics);

BOOL PoketchBerrySearcherGraphics_New(BerrySearcherGraphics **dest, const BerrySearcherData *mapData, BgConfig *bgConfig)
{
    BerrySearcherGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(BerrySearcherGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, BERRY_SEARCHER_TASK_SLOTS);
        graphics->mapData = mapData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        graphics->unused = mapData->unused;
        *dest = graphics;
        return TRUE;
    }

    return FALSE;
}

void PoketchBerrySearcherGraphics_Free(BerrySearcherGraphics *graphics)
{
    if (graphics != NULL) {
        Heap_Free(graphics);
    }
}

static const PoketchTask sBerrySearcherTasks[] = {
    { BERRY_SEARCHER_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { BERRY_SEARCHER_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { BERRY_SEARCHER_GRAPHICS_REFRESH, Task_RefreshMap, 0 },
    { 0 }
};

void PoketchBerrySearcherGraphics_StartTask(BerrySearcherGraphics *graphics, enum BerrySearcherGraphicsTask taskID)
{
    PoketchTask_Start(sBerrySearcherTasks, taskID, graphics, graphics->mapData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchBerrySearcherGraphics_TaskIsNotActive(BerrySearcherGraphics *graphics, enum BerrySearcherGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchBerrySearcherGraphics_NoActiveTasks(BerrySearcherGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    BerrySearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);
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
        .mosaic = TRUE,
    };

    BerrySearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    G2S_SetBGMosaicSize(0, 0);
    G2S_SetOBJMosaicSize(0, 0);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);

    u32 tileCount = Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, map_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    tileCount /= TILE_SIZE_4BPP;

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, berry_searcher_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    AddMapLegend(graphics, tileCount);

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    SetupSprites(graphics);
    EndTask(taskMan);
}

static void AddMapLegend(BerrySearcherGraphics *graphics, u32 tileOffset)
{
    String *title = MessageBank_GetNewStringFromNARC(NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKETCH_BERRY_SEARCHER, 0, HEAP_ID_POKETCH_APP);

    if (title) {
        Window window;
        Window_Add(graphics->bgConfig, &window, BG_LAYER_SUB_2, 18, 20, 8, 2, 0, tileOffset);
        Window_FillTilemap(&window, 4);
        Text_AddPrinterWithParamsAndColor(&window, FONT_SYSTEM, title, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
        Window_PutToTilemap(&window);
        Window_LoadTiles(&window);
        Window_Remove(&window);
        String_Free(title);
    }
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    BerrySearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        graphics->killRefreshTask = TRUE;
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        if (PoketchBerrySearcherGraphics_TaskIsNotActive(graphics, BERRY_SEARCHER_GRAPHICS_REFRESH)) {
            UnloadSprites(graphics);
            G2S_SetBGMosaicSize(0, 0);
            G2S_SetOBJMosaicSize(0, 0);
            Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
            EndTask(taskMan);
        }
        break;
    }
}

static void Task_RefreshMap(SysTask *task, void *taskMan)
{
    BerrySearcherGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const BerrySearcherData *mapData = PoketchTask_GetConstTaskData(taskMan);

    switch (PoketchTask_GetState(taskMan)) {
    case 0:
        graphics->mosaicSize = 6;
        graphics->mosaicProgress = 0;
        graphics->killRefreshTask = FALSE;

        G2S_SetBGMosaicSize(graphics->mosaicSize, graphics->mosaicSize);
        G2S_SetOBJMosaicSize(graphics->mosaicSize, graphics->mosaicSize);
        PoketchSystem_PlaySoundEffect(1656);
        PoketchTask_IncrementState(taskMan);
        break;
    case 1:
        SetBerryPositions(graphics);
        PoketchTask_IncrementState(taskMan);
        break;
    case 2:
        if (graphics->killRefreshTask) {
            EndTask(taskMan);
            break;
        }

        if (++graphics->mosaicProgress >= 3) {
            graphics->mosaicProgress = 0;
            graphics->mosaicSize--;

            G2S_SetBGMosaicSize(graphics->mosaicSize, graphics->mosaicSize);
            G2S_SetOBJMosaicSize(graphics->mosaicSize, graphics->mosaicSize);

            if (graphics->mosaicSize == 0) {
                EndTask(taskMan);
            }
        }
        break;
    }
}

static void SetupSprites(BerrySearcherGraphics *graphics)
{
    const BerrySearcherData *mapData = graphics->mapData;

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
    animData.priority = 0;
    animData.animIdx = ANIM_INDEX_CURSOR;
    graphics->playerCursorSprite = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->animData);

    PoketchAnimation_SetMosaic(graphics->playerCursorSprite, TRUE);

    animData.priority = 1;
    animData.animIdx = ANIM_INDEX_BERRY;
    animData.translation.x = 0;
    animData.translation.y = 0;

    int i;
    for (i = 0; i < MAX_MAP_BERRIES; i++) {
        graphics->berrySprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->animData);
        PoketchAnimation_SetMosaic(graphics->berrySprites[i], TRUE);
    }

    SetBerryPositions(graphics);

    for (i = 0; i < HIDDEN_LOCATION_MAX; i++) {
        PoketchMap_GetHiddenLocationPosition(i, &x, &y);
        animData.translation.x = x << FX32_SHIFT;
        animData.translation.y = y << FX32_SHIFT;
        animData.priority = 2;
        animData.animIdx = ANIM_INDEX_HIDDEN_LOCATION + i;
        graphics->hiddenLocationSprites[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->animData);

        PoketchAnimation_SetMosaic(graphics->hiddenLocationSprites[i], TRUE);

        if (!mapData->showHiddenLocations[i]) {
            PoketchAnimation_HideSprite(graphics->hiddenLocationSprites[i], TRUE);
        }
    }

    graphics->updateTask = SysTask_Start(Task_UpdatePlayerPosition, graphics, 3);
}

static void SetBerryPositions(BerrySearcherGraphics *graphics)
{
    int i;
    for (i = 0; i < graphics->mapData->berryCount; i++) {
        u32 x, y;

        PoketchMap_GetPositionOnMap(graphics->mapData->berries[i].x, graphics->mapData->berries[i].y, &x, &y);
        PoketchAnimation_SetSpritePosition(graphics->berrySprites[i], x << FX32_SHIFT, y << FX32_SHIFT);
        PoketchAnimation_HideSprite(graphics->berrySprites[i], FALSE);
    }

    for (; i < MAX_MAP_BERRIES; i++) {
        PoketchAnimation_HideSprite(graphics->berrySprites[i], TRUE);
    }
}

static void UnloadSprites(BerrySearcherGraphics *graphics)
{
    if (graphics->updateTask) {
        SysTask_Done(graphics->updateTask);
        graphics->updateTask = NULL;
    }

    for (int i = 0; i < HIDDEN_LOCATION_MAX; i++) {
        if (graphics->hiddenLocationSprites[i]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->hiddenLocationSprites[i]);
            graphics->hiddenLocationSprites[i] = NULL;
        }
    }

    for (int i = 0; i < MAX_MAP_BERRIES; i++) {
        if (graphics->berrySprites[i]) {
            PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->berrySprites[i]);
            graphics->berrySprites[i] = NULL;
        }
    }

    if (graphics->playerCursorSprite) {
        PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->playerCursorSprite);
        graphics->playerCursorSprite = NULL;
    }

    PoketchAnimation_FreeSpriteData(&graphics->animData);
}

static void Task_UpdatePlayerPosition(SysTask *task, void *taskData)
{
    BerrySearcherGraphics *graphics = taskData;
    const BerrySearcherData *mapData = graphics->mapData;

    if (mapData->playerPosUpdated) {
        u32 x, y;

        PoketchMap_GetPositionOnMap(mapData->playerX, mapData->playerY, &x, &y);
        PoketchAnimation_SetSpritePosition(graphics->playerCursorSprite, x << FX32_SHIFT, y << FX32_SHIFT);
    }
}
