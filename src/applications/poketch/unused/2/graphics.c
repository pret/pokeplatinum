#include "applications/poketch/unused/2/graphics.h"

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
static void Task_PressButton(SysTask *task, void *taskMan);
static void Task_ReleaseButton(SysTask *task, void *taskMan);
static void UpdateButtonPosition(UnusedApp2Graphics *graphics, u32 buttonID, BOOL showIcon, BOOL isPressed);

BOOL PoketchUnusedApp2Graphics_New(UnusedApp2Graphics **dest, const Unused2Data *data, BgConfig *bgConfig)
{
    UnusedApp2Graphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(UnusedApp2Graphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, 4);

        graphics->appData = data;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();

        if (graphics->bgConfig != NULL) {
            *dest = graphics;
            return TRUE;
        }
    }

    return FALSE;
}

void PoketchUnusedApp2Graphics_Free(UnusedApp2Graphics *graphics)
{
    if (graphics != NULL) {
        Heap_Free(graphics);
    }
}

static const PoketchTask sUnusedApp2Tasks[] = {
    { 0, Task_DrawBackground, 0 },
    { 1, Task_FreeBackground, 0 },
    { 2, Task_PressButton, 0 },
    { 3, Task_ReleaseButton, 0 },
    { 0 }
};

void PoketchUnusedApp2Graphics_StartTask(UnusedApp2Graphics *graphics, u32 taskID)
{
    PoketchTask_Start(sUnusedApp2Tasks, taskID, graphics, graphics->appData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchUnusedApp2Graphics_TaskIsNotActive(UnusedApp2Graphics *graphics, u32 taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchUnusedApp2Graphics_NoActiveTasks(UnusedApp2Graphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    UnusedApp2Graphics *graphics = PoketchTask_GetTaskData(taskMan);
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
    UnusedApp2Graphics *graphics = PoketchTask_GetTaskData(taskMan);
    const Unused2Data *appData = PoketchTask_GetConstTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, unused_menu_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, unused_menu_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);

    for (int i = 0; i < NUM_BUTTONS; i++) {
        UpdateButtonPosition(graphics, i, appData->buttonUnlocked[i], FALSE);
    }

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    UnusedApp2Graphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_PressButton(SysTask *task, void *taskMan)
{
    UnusedApp2Graphics *graphics = PoketchTask_GetTaskData(taskMan);
    const Unused2Data *data = PoketchTask_GetConstTaskData(taskMan);

    UpdateButtonPosition(graphics, data->pressedButtonID, data->buttonUnlocked[data->pressedButtonID], TRUE);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_ReleaseButton(SysTask *task, void *taskMan)
{
    UnusedApp2Graphics *graphics = PoketchTask_GetTaskData(taskMan);
    const Unused2Data *data = PoketchTask_GetConstTaskData(taskMan);

    UpdateButtonPosition(graphics, data->pressedButtonID, data->buttonUnlocked[data->pressedButtonID], FALSE);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void UpdateButtonPosition(UnusedApp2Graphics *graphics, u32 buttonID, BOOL showIcon, BOOL isPressed)
{
    static const u16 tilemapButtonIndex[] = {
        66,
        84,
        290,
        308,
        514,
        532,
    };
    u16 *tilemapBuffer;
    int j, i, tile;

    tilemapBuffer = Bg_GetTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    tilemapBuffer += tilemapButtonIndex[buttonID];
    tile = showIcon ? (36 * 2) * (buttonID + 1) : 0;

    if (isPressed) {
        tile += 36;
    }

    for (i = 0; i < 6; i++) {
        for (j = 0; j < 6; j++) {
            tilemapBuffer[j] = tile++;
        }

        tilemapBuffer += POKETCH_WIDTH_TILES;
    }
}
