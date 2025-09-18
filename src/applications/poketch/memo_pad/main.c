#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "applications/poketch/memo_pad/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchMemoPad {
    u8 activeTask;
    u8 taskFuncState;
    u8 shouldExit;
    u8 currentlyDrawing;
    u32 unused;
    MemoPadData padData;
    MemoPadGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
} PoketchMemoPad;

enum MemoPadState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchMemoPad *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchMemoPad *appData);
static void Exit(void *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchMemoPad *appData, u32 newState);
static BOOL State_LoadApp(PoketchMemoPad *appData);
static BOOL State_UpdateApp(PoketchMemoPad *appData);
static BOOL State_UnloadApp(PoketchMemoPad *appData);

static BOOL GetTouchStartLocation(PoketchMemoPad *appData);
static BOOL GetTouchContinueLocation(PoketchMemoPad *appData);
static void UpdatePixelsOnPath(PoketchMemoPad *appData, u32 x, u32 y, u32 endX, u32 endY);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchMemoPad *memoPadApp = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchMemoPad));

    if (memoPadApp != NULL) {
        if (Init(memoPadApp, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, memoPadApp, 1) != NULL) {
                *appData = memoPadApp;
                return TRUE;
            }
        }
        Heap_Free(memoPadApp);
    }
    return FALSE;
}

static BOOL Init(PoketchMemoPad *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    static const TouchScreenRect sHitTableMemoPad[] = {
        { .rect = { .top = 24, .bottom = 88, .left = 180, .right = 204 } },
        { .rect = { .top = 104, .bottom = 168, .left = 180, .right = 204 } }
    };

    memset(appData->padData.pixels, 0, sizeof(u8) * (MEMO_PAD_WIDTH * MEMO_PAD_HEIGHT));

    appData->padData.appID = appID;
    appData->padData.pencilActive = TRUE;

    if (MemoPadGraphics_New(&appData->graphics, &appData->padData, bgConfig)) {
        appData->activeTask = STATE_LOAD_APP;
        appData->taskFuncState = 0;
        appData->shouldExit = FALSE;
        appData->currentlyDrawing = FALSE;
        appData->buttonManager = PoketchButtonManager_New(sHitTableMemoPad, NELEMS(sHitTableMemoPad), ButtonCallback, appData, HEAP_ID_POKETCH_APP);
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchMemoPad *appData)
{
    PoketchButtonManager_Free(appData->buttonManager);
    MemoPadGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchMemoPad *) = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchMemoPad *memoPad = appData;

    if (memoPad->activeTask < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(memoPad->poketchSys, memoPad->buttonManager);

        if (stateFuncs[memoPad->activeTask](memoPad)) {
            Free(memoPad);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(memoPad->poketchSys);
        }
    }
}

static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchMemoPad *memoPad = appData;

    if (touchState == 1) {
        if (((memoPad->padData.pencilActive == TRUE) && (buttonID == 0)) || ((memoPad->padData.pencilActive == FALSE) && (buttonID == 1))) {
            memoPad->padData.pencilActive ^= 1;
            PoketchMemoPadGraphics_StartTask(memoPad->graphics, MEMO_PAD_GRAPHICS_CHANGE_TOOL);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchMemoPad *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchMemoPad *appData, u32 taskID)
{
    if (appData->shouldExit == FALSE) {
        appData->activeTask = taskID;
    } else {
        appData->activeTask = STATE_SHUTDOWN;
    }

    appData->taskFuncState = 0;
}

static BOOL State_LoadApp(PoketchMemoPad *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchMemoPadGraphics_StartTask(appData->graphics, MEMO_PAD_GRAPHICS_INIT);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchMemoPadGraphics_TaskIsNotActive(appData->graphics, MEMO_PAD_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchMemoPad *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
    }

    switch (appData->taskFuncState) {
    case 0:
        if (PoketechSystem_IsRunningTask(appData->poketchSys)) {
            break;
        }

        if (appData->currentlyDrawing) {
            u32 prevX, prevY;

            prevX = appData->padData.x;
            prevY = appData->padData.y;

            if (GetTouchContinueLocation(appData)) {
                UpdatePixelsOnPath(appData, prevX, prevY, appData->padData.x, appData->padData.y);
            } else {
                appData->currentlyDrawing = FALSE;
            }
        } else {
            if (GetTouchStartLocation(appData)) {
                PoketchMemoPadGraphics_StartTask(appData->graphics, MEMO_PAD_GRAPHICS_UPDATE_CONTENT);
                appData->currentlyDrawing = TRUE;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL GetTouchStartLocation(PoketchMemoPad *appData)
{
    u32 x, y;

    if (PoketchSystem_GetDisplayHeldCoords(&x, &y)) {
        if (((x - POKETCH_SCREEN_MIN_X) < (2 * MEMO_PAD_WIDTH)) & ((y - POKETCH_SCREEN_MIN_Y) < (2 * MEMO_PAD_HEIGHT))) {
            x = (x - POKETCH_SCREEN_MIN_X) / 2;
            y = (y - POKETCH_SCREEN_MIN_Y) / 2;

            appData->padData.pixels[x][y] = appData->padData.pencilActive;
            appData->padData.x = x;
            appData->padData.y = y;

            return TRUE;
        }
    }

    return FALSE;
}

static BOOL GetTouchContinueLocation(PoketchMemoPad *appData)
{
    u32 x, y;

    if (PoketchSystem_GetDisplayHeldCoords(&x, &y)) {
        if (((x - POKETCH_SCREEN_MIN_X) < (2 * MEMO_PAD_WIDTH)) & ((y - POKETCH_SCREEN_MIN_Y) < (2 * MEMO_PAD_HEIGHT))) {
            x = (x - POKETCH_SCREEN_MIN_X) / 2;
            y = (y - POKETCH_SCREEN_MIN_Y) / 2;

            appData->padData.x = x;
            appData->padData.y = y;

            return TRUE;
        }
    }

    return FALSE;
}

static void ErasePixelsAroundPoint(PoketchMemoPad *appData, u32 x, u32 y)
{
    int i, j, left, top, right, bottom;

    left = x - (ERASER_SIZE / 2);
    if (left < 0) {
        left = 0;
    }

    top = y - (ERASER_SIZE / 2);
    if (top < 0) {
        top = 0;
    }

    right = x + (ERASER_SIZE / 2);
    if (right >= MEMO_PAD_WIDTH) {
        right = MEMO_PAD_WIDTH;
    }

    bottom = y + (ERASER_SIZE / 2);
    if (bottom >= MEMO_PAD_HEIGHT) {
        bottom = MEMO_PAD_HEIGHT;
    }

    for (i = left; i < right; i++) {
        for (j = top; j < bottom; j++) {
            appData->padData.pixels[i][j] = 0;
        }
    }
}

static void UpdatePixelsOnPath(PoketchMemoPad *appData, u32 x, u32 y, u32 endX, u32 endY)
{
    u32 deltaX, deltaY, majorAxisStep, minorAxisRounded;
    fx32 minorAxis, minorAxisStep;

    if ((y == endY) && (x == endX)) {
        return;
    }

    deltaX = (endX > x) ? (endX - x) : (x - endX);
    deltaY = (endY > y) ? (endY - y) : (y - endY);

    if (deltaX > deltaY) {
        majorAxisStep = (endX > x) ? 1 : -1;

        if (deltaX) {
            minorAxisStep = (endY - y) * FX32_ONE;
            minorAxisStep /= (s32)deltaX;
        } else {
            minorAxisStep = 0;
        }

        minorAxis = (y << FX32_SHIFT) + minorAxisStep;
        x += majorAxisStep;

        while (x != endX) {
            minorAxisRounded = minorAxis >> FX32_SHIFT;

            if ((x < MEMO_PAD_WIDTH) && (minorAxisRounded < MEMO_PAD_HEIGHT)) {
                if ((appData->padData.pencilActive == FALSE) || (appData->padData.pixels[x][minorAxisRounded] != appData->padData.pencilActive)) {
                    if (appData->padData.pencilActive == FALSE) {
                        ErasePixelsAroundPoint(appData, x, minorAxisRounded);
                    }

                    appData->padData.pixels[x][minorAxisRounded] = appData->padData.pencilActive;
                    appData->padData.x = x;
                    appData->padData.y = minorAxisRounded;

                    PoketchMemoPadGraphics_StartTask(appData->graphics, MEMO_PAD_GRAPHICS_UPDATE_CONTENT);
                }
            }

            x += majorAxisStep;
            minorAxis += minorAxisStep;
        }
    } else {
        majorAxisStep = (endY > y) ? 1 : -1;

        if (deltaY) {
            minorAxisStep = (endX - x) * FX32_ONE;
            minorAxisStep /= (s32)deltaY;
        } else {
            minorAxisStep = 0;
        }

        minorAxis = (x << FX32_SHIFT) + minorAxisStep;
        y += majorAxisStep;

        while (y != endY) {
            minorAxisRounded = minorAxis >> FX32_SHIFT;

            if ((y < MEMO_PAD_HEIGHT) && (minorAxisRounded < MEMO_PAD_WIDTH)) {
                if ((appData->padData.pencilActive == 0) || (appData->padData.pixels[minorAxisRounded][y] != appData->padData.pencilActive)) {
                    if (appData->padData.pencilActive == 0) {
                        ErasePixelsAroundPoint(appData, minorAxisRounded, y);
                    }

                    appData->padData.pixels[minorAxisRounded][y] = appData->padData.pencilActive;
                    appData->padData.x = minorAxisRounded;
                    appData->padData.y = y;

                    PoketchMemoPadGraphics_StartTask(appData->graphics, MEMO_PAD_GRAPHICS_UPDATE_CONTENT);
                }
            }

            y += majorAxisStep;
            minorAxis += minorAxisStep;
        }
    }

    if ((endY < MEMO_PAD_HEIGHT) && (endX < MEMO_PAD_WIDTH)) {
        if (appData->padData.pencilActive == FALSE) {
            ErasePixelsAroundPoint(appData, endX, endY);
        }

        appData->padData.x = endX;
        appData->padData.y = endY;

        PoketchMemoPadGraphics_StartTask(appData->graphics, MEMO_PAD_GRAPHICS_UPDATE_CONTENT);
    }
}

static BOOL State_UnloadApp(PoketchMemoPad *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchMemoPadGraphics_StartTask(appData->graphics, MEMO_PAD_GRAPHICS_FREE);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchMemoPadGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
