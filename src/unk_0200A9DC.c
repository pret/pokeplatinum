#include "unk_0200A9DC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0200A9DC.h"

typedef struct {
    UnkStruct_0200A9DC unk_00;
    s8 unk_10;
    s16 unk_12;
    s16 unk_14;
    u16 unk_16;
    u16 unk_18;
    s16 unk_1A;
    BOOL unk_1C;
} UnkStruct_021BF454;

static void sub_0200AA78(UnkStruct_021BF454 *param0, const u8 param1, const s16 param2, const s16 param3, const int param4, const u32 param5);

static UnkStruct_021BF454 Unk_021BF454;
static UnkStruct_021BF454 Unk_021BF434;

static void sub_0200A9DC(UnkStruct_021BF454 *param0)
{
    UnkStruct_0200A9DC *v0;
    BOOL v1;

    v1 = 0;
    v0 = &param0->unk_00;

    if ((param0->unk_1A + param0->unk_10 * param0->unk_14 != v0->unk_0A) && (param0->unk_1A != v0->unk_0A)) {
        param0->unk_1A += param0->unk_10 * param0->unk_14;
        param0->unk_18 += param0->unk_16;

        if (param0->unk_18 >= v0->unk_08) {
            param0->unk_1A += param0->unk_10;

            if (param0->unk_1A != v0->unk_0A) {
                param0->unk_18 -= v0->unk_08;
            } else {
                v1 = 1;
            }
        }
    } else {
        param0->unk_1A = v0->unk_0A;
        v1 = 1;
    }

    if (v0->unk_04 & 1) {
        G2_SetBlendBrightness(v0->unk_00, param0->unk_1A);
    } else if (v0->unk_04 & 2) {
        G2S_SetBlendBrightness(v0->unk_00, param0->unk_1A);
    }

    if (v1 == 1) {
        param0->unk_1C = 0;
    }
}

static void sub_0200AA78(UnkStruct_021BF454 *param0, const u8 param1, const s16 param2, const s16 param3, const int param4, const u32 param5)
{
    UnkStruct_0200A9DC *v0;

    GF_ASSERT(param0->unk_1C == 0);
    param0->unk_1C = 1;

    v0 = &param0->unk_00;

    v0->unk_00 = (u8)param4;
    v0->unk_04 = (u8)param5;
    v0->unk_08 = param1;
    v0->unk_0A = param2;

    param0->unk_1A = param3;
    param0->unk_12 = param3 - param2;

    if (param0->unk_12 > 0) {
        param0->unk_10 = -1;
    } else {
        param0->unk_10 = 1;
        param0->unk_12 *= -1;
    }

    param0->unk_14 = param0->unk_12 / param1;
    param0->unk_16 = param0->unk_12 % param1;
    param0->unk_18 = 0;
}

void sub_0200AAE0(const u8 param0, const s16 param1, const s16 param2, const int param3, const u32 param4)
{
    UnkStruct_021BF454 *v0;

    if (param0 == 0) {
        return;
    }

    if (param4 & 1) {
        G2_SetBlendBrightness(param3, param2);
        v0 = &Unk_021BF454;
        sub_0200AA78(v0, param0, param1, param2, param3, 1);
    }

    if (param4 & 2) {
        G2S_SetBlendBrightness(param3, param2);
        v0 = &Unk_021BF434;
        sub_0200AA78(v0, param0, param1, param2, param3, 2);
    }
}

void sub_0200AB4C(const s16 param0, const int param1, const u32 param2)
{
    if (param2 & 1) {
        G2_SetBlendBrightness(param1, param0);
    }

    if (param2 & 2) {
        G2S_SetBlendBrightness(param1, param0);
    }

    sub_0200ABB0(param2);
}

void sub_0200AB84(void)
{
    MI_CpuClear8(&Unk_021BF454, sizeof(UnkStruct_021BF454));
    MI_CpuClear8(&Unk_021BF434, sizeof(UnkStruct_021BF454));

    Unk_021BF454.unk_1C = 0;
    Unk_021BF434.unk_1C = 0;
}

void sub_0200ABB0(const u32 param0)
{
    if (param0 & 1) {
        MI_CpuClear8(&Unk_021BF454, sizeof(UnkStruct_021BF454));
        Unk_021BF454.unk_1C = 0;
    }

    if (param0 & 2) {
        MI_CpuClear8(&Unk_021BF434, sizeof(UnkStruct_021BF454));
        Unk_021BF434.unk_1C = 0;
    }
}

void sub_0200ABF0(void)
{
    if (Unk_021BF454.unk_1C) {
        sub_0200A9DC(&Unk_021BF454);
    }

    if (Unk_021BF434.unk_1C) {
        sub_0200A9DC(&Unk_021BF434);
    }
}

BOOL sub_0200AC1C(u32 param0)
{
    if (param0 == 3) {
        if ((Unk_021BF454.unk_1C == 0) && (Unk_021BF434.unk_1C == 0)) {
            return 1;
        }
    } else if (param0 == 1) {
        if (Unk_021BF454.unk_1C == 0) {
            return 1;
        }
    } else if (param0 == 2) {
        if (Unk_021BF434.unk_1C == 0) {
            return 1;
        }
    }

    return 0;
}
