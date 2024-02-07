#include <nitro.h>
#include <string.h>

#include "unk_020021B0.h"

static const u16 Unk_020E4C88[] = {
    0xA2,
    0xA3,
    0xA4,
    0xA5,
    0xA6,
    0xA7,
    0xA8,
    0xA9,
    0xAA,
    0xAB,
    0xAC,
    0xAD,
    0xAE,
    0xaf,
    0xB0,
    0xB1
};

static const int Unk_020E4CA8[] = {
    1,
    10,
    100,
    1000,
    10000,
    100000,
    1000000,
    10000000,
    100000000,
    1000000000,
};

u16 * GF_strcpy (u16 * param0, const u16 * param1)
{
    while (*param1 != 0xffff) {
        *param0 = *param1;
        param0++;
        param1++;
    }

    *param0 = 0xffff;
    return param0;
}

u16 * sub_020021D0 (u16 * param0, const u16 * param1, u32 param2)
{
    u32 v0;

    for (v0 = 0; v0 < param2; v0++) {
        param0[v0] = param1[v0];
    }

    return &param0[param2];
}

u32 GF_strlen (const u16 * param0)
{
    u32 v0 = 0;

    while (param0[v0] != 0xffff) {
        v0++;
    }

    return v0;
}

BOOL GF_strcmp (const u16 * param0, const u16 * param1)
{
    while (*param0 == *param1) {
        if (*param0 == 0xffff) {
            return 0;
        }

        param0++;
        param1++;
    }

    return 1;
}

BOOL GF_strncmp (const u16 * param0, const u16 * param1, u32 param2)
{
    while (*param0 == *param1) {
        if (param2 == 0) {
            return 0;
        }

        if ((*param0 == 0xffff) && (*param1 == 0xffff)) {
            return 0;
        }

        param2--;
        param0++;
        param1++;
    }

    return 1;
}

u16 * sub_02002278 (u16 * param0, u16 param1, u32 param2)
{
    u32 v0;

    for (v0 = 0; v0 < param2; v0++) {
        param0[v0] = param1;
    }

    return &param0[v0];
}

u16 * sub_02002294 (u16 * param0, u32 param1)
{
    return sub_02002278(param0, 0xffff, param1);
}

u16 * sub_020022A4 (u16 * param0, s32 param1, u32 param2, u32 param3)
{
    u32 v0;
    u32 v1;
    u32 v2;

    for (v0 = Unk_020E4CA8[param3 - 1]; v0 > 0; v0 /= 10) {
        v2 = (u16)(param1 / v0);
        v1 = (u32)(param1 - (v0 * v2));

        if (param2 == 2) {
            *param0 = (u16)(v2 >= 10 ? 0xe2 : Unk_020E4C88[v2]);
            param0++;
        } else if ((v2 != 0) || (v0 == 1)) {
            param2 = 2;
            *param0 = (u16)(v2 >= 10 ? 0xe2 : Unk_020E4C88[v2]);
            param0++;
        } else if (param2 == 1) {
            *param0 = 0x1;
            param0++;
        }

        param1 = v1;
    }

    *param0 = 0xffff;

    return param0;
}
