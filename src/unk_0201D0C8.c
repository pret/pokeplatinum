#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "unk_0201D0C8.h"

u16 * sub_0201D0C8 (const u16 * param0)
{
    GF_ASSERT(*param0 == 0xfffe);

    if (*param0 == 0xfffe) {
        u32 v0;

        param0 += 2;
        v0 = *param0++;
        param0 += v0;
    }

    return (u16 *)param0;
}

u32 sub_0201D0F0 (const u16 * param0)
{
    GF_ASSERT(*param0 == 0xfffe);
    return *(param0 + 1);
}

BOOL sub_0201D108 (const u16 * param0)
{
    u32 v0 = sub_0201D0F0(param0);

    if (((v0 & 0xff00) == 0x100) || ((v0 & 0xff00) == 0x600) || ((v0 & 0xff00) == 0x500)) {
        return 1;
    }

    return 0;
}

u32 sub_0201D134 (const u16 * param0, u32 param1)
{
    GF_ASSERT(*param0 == 0xfffe);

    {
        u32 v0;

        param0 += 2;
        v0 = *param0++;

        GF_ASSERT(param1 < v0);

        return param0[param1];
    }
}
