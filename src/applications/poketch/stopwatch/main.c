#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/stopwatch/graphics.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch_memory.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "timer.h"
#include "touch_screen.h"

typedef struct SavedTimerValue {
    BOOL isActive;
    u32 hours;
    u32 minutes;
    u32 seconds;
    u32 subseconds;
    u64 startTimestamp;
    u64 pauseTimestamp;
} SavedTimerValue;

typedef struct PoketchStopwatch {
    u8 activeTask;
    u8 taskFuncState;
    u8 shouldExit;
    u8 previousTask;
    u8 buttonState;
    u16 resetSequenceTimer;
    u32 appID;
    u64 startTimestamp;
    u64 pauseTimestamp;
    TimerState timerState;
    SavedTimerValue savedTimerValue;
    PoketchButtonManager *buttonManager;
    PoketchStopwatchGraphics *graphics;
    PoketchSystem *poketchSys;
} PoketchStopwatch;

enum StopwatchTasks {
    TASK_LOAD_APP = 0,
    TASK_INACTIVE_TIMER,
    TASK_ACTIVE_TIMER,
    TASK_BUTTON_HELD,
    TASK_RESET_TIMER,
    TASK_SHUTDOWN
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchStopwatch *appData, BgConfig *bgConfig, u32 appID);
static void Free(PoketchStopwatch *appData);
static void Task_Main(SysTask *task, void *appData);
static void Exit(void *appData);
static void ChangeActiveTask(PoketchStopwatch *appData, enum StopwatchTasks taskID);
static BOOL Task_LoadApp(PoketchStopwatch *appData);
static BOOL Task_HandleInactiveTimer(PoketchStopwatch *appData);
static BOOL Task_HandleActiveTimer(PoketchStopwatch *appData);
static BOOL Task_HandleHeldButton(PoketchStopwatch *appData);
static BOOL Task_HandleResetSequence(PoketchStopwatch *appData);
static BOOL Task_UnloadApp(PoketchStopwatch *appData);
static BOOL RegisterButtonCallback(PoketchStopwatch *appData);
static void FreeButtonManager(PoketchStopwatch *appData);
static void ButtonChanged(u32 buttonID, u32 buttonState, u32 touchState, void *appData);
static void ResetTimer(PoketchStopwatch *appData);
static void StartTimer(PoketchStopwatch *appData);
static void PauseTimer(PoketchStopwatch *appData);
static void CalcTimerValues(PoketchStopwatch *appData, TimerState *timerState);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchStopwatch *stopwatch = (PoketchStopwatch *)Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchStopwatch));

    if (stopwatch != NULL) {
        if (Init(stopwatch, bgConfig, appID)) {
            stopwatch->poketchSys = poketchSys;

            if (SysTask_Start(Task_Main, stopwatch, 1) != NULL) {
                *appData = stopwatch;
                return TRUE;
            }
        } else {
            Heap_Free(stopwatch);
            stopwatch = NULL;
        }
    }

    return FALSE;
}

static BOOL Init(PoketchStopwatch *appData, BgConfig *bgConfig, u32 appID)
{
    appData->appID = appID;

    if (PoketchMemory_Read32(appID, &(appData->savedTimerValue), sizeof(appData->savedTimerValue))) {
        appData->startTimestamp = appData->savedTimerValue.startTimestamp;
        appData->pauseTimestamp = appData->savedTimerValue.pauseTimestamp;
        appData->timerState.hours = appData->savedTimerValue.hours;
        appData->timerState.minutes = appData->savedTimerValue.minutes;
        appData->timerState.seconds = appData->savedTimerValue.seconds;
        appData->timerState.subseconds = appData->savedTimerValue.subseconds;
        appData->timerState.isActive = appData->savedTimerValue.isActive;

        if (appData->timerState.isActive) {
            appData->timerState.buttonSequence = 2;
        } else {
            appData->timerState.buttonSequence = 0;
        }
    } else {
        ResetTimer(appData);
        appData->timerState.buttonSequence = 0;
    }

    if (PoketchStopwatchGraphics_New(&appData->graphics, &appData->timerState, bgConfig)) {
        appData->activeTask = TASK_DRAW_APP_SCREEN;
        appData->taskFuncState = 0;
        appData->previousTask = appData->activeTask;
        appData->shouldExit = FALSE;

        if (RegisterButtonCallback(appData)) {
            return TRUE;
        }
    }

    return FALSE;
}

static void Free(PoketchStopwatch *appData)
{
    appData->savedTimerValue.startTimestamp = appData->startTimestamp;
    appData->savedTimerValue.pauseTimestamp = appData->pauseTimestamp;
    appData->savedTimerValue.hours = appData->timerState.hours;
    appData->savedTimerValue.minutes = appData->timerState.minutes;
    appData->savedTimerValue.seconds = appData->timerState.seconds;
    appData->savedTimerValue.subseconds = appData->timerState.subseconds;
    appData->savedTimerValue.isActive = appData->timerState.isActive;

    PoketchMemory_Write32(appData->appID, &(appData->savedTimerValue), sizeof(appData->savedTimerValue));

    FreeButtonManager(appData);
    PoketchStopwatchGraphics_Free(appData->graphics);

    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchStopwatch *) = {
        Task_LoadApp,
        Task_HandleInactiveTimer,
        Task_HandleActiveTimer,
        Task_HandleHeldButton,
        Task_HandleResetSequence,
        Task_UnloadApp
    };

    PoketchStopwatch *stopwatch = appData;

    if (stopwatch->activeTask < NELEMS(stateFuncs)) {
        if (stopwatch->shouldExit && (stopwatch->activeTask != TASK_SHUTDOWN)) {
            ChangeActiveTask(stopwatch, TASK_SHUTDOWN);
            stopwatch->shouldExit = FALSE;
        }

        PoketechSystem_UpdateButtonManager(stopwatch->poketchSys, stopwatch->buttonManager);
        CalcTimerValues(stopwatch, &stopwatch->timerState);

        if (stateFuncs[stopwatch->activeTask](stopwatch)) {
            Free(stopwatch);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(stopwatch->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchStopwatch *)appData)->shouldExit = TRUE;
}

static void ChangeActiveTask(PoketchStopwatch *appData, enum StopwatchTasks taskID)
{
    appData->previousTask = appData->activeTask;

    if (appData->shouldExit == FALSE) {
        appData->activeTask = taskID;
    } else {
        appData->activeTask = TASK_SHUTDOWN;
        appData->shouldExit = FALSE;
    }

    appData->taskFuncState = 0;
}

static BOOL Task_LoadApp(PoketchStopwatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_DRAW_APP_SCREEN);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchStopwatchGraphics_TaskIsNotActive(appData->graphics, TASK_DRAW_APP_SCREEN)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);

            if (appData->timerState.isActive) {
                ChangeActiveTask(appData, TASK_ACTIVE_TIMER);
            } else {
                ChangeActiveTask(appData, TASK_INACTIVE_TIMER);
            }
        }
        break;
    }

    return FALSE;
}

static BOOL Task_HandleInactiveTimer(PoketchStopwatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            appData->timerState.buttonSequence = 1;
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            appData->taskFuncState++;
        }
        break;
    case 1:
        switch (appData->buttonState) {
        case BUTTON_MANAGER_STATE_DRAGGING:
            appData->timerState.buttonSequence = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            appData->taskFuncState--;
            break;
        case BUTTON_MANAGER_STATE_TAP:
            appData->timerState.buttonSequence = 2;
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            StartTimer(appData);
            ChangeActiveTask(appData, TASK_ACTIVE_TIMER);
            break;
        case BUTTON_MANAGER_STATE_TIMER0:
            appData->timerState.buttonSequence = 3;
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            ChangeActiveTask(appData, TASK_BUTTON_HELD);
            break;
        }
        break;
    }

    return FALSE;
}

static BOOL Task_HandleActiveTimer(PoketchStopwatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            appData->timerState.buttonSequence = 1;
            PauseTimer(appData);
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            appData->taskFuncState++;
        }
        break;
    case 1:
        switch (appData->buttonState) {
        case BUTTON_MANAGER_STATE_DRAGGING:
            appData->timerState.buttonSequence = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            ChangeActiveTask(appData, TASK_INACTIVE_TIMER);
            break;
        case BUTTON_MANAGER_STATE_TAP:
            appData->timerState.buttonSequence = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            ChangeActiveTask(appData, TASK_INACTIVE_TIMER);
            break;
        case BUTTON_MANAGER_STATE_TIMER0:
            appData->timerState.buttonSequence = 3;
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            ChangeActiveTask(appData, TASK_BUTTON_HELD);
            break;
        }
        break;
    }

    return FALSE;
}

static BOOL Task_HandleHeldButton(PoketchStopwatch *appData)
{
    switch (appData->buttonState) {
    case BUTTON_MANAGER_STATE_TAP:
        if (appData->previousTask == TASK_INACTIVE_TIMER) {
            StartTimer(appData);
            appData->timerState.buttonSequence = 2;
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            ChangeActiveTask(appData, TASK_ACTIVE_TIMER);
            break;
        }
    case BUTTON_MANAGER_STATE_DRAGGING:
        appData->timerState.buttonSequence = 0;
        PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
        ChangeActiveTask(appData, TASK_INACTIVE_TIMER);
        break;
    case BUTTON_MANAGER_STATE_TIMER1:
        appData->timerState.buttonSequence = 4;
        PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
        ChangeActiveTask(appData, TASK_RESET_TIMER);
        break;
    }

    return FALSE;
}

static BOOL Task_HandleResetSequence(PoketchStopwatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        appData->resetSequenceTimer = 0;
        appData->taskFuncState++;
    case 1:
        if (++appData->resetSequenceTimer >= 90) {
            appData->timerState.buttonSequence = 5;
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            appData->resetSequenceTimer = 0;
            appData->taskFuncState++;
        }
        break;
    case 2:
        if (++appData->resetSequenceTimer >= 60) {
            appData->timerState.buttonSequence = 6;
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            ResetTimer(appData);
            appData->resetSequenceTimer = 0;
            appData->taskFuncState++;
        }
        break;
    case 3:
        if (PoketchStopwatchGraphics_TaskIsNotActive(appData->graphics, TASK_UPDATE_GRAPHICS)) {
            appData->timerState.buttonSequence = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            ChangeActiveTask(appData, TASK_INACTIVE_TIMER);
        }
        break;
    }

    return FALSE;
}

static BOOL Task_UnloadApp(PoketchStopwatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        appData->timerState.buttonSequence = 7;
        PoketchStopwatchGraphics_StartTask(appData->graphics, TASK_FREE_GRAPHICS);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchStopwatchGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL RegisterButtonCallback(PoketchStopwatch *appData)
{
    static const TouchScreenHitTable buttonHitBox[] = {
        { TOUCHSCREEN_USE_CIRCLE, 112, 112, 39 },
    };

    appData->buttonManager = PoketchButtonManager_New(buttonHitBox, NELEMS(buttonHitBox), ButtonChanged, appData, HEAP_ID_POKETCH_APP);

    if (appData->buttonManager != NULL) {
        PoketchButtonManager_SetButtonTimer(appData->buttonManager, 0, 0, 15);
        PoketchButtonManager_SetButtonTimer(appData->buttonManager, 0, 1, 75);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        return TRUE;
    }

    return FALSE;
}

static void FreeButtonManager(PoketchStopwatch *appData)
{
    PoketchButtonManager_Free(appData->buttonManager);
}

static void ButtonChanged(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchStopwatch *stopwatch = appData;
    stopwatch->buttonState = buttonState;
}

static void ResetTimer(PoketchStopwatch *appData)
{
    appData->timerState.isActive = FALSE;
    appData->timerState.isReset = TRUE;
    appData->timerState.subseconds = 0;
    appData->timerState.seconds = 0;
    appData->timerState.minutes = 0;
    appData->timerState.hours = 0;
    appData->startTimestamp = 0;
    appData->pauseTimestamp = 0;
}

static void StartTimer(PoketchStopwatch *appData)
{
    if (appData->startTimestamp) {
        appData->startTimestamp += Timer_GetCurrentTimestamp() - appData->pauseTimestamp;
    } else {
        appData->startTimestamp = Timer_GetCurrentTimestamp();
    }

    appData->timerState.isActive = TRUE;
    appData->timerState.isReset = FALSE;
}

static void PauseTimer(PoketchStopwatch *appData)
{
    appData->pauseTimestamp = Timer_GetCurrentTimestamp();
    appData->timerState.isActive = FALSE;
}

static void CalcTimerValues(PoketchStopwatch *appData, TimerState *timerState)
{
    if (timerState->isActive) {
        u64 remainingTime, milliseconds, elapsedTime;

        elapsedTime = Timer_GetCurrentTimestamp() - appData->startTimestamp;

        CP_SetDiv64_32(Timer_TicksToMilliSeconds(elapsedTime), 1000);

        remainingTime = CP_GetDivResult64();
        milliseconds = CP_GetDivRemainder64();

        CP_SetDiv64_32(milliseconds, 10);
        timerState->subseconds = CP_GetDivResult32();

        CP_SetDiv64_32(remainingTime, 60);

        remainingTime = CP_GetDivResult64();
        timerState->seconds = CP_GetDivRemainder32();

        CP_SetDiv64_32(remainingTime, 60);

        remainingTime = CP_GetDivResult64();
        timerState->minutes = CP_GetDivRemainder32();

        if (remainingTime >= 24) {
            CP_SetDiv64_32(remainingTime, 24);
            remainingTime = CP_GetDivRemainder32();
        }

        timerState->hours = remainingTime;
    }
}
