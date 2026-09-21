#ifndef POKEPLATINUM_STRUCT_OV100_021D4EBC_H
#define POKEPLATINUM_STRUCT_OV100_021D4EBC_H

#include <nitro/gx.h>

typedef struct ScreenCaptureTemplate {
    GXDispMode displayMode;
    GXBGMode bgMode;
    GXBG0As bg0As;
    GXCaptureSize captureSize;
    GXCaptureMode captureMode;
    GXCaptureSrcA captureSrcA;
    GXCaptureSrcB captureSrcB;
    GXCaptureDest captureDest;
    int captureEva;
    int captureEvb;
    int heapID;
} ScreenCaptureTemplate;

#endif // POKEPLATINUM_STRUCT_OV100_021D4EBC_H
