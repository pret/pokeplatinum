#include "applications/poketch/analog_watch/graphics.h"

#include <nitro.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

static void EndTask(PoketchTaskManager *graphics);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_UpdateTime(SysTask *task, void *taskMan);
static void Task_UpdateBrightness(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_Empty(SysTask *task, void *taskMan);

static BOOL SetupSprites(AnalogWatchGraphics *graphics);
static void UpdateClockHandSprites(AnalogWatchGraphics *graphics);
static void UnloadSprites(AnalogWatchGraphics *graphics);

BOOL PoketchAnalogWatch_New(AnalogWatchGraphics **dest, const AnalogWatchData *watchData, BgConfig *bgConfig)
{
    AnalogWatchGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(AnalogWatchGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, ANALOG_WATCH_TASK_SLOTS);

        graphics->watchData = watchData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();

        if (SetupSprites(graphics) == FALSE) {
            Heap_Free(graphics);
            return FALSE;
        }

        graphics->emptyTask = SysTask_Start(Task_Empty, graphics, 3);
        *dest = graphics;

        return TRUE;
    }

    return FALSE;
}

void PoketchAnalogWatchGraphics_Free(AnalogWatchGraphics *graphics)
{
    if (graphics != NULL) {
        UnloadSprites(graphics);

        if (graphics->emptyTask) {
            SysTask_Done(graphics->emptyTask);
        }

        Heap_Free(graphics);
    }
}

static void Task_Empty(SysTask *task, void *taskMan)
{
    return;
}

static const PoketchTask sAnalogWatchTasks[] = {
    { ANALOG_WATCH_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { ANALOG_WATCH_GRAPHICS_TIME, Task_UpdateTime, 0 },
    { ANALOG_WATCH_GRAPHICS_BRIGHTNESS, Task_UpdateBrightness, 0 },
    { ANALOG_WATCH_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { 0 },
};

void PoketchAnalogWatchGraphics_StartTask(AnalogWatchGraphics *graphics, enum AnalogWatchGraphicsTask taskID)
{
    PoketchTask_Start(sAnalogWatchTasks, taskID, graphics, graphics->watchData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchAnalogWatchGraphics_TaskIsNotActive(AnalogWatchGraphics *graphics, enum AnalogWatchGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchAnalogWatchGraphics_NoActiveTasks(AnalogWatchGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    AnalogWatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
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
    GXSDispCnt dispCnt;
    AnalogWatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, watch_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, analog_watch_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    UpdateClockHandSprites(graphics);

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    EndTask(taskMan);
}

static void Task_UpdateTime(SysTask *task, void *taskMan)
{
    AnalogWatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    UpdateClockHandSprites(graphics);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_UpdateBrightness(SysTask *task, void *taskMan)
{
    AnalogWatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    if (graphics->watchData->isBright) {
        PoketchGraphics_LoadActiveBacklightPalette(0, 0);
    } else {
        PoketchGraphics_LoadActivePalette(0, 0);
    }

    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    AnalogWatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void UpdateClockHandSprites(AnalogWatchGraphics *graphics)
{
    u32 animIdx;

    CP_SetDiv32_32(graphics->watchData->time.hour, 10);

    // Hour hand - index changes every 2 minutes, 360 possible positions
    animIdx = 60 + ((graphics->watchData->time.hour % 12) * 30) + (graphics->watchData->time.minute / 2);
    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[0], animIdx);

    // Minute hand
    animIdx = 0 + graphics->watchData->time.minute;
    PoketchAnimation_UpdateAnimationIdx(graphics->animSpriteData[1], animIdx);
}

static BOOL SetupSprites(AnalogWatchGraphics *graphics)
{
    static const PoketchAnimation_AnimationData animData[] = {
        {
            .translation = { FX32_CONST(116), FX32_CONST(100) },
            .animIdx = 60,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = TRUE,
        },
        {
            .translation = { FX32_CONST(116), FX32_CONST(100) },
            .animIdx = 0,
            .flip = NNS_G2D_RENDERERFLIP_NONE,
            .oamPriority = 2,
            .priority = 0,
            .hasAffineTransform = TRUE,
        },
    };

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, analog_watch_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    if (PoketchAnimation_LoadSpriteFromNARC(&graphics->clockHandSprites, NARC_INDEX_GRAPHIC__POKETCH, analog_watch_cell_NCER_lz, analog_watch_anim_NANR_lz, HEAP_ID_POKETCH_APP)) {

        for (int i = 0; i < NUM_SPRITES; i++) {
            graphics->animSpriteData[i] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData[i], &graphics->clockHandSprites);
        }

        return TRUE;
    }

    return FALSE;
}

static void UnloadSprites(AnalogWatchGraphics *graphics)
{
    PoketchAnimation_FreeSpriteData(&graphics->clockHandSprites);

    for (int i = 0; i < NUM_SPRITES; i++) {
        PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->animSpriteData[i]);
    }
}
