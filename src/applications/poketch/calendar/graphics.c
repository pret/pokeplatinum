#include "applications/poketch/calendar/graphics.h"

#include <nitro.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

#include "res/graphics/poketch/poketch.naix"

#define MARKED_CELL_TILE_IDX   143
#define UNMARKED_CELL_TILE_IDX 131

static void SetupSprites(CalendarGraphics *graphics, const CalendarData *calendar);
static void SetCurrentDayBoxPosition(PoketchAnimation_AnimatedSpriteData *sprite, u32 position);
static void UnloadSprites(CalendarGraphics *graphics);

static void EndTask(PoketchTaskManager *taskMan);
static void Task_DrawBackground(SysTask *task, void *taskMan);
static void Task_FreeBackground(SysTask *task, void *taskMan);
static void Task_UpdateCalendarCell(SysTask *task, void *taskMan);

static void SetMarkedCells(CalendarGraphics *graphics, const CalendarData *calendar);
static void UpdateCalendarCellBackground(BgConfig *bgConfig, u16 tileIdx, u32 calendarCell);
static void DrawCalendarNumbers(CalendarGraphics *graphics, const CalendarData *calendar);
static void DrawCurrentMonthNum(BgConfig *bgConfig, u32 month);
static void DrawCalenderCellNum(BgConfig *bgConfig, u32 date, u32 calendarCell);

BOOL PoketchCalendarGraphics_New(CalendarGraphics **dest, const CalendarData *calendar, BgConfig *bgConfig)
{
    CalendarGraphics *graphics = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(CalendarGraphics));

    if (graphics != NULL) {
        PoketchTask_InitActiveTaskList(graphics->activeTasks, CALENDAR_TASK_SLOTS);
        graphics->calendar = calendar;
        graphics->bgConfig = PoketchGraphics_GetBgConfig();
        graphics->animMan = PoketchGraphics_GetAnimationManager();
        SetupSprites(graphics, calendar);
        *dest = graphics;

        return TRUE;
    }

    return FALSE;
}

void PoketchCalendarGraphics_Free(CalendarGraphics *graphics)
{
    if (graphics != NULL) {
        UnloadSprites(graphics);
        Heap_Free(graphics);
    }
}

static void SetupSprites(CalendarGraphics *graphics, const CalendarData *calendar)
{
    static const PoketchAnimation_AnimationData animData = {
        .translation = { 0, 0 },
        .animIdx = 0,
        .flip = NNS_G2D_RENDERERFLIP_NONE,
        .oamPriority = 2,
        .priority = 0,
        .hasAffineTransform = FALSE,
    };

    Graphics_LoadObjectTiles(NARC_INDEX_GRAPHIC__POKETCH, calendar_NCGR_lz, DS_SCREEN_SUB, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    PoketchAnimation_LoadSpriteFromNARC(&graphics->spriteData, NARC_INDEX_GRAPHIC__POKETCH, calendar_cell_NCER_lz, calendar_anim_NANR_lz, HEAP_ID_POKETCH_APP);
    graphics->sprite = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &animData, &graphics->spriteData);
    SetCurrentDayBoxPosition(graphics->sprite, calendar->days[calendar->currentDay - 1].calendarCell);
}

static void SetCurrentDayBoxPosition(PoketchAnimation_AnimatedSpriteData *boxSprite, u32 position)
{
    fx32 x = (((CALENDAR_CELL_WIDTH_TILES + 1) * (position % RTC_WEEK_MAX) + 5) * TILE_WIDTH_PIXELS) << FX32_SHIFT;
    fx32 y = (((CALENDAR_CELL_HEIGHT_TILES + 1) * (position / RTC_WEEK_MAX) + 6) * TILE_HEIGHT_PIXELS) << FX32_SHIFT;

    PoketchAnimation_SetSpritePosition(boxSprite, x, y);
}

static void UnloadSprites(CalendarGraphics *graphics)
{
    PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->sprite);
    PoketchAnimation_FreeSpriteData(&graphics->spriteData);
}

static const PoketchTask sCalendarTasks[] = {
    { CALENDAR_GRAPHICS_INIT, Task_DrawBackground, 0 },
    { CALENDAR_GRAPHICS_FREE, Task_FreeBackground, 0 },
    { CALENDAR_GRAPHICS_UPDATE, Task_UpdateCalendarCell, 0 },
    { 0 }
};

void PoketchCalendarGraphics_StartTask(CalendarGraphics *graphics, enum CalendarGraphicsTask taskID)
{
    PoketchTask_Start(sCalendarTasks, taskID, graphics, graphics->calendar, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchCalendarGraphics_TaskIsNotActive(CalendarGraphics *graphics, enum CalendarGraphicsTask taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchCalendarGraphics_NoActiveTasks(CalendarGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    CalendarGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void Task_DrawBackground(SysTask *task, void *taskMan)
{
    static const BgTemplate layer2BgTemplate = {
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
    static const BgTemplate layer3BgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    CalendarGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const CalendarData *calendar = PoketchTask_GetConstTaskData(taskMan);

    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_2, &layer2BgTemplate, BG_TYPE_STATIC);
    Bg_InitFromTemplate(graphics->bgConfig, BG_LAYER_SUB_3, &layer3BgTemplate, BG_TYPE_STATIC);

    SetMarkedCells(graphics, calendar);
    DrawCalendarNumbers(graphics, calendar);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, calendar_bg_tiles_NCGR_lz, graphics->bgConfig, BG_LAYER_SUB_3, 0, 0, TRUE, HEAP_ID_POKETCH_APP);
    PoketchGraphics_LoadActivePalette(0, 0);

    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_2);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_3);

    GXSDispCnt dispCnt = GXS_GetDispCnt();
    GXS_SetVisiblePlane(dispCnt.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3);
    EndTask(taskMan);
}

static void Task_FreeBackground(SysTask *task, void *taskMan)
{
    CalendarGraphics *graphics = PoketchTask_GetTaskData(taskMan);

    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_3);

    EndTask(taskMan);
}

static void Task_UpdateCalendarCell(SysTask *task, void *taskMan)
{
    CalendarGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    const CalendarData *calendar = PoketchTask_GetConstTaskData(taskMan);
    u32 tileIdx = (calendar->days[calendar->updatedIndex].isMarked) ? MARKED_CELL_TILE_IDX : UNMARKED_CELL_TILE_IDX;

    UpdateCalendarCellBackground(graphics->bgConfig, tileIdx, calendar->days[calendar->updatedIndex].calendarCell);
    Bg_CopyTilemapBufferToVRAM(graphics->bgConfig, BG_LAYER_SUB_3);
    EndTask(taskMan);
}

static void SetMarkedCells(CalendarGraphics *graphics, const CalendarData *calendar)
{
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, calendar_NSCR_lz, graphics->bgConfig, BG_LAYER_SUB_3, 0, 0, TRUE, HEAP_ID_POKETCH_APP);

    for (u32 i = 0; i < calendar->daysInMonth; i++) {
        if (calendar->days[i].isMarked) {
            UpdateCalendarCellBackground(graphics->bgConfig, MARKED_CELL_TILE_IDX, calendar->days[i].calendarCell);
        }
    }
}

static void UpdateCalendarCellBackground(BgConfig *bgConfig, u16 tileIdx, u32 calendarCell)
{
    u32 x = 4 + (CALENDAR_CELL_WIDTH_TILES + 1) * (calendarCell % RTC_WEEK_MAX);
    u32 y = 5 + (CALENDAR_CELL_HEIGHT_TILES + 1) * (calendarCell / RTC_WEEK_MAX);

    Bg_FillTilemapRect(bgConfig, BG_LAYER_SUB_3, tileIdx, x, y, CALENDAR_CELL_WIDTH_TILES, CALENDAR_CELL_HEIGHT_TILES, 0);
}

static void DrawCalendarNumbers(CalendarGraphics *graphics, const CalendarData *calendar)
{
    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_SUB_2, 130, 0, 0, 32, 32, 0);
    DrawCurrentMonthNum(graphics->bgConfig, calendar->month);

    for (u32 i = 0; i < calendar->daysInMonth; i++) {
        DrawCalenderCellNum(graphics->bgConfig, i + 1, calendar->days[i].calendarCell);
    }
}

static void DrawCurrentMonthNum(BgConfig *bgConfig, u32 month)
{
    static const u16 monthNumberTileIndices[12] = {
        0, 4, 8, 24, 28, 32, 48, 52, 56, 72, 76, 80
    };
    u32 tileIdx = monthNumberTileIndices[month - 1];

    for (int y = 0; y < 2; y++) {
        for (int x = 0; x < 4; x++) {
            Bg_FillTilemapRect(bgConfig, BG_LAYER_SUB_2, tileIdx + x, 12 + x, 2 + y, 1, 1, 0);
        }

        tileIdx += 12;
    }
}

static void DrawCalenderCellNum(BgConfig *bgConfig, u32 date, u32 calendarCell)
{
    static const u16 tileIndices[2][10] = {
        { 96, 97, 98, 99, 100, 101, 102, 103, 104, 105 },
        { 120, 121, 122, 123, 124, 125, 126, 127, 128, 129 }
    };

    u32 cellX = 4 + 3 * (calendarCell % RTC_WEEK_MAX);
    u32 cellY = 5 + 3 * (calendarCell / RTC_WEEK_MAX);
    int isSunday = calendarCell % RTC_WEEK_MAX == 0;
    u32 tensDigit = date / 10;
    u32 onesDigit = date % 10;

    if (tensDigit) {
        Bg_FillTilemapRect(bgConfig, BG_LAYER_SUB_2, tileIndices[isSunday][tensDigit], cellX, cellY, 1, 1, 0);
        Bg_FillTilemapRect(bgConfig, BG_LAYER_SUB_2, tileIndices[isSunday][tensDigit] + 12, cellX, cellY + 1, 1, 1, 0);
    }

    Bg_FillTilemapRect(bgConfig, BG_LAYER_SUB_2, tileIndices[isSunday][onesDigit], cellX + 1, cellY, 1, 1, 0);
    Bg_FillTilemapRect(bgConfig, BG_LAYER_SUB_2, tileIndices[isSunday][onesDigit] + 12, cellX + 1, cellY + 1, 1, 1, 0);
}
