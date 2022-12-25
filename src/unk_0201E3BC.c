#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "unk_0201E3BC.h"

u32 sub_0201E3BC (s32 param0, s32 param1, s32 param2, s32 param3)
{
    s32 v0, v1;
    u32 v2;

    v0 = param0 - param2;
    v1 = param1 - param3;
    v2 = FX_Sqrt(((v0 * v0) + (v1 * v1)) << FX32_SHIFT) >> FX32_SHIFT;

    return v2;
}
