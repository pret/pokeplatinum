#include "poketch/poketch_system.h"

#include <nitro.h>
#include <string.h>

#include "generated/genders.h"

#include "field/field_system_decl.h"
#include "poketch/poketch_button.h"
#include "poketch/poketch_graphics.h"
#include "poketch/poketch_task.h"

#include "bg_window.h"
#include "enums.h"
#include "field_system.h"
#include "field_task.h"
#include "game_overlay.h"
#include "heap.h"
#include "inlines.h"
#include "poketch_memory.h"
#include "save_player.h"
#include "savedata.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "trainer_info.h"

FS_EXTERN_OVERLAY(poketch_digital_watch);
FS_EXTERN_OVERLAY(overlay27);
FS_EXTERN_OVERLAY(overlay28);
FS_EXTERN_OVERLAY(overlay29);
FS_EXTERN_OVERLAY(overlay30);
FS_EXTERN_OVERLAY(overlay31);
FS_EXTERN_OVERLAY(overlay32);
FS_EXTERN_OVERLAY(overlay33);
FS_EXTERN_OVERLAY(overlay34);
FS_EXTERN_OVERLAY(overlay35);
FS_EXTERN_OVERLAY(overlay36);
FS_EXTERN_OVERLAY(overlay37);
FS_EXTERN_OVERLAY(overlay38);
FS_EXTERN_OVERLAY(overlay39);
FS_EXTERN_OVERLAY(overlay40);
FS_EXTERN_OVERLAY(overlay41);
FS_EXTERN_OVERLAY(overlay42);
FS_EXTERN_OVERLAY(poketch_move_tester);
FS_EXTERN_OVERLAY(overlay44);
FS_EXTERN_OVERLAY(overlay45);
FS_EXTERN_OVERLAY(overlay46);
FS_EXTERN_OVERLAY(overlay47);
FS_EXTERN_OVERLAY(overlay48);
FS_EXTERN_OVERLAY(overlay49);
FS_EXTERN_OVERLAY(overlay50);
FS_EXTERN_OVERLAY(overlay52);
FS_EXTERN_OVERLAY(overlay53);
FS_EXTERN_OVERLAY(overlay54);
FS_EXTERN_OVERLAY(overlay55);

static PoketchSystem *PoketchSystem_GetFromFieldSystem(void);
static BOOL PoketchSystem_InitInternal(PoketchSystem *poketchSys);
static void PoketchSystem_Shutdown(PoketchSystem *poketchSys);
static void PoketchSystem_MainTask(SysTask *task, void *system);
static void PoketchSystem_PostRender(SysTask *, void *system);
static void PoketchSystem_SetState(PoketchSystem *poketchSys, u32 state);
static void PoketchEvent_InitApp(PoketchSystem *poketchSys);
static void PoketchEvent_UpdateApp(PoketchSystem *poketchSys);
static void PoketchEvent_OnAppChange(PoketchSystem *poketchSys);
static void PoketchEvent_OnShutdown(PoketchSystem *poketchSys);
static void PoketchSystem_LoadApp(PoketchSystem *poketchSys, int appID);
static void PoketchSystem_UnloadApp(PoketchSystem *poketchSys);
static void PoketchSystem_InitApp(PoketchSystem *poketchSys, u32 param1);
static BOOL PoketchSystem_IsAppInitialized(PoketchSystem *poketchSys);
static void PoketchSystem_ShutdownApp(PoketchSystem *poketchSys);
static BOOL PoketchSystem_IsAppShutdown(PoketchSystem *poketchSys);
static BOOL PoketchSystem_ButtonInit(PoketchSystem *poketchSys);
static void PoketchSystem_ButtonShutdown(PoketchSystem *poketchSys);
static void PoketchSystem_ButtonUpdate(PoketchSystem *poketchSys);
static void PoketchSystem_OnButtonEvent(u32 buttonID, u32 buttonEvent, u32 touchEvent, void *system);
static BOOL PoketchSystem_StartTaskIfNotActive(PoketchGraphics_TaskData *taskData, u32 taskId);
static inline BOOL PoketchSystem_InsideScreenBounds(u32 x, u32 y);

// The order of this array determines the app order in the poketch.
static const struct {
    int appID;
    FSOverlayID overlayID;
} sAppOverlayIDs[] = {
    { POKETCH_APPID_DIGITALWATCH, FS_OVERLAY_ID(poketch_digital_watch) },
    { POKETCH_APPID_UNUSED_STOPWATCH, FS_OVERLAY_ID(overlay27) },
    { POKETCH_APPID_CALCULATOR, FS_OVERLAY_ID(overlay28) },
    { POKETCH_APPID_MEMOPAD, FS_OVERLAY_ID(overlay29) },
    { POKETCH_APPID_ANALOGWATCH, FS_OVERLAY_ID(overlay30) },
    { POKETCH_APPID_DOTART, FS_OVERLAY_ID(overlay31) },
    { POKETCH_APPID_PARTYSTATUS, FS_OVERLAY_ID(overlay32) },
    { POKETCH_APPID_FRIENDSHIPCHECKER, FS_OVERLAY_ID(overlay33) },
    { POKETCH_APPID_DOWSINGMACHINE, FS_OVERLAY_ID(overlay34) },
    { POKETCH_APPID_COUNTER, FS_OVERLAY_ID(overlay35) },
    { POKETCH_APPID_PEDOMETER, FS_OVERLAY_ID(overlay36) },
    { POKETCH_APPID_DAYCARECHECKER, FS_OVERLAY_ID(overlay40) },
    { POKETCH_APPID_ROULETTE, FS_OVERLAY_ID(overlay41) },
    { POKETCH_APPID_COINTOSS, FS_OVERLAY_ID(overlay42) },
    { POKETCH_APPID_MOVETESTER, FS_OVERLAY_ID(poketch_move_tester) },
    { POKETCH_APPID_MATCHUPCHECKER, FS_OVERLAY_ID(overlay44) },
    { POKETCH_APPID_UNUSED_ALARMCLOCK, FS_OVERLAY_ID(overlay45) },
    { POKETCH_APPID_KITCHENTIMER, FS_OVERLAY_ID(overlay46) },
    { POKETCH_APPID_MARKINGMAP, FS_OVERLAY_ID(overlay47) },
    { POKETCH_APPID_BERRYSEARCHER, FS_OVERLAY_ID(overlay48) },
    { POKETCH_APPID_COLORCHANGER, FS_OVERLAY_ID(overlay49) },
    { POKETCH_APPID_CALENDAR, FS_OVERLAY_ID(overlay50) },
    { POKETCH_APPID_LINKSEARCHER, FS_OVERLAY_ID(overlay52) },
    { POKETCH_APPID_RADARCHAINCOUNTER, FS_OVERLAY_ID(overlay53) },
    { POKETCH_APPID_POKEMONHISTORY, FS_OVERLAY_ID(overlay54) }
};

static PoketchSystem *PoketchSystem_GetFromFieldSystem(void)
{
    return FieldSystem_GetPoketchSystem();
}

void PoketchSystem_Create(FieldSystem *fieldSystem, PoketchSystem **poketchSys, SaveData *saveData, BgConfig *bgl, NNSG2dOamManagerInstance *oamManager)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKETCH_MAIN, HEAP_SIZE_POKETCH_MAIN);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKETCH_APP, HEAP_SIZE_POKETCH_APP);

    PoketchSystem *new_system = Heap_AllocFromHeap(HEAP_ID_POKETCH_MAIN, sizeof(PoketchSystem));

    if (new_system != NULL) {
        *poketchSys = new_system;

        new_system->fieldSystem = fieldSystem;
        new_system->saveData = saveData;
        new_system->poketch = SaveData_GetPoketch(saveData);
        new_system->bgl = bgl;
        new_system->oamManager = oamManager;

        if (PoketchSystem_InitInternal(new_system)) {
            EnableTouchPad();
            InitializeTouchPad(4);

            new_system->poketchSysPtr = poketchSys;
            new_system->postRenderTask = SysTask_Start(PoketchSystem_PostRender, new_system, 4);

            SysTask_Start(PoketchSystem_MainTask, new_system, 0);
        }
    }
}

void PoketchSystem_StartShutdown(PoketchSystem *poketchSys)
{
    if (poketchSys->systemState != POKETCH_SYSTEM_SHUTDOWN && poketchSys->systemState != POKETCH_SYSTEM_UNLOAD) {
        PoketchSystem_SetState(poketchSys, POKETCH_SYSTEM_SHUTDOWN);
    }
}

BOOL PoketchSystem_IsSystemShutdown(PoketchSystem *poketchSys)
{
    return poketchSys == NULL;
}

void PoketchSystem_SendEvent(PoketchSystem *poketchSys, enum PoketchEventID eventID, u32)
{
    switch (eventID) {
    case POKETCH_EVENT_SLEEP:
        break;
    case POKETCH_EVENT_PLAYER_MOVED:
        poketchSys->playerMoving = TRUE;
        break;
    case POKETCH_EVENT_PEDOMETER: {
        u32 step_count = Poketch_StepCount(poketchSys->poketch);

        if (++step_count > POKETCH_PEDOMETER_MAX) {
            step_count = 0;
        }

        Poketch_SetStepCount(poketchSys->poketch, step_count);
        poketchSys->pedometerUpdated = TRUE;
    } break;
    case POKETCH_EVENT_SAVE:
        if (poketchSys->appState == POKETCH_APP_STATE_UPDATE && poketchSys->currAppSave) {
            poketchSys->currAppSave(poketchSys->appSaveData);
        }
        break;
    }
}

BOOL PoketchSystem_IsTapped(PoketchSystem *poketchSys)
{
    return poketchSys->touchingScreen;
}

enum PoketchAppID PoketchSystem_CurrentAppID(PoketchSystem *poketchSys)
{
    return poketchSys->loadedAppID;
}

static BOOL PoketchSystem_InitInternal(PoketchSystem *poketchSys)
{
    if (PoketchGraphics_Main(&(poketchSys->taskData), &(poketchSys->constTaskData), poketchSys->oamManager, poketchSys)) {
        poketchSys->systemState = POKETCH_SYSTEM_INIT;
        poketchSys->subState = 0;
        poketchSys->touchingScreen = FALSE;
        poketchSys->playerMoving = FALSE;
        poketchSys->pedometerUpdated = FALSE;
        poketchSys->appChanging = FALSE;
        poketchSys->appStarting = FALSE;
        poketchSys->loadedAppID = POKETCH_APPID_NONE;
        poketchSys->appState = POKETCH_APP_STATE_NONE;
        poketchSys->buttonState = BUTTON_MANAGER_STATE_NULL;
        poketchSys->buttonDir = BUTTON_UP;

        if (PoketchSystem_ButtonInit(poketchSys)) {
            return TRUE;
        }
    }

    return FALSE;
}

static void PoketchSystem_Shutdown(PoketchSystem *poketchSys)
{
    SysTask_Done(poketchSys->postRenderTask);

    PoketchSystem_ButtonShutdown(poketchSys);
    PoketchSystem_UnloadApp(poketchSys);
    PoketchGraphics_Close(poketchSys->taskData);
}

typedef void (*const PoketchEvent)(PoketchSystem *poketchSys);
static PoketchEvent sPoketchEvents[] = {
    PoketchEvent_InitApp,
    PoketchEvent_UpdateApp,
    PoketchEvent_OnAppChange,
    PoketchEvent_OnShutdown
};

static void PoketchSystem_MainTask(SysTask *task, void *system)
{
    PoketchSystem *poketchSys = (PoketchSystem *)system;

    if (poketchSys->systemState < NELEMS(sPoketchEvents)) {
        if (poketchSys->systemState != POKETCH_SYSTEM_INIT) {
            PoketchSystem_ButtonUpdate(poketchSys);
        }

        sPoketchEvents[poketchSys->systemState](poketchSys);
    } else {
        GF_ASSERT(poketchSys->systemState == POKETCH_SYSTEM_UNLOAD);
        *(poketchSys->poketchSysPtr) = NULL;

        PoketchSystem_Shutdown(poketchSys);
        Heap_FreeToHeap(poketchSys);
        SysTask_Done(task);
        Heap_Destroy(HEAP_ID_POKETCH_MAIN);
        Heap_Destroy(HEAP_ID_POKETCH_APP);
    }
}

static void PoketchSystem_PostRender(SysTask *, void *system)
{
    PoketchSystem *poketchSys = system;

    poketchSys->playerMoving = FALSE;
    poketchSys->pedometerUpdated = FALSE;
}

static void PoketchSystem_SetState(PoketchSystem *poketchSys, u32 state)
{
    poketchSys->systemState = state;
    poketchSys->subState = 0;
}

static void PoketchEvent_InitApp(PoketchSystem *poketchSys)
{
    switch (poketchSys->subState) {
    case 0:
        PoketchGraphics_StartTask(poketchSys->taskData, TASK_SETUP_BACKGROUND);
        poketchSys->subState++;
        break;
    case 1:
        if (PoketchGraphics_TaskIsNotActive(poketchSys->taskData, TASK_SETUP_BACKGROUND)) {
            u32 app_ID = Poketch_CurrentAppID(poketchSys->poketch);

            PoketchSystem_LoadApp(poketchSys, app_ID);
            PoketchSystem_InitApp(poketchSys, app_ID);

            poketchSys->subState++;
        }
        break;
    case 2:
        if (PoketchSystem_IsAppInitialized(poketchSys) == FALSE) {
            break;
        }

        PoketchGraphics_StartTask(poketchSys->taskData, TASK_REVEAL_SCREEN_1);
        poketchSys->subState++;
    case 3:
        if (PoketchGraphics_TaskIsNotActive(poketchSys->taskData, TASK_REVEAL_SCREEN_1)) {
            PoketchSystem_SetState(poketchSys, POKETCH_SYSTEM_UPDATE);
        }
    }
}

static void PoketchEvent_UpdateApp(PoketchSystem *poketchSys)
{
    switch (poketchSys->subState) {
    case 0:
        if (PoketechSystem_IsRunningTask(poketchSys)) {
            return;
        }

        switch (poketchSys->buttonState) {
        case BUTTON_MANAGER_STATE_TAP:
        case BUTTON_MANAGER_STATE_TIMER0:
            poketchSys->skipApp = FALSE;
            poketchSys->appChanging = TRUE;
            PoketchGraphics_StartTask(poketchSys->taskData, TASK_CONCEAL_SCREEN);
            poketchSys->subState++;
            break;
        }
        break;
    case 1:
        if (poketchSys->buttonState == BUTTON_MANAGER_STATE_TAP || poketchSys->buttonState == BUTTON_MANAGER_STATE_TIMER0) {
            poketchSys->skipApp = TRUE;
        }

        if (PoketchGraphics_NoActiveTasks(poketchSys->taskData)) {
            if (poketchSys->buttonDir == BUTTON_UP) {
                poketchSys->constTaskData.lastAppID = Poketch_DecrementAppID(poketchSys->poketch);
            } else {
                poketchSys->constTaskData.lastAppID = Poketch_IncrementAppID(poketchSys->poketch);
            }

            if (poketchSys->skipApp) {
                PoketchGraphics_StartTask(poketchSys->taskData, TASK_LOAD_APP_COUNTER);
                poketchSys->appSkipTimer = 30;
                poketchSys->skipApp = FALSE;
                poketchSys->subState = 4;
            } else {
                poketchSys->appSkipTimer = 3;
                poketchSys->subState = 2;
            }
        }
        break;
    case 2:
        if (poketchSys->buttonState == BUTTON_MANAGER_STATE_TAP || poketchSys->buttonState == BUTTON_MANAGER_STATE_TIMER0) {
            PoketchGraphics_StartTask(poketchSys->taskData, TASK_LOAD_APP_COUNTER);
            poketchSys->appSkipTimer = 30;
            poketchSys->skipApp = FALSE;
            poketchSys->subState = 4;
            break;
        }

        if (poketchSys->appSkipTimer) {
            poketchSys->appSkipTimer--;
        } else {
            PoketchSystem_ShutdownApp(poketchSys);
            poketchSys->subState = 3;
        }
        break;
    case 3:
        if (PoketchSystem_IsAppShutdown(poketchSys)) {
            PoketchSystem_UnloadApp(poketchSys);
            PoketchMemory_ResetActiveAppID();
            PoketchSystem_SetState(poketchSys, POKETCH_SYSTEM_CHANGE_APP);
        }
        break;
    case 4:
        if (poketchSys->buttonState == BUTTON_MANAGER_STATE_TAP || poketchSys->buttonState == BUTTON_MANAGER_STATE_TIMER0) {
            if (poketchSys->buttonDir == BUTTON_UP) {
                poketchSys->constTaskData.lastAppID = Poketch_DecrementAppID(poketchSys->poketch);
            } else {
                poketchSys->constTaskData.lastAppID = Poketch_IncrementAppID(poketchSys->poketch);
            }

            poketchSys->appSkipTimer = 30;
            PoketchGraphics_StartTask(poketchSys->taskData, TASK_UPDATE_APP_COUNTER);
            break;
        }

        if (poketchSys->appSkipTimer) {
            poketchSys->appSkipTimer--;
        } else {
            PoketchGraphics_StartTask(poketchSys->taskData, TASK_UNLOAD_APP_COUNTER);
            PoketchSystem_ShutdownApp(poketchSys);
            poketchSys->subState = 3;
        }
        break;
    }
}

static void PoketchEvent_OnAppChange(PoketchSystem *poketchSys)
{
    switch (poketchSys->subState) {
    case 0: {
        poketchSys->appStarting = TRUE;
        enum PoketchAppID appID = Poketch_CurrentAppID(poketchSys->poketch);

        PoketchSystem_LoadApp(poketchSys, appID);
        PoketchSystem_InitApp(poketchSys, appID);

        poketchSys->subState++;
    } break;
    case 1:
        if (PoketchSystem_IsAppInitialized(poketchSys)) {
            PoketchGraphics_StartTask(poketchSys->taskData, TASK_REVEAL_SCREEN_2);
            poketchSys->subState++;
        }
        break;
    case 2:
        if (PoketchGraphics_TaskIsNotActive(poketchSys->taskData, TASK_REVEAL_SCREEN_2)) {
            poketchSys->appChanging = FALSE;
            poketchSys->appStarting = FALSE;
            PoketchSystem_SetState(poketchSys, POKETCH_SYSTEM_UPDATE);
        }
        break;
    }
}

static void PoketchEvent_OnShutdown(PoketchSystem *poketchSys)
{
    switch (poketchSys->subState) {
    case 0:
        switch (poketchSys->appState) {
        case 1:
            poketchSys->subState = 1;
            break;
        case 2:
            PoketchSystem_ShutdownApp(poketchSys);
            poketchSys->subState = 2;
            break;
        case 3:
        case 0:
            poketchSys->subState = 2;
            break;
        }
        break;
    case 1:
        if (PoketchSystem_IsAppInitialized(poketchSys)) {
            PoketchSystem_ShutdownApp(poketchSys);
            poketchSys->subState = 2;
        }
        break;
    case 2:
        if (PoketchSystem_IsAppShutdown(poketchSys)) {
            PoketchGraphics_StartTask(poketchSys->taskData, TASK_FREE_TILEMAP);
            poketchSys->subState = 3;
        }
        break;
    case 3:
        if (PoketchGraphics_NoActiveTasks(poketchSys->taskData)) {
            PoketchSystem_UnloadApp(poketchSys);
            DisableTouchPad();
            PoketchSystem_SetState(poketchSys, POKETCH_SYSTEM_UNLOAD);
        }
        break;
    }
}

static void PoketchSystem_LoadApp(PoketchSystem *poketchSys, int appID)
{
    GF_ASSERT(appID >= 0 && appID < NELEMS(sAppOverlayIDs));

    if (poketchSys->loadedAppID == POKETCH_APPID_NONE) {
        for (int i = 0; i < NELEMS(sAppOverlayIDs); i++) {
            if (sAppOverlayIDs[i].appID == appID) {

                Overlay_LoadByID(sAppOverlayIDs[i].overlayID, OVERLAY_LOAD_ASYNC);
                poketchSys->loadedAppID = appID;
                poketchSys->loadedAppOverlayID = sAppOverlayIDs[i].overlayID;
                break;
            }
        }
    }
}

static void PoketchSystem_UnloadApp(PoketchSystem *poketchSys)
{
    if (poketchSys->loadedAppID != POKETCH_APPID_NONE) {
        Overlay_UnloadByID(poketchSys->loadedAppOverlayID);
        poketchSys->loadedAppID = POKETCH_APPID_NONE;
    }
}

static void PoketchSystem_InitApp(PoketchSystem *poketchSys, u32)
{
    GF_ASSERT(poketchSys->appState == POKETCH_APP_STATE_NONE);

    poketchSys->currAppInit(&(poketchSys->appData), poketchSys, poketchSys->bgl, poketchSys->loadedAppID);
    poketchSys->appState = POKETCH_APP_STATE_INIT;
}

static BOOL PoketchSystem_IsAppInitialized(PoketchSystem *poketchSys)
{
    return poketchSys->appState == POKETCH_APP_STATE_UPDATE;
}

static void PoketchSystem_ShutdownApp(PoketchSystem *poketchSys)
{
    GF_ASSERT(poketchSys->appState == POKETCH_APP_STATE_UPDATE);

    poketchSys->currAppShutdown(poketchSys->appData);
    poketchSys->appState = POKETCH_APP_STATE_SHUTDOWN;
}

static BOOL PoketchSystem_IsAppShutdown(PoketchSystem *poketchSys)
{
    return poketchSys->appState == POKETCH_APP_STATE_NONE;
}

void PoketchSystem_SetAppFunctions(PoketchAppInitFunction appInit, PoketchAppShutdownFunction appShutdown)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    poketchSys->currAppInit = appInit;
    poketchSys->currAppShutdown = appShutdown;
    poketchSys->currAppSave = NULL;
}

void PoketchSystem_NotifyAppLoaded(PoketchSystem *poketchSys)
{
    GF_ASSERT(poketchSys->appState == POKETCH_APP_STATE_INIT);
    poketchSys->appState = POKETCH_APP_STATE_UPDATE;
}

void PoketchSystem_NotifyAppUnloaded(PoketchSystem *poketchSys)
{
    GF_ASSERT(poketchSys->appState == POKETCH_APP_STATE_SHUTDOWN);
    poketchSys->appState = POKETCH_APP_STATE_NONE;
}

void PoketchSystem_SetSaveFunction(PoketchAppSaveFunction saveFunction, void *saveData)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    poketchSys->currAppSave = saveFunction;
    poketchSys->appSaveData = saveData;
}

static const TouchScreenHitTable sMainPoketchButtons[] = {
    [POKETCH_SYSTEM_MAIN_BUTTON_UP] = { POKETCH_BUTTON_TOP_MIN_Y, POKETCH_BUTTON_TOP_MAX_Y, POKETCH_BUTTON_TOP_MIN_X, POKETCH_BUTTON_TOP_MAX_X }, // Top button
    [POKETCH_SYSTEM_MAIN_BUTTON_DOWN] = { POKETCH_BUTTON_BOTTOM_MIN_Y, POKETCH_BUTTON_BOTTOM_MAX_Y, POKETCH_BUTTON_BOTTOM_MIN_X, POKETCH_BUTTON_BOTTOM_MAX_X }, // Bottom Button
    [POKETCH_SYSTEM_MAIN_BUTTON_SCREEN] = { POKETCH_SCREEN_MIN_Y, POKETCH_SCREEN_MAX_Y, POKETCH_SCREEN_MIN_X, POKETCH_SCREEN_MAX_X } // Screen
};

static BOOL PoketchSystem_ButtonInit(PoketchSystem *poketchSys)
{
    poketchSys->buttonManager = PoketchButtonManager_New(sMainPoketchButtons, NELEMS(sMainPoketchButtons), PoketchSystem_OnButtonEvent, poketchSys, HEAP_ID_POKETCH_MAIN);

    if (poketchSys->buttonManager != NULL) {
        PoketchButtonManager_SetButtonTimer(poketchSys->buttonManager, POKETCH_SYSTEM_MAIN_BUTTON_UP, 0, 7);
        poketchSys->nextBtnTask = POKETCH_EMPTY_TASK;
        poketchSys->lastBtnReleaseTask = POKETCH_EMPTY_TASK;
        return TRUE;
    }

    return FALSE;
}

static void PoketchSystem_ButtonShutdown(PoketchSystem *poketchSys)
{
    PoketchButtonManager_Free(poketchSys->buttonManager);
}

static void PoketchSystem_ButtonUpdate(PoketchSystem *poketchSys)
{
    poketchSys->buttonState = BUTTON_MANAGER_STATE_NULL;
    PoketchButtonManager_Update(poketchSys->buttonManager);
}

static void PoketchSystem_OnButtonEvent(u32 buttonID, u32 buttonEvent, u32 touchEvent, void *system)
{
    PoketchSystem *poketchSys = (PoketchSystem *)system;

    if (PoketechSystem_IsRunningTask(poketchSys) == FALSE) {
        switch (touchEvent) {
        case BUTTON_TOUCH_RELEASED:
            poketchSys->touchingScreen = TRUE;
            break;
        case BUTTON_TOUCH_PRESSED:
            poketchSys->touchingScreen = FALSE;
            break;
        }
    } else {
        poketchSys->touchingScreen = FALSE;
    }

    if (buttonID == POKETCH_SYSTEM_MAIN_BUTTON_SCREEN) {
        if (PoketechSystem_IsRunningTask(poketchSys) && touchEvent == BUTTON_TOUCH_RELEASED) {
            Sound_PlayEffect(SEQ_SE_DP_BEEP);
        }
    } else {
        u32 taskId = POKETCH_EMPTY_TASK;

        switch (touchEvent) {
        case BUTTON_TOUCH_PRESSED:
            taskId = (buttonID == POKETCH_SYSTEM_MAIN_BUTTON_UP) ? TASK_UP_PRESSED : TASK_DOWN_PRESSED;
            break;
        case BUTTON_TOUCH_RELEASED:
            if (PoketechSystem_IsRunningTask(poketchSys) || poketchSys->appStarting) {
                taskId = (buttonID == POKETCH_SYSTEM_MAIN_BUTTON_UP) ? TASK_UP_HALF_PRESSED : TASK_DOWN_HALF_PRESSED;
                buttonEvent = BUTTON_MANAGER_STATE_NULL;
            } else {
                taskId = (buttonID == POKETCH_SYSTEM_MAIN_BUTTON_UP) ? TASK_UP_RELEASED : TASK_DOWN_RELEASED;
            }
            break;
        }

        if (poketchSys->nextBtnTask != POKETCH_EMPTY_TASK) {
            u32 tmpTaskId = taskId;

            taskId = poketchSys->nextBtnTask;
            poketchSys->nextBtnTask = tmpTaskId;
        }

        if (taskId != POKETCH_EMPTY_TASK) {
            if (PoketchSystem_StartTaskIfNotActive(poketchSys->taskData, taskId)) {
                if ((taskId == TASK_UP_HALF_PRESSED) || (taskId == TASK_UP_RELEASED) || (taskId == TASK_DOWN_HALF_PRESSED) || (taskId == TASK_DOWN_RELEASED)) {
                    poketchSys->lastBtnReleaseTask = taskId;
                }
            }
        }

        switch (buttonEvent) {
        case BUTTON_MANAGER_STATE_TIMER0:
            PoketchButtonManager_ResetButtonState(poketchSys->buttonManager, 0);
            break;
        case BUTTON_MANAGER_STATE_TAP:
            if (poketchSys->lastBtnReleaseTask == TASK_UP_HALF_PRESSED || poketchSys->lastBtnReleaseTask == TASK_DOWN_HALF_PRESSED) {
                buttonEvent = BUTTON_MANAGER_STATE_NULL;
            }
            break;
        case BUTTON_MANAGER_STATE_DRAGGING:
            if (poketchSys->lastBtnReleaseTask == TASK_UP_RELEASED || poketchSys->lastBtnReleaseTask == TASK_DOWN_RELEASED) {
                buttonEvent = BUTTON_MANAGER_STATE_TAP;
            }
            break;
        }

        poketchSys->buttonState = buttonEvent;
        poketchSys->buttonDir = (buttonID == POKETCH_SYSTEM_MAIN_BUTTON_UP) ? BUTTON_UP : BUTTON_DOWN;
    }
}

static BOOL PoketchSystem_StartTaskIfNotActive(PoketchGraphics_TaskData *taskData, u32 taskId)
{
    for (u32 i = 0; i < 6; i++) {
        if (PoketchGraphics_TaskIsNotActive(taskData, taskId) == FALSE) {
            return FALSE;
        }
    }

    PoketchGraphics_StartTask(taskData, taskId);
    return TRUE;
}

PoketchGraphics_TaskData *PoketchSystem_GetTaskData(void)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();
    return poketchSys->taskData;
}

void PoketchSystem_PlaySoundEffect(u32 soundID)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    if ((poketchSys->appChanging == FALSE) && (PoketechSystem_IsRunningTask(poketchSys) == FALSE)) {
        Sound_PlayEffect(soundID);
    }
}

void PoketchSystem_PlayCry(u32 species, u32 form)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    if (poketchSys->appChanging == FALSE && PoketechSystem_IsRunningTask(poketchSys) == FALSE) {
        Sound_PlayPokemonCry(species, form);
    }
}

static inline BOOL PoketchSystem_InsideScreenBounds(u32 x, u32 y)
{
    if ((u32)(x - POKETCH_SCREEN_MIN_X) < (u32)(POKETCH_SCREEN_MAX_X - POKETCH_SCREEN_MIN_X) & (u32)(y - POKETCH_SCREEN_MIN_Y) < (u32)(POKETCH_SCREEN_MAX_Y - POKETCH_SCREEN_MIN_Y)) {
        return TRUE;
    }

    return FALSE;
}

BOOL PoketchSystem_GetDisplayHeldCoords(u32 *x, u32 *y)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    if (!poketchSys->appChanging
        && !PoketechSystem_IsRunningTask(poketchSys)
        && TouchScreen_GetHoldState(x, y)) {
        return PoketchSystem_InsideScreenBounds(*x, *y);
    }

    return FALSE;
}

BOOL PoketchSystem_GetDisplayTappedCoords(u32 *x, u32 *y)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    if (!poketchSys->appChanging
        && !PoketechSystem_IsRunningTask(poketchSys)
        && TouchScreen_GetTapState(x, y)) {
        return PoketchSystem_InsideScreenBounds(*x, *y);
    }

    return FALSE;
}

BOOL PoketechSystem_IsRunningTask(const PoketchSystem *poketchSys)
{
    return FieldSystem_IsRunningTask(poketchSys->fieldSystem);
}

void PoketechSystem_UpdateButtonManager(const PoketchSystem *poketchSys, PoketchButtonManager *buttonManager)
{
    if (PoketechSystem_IsRunningTask(poketchSys) == FALSE && poketchSys->appChanging == FALSE) {
        PoketchButtonManager_Update(buttonManager);
    }
}

BOOL PoketchSystem_IsPlayerMoving(const PoketchSystem *poketchSys)
{
    return poketchSys->playerMoving;
}

BOOL PoketchSystem_PedometerUpdated(const PoketchSystem *poketchSys)
{
    return poketchSys->pedometerUpdated;
}

FieldSystem *PoketchSystem_GetFieldSystem(const PoketchSystem *poketchSys)
{
    return poketchSys->fieldSystem;
}

Poketch *PoketchSystem_GetPoketchData(const PoketchSystem *poketchSys)
{
    return poketchSys->poketch;
}

SaveData *PoketchSystem_GetSaveData(const PoketchSystem *poketchSys)
{
    return poketchSys->saveData;
}

int PoketchSystem_GetBorderColor(const PoketchSystem *poketchSys)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(poketchSys->saveData);

    if (TrainerInfo_Gender(trainerInfo) == GENDER_FEMALE) {
        return POKETCH_BORDER_PINK;
    } else {
        return POKETCH_BORDER_BLUE;
    }
}
