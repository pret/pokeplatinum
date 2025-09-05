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
    MemoPadState padState;
    MemoPadGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
} PoketchMemoPad;

enum MemoPadTasks {
    TASK_LOAD_APP = 0,
    TASK_UPDATE_LOOP,
    TASK_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchMemoPad *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchMemoPad *appData);
static void Task_Main(SysTask *task, void *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);
static void Exit(void *appData);
static void ChangeActiveTask(PoketchMemoPad *appData, u32 taskID);
static BOOL Task_LoadApp(PoketchMemoPad *appData);
static BOOL Task_UpdateApp(PoketchMemoPad *appData);
static BOOL GetTouchStartLocation(PoketchMemoPad *appData);
static BOOL GetTouchContinueLocation(PoketchMemoPad *appData);
static void UpdatePixelsOnPath(PoketchMemoPad *appData, u32 x, u32 y, u32 endX, u32 endY);
static BOOL Task_UnloadApp(PoketchMemoPad *appData);

static const TouchScreenHitTable sHitTableMemoPad[] = {
    { .rect = { .top = 0x18, .bottom = 0x58, .left = 0xB4, .right = 0xCC } },
    { .rect = { .top = 0x68, .bottom = 0xA8, .left = 0xB4, .right = 0xCC } }
};

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
    memset(appData->padState.pixels, 0, sizeof(u8) * (MEMO_PAD_WIDTH * MEMO_PAD_HEIGHT));

    appData->padState.appID = appID;
    appData->padState.pencilActive = TRUE;

    if (MemoPadGraphics_New(&appData->graphics, &appData->padState, bgConfig)) {
        appData->activeTask = TASK_LOAD_APP;
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
        Task_LoadApp,
        Task_UpdateApp,
        Task_UnloadApp
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
        if (((memoPad->padState.pencilActive == TRUE) && (buttonID == 0)) || ((memoPad->padState.pencilActive == FALSE) && (buttonID == 1))) {
            memoPad->padState.pencilActive ^= 1;
            PoketchMemoPadGraphics_StartTask(memoPad->graphics, TASK_CHANGE_DRAW_TOOL);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchMemoPad *)appData)->shouldExit = TRUE;
}

static void ChangeActiveTask(PoketchMemoPad *appData, u32 taskID)
{
    if (appData->shouldExit == FALSE) {
        appData->activeTask = taskID;
    } else {
        appData->activeTask = TASK_SHUTDOWN;
    }

    appData->taskFuncState = 0;
}

static BOOL Task_LoadApp(PoketchMemoPad *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchMemoPadGraphics_StartTask(appData->graphics, TASK_DRAW_APP_SCREEN);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchMemoPadGraphics_TaskIsNotActive(appData->graphics, TASK_DRAW_APP_SCREEN)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeActiveTask(appData, TASK_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL Task_UpdateApp(PoketchMemoPad *appData)
{
    if (appData->shouldExit) {
        ChangeActiveTask(appData, TASK_SHUTDOWN);
    }

    switch (appData->taskFuncState) {
    case 0:
        if (PoketechSystem_IsRunningTask(appData->poketchSys)) {
            break;
        }

        if (appData->currentlyDrawing) {
            u32 prevX, prevY;

            prevX = appData->padState.x;
            prevY = appData->padState.y;

            if (GetTouchContinueLocation(appData)) {
                UpdatePixelsOnPath(appData, prevX, prevY, appData->padState.x, appData->padState.y);
            } else {
                appData->currentlyDrawing = FALSE;
            }
        } else {
            if (GetTouchStartLocation(appData)) {
                PoketchMemoPadGraphics_StartTask(appData->graphics, TASK_UPDATE_MEMO_CONTENT);
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

            appData->padState.pixels[x][y] = appData->padState.pencilActive;
            appData->padState.x = x;
            appData->padState.y = y;

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

            appData->padState.x = x;
            appData->padState.y = y;

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
            appData->padState.pixels[i][j] = 0;
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
                if ((appData->padState.pencilActive == FALSE) || (appData->padState.pixels[x][minorAxisRounded] != appData->padState.pencilActive)) {
                    if (appData->padState.pencilActive == FALSE) {
                        ErasePixelsAroundPoint(appData, x, minorAxisRounded);
                    }

                    appData->padState.pixels[x][minorAxisRounded] = appData->padState.pencilActive;
                    appData->padState.x = x;
                    appData->padState.y = minorAxisRounded;

                    PoketchMemoPadGraphics_StartTask(appData->graphics, TASK_UPDATE_MEMO_CONTENT);
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
                if ((appData->padState.pencilActive == 0) || (appData->padState.pixels[minorAxisRounded][y] != appData->padState.pencilActive)) {
                    if (appData->padState.pencilActive == 0) {
                        ErasePixelsAroundPoint(appData, minorAxisRounded, y);
                    }

                    appData->padState.pixels[minorAxisRounded][y] = appData->padState.pencilActive;
                    appData->padState.x = minorAxisRounded;
                    appData->padState.y = y;

                    PoketchMemoPadGraphics_StartTask(appData->graphics, TASK_UPDATE_MEMO_CONTENT);
                }
            }

            y += majorAxisStep;
            minorAxis += minorAxisStep;
        }
    }

    if ((endY < MEMO_PAD_HEIGHT) && (endX < MEMO_PAD_WIDTH)) {
        if (appData->padState.pencilActive == FALSE) {
            ErasePixelsAroundPoint(appData, endX, endY);
        }

        appData->padState.x = endX;
        appData->padState.y = endY;

        PoketchMemoPadGraphics_StartTask(appData->graphics, TASK_UPDATE_MEMO_CONTENT);
    }
}

static BOOL Task_UnloadApp(PoketchMemoPad *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchMemoPadGraphics_StartTask(appData->graphics, TASK_FREE_BG);
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
