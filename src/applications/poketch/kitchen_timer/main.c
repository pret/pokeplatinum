#include <nitro.h>
#include <nitro/sinit.h>

#include "generated/sdat.h"

#include "applications/poketch/kitchen_timer/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch_memory.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "timer.h"
#include "touch_screen.h"

#define BUTTON_START             0
#define BUTTON_STOP              1
#define BUTTON_RESET             2
#define BUTTON_MINUTES_TENS_UP   3
#define BUTTON_MINUTES_ONES_UP   4
#define BUTTON_MINUTES_TENS_DOWN 5
#define BUTTON_MINUTES_ONES_DOWN 6
#define BUTTON_SECONDS_TENS_UP   7
#define BUTTON_SECONDS_ONES_UP   8
#define BUTTON_SECONDS_TENS_DOWN 9
#define BUTTON_SECONDS_ONES_DOWN 10

typedef struct KitchenTimerData {
    KitchenTimerDisplay display;
    BOOL buttonUnpressed[NUM_STATE_BUTTONS];
    u64 startTimestamp;
    u64 pauseTimestamp;
    u64 elapsedTime;
    u64 setSeconds;
    BOOL isTickingDown;
    int savedState;
} KitchenTimerData;

typedef struct PoketchKitchenTimer {
    u8 state;
    u8 subState;
    u8 unused;
    u8 shouldExit;
    u32 appID;
    KitchenTimerGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 pressedButton;
    u32 buttonState;
    u64 unused2[5];
    BOOL buttonUpdatePending;
    KitchenTimerData timer;
} PoketchKitchenTimer;

typedef BOOL (*StateFunc)(PoketchKitchenTimer *);

enum KitchenTimerState {
    STATE_LOAD_APP = 0,
    STATE_EDIT_TIMER,
    STATE_TIMER_RUNNING,
    STATE_TIMER_PAUSED,
    STATE_TIMER_SOUNDING,
    STATE_SOUNDING_PAUSED,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchKitchenTimer *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchKitchenTimer *appData);
static void Exit(void *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void ResetButtonPositions(PoketchKitchenTimer *appData);
static void UpdateButtonPosition(PoketchKitchenTimer *appData, u32 buttonID, BOOL isUp);
static void UpdateButtonDir(PoketchKitchenTimer *appData, u32 buttonID, enum ButtonDir buttonDir);
static void SaveTimerData(PoketchKitchenTimer *appData, KitchenTimerData *timer);
static void LoadTimerData(PoketchKitchenTimer *appData);
static void InitTimerData(PoketchKitchenTimer *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchKitchenTimer *appData, enum KitchenTimerState newState);
static BOOL State_LoadApp(PoketchKitchenTimer *appData);
static BOOL State_EditTimer(PoketchKitchenTimer *appData);
static BOOL State_TimerRunning(PoketchKitchenTimer *appData);
static BOOL State_TimerPaused(PoketchKitchenTimer *appData);
static BOOL State_TimerSounding(PoketchKitchenTimer *appData);
static BOOL State_SoundingPaused(PoketchKitchenTimer *appData);
static BOOL State_UnloadApp(PoketchKitchenTimer *appData);

static u64 StartTimer(PoketchKitchenTimer *appData);
static void PauseTimer(PoketchKitchenTimer *appData);
static void ResumeTimer(PoketchKitchenTimer *appData);
static BOOL CheckTimerNotTickingDown(PoketchKitchenTimer *appData);
static BOOL UpdateElapsedTime(PoketchKitchenTimer *appData);
static void ResetTimer(PoketchKitchenTimer *appData);
static void UpdateDisplayDigits(PoketchKitchenTimer *appData, u64 totalSeconds);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchKitchenTimer *kitchenTimer = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchKitchenTimer));

    if (kitchenTimer != NULL) {
        if (Init(kitchenTimer, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, kitchenTimer, 1) != NULL) {
                *appData = kitchenTimer;
                return TRUE;
            }
        }

        Heap_Free(kitchenTimer);
    }

    return FALSE;
}

static void ResetButtonPositions(PoketchKitchenTimer *appData)
{
    for (int i = 0; i < NUM_STATE_BUTTONS; i++) {
        appData->timer.buttonUnpressed[i] = TRUE;
        appData->timer.display.buttonPressed[i] = BUTTON_UP;
    }

    appData->buttonUpdatePending = TRUE;
}

static void UpdateButtonPosition(PoketchKitchenTimer *appData, u32 buttonID, BOOL isUp)
{
    appData->timer.buttonUnpressed[buttonID] = isUp;
    appData->timer.display.buttonPressed[buttonID] = isUp ? BUTTON_UP : BUTTON_DOWN;
    appData->buttonUpdatePending = TRUE;
}

static void UpdateButtonDir(PoketchKitchenTimer *appData, u32 buttonID, enum ButtonDir buttonDir)
{
    if (appData->timer.buttonUnpressed[buttonID]) {
        appData->timer.display.buttonPressed[buttonID] = buttonDir;
        appData->buttonUpdatePending = TRUE;
    }
}

static void SaveTimerData(PoketchKitchenTimer *appData, KitchenTimerData *timer)
{
    timer->display.beatingHandPosition = PoketchKitchenTimerGraphics_GetBeatingHandsPosition(appData->graphics);
    PoketchMemory_Write32(appData->appID, timer, sizeof(KitchenTimerData));
}

static void LoadTimerData(PoketchKitchenTimer *appData)
{
    if (PoketchMemory_Read32(appData->appID, &appData->timer, sizeof(KitchenTimerData))) {
        if (appData->timer.savedState == STATE_TIMER_RUNNING) {
            UpdateElapsedTime(appData);

            if (CheckTimerNotTickingDown(appData)) {
                appData->timer.savedState = STATE_TIMER_SOUNDING;
                appData->timer.display.editingActive = FALSE;
                appData->timer.display.handPositions = 2;
            }
        }
    } else {
        InitTimerData(appData);
    }
}

static void InitTimerData(PoketchKitchenTimer *appData)
{
    appData->timer.savedState = STATE_EDIT_TIMER;
    appData->timer.display.minutesTensDigit = 0;
    appData->timer.display.minutesOnesDigit = 0;
    appData->timer.display.secondsTensDigit = 0;
    appData->timer.display.secondsOnesDigit = 0;
    appData->timer.display.editingActive = TRUE;
    appData->timer.display.handPositions = 0;
    appData->timer.display.beatingHandPosition = 0;

    ResetButtonPositions(appData);
    UpdateButtonPosition(appData, BUTTON_STOP, FALSE);
}

static BOOL Init(PoketchKitchenTimer *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    static const TouchScreenRect sButtonHitboxes[] = {
        [BUTTON_START] = { .rect = { .top = 144, .bottom = 176, .left = 16, .right = 80 } },
        [BUTTON_STOP] = { .rect = { .top = 144, .bottom = 176, .left = 80, .right = 144 } },
        [BUTTON_RESET] = { .rect = { .top = 144, .bottom = 176, .left = 144, .right = 208 } },
        [BUTTON_MINUTES_TENS_UP] = { .rect = { .top = 80, .bottom = 96, .left = 72, .right = 88 } },
        [BUTTON_MINUTES_ONES_UP] = { .rect = { .top = 80, .bottom = 96, .left = 88, .right = 104 } },
        [BUTTON_MINUTES_TENS_DOWN] = { .rect = { .top = 128, .bottom = 144, .left = 72, .right = 88 } },
        [BUTTON_MINUTES_ONES_DOWN] = { .rect = { .top = 128, .bottom = 144, .left = 88, .right = 104 } },
        [BUTTON_SECONDS_TENS_UP] = { .rect = { .top = 80, .bottom = 96, .left = 120, .right = 136 } },
        [BUTTON_SECONDS_ONES_UP] = { .rect = { .top = 80, .bottom = 96, .left = 136, .right = 152 } },
        [BUTTON_SECONDS_TENS_DOWN] = { .rect = { .top = 128, .bottom = 144, .left = 120, .right = 136 } },
        [BUTTON_SECONDS_ONES_DOWN] = { .rect = { .top = 128, .bottom = 144, .left = 136, .right = 152 } }
    };

    appData->appID = appID;
    LoadTimerData(appData);

    if (PoketchKitchenTimerGraphics_New(&appData->graphics, &appData->timer.display, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->buttonManager = PoketchButtonManager_New(sButtonHitboxes, NELEMS(sButtonHitboxes), ButtonCallback, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;

        PoketchButtonManager_SetRepeatTime(appData->buttonManager, BUTTON_MINUTES_TENS_UP, 4);
        PoketchButtonManager_SetRepeatTime(appData->buttonManager, BUTTON_MINUTES_TENS_DOWN, 4);
        PoketchButtonManager_SetRepeatTime(appData->buttonManager, BUTTON_MINUTES_ONES_UP, 4);
        PoketchButtonManager_SetRepeatTime(appData->buttonManager, BUTTON_MINUTES_ONES_DOWN, 4);
        PoketchButtonManager_SetRepeatTime(appData->buttonManager, BUTTON_SECONDS_TENS_UP, 4);
        PoketchButtonManager_SetRepeatTime(appData->buttonManager, BUTTON_SECONDS_TENS_DOWN, 4);
        PoketchButtonManager_SetRepeatTime(appData->buttonManager, BUTTON_SECONDS_ONES_UP, 4);
        PoketchButtonManager_SetRepeatTime(appData->buttonManager, BUTTON_SECONDS_ONES_DOWN, 4);

        appData->poketchSys = poketchSys;
        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchKitchenTimer *appData)
{
    SaveTimerData(appData, &appData->timer);
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchKitchenTimerGraphics_Free(appData->graphics);

    Heap_Free(appData);
}

static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchKitchenTimer *kitchenTimer = appData;

    kitchenTimer->pressedButton = buttonID;
    kitchenTimer->buttonState = buttonState;

    if (buttonID < BUTTON_MINUTES_TENS_UP) {
        if (buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            UpdateButtonDir(kitchenTimer, buttonID, BUTTON_DOWN);
        } else if (buttonState == BUTTON_MANAGER_STATE_DRAGGING || buttonState == BUTTON_MANAGER_STATE_TAP) {
            UpdateButtonDir(kitchenTimer, buttonID, BUTTON_UP);
        }
    }
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_EditTimer,
        State_TimerRunning,
        State_TimerPaused,
        State_TimerSounding,
        State_SoundingPaused,
        State_UnloadApp
    };

    PoketchKitchenTimer *kitchenTimer = appData;

    if (kitchenTimer->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(kitchenTimer->poketchSys, kitchenTimer->buttonManager);

        if (kitchenTimer->buttonUpdatePending) {
            PoketchKitchenTimerGraphics_StartTask(kitchenTimer->graphics, KITCHEN_TIMER_GRAPHICS_UPDATE_BUTTONS);
            kitchenTimer->buttonUpdatePending = FALSE;
        }

        if (stateFuncs[kitchenTimer->state](kitchenTimer)) {
            Free(kitchenTimer);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(kitchenTimer->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchKitchenTimer *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchKitchenTimer *appData, enum KitchenTimerState newState)
{
    u32 oldState = appData->state;

    if (appData->shouldExit) {
        newState = STATE_SHUTDOWN;
    }

    appData->state = newState;

    if (newState != STATE_LOAD_APP && newState != STATE_SHUTDOWN) {
        appData->timer.savedState = oldState;
    }

    switch (newState) {
    case STATE_EDIT_TIMER:
        appData->timer.display.editingActive = TRUE;
        appData->timer.display.handPositions = 0;
        break;
    case STATE_TIMER_RUNNING:
        appData->timer.display.editingActive = FALSE;
        appData->timer.display.handPositions = 1;
        break;
    case STATE_TIMER_PAUSED:
        appData->timer.display.editingActive = FALSE;
        appData->timer.display.handPositions = 1;
        break;
    case STATE_TIMER_SOUNDING:
        appData->timer.display.editingActive = FALSE;
        appData->timer.display.handPositions = 2;
        break;
    case STATE_SOUNDING_PAUSED:
        appData->timer.display.editingActive = FALSE;
        appData->timer.display.handPositions = 3;
        break;
    case STATE_SHUTDOWN:
        appData->timer.savedState = oldState;
        break;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchKitchenTimer *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchKitchenTimerGraphics_TaskIsNotActive(appData->graphics, KITCHEN_TIMER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, appData->timer.savedState);
        }
        break;
    }

    return FALSE;
}

static BOOL State_EditTimer(PoketchKitchenTimer *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    if (!PoketchKitchenTimerGraphics_NoActiveTasks(appData->graphics)) {
        return FALSE;
    }

    if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH && appData->pressedButton <= BUTTON_RESET) {
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;

        switch (appData->pressedButton) {
        case BUTTON_RESET:
            ResetTimer(appData);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_UPDATE_DIGITS);
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
            break;
        case BUTTON_START:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);

            if (StartTimer(appData)) {
                UpdateButtonPosition(appData, BUTTON_START, FALSE);
                UpdateButtonPosition(appData, BUTTON_STOP, TRUE);
                PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_START_TIMER);
                ChangeState(appData, STATE_TIMER_RUNNING);
            }
            break;
        case BUTTON_STOP:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
            break;
        }

        return FALSE;
    }

    if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH || appData->buttonState == BUTTON_MANAGER_STATE_REPEAT) {
        KitchenTimerDisplay *display = &appData->timer.display;

        switch (appData->pressedButton) {
        case BUTTON_MINUTES_TENS_UP:
            if (++display->minutesTensDigit > 9) {
                display->minutesTensDigit = 0;
            }
            break;
        case BUTTON_MINUTES_ONES_UP:
            if (++display->minutesOnesDigit > 9) {
                display->minutesOnesDigit = 0;
            }
            break;
        case BUTTON_MINUTES_TENS_DOWN:
            if (--display->minutesTensDigit < 0) {
                display->minutesTensDigit = 9;
            }
            break;
        case BUTTON_MINUTES_ONES_DOWN:
            if (--display->minutesOnesDigit < 0) {
                display->minutesOnesDigit = 9;
            }
            break;
        case BUTTON_SECONDS_TENS_UP:
            if (++display->secondsTensDigit > 5) {
                display->secondsTensDigit = 0;
            }
            break;
        case BUTTON_SECONDS_ONES_UP:
            if (++display->secondsOnesDigit > 9) {
                display->secondsOnesDigit = 0;
            }
            break;
        case BUTTON_SECONDS_TENS_DOWN:
            if (--display->secondsTensDigit < 0) {
                display->secondsTensDigit = 5;
            }
            break;
        case BUTTON_SECONDS_ONES_DOWN:
            if (--display->secondsOnesDigit < 0) {
                display->secondsOnesDigit = 9;
            }
            break;
        }

        PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_UPDATE_DIGITS);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
    }

    return FALSE;
}

static BOOL State_TimerRunning(PoketchKitchenTimer *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    if (UpdateElapsedTime(appData)) {
        PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_UPDATE_DIGITS);

        if (CheckTimerNotTickingDown(appData)) {
            UpdateButtonPosition(appData, BUTTON_START, FALSE);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_BEAT_HANDS);
            ChangeState(appData, STATE_TIMER_SOUNDING);
            return FALSE;
        }
    }

    if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;

        switch (appData->pressedButton) {
        case BUTTON_START:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
            break;
        case BUTTON_STOP:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
            UpdateButtonPosition(appData, BUTTON_STOP, FALSE);
            UpdateButtonPosition(appData, BUTTON_START, TRUE);
            PauseTimer(appData);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_UPDATE_BUTTONS);
            ChangeState(appData, STATE_TIMER_PAUSED);
            break;
        case BUTTON_RESET:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
            UpdateButtonPosition(appData, BUTTON_START, TRUE);
            UpdateButtonPosition(appData, BUTTON_STOP, FALSE);
            ResetTimer(appData);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_UPDATE_BUTTONS);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_UPDATE_DIGITS);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_RESET_TIMER);
            ChangeState(appData, STATE_EDIT_TIMER);
            break;
        }
    }

    return FALSE;
}

static BOOL State_TimerPaused(PoketchKitchenTimer *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;

        switch (appData->pressedButton) {
        case BUTTON_START:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
            UpdateButtonPosition(appData, BUTTON_STOP, TRUE);
            UpdateButtonPosition(appData, BUTTON_START, FALSE);
            ResumeTimer(appData);
            ChangeState(appData, STATE_TIMER_RUNNING);
            break;
        case BUTTON_STOP:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
            break;
        case BUTTON_RESET:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
            UpdateButtonPosition(appData, BUTTON_START, TRUE);
            UpdateButtonPosition(appData, BUTTON_STOP, FALSE);
            ResetTimer(appData);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_UPDATE_BUTTONS);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_UPDATE_DIGITS);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_RESET_TIMER);
            ChangeState(appData, STATE_EDIT_TIMER);
            break;
        }
    }

    return FALSE;
}

static BOOL State_TimerSounding(PoketchKitchenTimer *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;

        switch (appData->pressedButton) {
        case BUTTON_START:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
            break;
        case BUTTON_STOP:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
            UpdateButtonPosition(appData, BUTTON_START, TRUE);
            UpdateButtonPosition(appData, BUTTON_STOP, FALSE);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_STOP_HANDS);
            ChangeState(appData, STATE_SOUNDING_PAUSED);
            appData->subState++;
            break;
        case BUTTON_RESET:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
            UpdateButtonPosition(appData, BUTTON_START, TRUE);
            UpdateButtonPosition(appData, BUTTON_STOP, FALSE);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_STOP_HANDS);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_RESET_TIMER);
            ChangeState(appData, STATE_EDIT_TIMER);
            break;
        }
    }

    return FALSE;
}

static BOOL State_SoundingPaused(PoketchKitchenTimer *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;

        switch (appData->pressedButton) {
        case BUTTON_START:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
            UpdateButtonPosition(appData, BUTTON_START, FALSE);
            UpdateButtonPosition(appData, BUTTON_STOP, TRUE);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_BEAT_HANDS);
            ChangeState(appData, STATE_TIMER_SOUNDING);
            break;
        case BUTTON_STOP:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
            break;
        case BUTTON_RESET:
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
            UpdateButtonPosition(appData, BUTTON_START, TRUE);
            UpdateButtonPosition(appData, BUTTON_STOP, FALSE);
            ResetTimer(appData);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_STOP_HANDS);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_UPDATE_BUTTONS);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_UPDATE_DIGITS);
            PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_RESET_TIMER);
            ChangeState(appData, STATE_EDIT_TIMER);
            break;
        }
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchKitchenTimer *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchKitchenTimerGraphics_StartTask(appData->graphics, KITCHEN_TIMER_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchKitchenTimerGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static u64 StartTimer(PoketchKitchenTimer *appData)
{
    KitchenTimerDisplay *display = &appData->timer.display;

    appData->timer.startTimestamp = Timer_GetCurrentTimestamp();
    appData->timer.pauseTimestamp = 0;
    appData->timer.isTickingDown = TRUE;
    appData->timer.elapsedTime = 0;
    appData->timer.setSeconds = (display->minutesTensDigit * 10 + display->minutesOnesDigit) * 60 + (display->secondsTensDigit * 10 + display->secondsOnesDigit);

    UpdateDisplayDigits(appData, appData->timer.setSeconds);

    return appData->timer.setSeconds;
}

static void PauseTimer(PoketchKitchenTimer *appData)
{
    appData->timer.isTickingDown = FALSE;
    appData->timer.pauseTimestamp = Timer_GetCurrentTimestamp();
}

static void ResumeTimer(PoketchKitchenTimer *appData)
{
    appData->timer.startTimestamp += Timer_GetCurrentTimestamp() - appData->timer.pauseTimestamp;
    appData->timer.isTickingDown = TRUE;
}

static BOOL CheckTimerNotTickingDown(PoketchKitchenTimer *appData)
{
    return !appData->timer.isTickingDown;
}

static BOOL UpdateElapsedTime(PoketchKitchenTimer *appData)
{
    if (appData->timer.isTickingDown) {
        u64 elapsedTime = Timer_TicksToSeconds(Timer_GetCurrentTimestamp() - appData->timer.startTimestamp);

        if (elapsedTime >= appData->timer.setSeconds) {
            ResetTimer(appData);
            return TRUE;
        } else if (elapsedTime != appData->timer.elapsedTime) {
            UpdateDisplayDigits(appData, appData->timer.setSeconds - elapsedTime);
            appData->timer.elapsedTime = elapsedTime;
            return TRUE;
        }

        return FALSE;
    }

    return FALSE;
}

static void ResetTimer(PoketchKitchenTimer *appData)
{
    appData->timer.isTickingDown = FALSE;
    appData->timer.display.minutesTensDigit = 0;
    appData->timer.display.minutesOnesDigit = 0;
    appData->timer.display.secondsTensDigit = 0;
    appData->timer.display.secondsOnesDigit = 0;
}

static void UpdateDisplayDigits(PoketchKitchenTimer *appData, u64 totalSeconds)
{
    CP_SetDiv64_32(totalSeconds, 60);

    u32 minutes = CP_GetDivResult64();
    u32 remainingSeconds = CP_GetDivRemainder64();

    CP_SetDiv32_32(minutes, 10);

    appData->timer.display.minutesTensDigit = CP_GetDivResult32();
    appData->timer.display.minutesOnesDigit = CP_GetDivRemainder32();

    CP_SetDiv32_32(remainingSeconds, 10);

    appData->timer.display.secondsTensDigit = CP_GetDivResult32();
    appData->timer.display.secondsOnesDigit = CP_GetDivRemainder32();
}
