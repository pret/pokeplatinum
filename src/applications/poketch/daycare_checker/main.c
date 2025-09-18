#include <nitro.h>
#include <nitro/sinit.h>

#include "struct_defs/daycare.h"

#include "applications/poketch/daycare_checker/graphics.h"
#include "applications/poketch/poketch_system.h"
#include "overlay005/daycare.h"

#include "bg_window.h"
#include "daycare_save.h"
#include "heap.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchDaycare {
    u8 state;
    u8 subState;
    u8 shouldExit;
    DaycareStatus daycareStatus;
    DaycareCheckerGraphics *graphics;
    PoketchSystem *poketchSys;
    Daycare *daycareSaveData;
} PoketchDaycareChecker;

enum DaycareCheckerState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchDaycareChecker *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchDaycareChecker *appData);
static void Task_Main(SysTask *task, void *appData);
static void Exit(void *appData);
static void ChangeState(PoketchDaycareChecker *appData, u32 newState);
static BOOL State_LoadApp(PoketchDaycareChecker *appData);
static BOOL State_UpdateApp(PoketchDaycareChecker *appData);
static BOOL State_UnloadApp(PoketchDaycareChecker *appData);
static BOOL ScreenIsPressed(PoketchDaycareChecker *appData);
static void LoadDaycareSummary(DaycareStatus *daycareStatus, Daycare *daycare);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchDaycareChecker *daycareApp = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchDaycareChecker));

    if (daycareApp != NULL) {
        if (Init(daycareApp, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, daycareApp, 1) != NULL) {
                *appData = daycareApp;
                return TRUE;
            }
        }
        Heap_Free(daycareApp);
    }
    return FALSE;
}

static BOOL Init(PoketchDaycareChecker *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    appData->daycareSaveData = SaveData_GetDaycare(PoketchSystem_GetSaveData(poketchSys));

    LoadDaycareSummary(&appData->daycareStatus, appData->daycareSaveData);

    if (PoketchDaycareCheckerGraphics_New(&appData->graphics, &appData->daycareStatus, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchDaycareChecker *appData)
{
    PoketchDaycareCheckerGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchDaycareChecker *) = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchDaycareChecker *daycareChecker = appData;

    if (daycareChecker->state < NELEMS(stateFuncs)) {
        if (stateFuncs[daycareChecker->state](daycareChecker)) {
            Free(daycareChecker);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(daycareChecker->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchDaycareChecker *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchDaycareChecker *appData, u32 newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchDaycareChecker *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchDaycareCheckerGraphics_StartTask(appData->graphics, DAYCARE_CHECKER_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchDaycareCheckerGraphics_TaskIsNotActive(appData->graphics, DAYCARE_CHECKER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchDaycareChecker *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        if (ScreenIsPressed(appData)) {
            LoadDaycareSummary(&appData->daycareStatus, appData->daycareSaveData);
            PoketchDaycareCheckerGraphics_StartTask(appData->graphics, DAYCARE_CHECKER_GRAPHICS_RELOAD);
            appData->subState++;
        }
        break;
    case 1:
        if (PoketchDaycareCheckerGraphics_TaskIsNotActive(appData->graphics, DAYCARE_CHECKER_GRAPHICS_RELOAD)) {
            appData->subState = 0;
        }
        break;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchDaycareChecker *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchDaycareCheckerGraphics_StartTask(appData->graphics, DAYCARE_CHECKER_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchDaycareCheckerGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL ScreenIsPressed(PoketchDaycareChecker *apData)
{
    if (PoketechSystem_IsRunningTask(apData->poketchSys) == FALSE) {
        u32 x, y;

        if (TouchScreen_GetTapState(&x, &y)) {
            if (INSIDE_POKETCH_SCREEN(x, y)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static void LoadDaycareSummary(DaycareStatus *daycareStatus, Daycare *daycare)
{
    DaycareMon *daycareMon;
    BoxPokemon *boxMon;
    BOOL reencrypt;

    daycareStatus->numMons = Daycare_CountMons(daycare);
    daycareStatus->hasEgg = Daycare_HasEgg(daycare);

    for (int slot = 0; slot < daycareStatus->numMons; slot++) {
        daycareMon = Daycare_GetDaycareMon(daycare, slot);
        boxMon = DaycareMon_GetBoxMon(daycareMon);
        reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

        daycareStatus->iconSpriteIndices[slot] = BoxPokemon_IconSpriteIndex(boxMon);
        daycareStatus->species[slot] = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
        daycareStatus->forms[slot] = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);
        daycareStatus->levels[slot] = DaycareMon_GiveExperience(daycareMon);
        daycareStatus->genders[slot] = BoxPokemon_GetGender(boxMon);

        BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
    }
}
