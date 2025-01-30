#include "unk_0201E3BC.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

u32 CalcDistance2D(s32 x0, s32 y0, s32 x1, s32 y1)
{

    s32 deltaX = x0 - x1;
    s32 deltaY = y0 - y1;

    return FX_Sqrt(((deltaX * deltaX) + (deltaY * deltaY)) << FX32_SHIFT) >> FX32_SHIFT;
}
