#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "heap.h"
#include "unk_0201D15C.h"

typedef struct {
    MATHCRC16Table unk_00;
} UnkStruct_021BFB10;

static u16 sub_0201D608(u32 * param0);

fx32 sub_0201D15C (u16 param0)
{
    if (param0 >= 360) {
        return 0;
    }

    {
        fx16 v0;
        fx32 v1;

        v0 = FX_SinIdx(sub_0201D278(param0));
        v1 = FX32_CONST(FX_FX16_TO_F32((v0)));

        return v1;
    }
}

fx32 sub_0201D1D4 (u16 param0)
{
    if (param0 >= 360) {
        return 0;
    }

    {
        fx16 v0;
        fx32 v1;

        v0 = FX_CosIdx(sub_0201D278(param0));
        v1 = FX32_CONST(FX_FX16_TO_F32((v0)));

        return v1;
    }
}

fx32 sub_0201D250 (u16 param0)
{
    param0 %= 360;
    return sub_0201D15C(param0);
}

fx32 sub_0201D264 (u16 param0)
{
    param0 %= 360;
    return sub_0201D1D4(param0);
}

u16 sub_0201D278 (u16 param0)
{
    if (param0 >= 360) {
        return 0;
    }

    return FX_DEG_TO_IDX(param0 * FX32_ONE);
}

u16 sub_0201D2A4 (u16 param0)
{
    param0 %= 360;
    return sub_0201D278(param0);
}

fx32 sub_0201D2B8 (fx32 param0)
{
    u16 v0 = param0 >> FX32_SHIFT;
    return sub_0201D250(v0);
}

fx32 sub_0201D2C4 (fx32 param0)
{
    u16 v0 = param0 >> FX32_SHIFT;
    return sub_0201D264(v0);
}

u32 Unk_021BFB14;

u32 sub_0201D2D0 (void)
{
    return Unk_021BFB14;
}

void sub_0201D2DC (u32 param0)
{
    Unk_021BFB14 = param0;
}

u16 sub_0201D2E8 (void)
{
    Unk_021BFB14 = Unk_021BFB14 * 1103515245L + 24691;
    return (u16)(Unk_021BFB14 / 65536L);
}

u32 sub_0201D30C (u32 param0)
{
    return param0 * 1812433253L + 1;
}

static u32 Unk_021BFB18[624];
static int Unk_02100834 = 624 + 1;
static u32 Unk_02100838[2] = {0x0UL, 0x9908b0dfUL};

void sub_0201D318 (u32 param0)
{
    Unk_021BFB18[0] = param0 & 0xffffffff;

    for (Unk_02100834 = 1; Unk_02100834 < 624; Unk_02100834++) {
        Unk_021BFB18[Unk_02100834] = (1812433253UL * (Unk_021BFB18[Unk_02100834 - 1] ^ (Unk_021BFB18[Unk_02100834 - 1] >> 30)) + Unk_02100834);
        Unk_021BFB18[Unk_02100834] &= 0xffffffff;
    }
}

u32 sub_0201D35C (void)
{
    u32 v0;

    if (Unk_02100834 >= 624) {
        int v1;

        if (Unk_02100834 == 624 + 1) {
            sub_0201D318(5489UL);
        }

        for (v1 = 0; v1 < 624 - 397; v1++) {
            v0 = (Unk_021BFB18[v1] & 0x80000000UL) | (Unk_021BFB18[v1 + 1] & 0x7fffffffUL);
            Unk_021BFB18[v1] = Unk_021BFB18[v1 + 397] ^ (v0 >> 1) ^ Unk_02100838[v0 & 0x1UL];
        }

        for (; v1 < 624 - 1; v1++) {
            v0 = (Unk_021BFB18[v1] & 0x80000000UL) | (Unk_021BFB18[v1 + 1] & 0x7fffffffUL);
            Unk_021BFB18[v1] = Unk_021BFB18[v1 + (397 - 624)] ^ (v0 >> 1) ^ Unk_02100838[v0 & 0x1UL];
        }

        v0 = (Unk_021BFB18[624 - 1] & 0x80000000UL) | (Unk_021BFB18[0] & 0x7fffffffUL);

        Unk_021BFB18[624 - 1] = Unk_021BFB18[397 - 1] ^ (v0 >> 1) ^ Unk_02100838[v0 & 0x1UL];
        Unk_02100834 = 0;
    }

    v0 = Unk_021BFB18[Unk_02100834++];

    v0 ^= (v0 >> 11);
    v0 ^= (v0 << 7) & 0x9d2c5680UL;
    v0 ^= (v0 << 15) & 0xefc60000UL;
    v0 ^= (v0 >> 18);

    return v0;
}

void sub_0201D470 (MtxFx22 * param0, u16 param1, fx32 param2, fx32 param3, u8 param4)
{
    if (param4 == 1) {
        param1 = (u16)((u32)(0xffff * param1) >> 8);
    } else if (param4 == 2) {
        param1 = (u16)((u32)(0xffff * param1) / 360);
    }

    MTX_Rot22(param0, FX_SinIdx(param1), FX_CosIdx(param1));
    MTX_ScaleApply22(param0, param0, param2, param3);
}

static inline void inline_0201D4CC (const VecFx32 * param0, const VecFx32 * param1, VecFx32 * param2)
{
    param2->x = 0;
    param2->y = 0;
    param2->z = FX_Mul(param0->x, param1->y) - FX_Mul(param1->x, param0->y);
}

s32 sub_0201D4CC (s32 param0, s32 param1, s32 param2, s32 param3, u32 param4)
{
    VecFx32 v0, v1, v2, v3;
    fx32 v4;
    fx32 v5;
    s32 v6;

    VEC_Set(&v0, param0 << FX32_SHIFT, param1 << FX32_SHIFT, 0);
    VEC_Set(&v1, param2 << FX32_SHIFT, param3 << FX32_SHIFT, 0);
    inline_0201D4CC(&v0, &v1, &v3);

    v4 = v3.x + v3.y + v3.z;

    VEC_Set(&v0, param1 << FX32_SHIFT, param0 << FX32_SHIFT, 0);
    VEC_Normalize(&v0, &v2);
    VEC_Set(&v0, param0 << FX32_SHIFT, param1 << FX32_SHIFT, 0);
    VEC_Set(&v1, param2 << FX32_SHIFT, param3 << FX32_SHIFT, 0);
    VEC_Subtract(&v1, &v0, &v3);

    v5 = VEC_DotProduct(&v2, &v3);
    v6 = v5 >> FX32_SHIFT;
    v6 = MATH_IAbs(v6);

    if (v4 <= 0) {
        v6 *= -1;
    }

    return v6;
}

s32 sub_0201D580 (u16 param0, s32 param1)
{
    s32 v0;

    v0 = FX_Mul((2 * param0) << FX32_SHIFT, FX32_CONST(3.140f)) >> FX32_SHIFT;
    return (s32)((param1 * 0xffff) / v0);
}

u32 sub_0201D5B8 (const void * param0, u32 param1)
{
    u32 v0, v1;

    v0 = 0;

    for (v1 = 0; v1 < param1; v1++) {
        v0 += ((const u8 *)param0)[v1];
    }

    return v0;
}

void sub_0201D5D4 (void * param0, u32 param1, u32 param2)
{
    int v0;
    u16 * v1 = (u16 *)param0;

    for (v0 = 0; v0 < param1 / 2; v0++) {
        v1[v0] ^= sub_0201D608(&param2);
    }
}

void sub_0201D600 (void * param0, u32 param1, u32 param2)
{
    sub_0201D5D4(param0, param1, param2);
}

static u16 sub_0201D608 (u32 * param0)
{
    param0[0] = param0[0] * 1103515245L + 24691;
    return (u16)(param0[0] / 65536L);
}

static UnkStruct_021BFB10 * Unk_021BFB10 = NULL;

u16 sub_0201D628 (const void * param0, u32 param1)
{
    return MATH_CalcCRC16CCITT(&Unk_021BFB10->unk_00, param0, param1);
}

void sub_0201D640 (int param0)
{
    GF_ASSERT(Unk_021BFB10 == NULL);

    Unk_021BFB10 = AllocFromHeap(param0, sizeof(UnkStruct_021BFB10));
    MATH_CRC16CCITTInitTable(&Unk_021BFB10->unk_00);
}
