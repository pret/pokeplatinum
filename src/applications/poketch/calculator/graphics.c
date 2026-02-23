#include "applications/poketch/calculator/graphics.h"

#include <nitro.h>

#include "generated/sdat.h"

#include "applications/poketch/calculator/value.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

#define CALCULATOR_NCGR_WIDTH_TILES 40

// Indices of certain tiles within the calculator background tile NCGR
#define INDEX_BLANK_OPERATOR 41
#define INDEX_BLANK_DIGIT    43
#define INDEX_DIGITS         165
#define INDEX_OPERATORS      240

static void SaveReleasedButtonTiles(CalculatorGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_PressButton(SysTask *task, void *taskMan);
static void Task_ReleaseButton(SysTask *task, void *taskMan);
static void Task_DisplayOperand1(SysTask *task, void *taskMan);
static void Task_ClearOutput(SysTask *task, void *taskMan);
static void Task_DisplayOperand2(SysTask *task, void *taskMan);
static void Task_DisplayResult(SysTask *task, void *taskMan);
static void Task_DisplayOperatorAndResult(SysTask *task, void *taskMan);
static void Task_DisplayInvalidValue(SysTask *task, void *taskMan);
static void Task_UpdateOperator(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);

static void UpdateOperatorGraphic(BgConfig *bgConfig, const CalculatorData *calcState);
static void ClearOperatorGraphic(BgConfig *bgConfig);
static void UpdateValueGraphic(BgConfig *bgConfig, const u16 *displayValues);

// clang-format off
// These are all indices of tiles in the background tile NCGR that draw the
// button in a pressed state
static const u16 sPressed0Tiles[BUTTON_SIZE_TILES_LARGE] = {
    251, 252, 252, 252, 252, 252, 252, 253,
    291,  85,  86, 292, 292, 292, 292, 293,
    291, 125, 126, 292, 292, 292, 292, 293,
    337, 338, 338, 338, 338, 338, 338, 339,
};

static const u16 sPressed1Tiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291,  87,  88, 293,
    291, 127, 128, 293,
    331, 332, 332, 333,
};

static const u16 sPressed2Tiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291,  89,  90, 293,
    291, 129, 130, 293,
    331, 332, 332, 333,
};

static const u16 sPressed3Tiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291,  91,  92, 293,
    291, 131, 132, 293,
    331, 332, 332, 333,
};

static const u16 sPressed4Tiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291,  93,  94, 293,
    291, 133, 134, 293,
    331, 332, 332, 333,
};

static const u16 sPressed5Tiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291,  95,  96, 293,
    291, 135, 136, 293,
    331, 332, 332, 333,
};

static const u16 sPressed6Tiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291,  97,  98, 293,
    291, 137, 138, 293,
    331, 332, 332, 333,
};

static const u16 sPressed7Tiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291,  99, 100, 293,
    291, 139, 140, 293,
    331, 332, 332, 333,
};

static const u16 sPressed8Tiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291, 101, 102, 293,
    291, 141, 142, 293,
    331, 332, 332, 333,
};

static const u16 sPressed9Tiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291, 103, 104, 293,
    291, 143, 144, 293,
    331, 332, 332, 333,
};

static const u16 sPressedDotTiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291, 105, 106, 293,
    291, 145, 146, 293,
    337, 338, 338, 339,
};

static const u16 sPressedClearTiles[BUTTON_SIZE_TILES_LARGE] = {
    251, 252, 252, 252, 252, 252, 252, 253,
    291, 117, 118, 292, 292, 292, 292, 293,
    291, 157, 158, 292, 292, 292, 292, 293,
    331, 332, 332, 332, 332, 332, 332, 333,
};

static const u16 sPressedPlusTiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291, 109, 110, 293,
    291, 149, 150, 293,
    331, 332, 332, 333,
};

static const u16 sPressedMinusTiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291, 107, 108, 293,
    291, 147, 148, 293,
    331, 332, 332, 333,
};

static const u16 sPressedTimesTiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291, 111, 112, 293,
    291, 151, 152, 293,
    331, 332, 332, 333,
};

static const u16 sPressedDivideTiles[BUTTON_SIZE_TILES_SMALL] = {
    251, 252, 252, 253,
    291, 113, 114, 293,
    291, 153, 154, 293,
    331, 332, 332, 333,
};

static const u16 sPressedEqualsTiles[BUTTON_SIZE_TILES_LARGE] = {
    251, 252, 252, 252, 252, 252, 252, 253,
    291, 115, 116, 292, 292, 292, 292, 293,
    291, 155, 156, 292, 292, 292, 292, 293,
    337, 338, 338, 338, 338, 338, 338, 339,
};

static const u16 *const sPressedButtonTiles[] = {
    sPressed0Tiles,
    sPressed1Tiles,
    sPressed2Tiles,
    sPressed3Tiles,
    sPressed4Tiles,
    sPressed5Tiles,
    sPressed6Tiles,
    sPressed7Tiles,
    sPressed8Tiles,
    sPressed9Tiles,
    sPressedDotTiles,
    sPressedMinusTiles,
    sPressedPlusTiles,
    sPressedTimesTiles,
    sPressedDivideTiles,
    sPressedEqualsTiles,
    sPressedClearTiles,
};

static const struct {
    u8 x;
    u8 y;
    u8 width;
    u8 height;
} sButtonPositions[] = {
    {  4, 18, 8, 4 }, // 0
    {  4, 14, 4, 4 }, // 1
    {  8, 14, 4, 4 }, // 2
    { 12, 14, 4, 4 }, // 3
    {  4, 10, 4, 4 }, // 4
    {  8, 10, 4, 4 }, // 5
    { 12, 10, 4, 4 }, // 6
    {  4,  6, 4, 4 }, // 7
    {  8,  6, 4, 4 }, // 8
    { 12,  6, 4, 4 }, // 9
    { 12, 18, 4, 4 }, // decimal point
    { 20, 10, 4, 4 }, // minus
    { 16, 10, 4, 4 }, // plus
    { 16, 14, 4, 4 }, // times
    { 20, 14, 4, 4 }, // divide
    { 16, 18, 8, 4 }, // equals
    { 16,  6, 8, 4 }, // clear
};
// clang-format on

BOOL PoketchCalculatorGraphics_New(CalculatorGraphics **dest, const CalculatorData *calcState, BgConfig *bgConfig)
{
    CalculatorGraphics *graphics = (CalculatorGraphics *)Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(CalculatorGraphics));

    if (graphics != NULL) {
        graphics->calcData = calcState;
        graphics->bgConfig = bgConfig;
        PoketchTask_InitActiveTaskList(graphics->activeTasks, CALCULATOR_TASK_SLOTS);
        *dest = graphics;

        return TRUE;
    }

    return FALSE;
}

void PoketchCalculatorGraphics_Free(CalculatorGraphics *graphics)
{
    if (graphics) {
        Heap_Free(graphics);
    }
}

static const PoketchTask sCalculatorTasks[] = {
    { CALCULATOR_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { CALCULATOR_GRAPHICS_PRESS_BUTTON, Task_PressButton, 0 },
    { CALCULATOR_GRAPHICS_RELEASE_BUTTON, Task_ReleaseButton, 0 },
    { CALCULATOR_GRAPHICS_OPERAND_1, Task_DisplayOperand1, 0 },
    { CALCULATOR_GRAPHICS_CLEAR_OUTPUT, Task_ClearOutput, 0 },
    { CALCULATOR_GRAPHICS_OPERAND_2, Task_DisplayOperand2, 0 },
    { CALCULATOR_GRAPHICS_RESULT, Task_DisplayResult, 0 },
    { CALCULATOR_GRAPHICS_RESULT_AND_OP, Task_DisplayOperatorAndResult, 0 },
    { CALCULATOR_GRAPHICS_INVALID_VALUE, Task_DisplayInvalidValue, 0 },
    { CALCULATOR_GRAPHICS_UDPATE_OP, Task_UpdateOperator, 0 },
    { CALCULATOR_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { 0 }
};

void PoketchCalculatorGraphics_StartTask(CalculatorGraphics *graphics, enum CalculatorGraphicsTask taskID)
{
    PoketchTask_Start(sCalculatorTasks, taskID, graphics, graphics->calcData, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchCalculatorGraphics_TaskIsNotActive(CalculatorGraphics *graphics, enum CalculatorGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchCalculatorGraphics_NoActiveTasks(CalculatorGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);
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
    const CalculatorData *calcState = PoketchTask_GetConstTaskData(taskMan);
    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &bgTemplate, BG_TYPE_STATIC);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, calculator_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, calculator_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    SaveReleasedButtonTiles(graphics);
    PoketchGraphics_LoadActivePalette(0, 0);

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2);

    EndTask(taskMan);
}

static void SaveReleasedButtonTiles(CalculatorGraphics *graphics)
{
    u16 *tilemapBuffer = Bg_GetTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);

    for (u32 button = 0; button < NUM_BUTTONS; button++) {
        u32 tile = 0;

        for (u32 y = sButtonPositions[button].y; y < sButtonPositions[button].y + sButtonPositions[button].height; y++) {
            for (u32 x = sButtonPositions[button].x; x < sButtonPositions[button].x + sButtonPositions[button].width; x++) {
                graphics->releasedButtonTiles[button][tile++] = tilemapBuffer[y * POKETCH_WIDTH_TILES + x];
            }
        }
    }
}

static void Task_PressButton(SysTask *task, void *taskMan)
{
    const CalculatorData *calcState = PoketchTask_GetConstTaskData(taskMan);
    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    u32 button = calcState->pressedButton;

    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);

    Bg_LoadToTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, sPressedButtonTiles[button], sButtonPositions[button].x, sButtonPositions[button].y, sButtonPositions[button].width, sButtonPositions[button].height);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    EndTask(taskMan);
}

static void Task_ReleaseButton(SysTask *task, void *taskMan)
{
    const CalculatorData *calcState = PoketchTask_GetConstTaskData(taskMan);
    u32 button = calcState->pressedButton;

    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_LoadToTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, graphics->releasedButtonTiles[button], sButtonPositions[button].x, sButtonPositions[button].y, sButtonPositions[button].width, sButtonPositions[button].height);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);

    EndTask(taskMan);
}

static void Task_DisplayOperand1(SysTask *task, void *taskMan)
{
    const CalculatorData *calcState = PoketchTask_GetConstTaskData(taskMan);
    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    CalculatorValue_GetDisplaySymbols(calcState->operand1, graphics->outputRowTiles);
    UpdateValueGraphic(graphics->bgConfig, graphics->outputRowTiles);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_ClearOutput(SysTask *task, void *taskMan)
{
    const CalculatorData *calcState = PoketchTask_GetConstTaskData(taskMan);
    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    CalculatorValue_GetDisplaySymbols(calcState->operand1, graphics->outputRowTiles);
    UpdateValueGraphic(graphics->bgConfig, graphics->outputRowTiles);
    ClearOperatorGraphic(graphics->bgConfig);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_DisplayOperand2(SysTask *task, void *taskMan)
{
    const CalculatorData *calcState = PoketchTask_GetConstTaskData(taskMan);
    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    CalculatorValue_GetDisplaySymbols(calcState->operand2, graphics->outputRowTiles);
    UpdateValueGraphic(graphics->bgConfig, graphics->outputRowTiles);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_DisplayResult(SysTask *task, void *taskMan)
{
    const CalculatorData *calcState = PoketchTask_GetConstTaskData(taskMan);
    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    CalculatorValue_GetDisplaySymbols(calcState->result, graphics->outputRowTiles);
    UpdateValueGraphic(graphics->bgConfig, graphics->outputRowTiles);
    ClearOperatorGraphic(graphics->bgConfig);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_DisplayOperatorAndResult(SysTask *task, void *taskMan)
{
    const CalculatorData *calcState = PoketchTask_GetConstTaskData(taskMan);
    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    CalculatorValue_GetDisplaySymbols(calcState->result, graphics->outputRowTiles);
    UpdateValueGraphic(graphics->bgConfig, graphics->outputRowTiles);
    UpdateOperatorGraphic(graphics->bgConfig, calcState);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_DisplayInvalidValue(SysTask *task, void *taskMan)
{
    u32 i;
    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    for (i = 0; i < CALCULATOR_MAX_DIGITS; i++) {
        graphics->outputRowTiles[i] = DISPLAY_SYMBOL_INVALID;
    }
    graphics->outputRowTiles[i] = DISPLAY_SYMBOL_TERMINATE;

    UpdateValueGraphic(graphics->bgConfig, graphics->outputRowTiles);
    ClearOperatorGraphic(graphics->bgConfig);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void Task_UpdateOperator(SysTask *task, void *taskMan)
{
    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const CalculatorData *calcState = PoketchTask_GetConstTaskData(taskMan);

    UpdateOperatorGraphic(graphics->bgConfig, calcState);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void UpdateOperatorGraphic(BgConfig *bgConfig, const CalculatorData *calcState)
{
    u16 *tilemapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_SUB_2);

    if (calcState->pendingOperation == CALC_BUTTON_NULL) {
        ClearOperatorGraphic(bgConfig);
    } else {
        u32 startTile = INDEX_OPERATORS + (calcState->pendingOperation - CALC_BUTTON_MINUS) * 2;
        PoketchTask_UpdateTilemap2x2(tilemapBuffer, 3, 3, POKETCH_WIDTH_TILES, startTile, CALCULATOR_NCGR_WIDTH_TILES, 0);
    }
}

static void ClearOperatorGraphic(BgConfig *bgConfig)
{
    u16 *tilemapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_SUB_2);
    PoketchTask_UpdateTilemap2x2(tilemapBuffer, 3, 3, POKETCH_WIDTH_TILES, INDEX_BLANK_OPERATOR, CALCULATOR_NCGR_WIDTH_TILES, 0);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    CalculatorGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    EndTask(taskMan);
}

static void UpdateValueGraphic(BgConfig *bgConfig, const u16 *displayValues)
{
    u32 valueLength, displayIdx, valuesIdx;
    u16 *tilemapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_SUB_2);

    for (valueLength = 0; displayValues[valueLength] != DISPLAY_SYMBOL_TERMINATE; valueLength++) {
        (void)0;
    }

    for (displayIdx = 0; displayIdx < (CALCULATOR_MAX_DIGITS - valueLength); displayIdx++) {
        PoketchTask_UpdateTilemap2x2(tilemapBuffer, 5 + displayIdx * 2, 3, POKETCH_WIDTH_TILES, INDEX_BLANK_DIGIT, CALCULATOR_NCGR_WIDTH_TILES, 0);
    }

    for (valuesIdx = 0; displayIdx < CALCULATOR_MAX_DIGITS; displayIdx++, valuesIdx++) {
        PoketchTask_UpdateTilemap2x2(tilemapBuffer, 5 + displayIdx * 2, 3, POKETCH_WIDTH_TILES, INDEX_DIGITS + displayValues[valuesIdx] * 2, CALCULATOR_NCGR_WIDTH_TILES, 0);
    }
}
