#include "hardware_window.h"

#include <nitro/gx/gx.h>

#include "constants/graphics.h"

#include "sys_task.h"
#include "sys_task_manager.h"

#define LOCAL_TASK_PRIORITY 1

static void Task_SetVisibleHardwareWindows(SysTask *task, void *data);
static void Task_SetHardwareWindowMaskInsidePlane(SysTask *task, void *data);
static void Task_SetHardwareWindowMaskOutsidePlane(SysTask *task, void *data);
static void Task_SetHardwareWindowDimensions(SysTask *task, void *data);

void SetVisibleHardwareWindows(GXWndMask windowMask, enum DSScreen screen)
{
    if (screen == DS_SCREEN_MAIN) {
        GX_SetVisibleWnd(windowMask);
    } else {
        GXS_SetVisibleWnd(windowMask);
    }
}

void SetHardwareWindowMaskInsidePlane(int wnd, BOOL applyColorEffect, enum HardwareWindow windowID, enum DSScreen screen)
{
    if (windowID == HW_WINDOW_WND0) {
        if (screen == DS_SCREEN_MAIN) {
            G2_SetWnd0InsidePlane(wnd, applyColorEffect);
        } else {
            G2S_SetWnd0InsidePlane(wnd, applyColorEffect);
        }
    } else {
        if (screen == DS_SCREEN_MAIN) {
            G2_SetWnd1InsidePlane(wnd, applyColorEffect);
        } else {
            G2S_SetWnd1InsidePlane(wnd, applyColorEffect);
        }
    }
}

void SetHardwareWindowMaskOutsidePlane(int wnd, BOOL applyColorEffect, enum DSScreen screen)
{
    if (screen == DS_SCREEN_MAIN) {
        G2_SetWndOutsidePlane(wnd, applyColorEffect);
    } else {
        G2S_SetWndOutsidePlane(wnd, applyColorEffect);
    }
}

void SetHardwareWindowDimensions(int left, int top, int right, int bottom, enum HardwareWindow windowID, enum DSScreen screen)
{
    if (windowID == HW_WINDOW_WND0) {
        if (screen == DS_SCREEN_MAIN) {
            G2_SetWnd0Position(left, top, right, bottom);
        } else {
            G2S_SetWnd0Position(left, top, right, bottom);
        }
    } else {
        if (screen == DS_SCREEN_MAIN) {
            G2_SetWnd1Position(left, top, right, bottom);
        } else {
            G2S_SetWnd1Position(left, top, right, bottom);
        }
    }
}

void RequestVisibleHardwareWindows(HardwareWindowSettings *settings, GXWndMask windowMask, enum DSScreen screen)
{
    HardwareWindowVisibility *visible = &settings->visible[screen];
    visible->windowMask = windowMask;
    visible->screen = screen;

    SysTask_ExecuteAfterVBlank(Task_SetVisibleHardwareWindows, visible, LOCAL_TASK_PRIORITY);
}

void RequestHardwareWindowMaskInsidePlane(HardwareWindowSettings *settings, int wnd, BOOL applyColorEffect, enum HardwareWindow windowID, enum DSScreen screen)
{
    HardwareWindowInsidePlane *inside = &settings->inside[screen][windowID];
    inside->wnd = wnd;
    inside->applyColorEffect = applyColorEffect;
    inside->windowID = windowID;
    inside->screen = screen;

    SysTask_ExecuteAfterVBlank(Task_SetHardwareWindowMaskInsidePlane, inside, LOCAL_TASK_PRIORITY);
}

void RequestHardwareWindowMaskOutsidePlane(HardwareWindowSettings *settings, int wnd, BOOL applyColorEffect, enum DSScreen screen)
{
    HardwareWindowOutsidePlane *outside = &settings->outside[screen];
    outside->wnd = wnd;
    outside->applyColorEffect = applyColorEffect;
    outside->screen = screen;

    SysTask_ExecuteAfterVBlank(Task_SetHardwareWindowMaskOutsidePlane, outside, LOCAL_TASK_PRIORITY);
}

void RequestHardwareWindowDimensions(HardwareWindowSettings *settings, int left, int top, int right, int bottom, enum HardwareWindow windowID, enum DSScreen screen)
{
    HardwareWindowDimensions *v0 = &settings->dimensions[screen][windowID];
    v0->left = left;
    v0->top = top;
    v0->right = right;
    v0->bottom = bottom;
    v0->windowID = windowID;
    v0->screen = screen;

    SysTask_ExecuteAfterVBlank(Task_SetHardwareWindowDimensions, v0, LOCAL_TASK_PRIORITY);
}

static void Task_SetVisibleHardwareWindows(SysTask *task, void *data)
{
    HardwareWindowVisibility *visible = data;
    SetVisibleHardwareWindows(visible->windowMask, visible->screen);
    SysTask_Done(task);
}

static void Task_SetHardwareWindowMaskInsidePlane(SysTask *task, void *data)
{
    HardwareWindowInsidePlane *inside = data;
    SetHardwareWindowMaskInsidePlane(inside->wnd, inside->applyColorEffect, inside->windowID, inside->screen);
    SysTask_Done(task);
}

static void Task_SetHardwareWindowMaskOutsidePlane(SysTask *task, void *data)
{
    HardwareWindowOutsidePlane *outside = data;
    SetHardwareWindowMaskOutsidePlane(outside->wnd, outside->applyColorEffect, outside->screen);
    SysTask_Done(task);
}

static void Task_SetHardwareWindowDimensions(SysTask *task, void *data)
{
    HardwareWindowDimensions *dimensions = data;
    SetHardwareWindowDimensions(
        dimensions->left,
        dimensions->top,
        dimensions->right,
        dimensions->bottom,
        dimensions->windowID,
        dimensions->screen);
    SysTask_Done(task);
}
