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
    u8 state;
    u8 subState;
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

typedef BOOL (*StateFunc)(PoketchStopwatch *);

enum StopwatchTask {
    STATE_LOAD_APP = 0,
    STATE_INACTIVE_TIMER,
    STATE_ACTIVE_TIMER,
    STATE_BUTTON_HELD,
    STATE_RESET_TIMER,
    STATE_SHUTDOWN
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchStopwatch *appData, BgConfig *bgConfig, u32 appID);
static void Free(PoketchStopwatch *appData);
static void Exit(void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchStopwatch *appData, enum StopwatchTask newState);
static BOOL State_LoadApp(PoketchStopwatch *appData);
static BOOL State_InactiveTimer(PoketchStopwatch *appData);
static BOOL State_ActiveTimer(PoketchStopwatch *appData);
static BOOL State_HoldingButton(PoketchStopwatch *appData);
static BOOL State_ResetSequence(PoketchStopwatch *appData);
static BOOL State_UnloadApp(PoketchStopwatch *appData);

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
    PoketchStopwatch *stopwatch = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchStopwatch));

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
        appData->state = STOPWATCH_GRAPHICS_INIT;
        appData->subState = 0;
        appData->previousTask = appData->state;
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
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_InactiveTimer,
        State_ActiveTimer,
        State_HoldingButton,
        State_ResetSequence,
        State_UnloadApp
    };

    PoketchStopwatch *stopwatch = appData;

    if (stopwatch->state < NELEMS(stateFuncs)) {
        if (stopwatch->shouldExit && (stopwatch->state != STATE_SHUTDOWN)) {
            ChangeState(stopwatch, STATE_SHUTDOWN);
            stopwatch->shouldExit = FALSE;
        }

        PoketechSystem_UpdateButtonManager(stopwatch->poketchSys, stopwatch->buttonManager);
        CalcTimerValues(stopwatch, &stopwatch->timerState);

        if (stateFuncs[stopwatch->state](stopwatch)) {
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

static void ChangeState(PoketchStopwatch *appData, enum StopwatchTask taskID)
{
    appData->previousTask = appData->state;

    if (appData->shouldExit == FALSE) {
        appData->state = taskID;
    } else {
        appData->state = STATE_SHUTDOWN;
        appData->shouldExit = FALSE;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchStopwatch *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchStopwatchGraphics_TaskIsNotActive(appData->graphics, STOPWATCH_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);

            if (appData->timerState.isActive) {
                ChangeState(appData, STATE_ACTIVE_TIMER);
            } else {
                ChangeState(appData, STATE_INACTIVE_TIMER);
            }
        }
        break;
    }

    return FALSE;
}

static BOOL State_InactiveTimer(PoketchStopwatch *appData)
{
    switch (appData->subState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            appData->timerState.buttonSequence = 1;
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            appData->subState++;
        }
        break;
    case 1:
        switch (appData->buttonState) {
        case BUTTON_MANAGER_STATE_DRAGGING:
            appData->timerState.buttonSequence = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            appData->subState--;
            break;
        case BUTTON_MANAGER_STATE_TAP:
            appData->timerState.buttonSequence = 2;
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            StartTimer(appData);
            ChangeState(appData, STATE_ACTIVE_TIMER);
            break;
        case BUTTON_MANAGER_STATE_TIMER0:
            appData->timerState.buttonSequence = 3;
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            ChangeState(appData, STATE_BUTTON_HELD);
            break;
        }
        break;
    }

    return FALSE;
}

static BOOL State_ActiveTimer(PoketchStopwatch *appData)
{
    switch (appData->subState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            appData->timerState.buttonSequence = 1;
            PauseTimer(appData);
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            appData->subState++;
        }
        break;
    case 1:
        switch (appData->buttonState) {
        case BUTTON_MANAGER_STATE_DRAGGING:
            appData->timerState.buttonSequence = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            ChangeState(appData, STATE_INACTIVE_TIMER);
            break;
        case BUTTON_MANAGER_STATE_TAP:
            appData->timerState.buttonSequence = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            ChangeState(appData, STATE_INACTIVE_TIMER);
            break;
        case BUTTON_MANAGER_STATE_TIMER0:
            appData->timerState.buttonSequence = 3;
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            ChangeState(appData, STATE_BUTTON_HELD);
            break;
        }
        break;
    }

    return FALSE;
}

static BOOL State_HoldingButton(PoketchStopwatch *appData)
{
    switch (appData->buttonState) {
    case BUTTON_MANAGER_STATE_TAP:
        if (appData->previousTask == STATE_INACTIVE_TIMER) {
            StartTimer(appData);
            appData->timerState.buttonSequence = 2;
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            ChangeState(appData, STATE_ACTIVE_TIMER);
            break;
        }
    case BUTTON_MANAGER_STATE_DRAGGING:
        appData->timerState.buttonSequence = 0;
        PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
        ChangeState(appData, STATE_INACTIVE_TIMER);
        break;
    case BUTTON_MANAGER_STATE_TIMER1:
        appData->timerState.buttonSequence = 4;
        PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
        ChangeState(appData, STATE_RESET_TIMER);
        break;
    }

    return FALSE;
}

static BOOL State_ResetSequence(PoketchStopwatch *appData)
{
    switch (appData->subState) {
    case 0:
        appData->resetSequenceTimer = 0;
        appData->subState++;
    case 1:
        if (++appData->resetSequenceTimer >= 90) {
            appData->timerState.buttonSequence = 5;
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            appData->resetSequenceTimer = 0;
            appData->subState++;
        }
        break;
    case 2:
        if (++appData->resetSequenceTimer >= 60) {
            appData->timerState.buttonSequence = 6;
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            ResetTimer(appData);
            appData->resetSequenceTimer = 0;
            appData->subState++;
        }
        break;
    case 3:
        if (PoketchStopwatchGraphics_TaskIsNotActive(appData->graphics, STOPWATCH_GRAPHICS_UPDATE)) {
            appData->timerState.buttonSequence = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_UPDATE);
            ChangeState(appData, STATE_INACTIVE_TIMER);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchStopwatch *appData)
{
    switch (appData->subState) {
    case 0:
        appData->timerState.buttonSequence = 7;
        PoketchStopwatchGraphics_StartTask(appData->graphics, STOPWATCH_GRAPHICS_FREE);
        appData->subState++;
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
        { .circle = { .code = TOUCHSCREEN_USE_CIRCLE, .x = 112, .y = 112, .r = 39 } },
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
