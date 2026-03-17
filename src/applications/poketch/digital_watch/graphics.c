#include "applications/poketch/digital_watch/graphics.h"

#include <nitro.h>

#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

static void CopyDigitTilemap(const u16 *rawScreenData, u16 *dst);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawAppScreen(SysTask *sysTask, void *taskMan);
static void Task_UpdateClockDigits(SysTask *sysTask, void *taskMan);
static void Task_ToggleBacklightPalette(SysTask *sysTask, void *taskMan);
static void Task_FreeGraphics(SysTask *sysTask, void *taskMan);

static void DrawClockDigits(PoketchDigitalWatchGraphics *graphics);

BOOL PoketchDigitalWatchGraphics_New(PoketchDigitalWatchGraphics **dest, const DigitalWatchData *watchData, BgConfig *bgConfig)
{
    PoketchDigitalWatchGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchDigitalWatchGraphics));

    if (graphics != NULL) {
        NNSG2dScreenData *screenData;

        PoketchTask_InitActiveTaskList(graphics->activeTasks, DIGITAL_WATCH_TASK_SLOTS);

        graphics->watchData = watchData;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();

        void *nscrBuffer = Graphics_GetScrnData(NARC_INDEX_GRAPHIC__POKETCH, digital_watch_digits_NSCR_lz, TRUE, &screenData, HEAP_ID_POKETCH_APP);

        if (nscrBuffer == NULL) {
            Heap_Free(graphics);
            return FALSE;
        }

        CopyDigitTilemap((const u16 *)screenData->rawData, graphics->digitsTilemap);
        Heap_Free(nscrBuffer);

        *dest = graphics;
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
    { DIGITAL_WATCH_GRAPHICS_INIT, Task_DrawAppScreen, 0 },
    { DIGITAL_WATCH_GRAPHICS_UPDATE_DIGITS, Task_UpdateClockDigits, 0 },
    { DIGITAL_WATCH_GRAPHICS_TOGGLE_BACKLIGHT, Task_ToggleBacklightPalette, 0 },
    { DIGITAL_WATCH_GRAPHICS_FREE, Task_FreeGraphics, 0 },
    { 0 }
};

void PoketchDigitalWatchGraphics_StartTask(PoketchDigitalWatchGraphics *graphics, enum DigitalWatchGraphicsTask taskID)
{
    PoketchTask_Start(sDisplayTasks, taskID, graphics, graphics->watchData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchDigitalWatchGraphics_TaskIsNotActive(PoketchDigitalWatchGraphics *graphics, enum DigitalWatchGraphicsTask taskID)
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
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, watch_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, digital_watch_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

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
