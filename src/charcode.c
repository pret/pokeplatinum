#include "charcode.h"

u16 * CharCode_SkipFormatArg (const u16 * param0)
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

u32 CharCode_FormatArgType (const u16 * param0)
{
    GF_ASSERT(*param0 == 0xfffe);
    return *(param0 + 1);
}

BOOL CharCode_IsFormatArg (const u16 * param0)
{
    u32 v0 = CharCode_FormatArgType(param0);

    if (((v0 & 0xff00) == 0x100) || ((v0 & 0xff00) == 0x600) || ((v0 & 0xff00) == 0x500)) {
        return 1;
    }

    return 0;
}

u32 CharCode_FormatArgParam (const u16 * param0, u32 param1)
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

