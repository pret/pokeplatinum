#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "overlay025/poketch_button.h"
#include "overlay025/poketch_system.h"
#include "poketch_digital_clock/poketch_digital_clock_graphics.h"

#include "bg_window.h"
#include "heap.h"
#include "rtc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

// App Tasks
#define APP_TASK_LOAD   0
#define APP_TASK_UPDATE 1
#define APP_TASK_UNLOAD 2

// Touch Screen Boundaries
#define BACKLIGHT_BUTTON_MIN_Y 0x10
#define BACKLIGHT_BUTTON_MAX_Y 0xAF
#define BACKLIGHT_BUTTON_MIN_X 0x10
#define BACKLIGHT_BUTTON_MAX_X 0xCF

typedef struct {
    u8 activeTask;
    u8 state;
    u8 shutdown;
    u8 unused_0; // Assigned value of 1
    u8 unused_1;
    u8 hour;
    u8 minute;
    u8 backlightChange;
    u8 unused_2[8];
    PoketchButtonManager *buttonManager;
    WatchData watchData;
    DisplayManager *displayManager;
    PoketchSystem *poketchSys;
} AppData;

static void NitroStaticInit(void);

static BOOL Init(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL SetupAppData(AppData *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void FreeAppData(AppData *appData);
static void Main(SysTask *sysTask, void *taskManager);
static void Exit(void *appData);
static void ToggleBacklight(u32 btnNumber, u32 buttonState, u32 touchState, void *appDataIn);
static void ChangeActiveTask(AppData *appData, u32 taskID);
static BOOL LoadApp(AppData *appData);
static BOOL UpdateApp(AppData *appData);
static BOOL UnloadApp(AppData *appData);

static const TouchScreenHitTable sButtonHitTable[] = {
    { BACKLIGHT_BUTTON_MIN_Y, BACKLIGHT_BUTTON_MAX_Y, BACKLIGHT_BUTTON_MIN_X, BACKLIGHT_BUTTON_MAX_X }
};

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(Init, Exit);
}

static BOOL Init(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    AppData *newAppData = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(AppData));

    if (newAppData != NULL) {
        if (SetupAppData(newAppData, poketchSys, bgConfig, appID)
            && SysTask_Start(Main, newAppData, 1)) {
            *appData = newAppData;
            return TRUE;
        }

        Heap_FreeToHeap(newAppData);
    }

    return FALSE;
}

static BOOL SetupAppData(AppData *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    if (PoketchDigitalClock_SetupDisplayManager(&(appData->displayManager), &(appData->watchData), bgConfig)) {
        appData->activeTask = APP_TASK_LOAD;
        appData->state = 0;
        appData->shutdown = FALSE;
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

static void FreeAppData(AppData *appData)
{
    PoketchDigitalClock_FreeDisplayManager(appData->displayManager);
    PoketchButtonManager_Free(appData->buttonManager);
    Heap_FreeToHeap(appData);
}

static void Main(SysTask *sysTask, void *callbackData)
{
    static BOOL (*const funcArray[])(AppData *) = {
        LoadApp,
        UpdateApp,
        UnloadApp,
    };

    AppData *appData = callbackData;

    if (appData->activeTask < NELEMS(funcArray)) {
        PoketechSystem_UpdateButtonManager(appData->poketchSys, appData->buttonManager);

        if (funcArray[appData->activeTask](appData)) {
            FreeAppData(appData);
            SysTask_Done(sysTask);
            PoketchSystem_NotifyAppUnloaded(appData->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((AppData *)appData)->shutdown = TRUE;
}

static void ToggleBacklight(u32 btnNumber, u32 buttonState, u32 touchState, void *appDataIn)
{
    AppData *appData = appDataIn;

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

static void ChangeActiveTask(AppData *appData, u32 taskID)
{
    if (appData->shutdown == FALSE) {
        appData->activeTask = taskID;
    } else {
        appData->activeTask = APP_TASK_UNLOAD;
    }

    appData->state = 0;
}

static BOOL LoadApp(AppData *appData)
{
    switch (appData->state) {
    case 0:
        PoketchDigitalClock_StartDisplayTask(appData->displayManager, POKETCH_TASK_SETUP_BACKGROUND);
        appData->state++;
        break;
    case 1:
        if (PoketchDigitalClock_DisplayTaskIsNotActive(appData->displayManager, POKETCH_TASK_SETUP_BACKGROUND)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeActiveTask(appData, APP_TASK_UPDATE);
        }
        break;
    }

    return FALSE;
}

static BOOL UpdateApp(AppData *appData)
{
    if (appData->shutdown) {
        ChangeActiveTask(appData, APP_TASK_UNLOAD);
        return FALSE;
    }

    if (appData->backlightChange) {
        appData->backlightChange = FALSE;
        PoketchDigitalClock_StartDisplayTask(appData->displayManager, POKETCH_TASK_TOGGLE_BACKLIGHT);
    }

    if (PoketchDigitalClock_DisplayTaskIsNotActive(appData->displayManager, POKETCH_TASK_UPDATE_WATCH_DIGITS)) {
        appData->minute = appData->watchData.time.minute;
        appData->hour = appData->watchData.time.hour;
        GetCurrentTime(&(appData->watchData.time));

        if ((appData->minute != appData->watchData.time.minute) || (appData->hour != appData->watchData.time.hour)) {
            PoketchDigitalClock_StartDisplayTask(appData->displayManager, POKETCH_TASK_UPDATE_WATCH_DIGITS);
        }
    }

    return FALSE;
}

static BOOL UnloadApp(AppData *appData)
{
    switch (appData->state) {
    case 0:
        PoketchDigitalClock_StartDisplayTask(appData->displayManager, POKETCH_TASK_FREE_BACKGROUND);
        appData->state++;
        break;

    case 1:
        if (PoketchDigitalClock_NoActiveDisplayTasks(appData->displayManager)) {
            return TRUE;
        }

        break;
    }

    return FALSE;
}
