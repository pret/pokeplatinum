#include <nitro.h>
#include <nitro/sinit.h>

#include "generated/sdat.h"

#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/unused/2/graphics.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchUnusedApp2 {
    u8 state;
    u8 subState;
    u8 shouldExit;
    Unused2Data data;
    UnusedApp2Graphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 buttonState;
    u32 pressedButton;
} PoketchUnusedApp2;

typedef BOOL (*StateFunc)(PoketchUnusedApp2 *);

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchUnusedApp2 *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchUnusedApp2 *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);
static void Task_Main(SysTask *task, void *appData);
static void Exit(void *appData);
static void ChangeState(PoketchUnusedApp2 *appData, u32 newState);
static BOOL State_LoadApp(PoketchUnusedApp2 *appData);
static BOOL State_UpdateApp(PoketchUnusedApp2 *appData);
static BOOL State_UnloadApp(PoketchUnusedApp2 *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchUnusedApp2 *unusedApp = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchUnusedApp2));

    if (unusedApp != NULL) {
        if (Init(unusedApp, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, unusedApp, 1) != NULL) {
                *appData = unusedApp;
                return TRUE;
            }
        }

        Heap_Free(unusedApp);
    }

    return FALSE;
}

static BOOL Init(PoketchUnusedApp2 *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    if (PoketchUnusedApp2Graphics_New(&appData->graphics, &appData->data, bgConfig)) {
        static const TouchScreenRect sHitboxes[] = {
            { .rect = { .top = 16, .bottom = 64, .left = 16, .right = 64 } },
            { .rect = { .top = 16, .bottom = 64, .left = 160, .right = 208 } },
            { .rect = { .top = 72, .bottom = 120, .left = 16, .right = 64 } },
            { .rect = { .top = 72, .bottom = 120, .left = 160, .right = 208 } },
            { .rect = { .top = 128, .bottom = 176, .left = 16, .right = 64 } },
            { .rect = { .top = 128, .bottom = 176, .left = 160, .right = 208 } },
        };

        appData->state = 0;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->poketchSys = poketchSys;
        appData->buttonManager = PoketchButtonManager_New(sHitboxes, NELEMS(sHitboxes), ButtonCallback, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = 0;

        for (int i = 0; i < NUM_BUTTONS; i++) {
            appData->data.buttonUnlocked[i] = TRUE;
        }

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchUnusedApp2 *appData)
{
    if (appData->buttonManager) {
        PoketchButtonManager_Free(appData->buttonManager);
    }

    PoketchUnusedApp2Graphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchUnusedApp2 *unusedApp = appData;

    unusedApp->buttonState = buttonState;
    unusedApp->pressedButton = buttonID;
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchUnusedApp2 *unusedApp = appData;

    if (unusedApp->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(unusedApp->poketchSys, unusedApp->buttonManager);

        if (stateFuncs[unusedApp->state](unusedApp)) {
            Free(unusedApp);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(unusedApp->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchUnusedApp2 *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchUnusedApp2 *appData, u32 newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = 2;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchUnusedApp2 *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchUnusedApp2Graphics_StartTask(appData->graphics, 0);
        appData->subState++;
        break;
    case 1:
        if (PoketchUnusedApp2Graphics_TaskIsNotActive(appData->graphics, 0)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, 1);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchUnusedApp2 *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, 2);
        return 0;
    }

    switch (appData->subState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            if (appData->data.buttonUnlocked[appData->pressedButton]) {
                appData->data.pressedButtonID = appData->pressedButton;
                PoketchUnusedApp2Graphics_StartTask(appData->graphics, 2);
                PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
                appData->subState++;
            } else {
                PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
            }
        }
        break;
    case 1:
        if (appData->buttonState == BUTTON_MANAGER_STATE_DRAGGING) {
            PoketchUnusedApp2Graphics_StartTask(appData->graphics, 3);
            appData->subState = 0;
            break;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TAP) {
            PoketchUnusedApp2Graphics_StartTask(appData->graphics, 3);
            appData->subState = 0;
            break;
        }
        break;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchUnusedApp2 *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchUnusedApp2Graphics_StartTask(appData->graphics, 1);
        appData->subState++;
        break;
    case 1:
        if (PoketchUnusedApp2Graphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
