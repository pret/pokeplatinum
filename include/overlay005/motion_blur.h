#ifndef POKEPLATINUM_MOTION_BLUR_H
#define POKEPLATINUM_MOTION_BLUR_H

#include <nitro/gx.h>

#include "constants/heap.h"

#include "sys_task_manager.h"

typedef struct MotionBlurParams {
    GXDispMode displayMode;
    GXBGMode bgMode;
    GXBG0As bg0Mode;
    GXCaptureSize captureSize;
    GXCaptureMode captureMode;
    GXCaptureSrcA captureSourceA;
    GXCaptureSrcB captureSourceB;
    GXCaptureDest captureDestination;
    int blendCoeffA;
    int blendCoeffB;
    enum HeapId heapID;
} MotionBlurParams;

typedef struct MotionBlur {
    GXVRamLCDC lcdcVRamBank;
    MotionBlurParams params;
    BOOL initialized;
    SysTask *task;
} MotionBlur;

MotionBlur *MotionBlur_New(MotionBlurParams *params);
void MotionBlur_Delete(MotionBlur **motionBlur, GXDispMode displayMode, GXBGMode bgMode, GXBG0As bg0Mode);

#endif // POKEPLATINUM_MOTION_BLUR_H
