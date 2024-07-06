#include "unk_0201D15C.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "inlines.h"

typedef struct {
    MATHCRC16Table unk_00;
} UnkStruct_021BFB10;

static u16 LCRNG_NextFrom(u32 *seed);

fx32 sub_0201D15C(u16 param0)
{
    if (param0 >= 360) {
        return 0;
    }

    {
        fx16 v0;
        fx32 v1;

        v0 = FX_SinIdx(sub_0201D278(param0));
        v1 = FX32_CONST(FX_FX16_TO_F32(v0));

        return v1;
    }
}

fx32 sub_0201D1D4(u16 param0)
{
    if (param0 >= 360) {
        return 0;
    }

    {
        fx16 v0;
        fx32 v1;

        v0 = FX_CosIdx(sub_0201D278(param0));
        v1 = FX32_CONST(FX_FX16_TO_F32(v0));

        return v1;
    }
}

fx32 sub_0201D250(u16 param0)
{
    param0 %= 360;
    return sub_0201D15C(param0);
}

fx32 sub_0201D264(u16 param0)
{
    param0 %= 360;
    return sub_0201D1D4(param0);
}

u16 sub_0201D278(u16 param0)
{
    if (param0 >= 360) {
        return 0;
    }

    return FX_DEG_TO_IDX(param0 * FX32_ONE);
}

u16 sub_0201D2A4(u16 param0)
{
    param0 %= 360;
    return sub_0201D278(param0);
}

fx32 sub_0201D2B8(fx32 param0)
{
    u16 v0 = param0 >> FX32_SHIFT;
    return sub_0201D250(v0);
}

fx32 sub_0201D2C4(fx32 param0)
{
    u16 v0 = param0 >> FX32_SHIFT;
    return sub_0201D264(v0);
}

u32 gLCRNG_State;

u32 LCRNG_GetSeed(void)
{
    return gLCRNG_State;
}

void LCRNG_SetSeed(u32 seed)
{
    gLCRNG_State = seed;
}

u16 LCRNG_Next(void)
{
    gLCRNG_State = gLCRNG_State * 1103515245L + 24691;
    return (u16)(gLCRNG_State / 65536L);
}

u32 ARNG_Next(u32 seed)
{
    return seed * 1812433253L + 1;
}

static u32 sMTRNG_State[624];
static int sMTRNG_Size = 624 + 1;
static u32 sMTRNG_Xor[2] = { 0x0UL, 0x9908b0dfUL };

void MTRNG_SetSeed(u32 seed)
{
    sMTRNG_State[0] = seed & 0xffffffff;

    for (sMTRNG_Size = 1; sMTRNG_Size < 624; sMTRNG_Size++) {
        sMTRNG_State[sMTRNG_Size] = (1812433253UL * (sMTRNG_State[sMTRNG_Size - 1] ^ (sMTRNG_State[sMTRNG_Size - 1] >> 30)) + sMTRNG_Size);
        sMTRNG_State[sMTRNG_Size] &= 0xffffffff;
    }
}

u32 MTRNG_Next(void)
{
    u32 result;

    if (sMTRNG_Size >= 624) {
        int i;

        if (sMTRNG_Size == 624 + 1) {
            MTRNG_SetSeed(5489UL);
        }

        for (i = 0; i < 624 - 397; i++) {
            result = (sMTRNG_State[i] & 0x80000000UL) | (sMTRNG_State[i + 1] & 0x7fffffffUL);
            sMTRNG_State[i] = sMTRNG_State[i + 397] ^ (result >> 1) ^ sMTRNG_Xor[result & 0x1UL];
        }

        for (; i < 624 - 1; i++) {
            result = (sMTRNG_State[i] & 0x80000000UL) | (sMTRNG_State[i + 1] & 0x7fffffffUL);
            sMTRNG_State[i] = sMTRNG_State[i + (397 - 624)] ^ (result >> 1) ^ sMTRNG_Xor[result & 0x1UL];
        }

        result = (sMTRNG_State[624 - 1] & 0x80000000UL) | (sMTRNG_State[0] & 0x7fffffffUL);

        sMTRNG_State[624 - 1] = sMTRNG_State[397 - 1] ^ (result >> 1) ^ sMTRNG_Xor[result & 0x1UL];
        sMTRNG_Size = 0;
    }

    result = sMTRNG_State[sMTRNG_Size++];

    result ^= (result >> 11);
    result ^= (result << 7) & 0x9d2c5680UL;
    result ^= (result << 15) & 0xefc60000UL;
    result ^= (result >> 18);

    return result;
}

void sub_0201D470(MtxFx22 *param0, u16 param1, fx32 param2, fx32 param3, u8 param4)
{
    if (param4 == 1) {
        param1 = (u16)((u32)(0xffff * param1) >> 8);
    } else if (param4 == 2) {
        param1 = (u16)((u32)(0xffff * param1) / 360);
    }

    MTX_Rot22(param0, FX_SinIdx(param1), FX_CosIdx(param1));
    MTX_ScaleApply22(param0, param0, param2, param3);
}

static inline void inline_0201D4CC(const VecFx32 *param0, const VecFx32 *param1, VecFx32 *param2)
{
    param2->x = 0;
    param2->y = 0;
    param2->z = FX_Mul(param0->x, param1->y) - FX_Mul(param1->x, param0->y);
}

s32 sub_0201D4CC(s32 param0, s32 param1, s32 param2, s32 param3, u32 param4)
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

s32 sub_0201D580(u16 param0, s32 param1)
{
    s32 v0;

    v0 = FX_Mul((2 * param0) << FX32_SHIFT, FX32_CONST(3.140f)) >> FX32_SHIFT;
    return (s32)((param1 * 0xffff) / v0);
}

u32 SumBytes(const void *data, u32 size)
{
    u32 sum = 0;
    for (int i = 0; i < size; i++) {
        sum += ((const u8 *)data)[i];
    }

    return sum;
}

void EncodeData(void *data, u32 size, u32 seed)
{
    u16 *halfWords = (u16 *)data;
    for (int i = 0; i < size / 2; i++) {
        halfWords[i] ^= LCRNG_NextFrom(&seed);
    }
}

void DecodeData(void *data, u32 size, u32 seed)
{
    EncodeData(data, size, seed);
}

static u16 LCRNG_NextFrom(u32 *seed)
{
    seed[0] = seed[0] * 1103515245L + 24691;
    return (u16)(seed[0] / 65536L);
}

static UnkStruct_021BFB10 *Unk_021BFB10 = NULL;

u16 sub_0201D628(const void *param0, u32 param1)
{
    return MATH_CalcCRC16CCITT(&Unk_021BFB10->unk_00, param0, param1);
}

void sub_0201D640(int param0)
{
    GF_ASSERT(Unk_021BFB10 == NULL);

    Unk_021BFB10 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_021BFB10));
    MATH_CRC16CCITTInitTable(&Unk_021BFB10->unk_00);
}
