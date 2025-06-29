#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "applications/poketch/digital_watch/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "rtc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

// Touch Screen Boundaries
#define BACKLIGHT_BUTTON_MIN_Y 0x10
#define BACKLIGHT_BUTTON_MAX_Y 0xAF
#define BACKLIGHT_BUTTON_MIN_X 0x10
#define BACKLIGHT_BUTTON_MAX_X 0xCF

typedef struct PoketchDigitalWatch {
    u8 activeTask;
    u8 taskFuncState;
    u8 shouldExit;
    u8 unused_0;
    u8 unused_1;
    u8 hour;
    u8 minute;
    u8 backlightChange;
    u8 unused_2[8];
    PoketchButtonManager *buttonManager;
    WatchData watchData;
    PoketchDigitalWatchGraphics *graphics;
    PoketchSystem *poketchSys;
} PoketchDigitalWatch;

enum DigitalWatchTasks {
    TASK_LOAD_APP = 0,
    TASK_UPDATE_LOOP,
    TASK_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchDigitalWatch *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchDigitalWatch *appData);
static void Exit(void *appData);

static void ChangeActiveTask(PoketchDigitalWatch *appData, enum DigitalWatchTasks taskID);
static void Task_Main(SysTask *task, void *taskManager);
static BOOL Task_LoadApp(PoketchDigitalWatch *appData);
static BOOL Task_UpdateApp(PoketchDigitalWatch *appData);
static BOOL Task_UnloadApp(PoketchDigitalWatch *appData);

static void ToggleBacklight(u32 btnNumber, u32 buttonState, u32 touchState, void *appDataIn);

static const TouchScreenHitTable sButtonHitTable[] = {
    { BACKLIGHT_BUTTON_MIN_Y, BACKLIGHT_BUTTON_MAX_Y, BACKLIGHT_BUTTON_MIN_X, BACKLIGHT_BUTTON_MAX_X }
};

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchDigitalWatch *digitalWatch = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(PoketchDigitalWatch));

    if (digitalWatch != NULL) {
        if (Init(digitalWatch, poketchSys, bgConfig, appID)
            && SysTask_Start(Task_Main, digitalWatch, 1)) {
            *appData = digitalWatch;
            return TRUE;
        }

        Heap_Free(digitalWatch);
    }

    return FALSE;
}

static BOOL Init(PoketchDigitalWatch *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    if (PoketchDigitalWatchGraphics_New(&(appData->graphics), &(appData->watchData), bgConfig)) {
        appData->activeTask = TASK_LOAD_APP;
        appData->taskFuncState = 0;
        appData->shouldExit = FALSE;
        appData->unused_0 = 1;
        appData->backlightChange = FALSE;
        appData->watchData.backlightActive = FALSE;

        GetCurrentTime(&(appData->watchData.time));

        if (appData->watchData.time.hour >= 24) {
            appData->watchData.time.hour %= 24;
        }

        if (appData->watchData.time.minute >= 60) {
            appData->watchData.time.hour %= 60;
            appData->watchData.time.minute %= 60;
        }

        appData->minute = appData->watchData.time.minute;
        appData->hour = appData->watchData.time.hour;
        appData->buttonManager = PoketchButtonManager_New(sButtonHitTable, NELEMS(sButtonHitTable), ToggleBacklight, appData, HEAP_ID_POKETCH_APP);

        if (appData->buttonManager == NULL) {
            return FALSE;
        }

        appData->poketchSys = poketchSys;
        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchDigitalWatch *appData)
{
    PoketchDigitalWatchGraphics_Free(appData->graphics);
    PoketchButtonManager_Free(appData->buttonManager);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *callbackData)
{
    static BOOL (*const funcArray[])(PoketchDigitalWatch *) = {
        Task_LoadApp,
        Task_UpdateApp,
        Task_UnloadApp,
    };

    PoketchDigitalWatch *appData = callbackData;

    if (appData->activeTask < NELEMS(funcArray)) {
        PoketechSystem_UpdateButtonManager(appData->poketchSys, appData->buttonManager);

        if (funcArray[appData->activeTask](appData)) {
            Free(appData);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(appData->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchDigitalWatch *)appData)->shouldExit = TRUE;
}

static void ToggleBacklight(u32 btnNumber, u32 buttonState, u32 touchState, void *appDataIn)
{
    PoketchDigitalWatch *appData = appDataIn;

    switch (touchState) {
    case TRUE:
        appData->watchData.backlightActive = TRUE;
        appData->backlightChange = TRUE;
        break;
    case FALSE:
        appData->watchData.backlightActive = FALSE;
        appData->backlightChange = TRUE;
        break;
    }
}

static void ChangeActiveTask(PoketchDigitalWatch *appData, enum DigitalWatchTasks taskID)
{
    if (appData->shouldExit == FALSE) {
        appData->activeTask = taskID;
    } else {
        appData->activeTask = TASK_SHUTDOWN;
    }

    appData->taskFuncState = 0;
}

static BOOL Task_LoadApp(PoketchDigitalWatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchDigitalWatchGraphics_StartTask(appData->graphics, TASK_DRAW_APP_SCREEN);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchDigitalWatchGraphics_TaskIsNotActive(appData->graphics, TASK_DRAW_APP_SCREEN)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeActiveTask(appData, TASK_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL Task_UpdateApp(PoketchDigitalWatch *appData)
{
    if (appData->shouldExit) {
        ChangeActiveTask(appData, TASK_SHUTDOWN);
        return FALSE;
    }

    if (appData->backlightChange) {
        appData->backlightChange = FALSE;
        PoketchDigitalWatchGraphics_StartTask(appData->graphics, TASK_TOGGLE_BACKLIGHT);
    }

    if (PoketchDigitalWatchGraphics_TaskIsNotActive(appData->graphics, TASK_UPDATE_WATCH_DIGITS)) {
        appData->minute = appData->watchData.time.minute;
        appData->hour = appData->watchData.time.hour;
        GetCurrentTime(&(appData->watchData.time));

        if ((appData->minute != appData->watchData.time.minute) || (appData->hour != appData->watchData.time.hour)) {
            PoketchDigitalWatchGraphics_StartTask(appData->graphics, TASK_UPDATE_WATCH_DIGITS);
        }
    }

    return FALSE;
}

static BOOL Task_UnloadApp(PoketchDigitalWatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchDigitalWatchGraphics_StartTask(appData->graphics, TASK_FREE_GRAPHICS);
        appData->taskFuncState++;
        break;

    case 1:
        if (PoketchDigitalWatchGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }

        break;
    }

    return FALSE;
}
