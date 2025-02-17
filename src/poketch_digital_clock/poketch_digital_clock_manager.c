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

#define BACKLIGHT_BUTTON_MIN_Y 0x10
#define BACKLIGHT_BUTTON_MAX_Y 0xAF
#define BACKLIGHT_BUTTON_MIN_X 0x10
#define BACKLIGHT_BUTTON_MAX_X 0xCF

#define APP_TASK_LOAD_APP   0
#define APP_TASK_UPDATE_APP 1
#define APP_TASK_UNLOAD_APP 2

typedef struct {
    u8 appTasktaskID;
    u8 state;
    u8 shutdown;
    u8 unused_0; // Assigned value of 1
    u8 unused_1;
    u8 hour;
    u8 minute;
    u8 backlightChange;
    u8 unused_2[8];
    PoketchButtonManager *buttonManager;
    ClockData clockData;
    DisplayData *displayData;
    PoketchSystem *poketchSys;
} AppData;

static void NitroStaticInit(void);

static BOOL PoketchDigitalClock_Init(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL PoketchDigitalClock_SetupAppData(AppData *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void PoketchDigitalClock_FreeAppData(AppData *appData);
static void PoketchDigitalClock_AppTaskRunner(SysTask *sysTask, void *taskManager);
static void PoketchDigitalClock_Shutdown(void *appData);
static void PoketchDigitalClock_ToggleBacklight(u32 btnNumber, u32 buttonState, u32 touchState, void *appDataIn);
static void PoketchDigitalClock_SetAppTaskFunction(AppData *appData, u32 taskID);
static BOOL PoketchDigitalClock_LoadApp(AppData *appData);
static BOOL PoketchDigitalClock_UpdateApp(AppData *appData);
static BOOL PoketchDigitalClock_UnloadApp(AppData *appData);

static const TouchScreenHitTable digital_clock_buttons[] = {
    { BACKLIGHT_BUTTON_MIN_Y, BACKLIGHT_BUTTON_MAX_Y, BACKLIGHT_BUTTON_MIN_X, BACKLIGHT_BUTTON_MAX_X }
};

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(PoketchDigitalClock_Init, PoketchDigitalClock_Shutdown);
}

static BOOL PoketchDigitalClock_Init(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    AppData *newAppData = (AppData *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(AppData));

    if (newAppData != NULL) {
        if (PoketchDigitalClock_SetupAppData(newAppData, poketchSys, bgConfig, appID)
        &&  SysTask_Start(PoketchDigitalClock_AppTaskRunner, newAppData, 1) != NULL) {
            *appData = newAppData;
            return TRUE;
        }

        Heap_FreeToHeap(newAppData);
    }

    return FALSE;
}

static BOOL PoketchDigitalClock_SetupAppData(AppData *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    if (PoketchDigitalClock_SetupDisplayData(&(appData->displayData), &(appData->clockData), bgConfig)) {
        appData->appTasktaskID = APP_TASK_LOAD_APP;
        appData->state = 0;
        appData->shutdown = FALSE;
        appData->unused_0 = 1;
        appData->backlightChange = FALSE;
        appData->clockData.backlightActive = FALSE;

        GetCurrentTime(&(appData->clockData.time));

        if (appData->clockData.time.hour >= 24) {
            appData->clockData.time.hour %= 24;
        }

        if (appData->clockData.time.minute >= 60) {
            appData->clockData.time.hour %= 60;
            appData->clockData.time.minute %= 60;
        }

        appData->minute = appData->clockData.time.minute;
        appData->hour = appData->clockData.time.hour;
        appData->buttonManager = PoketchButtonManager_New(digital_clock_buttons, NELEMS(digital_clock_buttons), PoketchDigitalClock_ToggleBacklight, appData, HEAP_ID_POKETCH_APP);

        if (appData->buttonManager == NULL) {
            return FALSE;
        }

        appData->poketchSys = poketchSys;
        return TRUE;
    }

    return FALSE;
}

static void PoketchDigitalClock_FreeAppData(AppData *appData)
{
    PoketchDigitalClock_FreeDisplayData(appData->displayData);
    PoketchButtonManager_Free(appData->buttonManager);
    Heap_FreeToHeap(appData);
}

static void PoketchDigitalClock_AppTaskRunner(SysTask *sysTask, void *callbackData)
{
    static BOOL (*const funcArray[])(AppData *) = {
        PoketchDigitalClock_LoadApp,
        PoketchDigitalClock_UpdateApp,
        PoketchDigitalClock_UnloadApp,
    };

    AppData *appData = (AppData *)callbackData;

    if (appData->appTasktaskID < NELEMS(funcArray)) {
        PoketechSystem_UpdateButtonManager(appData->poketchSys, appData->buttonManager);

        if (funcArray[appData->appTasktaskID](appData)) {
            PoketchDigitalClock_FreeAppData(appData);
            SysTask_Done(sysTask);
            PoketchSystem_NotifyAppUnloaded(appData->poketchSys);
        }
    }
}

static void PoketchDigitalClock_Shutdown(void *appData)
{
    ((AppData *)appData)->shutdown = TRUE;
}

static void PoketchDigitalClock_ToggleBacklight(u32 btnNumber, u32 buttonState, u32 touchState, void *appDataIn)
{
    AppData *appData = (AppData *)appDataIn;

    switch (touchState) {
    case TRUE:
        appData->clockData.backlightActive = TRUE;
        appData->backlightChange = TRUE;
        break;
    case FALSE:
        appData->clockData.backlightActive = FALSE;
        appData->backlightChange = TRUE;
        break;
    }
}

static void PoketchDigitalClock_SetAppTaskFunction(AppData *appData, u32 taskID)
{
    if (appData->shutdown == FALSE) {
        appData->appTasktaskID = taskID;
    } else {
        appData->appTasktaskID = APP_TASK_UNLOAD_APP;
    }

    appData->state = 0;
}

static BOOL PoketchDigitalClock_LoadApp(AppData *appData)
{
    switch (appData->state) {
    case 0:
        PoketchDigitalClock_StartTask(appData->displayData, SYS_TASK_FUNC_SETUP_BACKGROUND);
        appData->state++;
        break;
    case 1:
        if (PoketchDigitalClock_TaskIsNotActive(appData->displayData, SYS_TASK_FUNC_SETUP_BACKGROUND)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            PoketchDigitalClock_SetAppTaskFunction(appData, APP_TASK_UPDATE_APP);
        }
        break;
    }

    return FALSE;
}

static BOOL PoketchDigitalClock_UpdateApp(AppData *appData)
{
    if (appData->shutdown) {
        PoketchDigitalClock_SetAppTaskFunction(appData, APP_TASK_UNLOAD_APP);
        return FALSE;
    }

    if (appData->backlightChange) {
        appData->backlightChange = FALSE;
        PoketchDigitalClock_StartTask(appData->displayData, SYS_TASK_FUNC_TOGGLE_BACKLIGHT_PALETTE);
    }

    if (PoketchDigitalClock_TaskIsNotActive(appData->displayData, SYS_TASK_FUNC_UPDATE_CLOCK_DIGITS)) {
        appData->minute = appData->clockData.time.minute;
        appData->hour = appData->clockData.time.hour;
        GetCurrentTime(&(appData->clockData.time));

        if ((appData->minute != appData->clockData.time.minute) || (appData->hour != appData->clockData.time.hour)) {
            PoketchDigitalClock_StartTask(appData->displayData, SYS_TASK_FUNC_UPDATE_CLOCK_DIGITS);
        }
    }

    return FALSE;
}

static BOOL PoketchDigitalClock_UnloadApp(AppData *appData)
{
    switch (appData->state) {
    case 0:
        PoketchDigitalClock_StartTask(appData->displayData, SYS_TASK_FUNC_FREE_BACKGROUND);
        appData->state++;
        break;

    case 1:
        if (PoketchDigitalClock_NoActiveTasks(appData->displayData)) {
            return TRUE;
        }

        break;
    }

    return FALSE;
}
