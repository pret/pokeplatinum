#include "overlay025/poketch_system.h"

#include <nitro.h>
#include <string.h>

#include "consts/sdat.h"

#include "struct_decls/struct_02018340_decl.h"

#include "field/field_system_decl.h"
#include "overlay025/ov25_02254560.h"
#include "overlay025/poketch_button.h"
#include "overlay025/struct_ov25_02254560_decl.h"

#include "enums.h"
#include "field_system.h"
#include "game_overlay.h"
#include "gender.h"
#include "heap.h"
#include "inlines.h"
#include "save_player.h"
#include "savedata.h"
#include "sys_task.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_02005474.h"
#include "unk_0201E3D8.h"
#include "unk_020508D4.h"
#include "unk_02099D44.h"

FS_EXTERN_OVERLAY(overlay26);
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
FS_EXTERN_OVERLAY(overlay43);
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
static BOOL ov25_022543EC(UnkStruct_ov25_02254560 *param0, u32 param1);
static inline BOOL PoketchSystem_InsideScreenBounds(u32 x, u32 y);

// the order of this array determines the app order in the poketch.
static const struct {
    int appID;
    FSOverlayID overlayID;
} sAppOverlayIDs[] = {
    { POKETCH_APPID_DIGITALWATCH, FS_OVERLAY_ID(overlay26) },
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
    { POKETCH_APPID_MOVETESTER, FS_OVERLAY_ID(overlay43) },
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

void PoketchSystem_Create(FieldSystem *fieldSystem, PoketchSystem **poketchSys, SaveData *saveData, BGL *bgl, NNSG2dOamManagerInstance *oamManager)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKETCH_MAIN, HEAP_SIZE_POKETCH_MAIN);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKETCH_APP, HEAP_SIZE_POKETCH_APP);

    PoketchSystem *new_system = Heap_AllocFromHeap(HEAP_ID_POKETCH_MAIN, sizeof(PoketchSystem));

    if (new_system != NULL) {
        *poketchSys = new_system;

        new_system->fieldSystem = fieldSystem;
        new_system->saveData = saveData;
        new_system->poketchData = SaveData_PoketchData(saveData);
        new_system->bgl = bgl;
        new_system->oamManager = oamManager;

        if (PoketchSystem_InitInternal(new_system)) {
            sub_0201E3D8();
            sub_0201E450(4);

            new_system->poketchSysPtr = poketchSys;
            new_system->unk_38 = SysTask_Start(PoketchSystem_PostRender, new_system, 4);

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
        u32 step_count = PoketchData_StepCount(poketchSys->poketchData);

        if (++step_count > POKETCH_PEDOMETER_MAX) {
            step_count = 0;
        }

        PoketchData_SetStepCount(poketchSys->poketchData, step_count);
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
    if (ov25_02254560(&(poketchSys->unk_1C), &(poketchSys->unk_20), poketchSys->oamManager, poketchSys)) {
        poketchSys->systemState = POKETCH_SYSTEM_INIT;
        poketchSys->subState = 0;
        poketchSys->touchingScreen = FALSE;
        poketchSys->playerMoving = 0;
        poketchSys->pedometerUpdated = FALSE;
        poketchSys->appChanging = FALSE;
        poketchSys->unk_06 = 0;
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
    SysTask_Done(poketchSys->unk_38);

    PoketchSystem_ButtonShutdown(poketchSys);
    PoketchSystem_UnloadApp(poketchSys);
    ov25_02254754(poketchSys->unk_1C);
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
        ov25_022547D0(poketchSys->unk_1C, 0);
        poketchSys->subState++;
        break;
    case 1:
        if (ov25_022547F4(poketchSys->unk_1C, 0)) {
            u32 app_ID = PoketchData_CurrentAppID(poketchSys->poketchData);

            PoketchSystem_LoadApp(poketchSys, app_ID);
            PoketchSystem_InitApp(poketchSys, app_ID);

            poketchSys->subState++;
        }
        break;
    case 2:
        if (PoketchSystem_IsAppInitialized(poketchSys) == FALSE) {
            break;
        }

        ov25_022547D0(poketchSys->unk_1C, 1);
        poketchSys->subState++;
    case 3:
        if (ov25_022547F4(poketchSys->unk_1C, 1)) {
            PoketchSystem_SetState(poketchSys, POKETCH_SYSTEM_UPDATE);
        }
    }
}

static void PoketchEvent_UpdateApp(PoketchSystem *poketchSys)
{
    switch (poketchSys->subState) {
    case 0:
        if (ov25_0225450C(poketchSys)) {
            return;
        }

        switch (poketchSys->buttonState) {
        case BUTTON_MANAGER_STATE_TAP:
        case BUTTON_MANAGER_STATE_TIMER0:
            poketchSys->skipApp = FALSE;
            poketchSys->appChanging = TRUE;
            ov25_022547D0(poketchSys->unk_1C, 4);
            poketchSys->subState++;
            break;
        }
        break;
    case 1:
        if (poketchSys->buttonState == BUTTON_MANAGER_STATE_TAP || poketchSys->buttonState == BUTTON_MANAGER_STATE_TIMER0) {
            poketchSys->skipApp = TRUE;
        }

        if (ov25_02254800(poketchSys->unk_1C)) {
            if (poketchSys->buttonDir == BUTTON_UP) {
                poketchSys->unk_20.unk_00 = PoketchData_DecrementAppID(poketchSys->poketchData);
            } else {
                poketchSys->unk_20.unk_00 = PoketchData_IncrementAppID(poketchSys->poketchData);
            }

            if (poketchSys->skipApp) {
                ov25_022547D0(poketchSys->unk_1C, 12);
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
            ov25_022547D0(poketchSys->unk_1C, 12);
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
            sub_02099D44();
            PoketchSystem_SetState(poketchSys, POKETCH_SYSTEM_CHANGE_APP);
        }
        break;
    case 4:
        if (poketchSys->buttonState == BUTTON_MANAGER_STATE_TAP || poketchSys->buttonState == BUTTON_MANAGER_STATE_TIMER0) {
            if (poketchSys->buttonDir == BUTTON_UP) {
                poketchSys->unk_20.unk_00 = PoketchData_DecrementAppID(poketchSys->poketchData);
            } else {
                poketchSys->unk_20.unk_00 = PoketchData_IncrementAppID(poketchSys->poketchData);
            }

            poketchSys->appSkipTimer = 30;
            ov25_022547D0(poketchSys->unk_1C, 13);
            break;
        }

        if (poketchSys->appSkipTimer) {
            poketchSys->appSkipTimer--;
        } else {
            ov25_022547D0(poketchSys->unk_1C, 14);
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
        u32 v0;

        poketchSys->unk_06 = 1;
        v0 = PoketchData_CurrentAppID(poketchSys->poketchData);

        PoketchSystem_LoadApp(poketchSys, v0);
        PoketchSystem_InitApp(poketchSys, v0);

        poketchSys->subState++;
    } break;
    case 1:
        if (PoketchSystem_IsAppInitialized(poketchSys)) {
            ov25_022547D0(poketchSys->unk_1C, 2);
            poketchSys->subState++;
        }
        break;
    case 2:
        if (ov25_022547F4(poketchSys->unk_1C, 2)) {
            poketchSys->appChanging = FALSE;
            poketchSys->unk_06 = 0;
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
            ov25_022547D0(poketchSys->unk_1C, 17);
            poketchSys->subState = 3;
        }
        break;
    case 3:
        if (ov25_02254800(poketchSys->unk_1C)) {
            PoketchSystem_UnloadApp(poketchSys);
            sub_0201E530();
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

    poketchSys->currAppInit(&(poketchSys->unk_24), poketchSys, poketchSys->bgl, poketchSys->loadedAppID);
    poketchSys->appState = POKETCH_APP_STATE_INIT;
}

static BOOL PoketchSystem_IsAppInitialized(PoketchSystem *poketchSys)
{
    return poketchSys->appState == POKETCH_APP_STATE_UPDATE;
}

static void PoketchSystem_ShutdownApp(PoketchSystem *poketchSys)
{
    GF_ASSERT(poketchSys->appState == POKETCH_APP_STATE_UPDATE);

    poketchSys->currAppShutdown(poketchSys->unk_24);
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
        poketchSys->unk_2C = 0xffffffff;
        poketchSys->unk_30 = 0xffffffff;
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
    poketchSys->buttonState = 0;
    PoketchButtonManager_Update(poketchSys->buttonManager);
}

static void PoketchSystem_OnButtonEvent(u32 buttonID, u32 buttonEvent, u32 touchEvent, void *system)
{
    PoketchSystem *poketchSys = (PoketchSystem *)system;

    if (ov25_0225450C(poketchSys) == FALSE) {
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
        if (ov25_0225450C(poketchSys) && touchEvent == BUTTON_TOUCH_RELEASED) {
            Sound_PlayEffect(SEQ_SE_DP_BEEP);
        }
    } else {
        u32 v1 = 0xffffffff;

        switch (touchEvent) {
        case BUTTON_TOUCH_PRESSED:
            v1 = (buttonID == POKETCH_SYSTEM_MAIN_BUTTON_UP) ? 8 : 11;
            break;
        case BUTTON_TOUCH_RELEASED:
            if (ov25_0225450C(poketchSys) || poketchSys->unk_06) {
                v1 = (buttonID == POKETCH_SYSTEM_MAIN_BUTTON_UP) ? 6 : 9;
                buttonEvent = 0;
            } else {
                v1 = (buttonID == POKETCH_SYSTEM_MAIN_BUTTON_UP) ? 7 : 10;
            }
            break;
        }

        if (poketchSys->unk_2C != 0xffffffff) {
            u32 v2 = v1;

            v1 = poketchSys->unk_2C;
            poketchSys->unk_2C = v2;
        }

        if (v1 != 0xffffffff) {
            if (ov25_022543EC(poketchSys->unk_1C, v1)) {
                if ((v1 == 6) || (v1 == 7) || (v1 == 9) || (v1 == 10)) {
                    poketchSys->unk_30 = v1;
                }
            }
        }

        switch (buttonEvent) {
        case BUTTON_MANAGER_STATE_TIMER0:
            PoketchButtonManager_ResetButtonState(poketchSys->buttonManager, 0);
            break;
        case BUTTON_MANAGER_STATE_TAP:
            if (poketchSys->unk_30 == 6 || poketchSys->unk_30 == 9) {
                buttonEvent = BUTTON_MANAGER_STATE_NULL;
            }
            break;
        case BUTTON_MANAGER_STATE_DRAGGING:
            if (poketchSys->unk_30 == 7 || poketchSys->unk_30 == 10) {
                buttonEvent = BUTTON_MANAGER_STATE_TAP;
            }
            break;
        }

        poketchSys->buttonState = buttonEvent;
        poketchSys->buttonDir = (buttonID == POKETCH_SYSTEM_MAIN_BUTTON_UP) ? BUTTON_UP : BUTTON_DOWN;
    }
}

static BOOL ov25_022543EC(UnkStruct_ov25_02254560 *param0, u32 param1)
{
    for (u32 i = 0; i < 6; i++) {
        if (ov25_022547F4(param0, param1) == FALSE) {
            return FALSE;
        }
    }

    ov25_022547D0(param0, param1);
    return TRUE;
}

UnkStruct_ov25_02254560 *ov25_02254418(void)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();
    return poketchSys->unk_1C;
}

void PoketchSystem_PlaySoundEffect(u32 soundID)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    if ((poketchSys->appChanging == FALSE) && (ov25_0225450C(poketchSys) == FALSE)) {
        Sound_PlayEffect(soundID);
    }
}

void ov25_02254444(u32 param0, u32 param1)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    if (poketchSys->appChanging == FALSE && ov25_0225450C(poketchSys) == 0) {
        sub_02005844(param0, param1);
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
        && !ov25_0225450C(poketchSys)
        && TouchScreen_GetHoldState(x, y)) {
        return PoketchSystem_InsideScreenBounds(*x, *y);
    }

    return FALSE;
}

BOOL PoketchSystem_GetDisplayTappedCoords(u32 *x, u32 *y)
{
    PoketchSystem *poketchSys = PoketchSystem_GetFromFieldSystem();

    if (!poketchSys->appChanging
        && !ov25_0225450C(poketchSys)
        && TouchScreen_GetTapState(x, y)) {
        return PoketchSystem_InsideScreenBounds(*x, *y);
    }

    return FALSE;
}

BOOL ov25_0225450C(const PoketchSystem *poketchSys)
{
    return sub_020509A4(poketchSys->fieldSystem);
}

void ov25_02254518(const PoketchSystem *poketchSys, PoketchButtonManager *buttonManager)
{
    if (ov25_0225450C(poketchSys) == 0 && poketchSys->appChanging == FALSE) {
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

PoketchData *PoketchSystem_GetPoketchData(const PoketchSystem *poketchSys)
{
    return poketchSys->poketchData;
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
