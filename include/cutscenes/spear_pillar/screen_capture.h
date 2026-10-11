#ifndef POKEPLATINUM_SPEAR_PILLAR_SCREEN_CAPTURE_H
#define POKEPLATINUM_SPEAR_PILLAR_SCREEN_CAPTURE_H

#include "cutscenes/spear_pillar/structs.h"

void ScreenScrollTask_Init(ScreenScrollTask *ssTask, u32 heapID);
void ScreenScrollTask_Free(ScreenScrollTask *ssTask);
void ScreenScrollTask_Scroll(ScreenScrollTask *ssTask, u8 start, u8 end, u16 angleIncrement, fx32 amplitude, s16 speed, u32 bg, u32 initValue, u32 priority, int axis);
ScreenCapture *ScreenCapture_Start(ScreenCaptureTemplate *template);
void ScreenCapture_End(ScreenCapture **capture, GXDispMode dispMode, GXBGMode bgMode, GXBG0As bg0As);

#endif // POKEPLATINUM_SPEAR_PILLAR_SCREEN_CAPTURE_H
