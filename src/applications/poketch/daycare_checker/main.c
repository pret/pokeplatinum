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
    u8 activeTask;
    u8 taskFuncState;
    u8 shouldExit;
    DaycareStatus daycareStatus;
    DaycareCheckerGraphics *graphics;
    PoketchSystem *poketchSys;
    Daycare *daycareSaveData;
} PoketchDaycare;

enum DaycareTasks {
    TASK_LOAD_APP = 0,
    TASK_UPDATE_LOOP,
    TASK_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchDaycare *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchDaycare *appData);
static void Task_Main(SysTask *task, void *appData);
static void Exit(void *param0);
static void ChangeActiveTask(PoketchDaycare *appData, u32 taskID);
static BOOL Task_LoadApp(PoketchDaycare *appData);
static BOOL Task_UpdateApp(PoketchDaycare *appData);
static BOOL Task_UnloadApp(PoketchDaycare *appData);
static BOOL ScreenIsPressed(PoketchDaycare *appData);
static void LoadDaycareSummary(DaycareStatus *daycareStatus, Daycare *daycare);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchDaycare *daycareApp = (PoketchDaycare *)Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchDaycare));

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

static BOOL Init(PoketchDaycare *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    appData->daycareSaveData = SaveData_GetDaycare(PoketchSystem_GetSaveData(poketchSys));

    LoadDaycareSummary(&appData->daycareStatus, appData->daycareSaveData);

    if (DaycareCheckerGraphics_New(&appData->graphics, &appData->daycareStatus, bgConfig)) {
        appData->activeTask = TASK_LOAD_APP;
        appData->taskFuncState = 0;
        appData->shouldExit = FALSE;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchDaycare *appData)
{
    DaycareCheckerGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchDaycare *) = {
        Task_LoadApp,
        Task_UpdateApp,
        Task_UnloadApp
    };

    PoketchDaycare *daycareChecker = appData;

    if (daycareChecker->activeTask < NELEMS(stateFuncs)) {
        if (stateFuncs[daycareChecker->activeTask](daycareChecker)) {
            Free(daycareChecker);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(daycareChecker->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchDaycare *)appData)->shouldExit = 1;
}

static void ChangeActiveTask(PoketchDaycare *appData, u32 taskID)
{
    if (appData->shouldExit == FALSE) {
        appData->activeTask = taskID;
    } else {
        appData->activeTask = TASK_SHUTDOWN;
    }

    appData->taskFuncState = 0;
}

static BOOL Task_LoadApp(PoketchDaycare *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchDaycareCheckerGraphics_StartTask(appData->graphics, TASK_DRAW_APP_BACKGROUND);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchDaycareCheckerGraphics_TaskIsNotActive(appData->graphics, TASK_DRAW_APP_BACKGROUND)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeActiveTask(appData, TASK_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL Task_UpdateApp(PoketchDaycare *appData)
{
    if (appData->shouldExit) {
        ChangeActiveTask(appData, TASK_SHUTDOWN);
        return FALSE;
    }

    switch (appData->taskFuncState) {
    case 0:
        if (ScreenIsPressed(appData)) {
            LoadDaycareSummary(&appData->daycareStatus, appData->daycareSaveData);
            PoketchDaycareCheckerGraphics_StartTask(appData->graphics, TASK_RELOAD_DAYCARE_STATE);
            appData->taskFuncState++;
        }
        break;
    case 1:
        if (PoketchDaycareCheckerGraphics_TaskIsNotActive(appData->graphics, TASK_RELOAD_DAYCARE_STATE)) {
            appData->taskFuncState = 0;
        }
        break;
    }

    return FALSE;
}

static BOOL Task_UnloadApp(PoketchDaycare *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchDaycareCheckerGraphics_StartTask(appData->graphics, TASK_FREE_BACKGROUND);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchDaycareCheckerGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL ScreenIsPressed(PoketchDaycare *apData)
{
    if (PoketechSystem_IsRunningTask(apData->poketchSys) == FALSE) {
        u32 x, y;

        if (TouchScreen_GetTapState(&x, &y)) {
            if (((u32)(x - 16) < (u32)(207 - 16)) & ((u32)(y - 16) < (u32)(175 - 16))) {
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
