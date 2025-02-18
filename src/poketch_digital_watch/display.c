#include "poketch_digital_watch/display.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

static void CopyDigitTilemap(const u16 *rawScreenData, u16 *dst);
static void EndTask(PoketchTaskManager *taskManager);
static void SetupBackground(SysTask *sysTask, void *taskManager);
static void UpdateClockDigits(SysTask *sysTask, void *taskManager);
static void ToggleBacklightPalette(SysTask *sysTask, void *taskManager);
static void FreeBackground(SysTask *sysTask, void *taskManager);
static void DrawClockDigits(DisplayManager *displayManager);

BOOL PoketchDigitalWatch_SetupDisplayManager(DisplayManager **displayManager, const WatchData *watchData, BgConfig *bgConfig)
{
    DisplayManager *newDisplayManager = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(DisplayManager));

    if (newDisplayManager != NULL) {
        NNSG2dScreenData *screenData;

        PoketchTask_InitActiveTaskList(newDisplayManager->taskList, NUM_TASK_SLOTS);

        newDisplayManager->watchData = watchData;
        newDisplayManager->bgConfig = Poketch_GetBgConfig();

        void *nscrBuffer = Graphics_GetScrnData(NARC_INDEX_GRAPHIC__POKETCH, POKETCH_CLOCK_DIGITS_TILEMAP_IDX, TRUE, &screenData, HEAP_ID_POKETCH_APP);

        if (nscrBuffer == NULL) {
            Heap_FreeToHeap(newDisplayManager);
            return FALSE;
        }

        CopyDigitTilemap((const u16 *)(screenData->rawData), newDisplayManager->digitsTilemap);
        Heap_FreeToHeap(nscrBuffer);

        *displayManager = newDisplayManager;
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

void PoketchDigitalWatch_FreeDisplayManager(DisplayManager *displayManager)
{
    if (displayManager != NULL) {
        Heap_FreeToHeap(displayManager);
    }
}

static const PoketchTask sDisplayTasks[] = {
    { POKETCH_TASK_SETUP_BACKGROUND, SetupBackground, 0 },
    { POKETCH_TASK_UPDATE_WATCH_DIGITS, UpdateClockDigits, 0 },
    { POKETCH_TASK_TOGGLE_BACKLIGHT, ToggleBacklightPalette, 0 },
    { POKETCH_TASK_FREE_BACKGROUND, FreeBackground, 0 },
    { 0, NULL, 0 }
};

void PoketchDigitalWatch_StartDisplayTask(DisplayManager *displayManager, u32 taskID)
{
    PoketchTask_Start(sDisplayTasks, taskID, displayManager, displayManager->watchData, displayManager->taskList, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchDigitalWatch_DisplayTaskIsNotActive(DisplayManager *displayManager, u32 taskID)
{
    return PoketchTask_TaskIsNotActive(displayManager->taskList, taskID);
}

BOOL PoketchDigitalWatch_NoActiveDisplayTasks(DisplayManager *displayManager)
{
    return PoketchTask_NoActiveTasks(displayManager->taskList);
}

static void EndTask(PoketchTaskManager *taskManager)
{
    DisplayManager *displayManager = PoketchTask_GetTaskData(taskManager);
    PoketchTask_EndTask(displayManager->taskList, taskManager);
}

static void SetupBackground(SysTask *sysTask, void *taskManager)
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

    DisplayManager *displayManager = PoketchTask_GetTaskData(taskManager);

    Bg_InitFromTemplate(displayManager->bgConfig, BG_LAYER_SUB_2, &template, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, POKETCH_DIGITAL_WATCH_NARC_TILES_IDX, displayManager->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, POKETCH_DIGITAL_WATCH_NARC_TILEMAP_IDX, displayManager->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    Poketch_LoadActivePalette(0, 0);
    DrawClockDigits(displayManager);

    Bg_CopyTilemapBufferToVRAM(displayManager->bgConfig, BG_LAYER_SUB_2);

    GXSDispCnt displayControler = GXS_GetDispCnt();
    GXS_SetVisiblePlane(displayControler.visiblePlane | GX_PLANEMASK_BG2);
    EndTask(taskManager);
}

static void UpdateClockDigits(SysTask *sysTask, void *taskManager)
{
    DisplayManager *displayManager = PoketchTask_GetTaskData(taskManager);

    DrawClockDigits(displayManager);
    Bg_CopyTilemapBufferToVRAM(displayManager->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskManager);
}

static void ToggleBacklightPalette(SysTask *sysTask, void *taskManager)
{
    DisplayManager *displayManager = PoketchTask_GetTaskData(taskManager);

    if (displayManager->watchData->backlightActive) {
        Poketch_LoadActiveBacklightPalette(0, 0);
    } else {
        Poketch_LoadActivePalette(0, 0);
    }

    EndTask(taskManager);
}

static void FreeBackground(SysTask *sysTask, void *taskManager)
{
    DisplayManager *displayManager = PoketchTask_GetTaskData(taskManager);

    Bg_FreeTilemapBuffer(displayManager->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskManager);
}

static void DrawClockDigits(DisplayManager *displayManager)
{
    CP_SetDiv32_32(displayManager->watchData->time.hour, POKETCH_NUM_CLOCK_DIGITS);

    u32 tensDigitOffset = CP_GetDivResult32();
    u32 onesDigitOffset = CP_GetDivRemainder32();

    Bg_CopyToTilemapRect(displayManager->bgConfig,
        BG_LAYER_SUB_2,
        POKETCH_CLOCK_HOURS_DIGIT_X,
        POKETCH_CLOCK_HOURS_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        displayManager->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * tensDigitOffset,
        0,
        POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS,
        POKETCH_CLOCK_DIGIT_HEIGHT);
    Bg_CopyToTilemapRect(displayManager->bgConfig,
        BG_LAYER_SUB_2,
        POKETCH_CLOCK_HOURS_DIGIT_X + POKETCH_CLOCK_DIGIT_WIDTH + POKETCH_CLOCK_DIGIT_GAP,
        POKETCH_CLOCK_HOURS_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        displayManager->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * onesDigitOffset,
        0,
        POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS,
        POKETCH_CLOCK_DIGIT_HEIGHT);

    CP_SetDiv32_32(displayManager->watchData->time.minute, POKETCH_NUM_CLOCK_DIGITS);

    tensDigitOffset = CP_GetDivResult32();
    onesDigitOffset = CP_GetDivRemainder32();

    Bg_CopyToTilemapRect(displayManager->bgConfig,
        BG_LAYER_SUB_2,
        POKETCH_CLOCK_MINUTES_DIGIT_X,
        POKETCH_CLOCK_MINUTES_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        displayManager->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * tensDigitOffset,
        0,
        POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS,
        POKETCH_CLOCK_DIGIT_HEIGHT);
    Bg_CopyToTilemapRect(displayManager->bgConfig,
        BG_LAYER_SUB_2,
        POKETCH_CLOCK_MINUTES_DIGIT_X + POKETCH_CLOCK_DIGIT_WIDTH + POKETCH_CLOCK_DIGIT_GAP,
        POKETCH_CLOCK_MINUTES_DIGIT_Y,
        POKETCH_CLOCK_DIGIT_WIDTH,
        POKETCH_CLOCK_DIGIT_HEIGHT,
        displayManager->digitsTilemap,
        POKETCH_CLOCK_DIGIT_WIDTH * onesDigitOffset,
        0,
        POKETCH_CLOCK_DIGIT_WIDTH * POKETCH_NUM_CLOCK_DIGITS,
        POKETCH_CLOCK_DIGIT_HEIGHT);
}
