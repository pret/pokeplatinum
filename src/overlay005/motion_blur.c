#include "overlay005/motion_blur.h"

#include <nitro.h>
#include <string.h>

#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0200679C.h"

#define MOTION_BLUR_INIT_BLEND_COEFF_A 16
#define MOTION_BLUR_INIT_BLEND_COEFF_B 0

static void MotionBlur_VBlankInit(SysTask *task, void *param);
static void MotionBlur_SetCapture(SysTask *task, void *param);
static void MotionBlur_Init(MotionBlurParams *params);

MotionBlur *MotionBlur_New(MotionBlurParams *params) {
    SysTask *task = SysTask_StartAndAllocateParam(MotionBlur_SetCapture, sizeof(MotionBlur), 5, params->heapID);
    MotionBlur *motionBlur = SysTask_GetParam(task);

    motionBlur->params = *params;
    motionBlur->task = task;
    motionBlur->initialized = FALSE;
    motionBlur->lcdcVRamBank = GX_GetBankForLCDC();

    MotionBlur_Init(&motionBlur->params);
    SysTask_ExecuteAfterVBlank(MotionBlur_VBlankInit, motionBlur, 0);

    return motionBlur;
}

void MotionBlur_Delete(MotionBlur **motionBlur, GXDispMode displayMode, GXBGMode bgMode, GXBG0As bg0Mode) {
    GX_SetGraphicsMode(displayMode, bgMode, bg0Mode);
    GX_SetBankForLCDC((*motionBlur)->lcdcVRamBank);

    switch ((*motionBlur)->params.displayMode) {
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

    SysTask_FinishAndFreeParam((*motionBlur)->task);
    *motionBlur = NULL;
}

static void MotionBlur_SetCapture(SysTask *task, void *param) {
    MotionBlur *motionBlur = param;

    if (motionBlur->initialized) {
        GX_SetCapture(
            motionBlur->params.captureSize,
            motionBlur->params.captureMode,
            motionBlur->params.captureSourceA,
            motionBlur->params.captureSourceB,
            motionBlur->params.captureDestination,
            motionBlur->params.blendCoeffA,
            motionBlur->params.blendCoeffB);
    }
}

static void MotionBlur_VBlankInit(SysTask *task, void *param) {
    MotionBlur *motionBlur = (MotionBlur *)param;

    switch (motionBlur->params.displayMode) {
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

    GX_SetGraphicsMode(motionBlur->params.displayMode, motionBlur->params.bgMode, motionBlur->params.bg0Mode);
    motionBlur->initialized = TRUE;
    SysTask_Done(task);
}

static void MotionBlur_Init(MotionBlurParams *params) {
    switch (params->displayMode) {
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

    GX_SetCapture(
        params->captureSize,
        params->captureMode,
        params->captureSourceA,
        params->captureSourceB,
        params->captureDestination,
        MOTION_BLUR_INIT_BLEND_COEFF_A,
        MOTION_BLUR_INIT_BLEND_COEFF_B);
}
