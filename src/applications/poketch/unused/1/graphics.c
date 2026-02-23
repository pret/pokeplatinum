#include "applications/poketch/unused/1/graphics.h"

#include <nitro.h>

#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);

BOOL PoketchUnusedApp1Graphics_New(UnusedApp1Graphics **dest, const Unused1Data *data, BgConfig *bgConfig)
{
    UnusedApp1Graphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(UnusedApp1Graphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, 8);

        graphics->data = data;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();

        if (graphics->bgConfig != NULL) {
            *dest = graphics;
            return TRUE;
        }
    }

    return FALSE;
}

void PoketchUnusedApp1Graphics_Free(UnusedApp1Graphics *graphics)
{
    if (graphics != NULL) {
        Heap_Free(graphics);
    }
}

static const PoketchTask sUnusedApp1Tasks[] = {
    { 0, Task_DrawBackground, 0 },
    { 1, Task_FreeBackground, 0 },
    { 0 }
};

void PoketchUnusedApp1Graphics_StartTask(UnusedApp1Graphics *graphics, u32 taskID)
{
    PoketchTask_Start(sUnusedApp1Tasks, taskID, graphics, graphics->data, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchUnusedApp1Graphics_TaskIsNotActive(UnusedApp1Graphics *graphics, u32 taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchUnusedApp1Graphics_NoActiveTasks(UnusedApp1Graphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    UnusedApp1Graphics *graphics = PoketchTask_GetTaskData(taskMan);
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
    UnusedApp1Graphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, unused_apps_NCGR, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_POKETCH_APP);
    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, 0, POKETCH_WIDTH_TILES, POKETCH_HEIGHT_TILES, 0);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__POKETCH, unused_apps_NCLR, PAL_LOAD_SUB_BG, 0, 0x20, HEAP_ID_POKETCH_APP);

    Poketch_ShowUnusedDummyText(graphics->bgConfig, 12, BG_LAYER_SUB_2);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    UnusedApp1Graphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}
