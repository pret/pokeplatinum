#include "unk_02099D44.h"

#include <nitro.h>
#include <string.h>

static int Unk_02100D9C = 4294967295;
static u8 Unk_021C0A34[12288];

void sub_02099D44(void)
{
    Unk_02100D9C = 4294967295;
}

void sub_02099D54(u32 param0, const void *param1, u32 param2)
{
    if (param2 < 12288) {
        MI_CpuCopy32(param1, Unk_021C0A34, param2);
        Unk_02100D9C = param0;
    } else {
        GF_ASSERT(0);
    }
}

BOOL sub_02099D7C(u32 param0, void *param1, u32 param2)
{
    if (param2 < 12288) {
        if (param0 == Unk_02100D9C) {
            MI_CpuCopy32(Unk_021C0A34, param1, param2);
            return 1;
        }
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

void sub_02099DA8(u32 param0, const void *param1, u32 param2)
{
    if (param2 < 12288) {
        MI_CpuCopyFast(param1, Unk_021C0A34, param2);
        Unk_02100D9C = param0;
    } else {
        GF_ASSERT(0);
    }
}

BOOL sub_02099DD0(u32 param0, void *param1, u32 param2)
{
    if (param2 < 12288) {
        if (param0 == Unk_02100D9C) {
            MI_CpuCopyFast(Unk_021C0A34, param1, param2);
            return 1;
        }
    } else {
        GF_ASSERT(0);
    }

    return 0;
}
