#include <nitro.h>
#include <string.h>

#include "unk_02098988.h"

static u32 Unk_02100D94 = 75;
static u32 Unk_02100D90 = 707;
static u32 Unk_02100D98 = 709;

void sub_02098988 (u32 param0)
{
    if (param0 == 0) {
        Unk_02100D94 = 194;
        Unk_02100D90 = 708;
        Unk_02100D98 = 710;
    } else {
        Unk_02100D94 = 75;
        Unk_02100D90 = 707;
        Unk_02100D98 = 709;
    }
}

u32 sub_020989B8 (void)
{
    return Unk_02100D94;
}

u32 sub_020989C4 (void)
{
    return Unk_02100D90;
}

u32 sub_020989D0 (void)
{
    return Unk_02100D98;
}
