#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/calendar/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch.h"
#include "rtc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

// clang-format off
#define DAY_HITBOX(x, y) { .rect = { \
    .top =    ((5 + (CALENDAR_CELL_WIDTH_TILES  + 1) * x) * TILE_WIDTH_PIXELS), \
    .bottom = ((5 + (CALENDAR_CELL_WIDTH_TILES  + 1) * x + CALENDAR_CELL_WIDTH_TILES) * TILE_WIDTH_PIXELS), \
    .left =   ((4 + (CALENDAR_CELL_HEIGHT_TILES + 1) * y) * TILE_HEIGHT_PIXELS), \
    .right =  ((4 + (CALENDAR_CELL_HEIGHT_TILES + 1) * y + CALENDAR_CELL_HEIGHT_TILES) * TILE_HEIGHT_PIXELS) } }
// clang-format on

typedef struct PoketchCalendar {
    u8 state;
    u8 subState;
    u8 shouldExit;
    CalendarData calendar;
    CalendarGraphics *graphics;
    PoketchSystem *poketchSys;
    Poketch *poketch;
    PoketchButtonManager *buttonManager;
    u32 buttonState;
    u32 touchedCell;
    u32 firstDayPosition;
    u32 lastDayPosition;
} PoketchCalendar;

typedef BOOL (*StateFunc)(PoketchCalendar *);

enum CalendarState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchCalendar *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchCalendar *appData);
static void Exit(void *appData);
static void TouchCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appID);
static void InitCalendarData(CalendarData *calendar, PoketchCalendar *appData, const RTCDate *date);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchCalendar *appData, enum CalendarState newState);
static BOOL State_LoadApp(PoketchCalendar *appData);
static BOOL State_UpdateApp(PoketchCalendar *appData);
static BOOL State_UnloadApp(PoketchCalendar *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchCalendar *calendar = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchCalendar));

    if (calendar != NULL) {
        if (Init(calendar, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, calendar, 1) != NULL) {
                *appData = calendar;
                return TRUE;
            }
        }

        Heap_Free(calendar);
    }

    return FALSE;
}

static BOOL Init(PoketchCalendar *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    // clang-format off
    static const TouchScreenRect sHitboxes[] = {
        DAY_HITBOX(0, 0), DAY_HITBOX(0, 1), DAY_HITBOX(0, 2), DAY_HITBOX(0, 3), DAY_HITBOX(0, 4), DAY_HITBOX(0, 5), DAY_HITBOX(0, 6),
        DAY_HITBOX(1, 0), DAY_HITBOX(1, 1), DAY_HITBOX(1, 2), DAY_HITBOX(1, 3), DAY_HITBOX(1, 4), DAY_HITBOX(1, 5), DAY_HITBOX(1, 6),
        DAY_HITBOX(2, 0), DAY_HITBOX(2, 1), DAY_HITBOX(2, 2), DAY_HITBOX(2, 3), DAY_HITBOX(2, 4), DAY_HITBOX(2, 5), DAY_HITBOX(2, 6),
        DAY_HITBOX(3, 0), DAY_HITBOX(3, 1), DAY_HITBOX(3, 2), DAY_HITBOX(3, 3), DAY_HITBOX(3, 4), DAY_HITBOX(3, 5), DAY_HITBOX(3, 6),
        DAY_HITBOX(4, 0), DAY_HITBOX(4, 1), DAY_HITBOX(4, 2), DAY_HITBOX(4, 3), DAY_HITBOX(4, 4), DAY_HITBOX(4, 5), DAY_HITBOX(4, 6),
        DAY_HITBOX(5, 0), DAY_HITBOX(5, 1),
    };
    // clang-format on
    RTCDate todaysDate;

    GetCurrentDate(&todaysDate);
    appData->poketch = PoketchSystem_GetPoketchData(poketchSys);
    InitCalendarData(&appData->calendar, appData, &todaysDate);

    appData->firstDayPosition = appData->calendar.days[0].calendarCell;
    appData->lastDayPosition = appData->firstDayPosition + (appData->calendar.daysInMonth - 1);

    if (PoketchCalendarGraphics_New(&appData->graphics, &appData->calendar, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->buttonManager = PoketchButtonManager_New(sHitboxes, NELEMS(sHitboxes), TouchCallback, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void InitCalendarData(CalendarData *calendar, PoketchCalendar *appData, const RTCDate *date)
{
    static const u8 daysInMonth[12] = {
        31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
    };

    calendar->month = date->month;
    calendar->currentDay = date->day;
    calendar->daysInMonth = daysInMonth[calendar->month - 1];

    if (calendar->month == 2) {
        if (date->year % 400 == 0 || date->year % 100 != 0 && date->year % 4 == 0) {
            calendar->daysInMonth = 29;
        }
    }

    u32 firstDayOfMonth = date->week + (RTC_WEEK_MAX - ((date->day - 1) % RTC_WEEK_MAX));

    if (firstDayOfMonth >= RTC_WEEK_MAX) {
        firstDayOfMonth %= RTC_WEEK_MAX;
    }

    for (u32 i = 0; i < calendar->daysInMonth; i++) {
        calendar->days[i].num = i + 1;
        calendar->days[i].isMarked = Poketch_CalendarMarked(appData->poketch, calendar->month, i + 1);
        calendar->days[i].calendarCell = firstDayOfMonth + i;
    }
}

static void Free(PoketchCalendar *appData)
{
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchCalendarGraphics_Free(appData->graphics);

    Heap_Free(appData);
}

static void TouchCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchCalendar *calendar = appData;

    calendar->touchedCell = buttonID;
    calendar->buttonState = buttonState;
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchCalendar *calendar = appData;

    if (calendar->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(calendar->poketchSys, calendar->buttonManager);

        if (stateFuncs[calendar->state](calendar)) {
            Free(calendar);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(calendar->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchCalendar *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchCalendar *appData, enum CalendarState newState)
{
    if (!appData->shouldExit) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchCalendar *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchCalendarGraphics_StartTask(appData->graphics, CALENDAR_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchCalendarGraphics_TaskIsNotActive(appData->graphics, CALENDAR_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchCalendar *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            appData->buttonState = BUTTON_MANAGER_STATE_NULL;

            if (appData->touchedCell >= appData->firstDayPosition && appData->touchedCell <= appData->lastDayPosition) {
                int dayIndex = (appData->touchedCell - appData->firstDayPosition);

                if (Poketch_CalendarMarked(appData->poketch, appData->calendar.month, dayIndex + 1)) {
                    Poketch_ClearCalendarMark(appData->poketch, appData->calendar.month, dayIndex + 1);
                } else {
                    Poketch_SetCalendarMark(appData->poketch, appData->calendar.month, dayIndex + 1);
                }

                appData->calendar.days[dayIndex].isMarked ^= 1;
                appData->calendar.updatedIndex = dayIndex;
                PoketchCalendarGraphics_StartTask(appData->graphics, CALENDAR_GRAPHICS_UPDATE);
                appData->subState++;
            }
        }
        break;
    case 1:
        if (PoketchCalendarGraphics_TaskIsNotActive(appData->graphics, CALENDAR_GRAPHICS_UPDATE)) {
            appData->subState = 0;
        }
        break;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchCalendar *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchCalendarGraphics_StartTask(appData->graphics, CALENDAR_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchCalendarGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
