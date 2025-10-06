#include <nitro.h>
#include <nitro/sinit.h>

#include "generated/sdat.h"

#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/roulette/graphics.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

#define ROULETTE_BUTTON_START 0
#define ROULETTE_BUTTON_STOP  1
#define ROULETTE_BUTTON_CLEAR 2

typedef struct Poketch_Roulette {
    u8 state;
    u8 subState;
    u8 shouldExit;
    u8 currentlyDrawing;
    RouletteData rouletteData;
    RouletteGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    enum ButtonManagerState buttonState;
    u32 button;
} PoketchRoulette;

typedef BOOL (*StateFunc)(PoketchRoulette *);

enum RouletteState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchRoulette *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchRoulette *appData);
static void Exit(void *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchRoulette *appData, enum RouletteState newState);
static BOOL State_LoadApp(PoketchRoulette *appData);
static BOOL State_UpdateApp(PoketchRoulette *appData);
static BOOL State_UnloadApp(PoketchRoulette *appData);

static BOOL GetTouchStartPosition(PoketchRoulette *appData);
static BOOL GetTouchContinuePosition(PoketchRoulette *appData);
static void UpdatePixelsOnPath(PoketchRoulette *appData, u32 x, u32 y, u32 endX, u32 endY);
static void ClearPixelArray(RouletteData *rouletteData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchRoulette *roulette = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchRoulette));

    if (roulette != NULL) {
        if (Init(roulette, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, roulette, 1) != NULL) {
                *appData = roulette;
                return TRUE;
            }
        }

        Heap_Free(roulette);
    }

    return FALSE;
}

static BOOL Init(PoketchRoulette *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    static const TouchScreenRect sButtonHitboxes[] = {
        { .rect = { .top = 34, .bottom = 66, .left = 167, .right = 207 } },
        { .rect = { .top = 80, .bottom = 112, .left = 167, .right = 207 } },
        { .rect = { .top = 126, .bottom = 158, .left = 167, .right = 207 } }
    };

    appData->rouletteData.appID = appID;
    appData->rouletteData.playButtonPressed = FALSE;
    appData->rouletteData.stopButtonPressed = TRUE;
    appData->rouletteData.clearButtonPressed = FALSE;

    if (PoketchRouletteGraphics_New(&appData->graphics, &appData->rouletteData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->currentlyDrawing = FALSE;

        ClearPixelArray(&appData->rouletteData);

        appData->buttonManager = PoketchButtonManager_New(sButtonHitboxes, NELEMS(sButtonHitboxes), ButtonCallback, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchRoulette *appData)
{
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchRouletteGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchRoulette *roulette = appData;

    if (roulette->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(roulette->poketchSys, roulette->buttonManager);

        if (stateFuncs[roulette->state](roulette)) {
            Free(roulette);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(roulette->poketchSys);
        }
    }
}

static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchRoulette *roulette = appData;

    roulette->buttonState = buttonState;
    roulette->button = buttonID;
}

static void Exit(void *appData)
{
    ((PoketchRoulette *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchRoulette *appData, enum RouletteState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchRoulette *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchRouletteGraphics_TaskIsNotActive(appData->graphics, ROULETTE_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchRoulette *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
    }

    switch (appData->subState) {
    case 0:
        if (PoketechSystem_IsRunningTask(appData->poketchSys)) {
            break;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            switch (appData->button) {
            case ROULETTE_BUTTON_START:
                appData->rouletteData.playButtonPressed = TRUE;
                appData->rouletteData.stopButtonPressed = FALSE;
                appData->rouletteData.clearButtonPressed = TRUE;
                PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_UPDATE_BUTTONS);
                PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_RUN_SPINNER);
                PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
                appData->subState = 1;
                break;
            case ROULETTE_BUTTON_STOP:
                PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
                break;
            case ROULETTE_BUTTON_CLEAR:
                appData->rouletteData.clearButtonPressed = TRUE;
                PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_UPDATE_BUTTONS);
                PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
                appData->subState = 3;
                break;
            }

            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            break;
        }

        if (appData->currentlyDrawing) {
            u32 prevX = appData->rouletteData.x;
            u32 prevY = appData->rouletteData.y;

            if (GetTouchContinuePosition(appData)) {
                UpdatePixelsOnPath(appData, prevX, prevY, appData->rouletteData.x, appData->rouletteData.y);
            } else {
                appData->currentlyDrawing = FALSE;
            }
        } else if (GetTouchStartPosition(appData)) {
            PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_UPDATE_DRAWING);
            appData->currentlyDrawing = TRUE;
        }
        break;
    case 1:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            switch (appData->button) {
            case ROULETTE_BUTTON_CLEAR:
            case ROULETTE_BUTTON_START:
                PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
                break;
            case ROULETTE_BUTTON_STOP:
                appData->rouletteData.playButtonPressed = TRUE;
                appData->rouletteData.stopButtonPressed = TRUE;
                appData->rouletteData.clearButtonPressed = TRUE;
                PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_UPDATE_BUTTONS);
                PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_STOP_SPINNER);
                PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_003);
                appData->subState = 2;
                break;
            }

            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            break;
        }
        break;
    case 2:
        if (PoketchRouletteGraphics_TaskIsNotActive(appData->graphics, ROULETTE_GRAPHICS_STOP_SPINNER)) {
            appData->rouletteData.playButtonPressed = FALSE;
            appData->rouletteData.stopButtonPressed = TRUE;
            appData->rouletteData.clearButtonPressed = FALSE;
            PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_UPDATE_BUTTONS);
            appData->subState = 0;
        }
        break;
    case 3:
        if (appData->buttonState == BUTTON_MANAGER_STATE_DRAGGING) {
            appData->rouletteData.clearButtonPressed = FALSE;
            PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_UPDATE_BUTTONS);
            appData->subState = 0;
            break;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TAP) {
            appData->rouletteData.clearButtonPressed = FALSE;
            ClearPixelArray(&appData->rouletteData);
            PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_UPDATE_BUTTONS);
            PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_CLEAR_DRAWING);
            appData->subState = 0;
            break;
        }
        break;
    }

    return FALSE;
}

static BOOL GetTouchStartPosition(PoketchRoulette *appData)
{
    u32 x, y;

    if (PoketchSystem_GetDisplayHeldCoords(&x, &y)) {
        if ((x - POKETCH_SCREEN_MIN_X < DRAWING_REGION_WIDTH - 1) & (y - POKETCH_SCREEN_MIN_Y < DRAWING_REGION_HEIGHT - 1)) {
            x = (x - POKETCH_SCREEN_MIN_X) / 2;
            y = (y - POKETCH_SCREEN_MIN_Y) / 2;

            if (appData->rouletteData.pixels[x][y] == 0) {
                appData->rouletteData.pixels[x][y] = 1;
                appData->rouletteData.x = x;
                appData->rouletteData.y = y;
                return TRUE;
            }
        }
    }
    return FALSE;
}

static BOOL GetTouchContinuePosition(PoketchRoulette *appData)
{
    u32 x, y;

    if (PoketchSystem_GetDisplayHeldCoords(&x, &y)) {
        if ((x - POKETCH_SCREEN_MIN_X < DRAWING_REGION_WIDTH - 1) & (y - POKETCH_SCREEN_MIN_Y < DRAWING_REGION_HEIGHT - 1)) {
            x = (x - POKETCH_SCREEN_MIN_X) / 2;
            y = (y - POKETCH_SCREEN_MIN_Y) / 2;

            appData->rouletteData.x = x;
            appData->rouletteData.y = y;

            return TRUE;
        }
    }
    return FALSE;
}

static void UpdatePixelsOnPath(PoketchRoulette *appData, u32 x, u32 y, u32 endX, u32 endY)
{
    fx32 minorAxisStep;

    if ((y == endY) && (x == endX)) {
        return;
    }

    u32 deltaX = endX > x ? endX - x : x - endX;
    u32 deltaY = endY > y ? endY - y : y - endY;

    if (deltaX > deltaY) {
        u32 xStep = endX > x ? 1 : -1;

        if (deltaX) {
            minorAxisStep = (endY - y) * FX32_ONE;
            minorAxisStep /= (s32)deltaX;
        } else {
            minorAxisStep = 0;
        }

        fx32 minorAxis = (y << FX32_SHIFT) + minorAxisStep;
        x += xStep;

        while (x != endX) {
            u32 minorAxisRounded = minorAxis >> FX32_SHIFT;

            if ((x < DRAWING_REGION_WIDTH) && (minorAxisRounded < DRAWING_REGION_HEIGHT)) {
                if (appData->rouletteData.pixels[x][minorAxisRounded] == 0) {
                    appData->rouletteData.pixels[x][minorAxisRounded] = 0;
                    appData->rouletteData.x = x;
                    appData->rouletteData.y = minorAxisRounded;
                    PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_UPDATE_DRAWING);
                }
            }

            x += xStep;
            minorAxis += minorAxisStep;
        }
    } else {
        u32 yStep = endY > y ? 1 : -1;

        if (deltaY) {
            minorAxisStep = (endX - x) * FX32_ONE;
            minorAxisStep /= (s32)deltaY;
        } else {
            minorAxisStep = 0;
        }

        fx32 minorAxis = (x << FX32_SHIFT) + minorAxisStep;
        y += yStep;

        while (y != endY) {
            u32 minorAxisRounded = minorAxis >> FX32_SHIFT;

            if ((y < DRAWING_REGION_HEIGHT) && (minorAxisRounded < DRAWING_REGION_WIDTH)) {
                if (appData->rouletteData.pixels[minorAxisRounded][y] == 0) {
                    appData->rouletteData.pixels[minorAxisRounded][y] = 1;
                    appData->rouletteData.x = minorAxisRounded;
                    appData->rouletteData.y = y;
                    PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_UPDATE_DRAWING);
                }
            }

            y += yStep;
            minorAxis += minorAxisStep;
        }
    }

    if ((endY < DRAWING_REGION_HEIGHT) && (endX < DRAWING_REGION_WIDTH)) {
        appData->rouletteData.x = endX;
        appData->rouletteData.y = endY;
        PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_UPDATE_DRAWING);
    }
}

static BOOL State_UnloadApp(PoketchRoulette *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchRouletteGraphics_StartTask(appData->graphics, ROULETTE_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchRouletteGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void ClearPixelArray(RouletteData *rouletteData)
{
    for (int x = 0; x < DRAWING_REGION_WIDTH; x++) {
        for (int y = 0; y < DRAWING_REGION_HEIGHT; y++) {
            rouletteData->pixels[x][y] = 0;
        }
    }
}
