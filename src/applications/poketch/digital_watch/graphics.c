#include "applications/poketch/digital_watch/graphics.h"

#include <nitro.h>
#include <string.h>

#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

static void CopyDigitTilemap(const u16 *rawScreenData, u16 *dst);
static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawAppScreen(SysTask *sysTask, void *taskMan);
static void Task_UpdateClockDigits(SysTask *sysTask, void *taskMan);
static void Task_ToggleBacklightPalette(SysTask *sysTask, void *taskMan);
static void Task_FreeGraphics(SysTask *sysTask, void *taskMan);
static void DrawClockDigits(PoketchDigitalWatchGraphics *graphics);

BOOL PoketchDigitalWatchGraphics_New(PoketchDigitalWatchGraphics **graphics, const WatchData *watchData, BgConfig *bgConfig)
{
    PoketchDigitalWatchGraphics *digitalWatchGraphics = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(PoketchDigitalWatchGraphics));

    if (digitalWatchGraphics != NULL) {
        NNSG2dScreenData *screenData;

        PoketchTask_InitActiveTaskList(digitalWatchGraphics->activeTasks, NUM_TASK_SLOTS);

        digitalWatchGraphics->watchData = watchData;
        digitalWatchGraphics->bgConfig = PoketchGraphics_GetBgConfig();

        void *nscrBuffer = Graphics_GetScrnData(NARC_INDEX_GRAPHIC__POKETCH, POKETCH_CLOCK_DIGITS_TILEMAP_IDX, TRUE, &screenData, HEAP_ID_POKETCH_APP);

        if (nscrBuffer == NULL) {
            Heap_Free(digitalWatchGraphics);
            return FALSE;
        }

        CopyDigitTilemap((const u16 *)(screenData->rawData), digitalWatchGraphics->digitsTilemap);
        Heap_Free(nscrBuffer);

        *graphics = digitalWatchGraphics;
        return TRUE;
    }

    return FALSE;
}

static void CopyDigitTilemap(const u16 *rawScreenData, u16 *dst)
{
    int offset = 9 * 32;
    int row;

    for (row = 0; row < 9; row++) {
        MI_CpuCopy16(rawScreenData, dst, 32 * sizeof(u16));
        MI_CpuCopy16(&rawScreenData[offset], &dst[32], 8 * sizeof(u16));

        rawScreenData += 32;
        dst += 40;
        offset -= 24;
    }
}

void PoketchDigitalWatchGraphics_Free(PoketchDigitalWatchGraphics *graphics)
{
    if (graphics != NULL) {
        Heap_Free(graphics);
    }
}

static const PoketchTask sDisplayTasks[] = {
    { TASK_DRAW_APP_SCREEN, Task_DrawAppScreen, 0x0 },
    { TASK_UPDATE_WATCH_DIGITS, Task_UpdateClockDigits, 0x0 },
    { TASK_TOGGLE_BACKLIGHT, Task_ToggleBacklightPalette, 0x0 },
    { TASK_FREE_GRAPHICS, Task_FreeGraphics, 0x0 },
    { 0 }
};

void PoketchDigitalWatchGraphics_StartTask(PoketchDigitalWatchGraphics *graphics, enum DigitalWatchGraphicsTasks taskID)
{
    PoketchTask_Start(sDisplayTasks, taskID, graphics, graphics->watchData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchDigitalWatchGraphics_TaskIsNotActive(PoketchDigitalWatchGraphics *graphics, enum DigitalWatchGraphicsTasks taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchDigitalWatchGraphics_NoActiveTasks(PoketchDigitalWatchGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    PoketchDigitalWatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_DrawAppScreen(SysTask *sysTask, void *taskMan)
{
    static const BgTemplate template = {
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

    PoketchDigitalWatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &template, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, POKETCH_DIGITAL_WATCH_NARC_TILES_IDX, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, POKETCH_DIGITAL_WATCH_NARC_TILEMAP_IDX, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    DrawClockDigits(graphics);

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt displayControler = GXS_GetDispCnt();
    GXS_SetVisiblePlane(displayControler.visiblePlane | GX_PLANEMASK_BG2);
    EndTask(taskMan);
}

static void Task_UpdateClockDigits(SysTask *sysTask, void *taskMan)
{
    PoketchDigitalWatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    DrawClockDigits(graphics);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_ToggleBacklightPalette(SysTask *sysTask, void *taskMan)
{
    PoketchDigitalWatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    if (graphics->watchData->backlightActive) {
        PoketchGraphics_LoadActiveBacklightPalette(0, 0);
    } else {
        PoketchGraphics_LoadActivePalette(0, 0);
    }

    EndTask(taskMan);
}

static void Task_FreeGraphics(SysTask *sysTask, void *taskMan)
{
    PoketchDigitalWatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void DrawClockDigits(PoketchDigitalWatchGraphics *graphics)
{
    CP_SetDiv32_32(graphics->watchData->time.hour, POKETCH_NUM_CLOCK_DIGITS);

    u32 tensDigitOffset = CP_GetDivResult32();
    u32 onesDigitOffset = CP_GetDivRemainder32();

    Bg_CopyToTilemapRect(graphics->bgConfig,
        BG_LAYER_SUB_2,
        POKETCH_CLOCK_HOURS_DIGIT_X,
        POKETCH_CLOCK_HOURS_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        graphics->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * tensDigitOffset,
        0,
        POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS,
        POKETCH_CLOCK_DIGIT_HEIGHT);
    Bg_CopyToTilemapRect(graphics->bgConfig,
        BG_LAYER_SUB_2,
        POKETCH_CLOCK_HOURS_DIGIT_X + POKETCH_CLOCK_DIGIT_WIDTH + POKETCH_CLOCK_DIGIT_GAP,
        POKETCH_CLOCK_HOURS_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        graphics->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * onesDigitOffset,
        0,
        POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS,
        POKETCH_CLOCK_DIGIT_HEIGHT);

    CP_SetDiv32_32(graphics->watchData->time.minute, POKETCH_NUM_CLOCK_DIGITS);

    tensDigitOffset = CP_GetDivResult32();
    onesDigitOffset = CP_GetDivRemainder32();

    Bg_CopyToTilemapRect(graphics->bgConfig,
        BG_LAYER_SUB_2,
        POKETCH_CLOCK_MINUTES_DIGIT_X,
        POKETCH_CLOCK_MINUTES_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        graphics->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * tensDigitOffset,
        0,
        POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS,
        POKETCH_CLOCK_DIGIT_HEIGHT);
    Bg_CopyToTilemapRect(graphics->bgConfig,
        BG_LAYER_SUB_2,
        POKETCH_CLOCK_MINUTES_DIGIT_X + POKETCH_CLOCK_DIGIT_WIDTH + POKETCH_CLOCK_DIGIT_GAP,
        POKETCH_CLOCK_MINUTES_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        graphics->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * onesDigitOffset,
        0,
        POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS,
        POKETCH_CLOCK_DIGIT_HEIGHT);
}
