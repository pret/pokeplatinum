#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/color_changer/graphics.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchColorChanger {
    u8 state;
    u8 subState;
    u8 shouldExit;
    u8 currentColor;
    ColorChangerData colorData;
    ColorChangerGraphics *graphics;
    PoketchSystem *poketchSys;
    Poketch *poketch;
} PoketchColorChanger;

typedef BOOL (*StateFunc)(PoketchColorChanger *);

enum ColorChangerState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchColorChanger *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchColorChanger *appData);
static void Exit(void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchColorChanger *appData, enum ColorChangerState newState);
static BOOL State_LoadApp(PoketchColorChanger *appData);
static BOOL State_UpdateApp(PoketchColorChanger *appData);
static BOOL State_UnloadApp(PoketchColorChanger *appData);

static BOOL CheckColorChanged(PoketchColorChanger *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchColorChanger *colorChanger = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchColorChanger));

    if (colorChanger != NULL) {
        if (Init(colorChanger, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, colorChanger, 1) != NULL) {
                *appData = colorChanger;
                return TRUE;
            }
        }

        Heap_Free(colorChanger);
    }

    return FALSE;
}

static BOOL Init(PoketchColorChanger *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    appData->poketch = PoketchSystem_GetPoketchData(poketchSys);
    appData->colorData.color = Poketch_CurrentScreenColor(appData->poketch);
    appData->currentColor = appData->colorData.color;

    if (PoketchColorChangerGraphics_New(&appData->graphics, &appData->colorData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->poketchSys = poketchSys;
        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchColorChanger *appData)
{
    PoketchColorChangerGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchColorChanger *colorChanger = appData;

    if (colorChanger->state < NELEMS(stateFuncs)) {
        if (stateFuncs[colorChanger->state](colorChanger)) {
            Free(colorChanger);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(colorChanger->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchColorChanger *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchColorChanger *appData, enum ColorChangerState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchColorChanger *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchColorChangerGraphics_StartTask(appData->graphics, COLOR_CHANGER_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchColorChanger_TaskIsNotActive(appData->graphics, COLOR_CHANGER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchColorChanger *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        if (CheckColorChanged(appData)) {
            PoketchColorChangerGraphics_StartTask(appData->graphics, COLOR_CHANGER_GRAPHICS_UPDATE_COLOR);
            appData->subState++;
        }
        break;
    case 1:
        if (PoketchColorChanger_TaskIsNotActive(appData->graphics, COLOR_CHANGER_GRAPHICS_UPDATE_COLOR)) {
            appData->subState = 0;
        }
        break;
    }

    return FALSE;
}

static BOOL CheckColorChanged(PoketchColorChanger *appData)
{
    if (!PoketechSystem_IsRunningTask(appData->poketchSys)) {
        u32 x, y;

        if (TouchScreen_GetHoldState(&x, &y)) {
            if (136 <= y && y < 160 && 48 <= x && x < 184) {
                u32 newColor = (x - 48) / COLOR_SLIDER_WIDTH;

                if (newColor >= POKETCH_SCREEN_COLOR_MAX) {
                    newColor = POKETCH_SCREEN_COLOR_MAX - 1;
                }

                if (newColor != appData->currentColor) {
                    appData->colorData.color = newColor;
                    appData->currentColor = newColor;
                    Poketch_SetScreenColor(appData->poketch, newColor);
                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchColorChanger *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchColorChangerGraphics_StartTask(appData->graphics, COLOR_CHANGER_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchColorChangerGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
