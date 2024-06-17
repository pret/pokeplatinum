#ifndef POKEPLATINUM_OV5_021E2098_H
#define POKEPLATINUM_OV5_021E2098_H

#include <nitro/gx.h>
#include "struct_decls/sys_task.h"

typedef struct MotionBlurParams {
    GXDispMode unk_00;
    GXBGMode unk_04;
    GXBG0As unk_08;
    GXCaptureSize unk_0C;
    GXCaptureMode unk_10;
    GXCaptureSrcA unk_14;
    GXCaptureSrcB unk_18;
    GXCaptureDest unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
} MotionBlurParams;

typedef struct MotionBlur {
    GXVRamLCDC unk_00;
    MotionBlurParams unk_04;
    BOOL unk_30;
    SysTask * unk_34;
} MotionBlur;

MotionBlur * ov5_021E2098(MotionBlurParams * param0);
void ov5_021E20E8(MotionBlur ** param0, GXDispMode param1, GXBGMode param2, GXBG0As param3);

#endif // POKEPLATINUM_OV5_021E2098_H
