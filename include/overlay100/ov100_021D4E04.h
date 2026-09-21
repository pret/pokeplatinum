#ifndef POKEPLATINUM_OV100_021D4E04_H
#define POKEPLATINUM_OV100_021D4E04_H

#include <nitro/gx.h>

#include "overlay100/struct_ov100_021D4E3C.h"
#include "overlay100/struct_ov100_021D4EBC.h"
#include "overlay100/struct_ov100_021D4F9C_decl.h"

void ScreenScrollTask_Init(ScreenScrollTask *ssTask, u32 heapID);
void ScreenScrollTask_Free(ScreenScrollTask *ssTask);
void ScreenScrollTask_Scroll(ScreenScrollTask *ssTask, u8 start, u8 end, u16 angleIncrement, fx32 amplitude, s16 speed, u32 bg, u32 initValue, u32 priority, int axis);
ScreenCapture *ScreenCapture_Start(ScreenCaptureTemplate *template);
void ScreenCapture_End(ScreenCapture **capture, GXDispMode dispMode, GXBGMode bgMode, GXBG0As bg0As);

#endif // POKEPLATINUM_OV100_021D4E04_H
