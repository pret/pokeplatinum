#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/backlight_toggle/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

#define BACKLIGHT_BUTTON_ON  0
#define BACKLIGHT_BUTTON_OFF 1

typedef struct PoketchBacklightToggle {
    u8 state;
    u8 subState;
    u8 shouldExit;
    BacklightData backlight;
    BacklightToggleGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 buttonState;
    u32 pressedButton;
} PoketchBacklightToggle;

typedef BOOL (*StateFunc)(PoketchBacklightToggle *);

enum BacklightToggleState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchBacklightToggle *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchBacklightToggle *appData);
static void Exit(void *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchBacklightToggle *appData, enum BacklightToggleState newState);
static BOOL State_LoadApp(PoketchBacklightToggle *appData);
static BOOL State_UpdateApp(PoketchBacklightToggle *appData);
static BOOL State_UnloadApp(PoketchBacklightToggle *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchBacklightToggle *backlightToggle = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchBacklightToggle));

    if (backlightToggle != NULL) {
        if (Init(backlightToggle, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, backlightToggle, 1) != NULL) {
                *appData = backlightToggle;
                return TRUE;
            }
        }

        Heap_Free(backlightToggle);
    }

    return FALSE;
}

static BOOL Init(PoketchBacklightToggle *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    static const TouchScreenRect sButtonHitBoxes[] = {
        [BACKLIGHT_BUTTON_ON] = { .rect = { .top = 72, .bottom = 104, .left = 92, .right = 132 } },
        [BACKLIGHT_BUTTON_OFF] = { .rect = { .top = 104, .bottom = 136, .left = 92, .right = 132 } },
    };
    PMBackLightSwitch backlight;

    PM_GetBackLight(NULL, &backlight);
    appData->backlight.isOn = backlight == PM_BACKLIGHT_ON;

    if (PoketchBacklightToggleGraphics_New(&appData->graphics, &appData->backlight, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->buttonManager = PoketchButtonManager_New(sButtonHitBoxes, NELEMS(sButtonHitBoxes), ButtonCallback, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchBacklightToggle *appData)
{
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchBacklightToggleGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchBacklightToggle *backlightToggle = appData;

    backlightToggle->pressedButton = buttonID;
    backlightToggle->buttonState = buttonState;
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchBacklightToggle *backlightToggle = appData;

    if (backlightToggle->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(backlightToggle->poketchSys, backlightToggle->buttonManager);

        if (stateFuncs[backlightToggle->state](backlightToggle)) {
            Free(backlightToggle);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(backlightToggle->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchBacklightToggle *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchBacklightToggle *appData, enum BacklightToggleState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchBacklightToggle *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchBacklightToggleGraphics_StartTask(appData->graphics, BACKLIGHT_TOGGLE_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchBacklighToggleGraphics_TaskIsNotActive(appData->graphics, BACKLIGHT_TOGGLE_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchBacklightToggle *appData)
{
    BacklightData *backlight = &appData->backlight;

    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            if ((appData->pressedButton == BACKLIGHT_BUTTON_ON && appData->backlight.isOn == FALSE) || (appData->pressedButton == BACKLIGHT_BUTTON_OFF && appData->backlight.isOn == TRUE)) {
                appData->backlight.isOn ^= 1;
                PoketchBacklightToggleGraphics_StartTask(appData->graphics, BACKLIGHT_TOGGLE_GRAPHICS_UPDATE_SWITCH);
            }

            appData->subState++;
            break;
        }
        break;
    case 1:
        if (PoketchBacklighToggleGraphics_TaskIsNotActive(appData->graphics, BACKLIGHT_TOGGLE_GRAPHICS_UPDATE_SWITCH)) {
            appData->subState = 0;
        }
        break;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchBacklightToggle *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchBacklightToggleGraphics_StartTask(appData->graphics, BACKLIGHT_TOGGLE_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchBacklightToggle_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
