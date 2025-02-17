#include "poketch_digital_clock/poketch_digital_clock_graphics.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

#define NUM_TASK_SLOTS 8

#define POKETCH_CLOCK_DIGITS_TILEMAP_IDX 25
#define POKETCH_NUM_CLOCK_DIGITS         10

#define PRE_POKETCH_DISPLAY_NARC_TILES_IDX   23
#define PRE_POKETCH_DISPLAY_NARC_TILEMAP_IDX 24

#define TILE_SIZE_BYTES 2

#define POKETCH_CLOCK_DIGIT_WIDTH     4
#define POKETCH_CLOCK_DIGIT_HEIGHT    9
#define POKETCH_CLOCK_DIGIT_GAP       1
#define POKETCH_CLOCK_HOURS_DIGIT_X   3
#define POKETCH_CLOCK_HOURS_DIGIT_Y   7
#define POKETCH_CLOCK_MINUETS_DIGIT_X 15
#define POKETCH_CLOCK_MINUETS_DIGIT_Y 7

#define POKETCH_DIGIT_TILEMAP_WIDTH      (POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS)
#define POKETCH_DIGIT_TILEMAP_HEIGHT     POKETCH_CLOCK_DIGIT_HEIGHT
#define POKETCH_DIGIT_TILEMAP_SIZE_BYTES (POKETCH_DIGIT_TILEMAP_WIDTH * POKETCH_DIGIT_TILEMAP_HEIGHT)

struct DisplayData_t {
    const ClockData *clockData;
    BgConfig *bgConfig;
    u32 taskList[2 + NUM_TASK_SLOTS];
    u16 digitsTilemap[POKETCH_DIGIT_TILEMAP_SIZE_BYTES];
};

static void PoketchDigitalClock_CopyDigitTilemap(const u16 *rawScreenData, u16 *dst);
static void PoketchDigitalClock_EndTask(PoketchTaskManager *taskManager);
static void PoketchDigitalClock_SetupBackground(SysTask *sysTask, void *taskManager);
static void PoketchDigitalClock_UpdateClockDigits(SysTask *sysTask, void *taskManager);
static void PoketchDigitalClock_ToggleBacklightPalette(SysTask *sysTask, void *taskManager);
static void PoketchDigitalClock_FreeBackground(SysTask *sysTask, void *taskManager);
static void PoketchDigitalClock_DrawClockDigits(DisplayData *displayData);

BOOL PoketchDigitalClock_SetupDisplayData(DisplayData **displayData, const ClockData *clockData, BgConfig *bgConfig)
{
    DisplayData *newDisplayData = (DisplayData *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(DisplayData));

    if (newDisplayData != NULL) {
        NNSG2dScreenData *screenData;

        PoketchTask_InitActiveTaskList(newDisplayData->taskList, NUM_TASK_SLOTS);

        newDisplayData->clockData = clockData;
        newDisplayData->bgConfig = ov25_02254674();

        void *nscrBuffer = Graphics_GetScrnData(NARC_INDEX_GRAPHIC__POKETCH, POKETCH_CLOCK_DIGITS_TILEMAP_IDX, TRUE, &screenData, HEAP_ID_POKETCH_APP);

        if (nscrBuffer == NULL) {
            Heap_FreeToHeap(newDisplayData);
            return FALSE;
        }

        PoketchDigitalClock_CopyDigitTilemap((const u16 *)(screenData->rawData), newDisplayData->digitsTilemap);
        Heap_FreeToHeap(nscrBuffer);

        *displayData = newDisplayData;
        return TRUE;
    }

    return FALSE;
}

static void PoketchDigitalClock_CopyDigitTilemap(const u16 *rawScreenData, u16 *dst)
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

void PoketchDigitalClock_FreeDisplayData(DisplayData *displayData)
{
    if (displayData != NULL) {
        Heap_FreeToHeap(displayData);
    }
}

static const PoketchTask appTasks[] = {
    { SYS_TASK_FUNC_SETUP_BACKGROUND, PoketchDigitalClock_SetupBackground, 0x0 },
    { SYS_TASK_FUNC_UPDATE_CLOCK_DIGITS, PoketchDigitalClock_UpdateClockDigits, 0x0 },
    { SYS_TASK_FUNC_TOGGLE_BACKLIGHT_PALETTE, PoketchDigitalClock_ToggleBacklightPalette, 0x0 },
    { SYS_TASK_FUNC_FREE_BACKGROUND, PoketchDigitalClock_FreeBackground, 0x0 },
    { 0x0, NULL, 0x0 }
};

void PoketchDigitalClock_StartTask(DisplayData *displayData, u32 taskID)
{
    PoketchTask_Start(appTasks, taskID, displayData, displayData->clockData, displayData->taskList, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchDigitalClock_TaskIsNotActive(DisplayData *displayData, u32 taskID)
{
    return PoketchTask_TaskIsNotActive(displayData->taskList, taskID);
}

BOOL PoketchDigitalClock_NoActiveTasks(DisplayData *displayData)
{
    return PoketchTask_NoActiveTasks(displayData->taskList);
}

static void PoketchDigitalClock_EndTask(PoketchTaskManager *taskManager)
{
    DisplayData *displayData = PoketchTask_GetTaskData(taskManager);
    PoketchTask_EndTask(displayData->taskList, taskManager);
}

static void PoketchDigitalClock_SetupBackground(SysTask *sysTask, void *taskManager)
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

    DisplayData *displayData = PoketchTask_GetTaskData(taskManager);

    Bg_InitFromTemplate(displayData->bgConfig, BG_LAYER_SUB_2, &template, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, PRE_POKETCH_DISPLAY_NARC_TILES_IDX, displayData->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, PRE_POKETCH_DISPLAY_NARC_TILEMAP_IDX, displayData->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    ov25_022546B8(0, 0);
    PoketchDigitalClock_DrawClockDigits(displayData);

    Bg_CopyTilemapBufferToVRAM(displayData->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt displayControler = GXS_GetDispCnt();
    GXS_SetVisiblePlane(displayControler.visiblePlane | GX_PLANEMASK_BG2);
    PoketchDigitalClock_EndTask(taskManager);
}

static void PoketchDigitalClock_UpdateClockDigits(SysTask *sysTask, void *taskManager)
{
    DisplayData *displayData = PoketchTask_GetTaskData(taskManager);

    PoketchDigitalClock_DrawClockDigits(displayData);
    Bg_CopyTilemapBufferToVRAM(displayData->bgConfig, BG_LAYER_SUB_2);
    PoketchDigitalClock_EndTask(taskManager);
}

static void PoketchDigitalClock_ToggleBacklightPalette(SysTask *sysTask, void *taskManager)
{
    DisplayData *displayData = PoketchTask_GetTaskData(taskManager);

    if (displayData->clockData->backlightActive) {
        ov25_022546F0(0, 0);
    } else {
        ov25_022546B8(0, 0);
    }

    PoketchDigitalClock_EndTask(taskManager);
}

static void PoketchDigitalClock_FreeBackground(SysTask *sysTask, void *taskManager)
{
    DisplayData *displayData = PoketchTask_GetTaskData(taskManager);

    Bg_FreeTilemapBuffer(displayData->bgConfig, BG_LAYER_SUB_2);
    PoketchDigitalClock_EndTask(taskManager);
}

static void PoketchDigitalClock_DrawClockDigits(DisplayData *displayData)
{
    CP_SetDiv32_32(displayData->clockData->time.hour, POKETCH_NUM_CLOCK_DIGITS);

    u32 tensDigitOffset = CP_GetDivResult32();
    u32 onesDigitOffset = CP_GetDivRemainder32();

    Bg_CopyToTilemapRect(displayData->bgConfig,
        BG_LAYER_SUB_2,
        POKETCH_CLOCK_HOURS_DIGIT_X,
        POKETCH_CLOCK_HOURS_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        displayData->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * tensDigitOffset,
        0,
        (POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS),
        POKETCH_CLOCK_DIGIT_HEIGHT);
    Bg_CopyToTilemapRect(displayData->bgConfig,
        BG_LAYER_SUB_2,
        (POKETCH_CLOCK_HOURS_DIGIT_X + POKETCH_CLOCK_DIGIT_WIDTH + POKETCH_CLOCK_DIGIT_GAP),
        POKETCH_CLOCK_HOURS_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        displayData->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * onesDigitOffset,
        0,
        (POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS),
        POKETCH_CLOCK_DIGIT_HEIGHT);

    CP_SetDiv32_32(displayData->clockData->time.minute, POKETCH_NUM_CLOCK_DIGITS);

    tensDigitOffset = CP_GetDivResult32();
    onesDigitOffset = CP_GetDivRemainder32();

    Bg_CopyToTilemapRect(displayData->bgConfig,
        BG_LAYER_SUB_2,
        POKETCH_CLOCK_MINUETS_DIGIT_X,
        POKETCH_CLOCK_MINUETS_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        displayData->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * tensDigitOffset,
        0,
        (POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS),
        POKETCH_CLOCK_DIGIT_HEIGHT);
    Bg_CopyToTilemapRect(displayData->bgConfig,
        BG_LAYER_SUB_2,
        (POKETCH_CLOCK_MINUETS_DIGIT_X + POKETCH_CLOCK_DIGIT_WIDTH + POKETCH_CLOCK_DIGIT_GAP),
        POKETCH_CLOCK_MINUETS_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        displayData->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * onesDigitOffset,
        0,
        (POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS),
        POKETCH_CLOCK_DIGIT_HEIGHT);
}
