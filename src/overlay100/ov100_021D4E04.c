#include "overlay100/ov100_021D4E04.h"

#include <nitro.h>
#include <string.h>

#include "overlay005/struct_ov5_021DDF24_sub1.h"
#include "overlay100/struct_ov100_021D4E3C.h"
#include "overlay100/struct_ov100_021D4EBC.h"
#include "overlay104/ov104_0223E894.h"

#include "bg_window.h"
#include "buffer_manager.h"
#include "heap.h"
#include "inlines.h"
#include "screen_scroll_manager.h"
#include "sys_task.h"
#include "sys_task_extensions.h"
#include "sys_task_manager.h"

typedef struct ScreenCapture {
    GXVRamLCDC savedBank;
    ScreenCaptureTemplate template;
    BOOL active;
    SysTask *task;
} ScreenCapture;

static SysTask *ScreenScrollTask_Start(ScreenScrollTask *ssTask);
static void ScreenScrollTask_Update(SysTask *unused, void *param);
static void ScreenCapture_Activate(SysTask *task, void *param);
static void ScreenCapture_Update(SysTask *unused, void *param);
static void ScreenCapture_Prime(ScreenCaptureTemplate *template);

static SysTask *ScreenScrollTask_Start(ScreenScrollTask *ssTask)
{
    return SysTask_ExecuteOnVBlank(ScreenScrollTask_Update, ssTask, 1024);
}

static void ScreenScrollTask_Update(SysTask *unused, void *param)
{
    ScreenScrollTask *ssTask = param;

    if (ssTask->swapCounter >= 2) {
        ScreenScrollManager_SwapBuffers(ssTask->screenScrollMgr);
        ssTask->swapCounter = 0;
    }

    ScreenScrollManager_RestartDMA(ssTask->screenScrollMgr);
    ssTask->swapCounter++;
}

void ScreenScrollTask_Init(ScreenScrollTask *ssTask, u32 heapID)
{
    ssTask->screenScrollMgr = ScreenScrollManager_New(heapID);
    ssTask->swapCounter = 0;
    ssTask->task = ScreenScrollTask_Start(ssTask);
}

void ScreenScrollTask_Free(ScreenScrollTask *ssTask)
{
    SysTask_Done(ssTask->task);
    ScreenScrollManager_Stop(ssTask->screenScrollMgr);
    ScreenScrollManager_Delete(ssTask->screenScrollMgr);
}

void ScreenScrollTask_Scroll(ScreenScrollTask *ssTask, u8 start, u8 end, u16 angleIncrement, fx32 amplitude, s16 speed, u32 bg, u32 initValue, u32 priority, int axis)
{
    if (axis == 0) {
        ScreenScrollManager_ScrollX(ssTask->screenScrollMgr, start, end, angleIncrement, amplitude, speed, bg, initValue, priority);
    } else {
        ScreenScrollManager_ScrollY(ssTask->screenScrollMgr, start, end, angleIncrement, amplitude, speed, bg, initValue, priority);
    }
}

ScreenCapture *ScreenCapture_Start(ScreenCaptureTemplate *template)
{
    SysTask *task = SysTask_StartAndAllocateParam(ScreenCapture_Update, sizeof(ScreenCapture), 5, template->heapID);
    ScreenCapture *capture = SysTask_GetParam(task);

    capture->template = *template;
    capture->task = task;
    capture->active = 0;
    capture->savedBank = GX_GetBankForLCDC();

    ScreenCapture_Prime(&capture->template);
    SysTask_ExecuteAfterVBlank(ScreenCapture_Activate, capture, 0);

    return capture;
}

void ScreenCapture_End(ScreenCapture **capture, GXDispMode dispMode, GXBGMode bgMode, GXBG0As bg0As)
{
    GX_SetGraphicsMode(dispMode, bgMode, bg0As);
    GX_SetBankForLCDC((*capture)->savedBank);

    switch ((*capture)->template.displayMode) {
    case GX_DISPMODE_VRAM_A:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_A, HW_VRAM_A_SIZE);
        break;
    case GX_DISPMODE_VRAM_B:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_B, HW_VRAM_B_SIZE);
        break;
    case GX_DISPMODE_VRAM_C:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_C, HW_VRAM_C_SIZE);
        break;
    case GX_DISPMODE_VRAM_D:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_D, HW_VRAM_D_SIZE);
        break;
    default:
        GX_SetBankForLCDC(GX_VRAM_LCDC_NONE);
        break;
    }

    SysTask_FinishAndFreeParam((*capture)->task);
    *capture = NULL;
}

static void ScreenCapture_Update(SysTask *unused, void *param)
{
    ScreenCapture *capture = param;

    if (capture->active) {
        GX_SetCapture(capture->template.captureSize, capture->template.captureMode, capture->template.captureSrcA, capture->template.captureSrcB, capture->template.captureDest, capture->template.captureEva, capture->template.captureEvb);
    }
}

static void ScreenCapture_Activate(SysTask *task, void *param)
{
    ScreenCapture *capture = param;

    switch (capture->template.displayMode) {
    case GX_DISPMODE_VRAM_A:
        GX_SetBankForLCDC(GX_VRAM_LCDC_A);
        break;
    case GX_DISPMODE_VRAM_B:
        GX_SetBankForLCDC(GX_VRAM_LCDC_B);
        break;
    case GX_DISPMODE_VRAM_C:
        GX_SetBankForLCDC(GX_VRAM_LCDC_C);
        break;
    case GX_DISPMODE_VRAM_D:
        GX_SetBankForLCDC(GX_VRAM_LCDC_D);
        break;
    default:
        GX_SetBankForLCDC(GX_VRAM_LCDC_NONE);
        break;
    }

    GX_SetGraphicsMode(capture->template.displayMode, capture->template.bgMode, capture->template.bg0As);

    capture->active = 1;
    SysTask_Done(task);
}

static void ScreenCapture_Prime(ScreenCaptureTemplate *template)
{
    switch (template->displayMode) {
    case GX_DISPMODE_VRAM_A:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_A, HW_VRAM_A_SIZE);
        break;
    case GX_DISPMODE_VRAM_B:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_B, HW_VRAM_B_SIZE);
        break;
    case GX_DISPMODE_VRAM_C:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_C, HW_VRAM_C_SIZE);
        break;
    case GX_DISPMODE_VRAM_D:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_D, HW_VRAM_D_SIZE);
        break;
    default:
        break;
    }

    GX_SetCapture(template->captureSize, template->captureMode, template->captureSrcA, template->captureSrcB, template->captureDest, 16, 0);
}
