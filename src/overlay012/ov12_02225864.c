#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02013B10_decl.h"
#include "struct_decls/struct_02013BE0_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay012/struct_ov12_02225D50.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay012/struct_ov12_02226274.h"
#include "overlay012/funcptr_ov12_02226274.h"
#include "overlay012/struct_ov12_02226454.h"

#include "unk_02002F38.h"
#include "unk_0200762C.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_02013B10.h"
#include "heap.h"
#include "unk_0201F834.h"
#include "unk_020218BC.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"

typedef struct {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov12_02239E34;

typedef void (* UnkFuncPtr_ov12_02226490)(void *);

typedef struct {
    SysTask * unk_00;
    SysTask * unk_04;
    BOOL unk_08;
    BOOL unk_0C;
    UnkFuncPtr_ov12_02226490 unk_10;
    UnkFuncPtr_ov12_02226490 unk_14;
    void * unk_18;
} UnkStruct_ov12_02226490;

typedef struct UnkStruct_ov12_02226504_t {
    UnkStruct_ov12_02226490 unk_00;
    UnkStruct_02013B10 * unk_1C;
    u32 unk_20[192];
    u32 unk_320[192];
    u32 unk_620;
} UnkStruct_ov12_02226504;

typedef struct UnkStruct_ov12_0222660C_t {
    UnkStruct_ov12_02226490 unk_00;
    UnkStruct_02013BE0 * unk_1C;
} UnkStruct_ov12_0222660C;

typedef struct UnkStruct_ov12_022267D4_t {
    BOOL unk_00;
    SysTask * unk_04;
    int unk_08;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    s8 unk_15;
    s8 unk_16;
    s8 unk_17;
    PaletteData * unk_18;
} UnkStruct_ov12_022267D4;

static void ov12_022268DC(u16 * param0, u16 param1);

static const UnkStruct_ov12_02239E34 Unk_ov12_02239E34[][6] = {
    {
        {0x40, 0x70},
        {0xC0, 0x30},
        {0xD8, 0x70},
        {0x50, 0x2A},
        {0x0, 0x0},
        {0x0, 0x0}
    },
    {
        {0x40, 0x70},
        {0xC0, 0x30},
        {0x28, 0x70},
        {0xD8, 0x32},
        {0x50, 0x78},
        {0xB0, 0x2A}
    }
};

void ov12_02225864 (int param0, int param1, s16 * param2, s16 * param3)
{
    if (param2 != NULL) {
        *param2 = Unk_ov12_02239E34[param0][param1].unk_00;
    }

    if (param3 != NULL) {
        *param3 = Unk_ov12_02239E34[param0][param1].unk_02;
    }
}

void ov12_02225898 (UnkStruct_ov12_0221FCDC * param0, int param1, s16 * param2, s16 * param3)
{
    if (ov12_0221FDD4(param0) == 1) {
        ov12_02225864(0, param1 + 2, param2, param3);
    } else {
        if (ov12_02223364(param0) == 1) {
            ov12_02225864(1, param1 - 2, param2, param3);
        } else {
            ov12_02225864(0, param1, param2, param3);
        }
    }
}

s16 ov12_022258E0 (UnkStruct_ov12_0221FCDC * param0, int param1, int param2)
{
    int v0, v1;

    v0 = ov12_02235254(param0, param1);

    if (ov12_02223364(param0) == 1) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    if (ov12_0221FDD4(param0) == 1) {
        v0 += 2;
    }

    switch (param2) {
    case 0:
    case 2:
        return Unk_ov12_02239E34[v1][v0].unk_00;
    case 1:
    case 3:
        return Unk_ov12_02239E34[v1][v0].unk_02;
    }

    GF_ASSERT(0);
    return 0;
}

u8 ov12_02225950 (CellActorData * param0)
{
    return sub_0201FAB4(sub_02021F9C(param0->unk_00), NNS_G2D_VRAM_TYPE_2DMAIN);
}

int ov12_02225964 (UnkStruct_ov12_0221FCDC * param0, int param1)
{
    int v0;
    int v1 = 1;

    v0 = ov12_0223525C(param0, param1);

    if (ov12_0221FDD4(param0)) {
        if (v0 == 0x3) {
            v1 = -1;
        }
    } else {
        if (v0 == 0x4) {
            v1 = -1;
        }
    }

    return v1;
}

int ov12_0222598C (UnkStruct_ov12_0221FCDC * param0, int param1)
{
    int v0;
    int v1 = 1;

    v0 = ov12_0223525C(param0, param1);

    if (v0 == 0x4) {
        v1 = -1;
    }

    return v1;
}

fx32 ov12_022259A0 (fx32 param0, fx32 param1, u32 param2)
{
    fx32 v0;

    v0 = FX_Div((param1 - param0), param2 << FX32_SHIFT);

    return v0;
}

u32 ov12_022259AC (fx32 param0, fx32 param1, fx32 param2)
{
    fx32 v0;
    fx32 v1;

    v0 = FX_Div((param1 - param0), param2);

    v1 = FX_Modf(v0, &v0);

    if (v1) {
        v0 += FX32_ONE;
    }

    v0 = MATH_ABS(v0);

    return v0 >> FX32_SHIFT;
}

void ov12_022259DC (UnkStruct_ov12_02225F6C * param0, CellActorData * param1, s16 param2, s16 param3)
{
    SpriteActor_SetSpritePositionXY(param1, param2 + param0->unk_00, param3 + param0->unk_02);
}

void ov12_022259FC (UnkStruct_ov12_02225F6C * param0, CellActorData * param1)
{
    f32 v0, v1;

    ov12_02225FA4(param0, &v0, &v1);
    sub_0200D6E8(param1, v0, v1);
}

void ov12_02225A18 (UnkStruct_ov12_02225F6C * param0, Sprite * param1, s16 param2, s16 param3)
{
    sub_02007DEC(param1, 0, param2 + param0->unk_00);
    sub_02007DEC(param1, 1, param3 + param0->unk_02);
}

void ov12_02225A3C (UnkStruct_ov12_02225F6C * param0, Sprite * param1)
{
    sub_02007DEC(param1, 12, param0->unk_00);
    sub_02007DEC(param1, 13, param0->unk_02);
}

void ov12_02225A5C (UnkStruct_ov12_02225F6C * param0, u16 param1, u16 param2, u16 param3, u16 param4, fx32 param5, fx32 param6, int param7)
{
    param0->unk_04[0] = param7;
    param0->unk_04[1] = param1;
    param0->unk_04[2] = param5;
    param0->unk_04[3] = param3;
    param0->unk_04[4] = param6;
    param0->unk_04[5] = (param2 - param1) / param7;
    param0->unk_04[6] = (param4 - param3) / param7;
}

void ov12_02225A8C (UnkStruct_ov12_02225F6C * param0, u16 param1, u16 param2, u16 param3, u16 param4, fx32 param5, fx32 param6, u16 param7)
{
    s16 v0;

    GF_ASSERT(param0);

    if (param1 > param2) {
        param7 = -param7;
    }

    v0 = param7;

    param0->unk_04[0] = ov12_022259AC(param1 * FX32_ONE, param2 * FX32_ONE, v0 * FX32_ONE);
    param0->unk_04[1] = param1;
    param0->unk_04[2] = param5;
    param0->unk_04[3] = param3;
    param0->unk_04[4] = param6;
    param0->unk_04[5] = v0;
    param0->unk_04[6] = (param4 - param3) / param0->unk_04[0];
}

BOOL ov12_02225AE0 (UnkStruct_ov12_02225F6C * param0)
{
    fx32 v0, v1;

    GF_ASSERT(param0);

    if (param0->unk_04[0]) {
        param0->unk_04[1] += param0->unk_04[5];
        param0->unk_04[3] += param0->unk_04[6];

        param0->unk_04[1] &= 0xffff;
        param0->unk_04[3] &= 0xffff;

        param0->unk_04[0]--;

        param0->unk_00 = FX_Mul(FX_SinIdx(param0->unk_04[1]), param0->unk_04[2]) >> FX32_SHIFT;
        param0->unk_02 = FX_Mul(FX_CosIdx(param0->unk_04[3]), param0->unk_04[4]) >> FX32_SHIFT;

        return 1;
    }

    return 0;
}

BOOL ov12_02225B78 (UnkStruct_ov12_02225F6C * param0, s16 param1, s16 param2, CellActorData * param3)
{
    if (ov12_02225AE0(param0)) {
        ov12_022259DC(param0, param3, param1, param2);
        return 1;
    }

    return 0;
}

BOOL ov12_02225BA0 (UnkStruct_ov12_02225F6C * param0, s16 param1, s16 param2, Sprite * param3)
{
    if (ov12_02225AE0(param0)) {
        ov12_02225A18(param0, param3, param1, param2);
        return 1;
    }

    return 0;
}

void ov12_02225BC8 (UnkStruct_ov12_02225F6C * param0, s16 param1, s16 param2, s16 param3, s16 param4, u16 param5)
{
    GF_ASSERT(param0);

    param0->unk_00 = param1;
    param0->unk_02 = param3;
    param0->unk_04[0] = param5;
    param0->unk_04[1] = ov12_022259A0(param1 * FX32_ONE, param2 * FX32_ONE, param5);
    param0->unk_04[2] = ov12_022259A0(param3 * FX32_ONE, param4 * FX32_ONE, param5);
    param0->unk_04[3] = param1 * FX32_ONE;
    param0->unk_04[4] = param3 * FX32_ONE;
}

BOOL ov12_02225C14 (UnkStruct_ov12_02225F6C * param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04[0]) {
        param0->unk_04[3] += param0->unk_04[1];
        param0->unk_04[4] += param0->unk_04[2];
        param0->unk_00 = param0->unk_04[3] >> FX32_SHIFT;
        param0->unk_02 = param0->unk_04[4] >> FX32_SHIFT;
        param0->unk_04[0]--;

        return 1;
    }

    return 0;
}

BOOL ov12_02225C50 (UnkStruct_ov12_02225F6C * param0, CellActorData * param1)
{
    if (ov12_02225C14(param0)) {
        ov12_022259DC(param0, param1, 0, 0);
        return 1;
    }

    return 0;
}

BOOL ov12_02225C74 (UnkStruct_ov12_02225F6C * param0, Sprite * param1)
{
    if (ov12_02225C14(param0)) {
        ov12_02225A18(param0, param1, 0, 0);
        return 1;
    }

    return 0;
}

void ov12_02225C98 (UnkStruct_ov12_02225F6C * param0, UnkStruct_ov12_02225F6C * param1, s16 param2, s16 param3, s16 param4, s16 param5, u16 param6, fx32 param7)
{
    ov12_02225BC8(param0, param2, param3, param4, param5, param6);
    param1->unk_00 = 0;
    param1->unk_02 = 0;
    ov12_02225A5C(param1, 0, 0, ((90 * 0xffff) / 360), ((270 * 0xffff) / 360), 0, param7, param6);
}

BOOL ov12_02225CE4 (UnkStruct_ov12_02225F6C * param0, UnkStruct_ov12_02225F6C * param1)
{
    BOOL v0, v1;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    v0 = ov12_02225C14(param0);
    v1 = ov12_02225AE0(param1);

    param0->unk_00 += param1->unk_00;
    param0->unk_02 += param1->unk_02;

    if ((v0 == v1) && (v0 == 0)) {
        return 0;
    }

    return 1;
}

BOOL ov12_02225D2C (UnkStruct_ov12_02225F6C * param0, UnkStruct_ov12_02225F6C * param1, CellActorData * param2)
{
    if (ov12_02225CE4(param0, param1)) {
        ov12_022259DC(param0, param2, 0, 0);
        return 1;
    }

    return 0;
}

void ov12_02225D50 (UnkStruct_ov12_02225D50 * param0, s32 param1, s32 param2, u32 param3)
{
    GF_ASSERT(param0);

    param0->unk_00 = param1;
    param0->unk_04[0] = param3;
    param0->unk_04[1] = ov12_022259A0(param1 * FX32_ONE, param2 * FX32_ONE, param3) >> FX32_SHIFT;
}

void ov12_02225D78 (UnkStruct_ov12_02225D50 * param0, s16 param1, s16 param2, u32 param3)
{
    GF_ASSERT(param0);

    param0->unk_00 = param1;
    param0->unk_04[0] = param3;
    param0->unk_04[1] = ov12_022259A0(param1 * FX32_ONE, param2 * FX32_ONE, param3);
    param0->unk_04[2] = param1 * FX32_ONE;
}

BOOL ov12_02225DA0 (UnkStruct_ov12_02225D50 * param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04[0]) {
        param0->unk_00 += param0->unk_04[1];
        param0->unk_04[0]--;

        return 1;
    }

    return 0;
}

BOOL ov12_02225DC8 (UnkStruct_ov12_02225D50 * param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04[0]) {
        param0->unk_04[2] += param0->unk_04[1];
        param0->unk_00 = param0->unk_04[2] >> FX32_SHIFT;
        param0->unk_04[0]--;

        return 1;
    }

    return 0;
}

void ov12_02225DF4 (UnkStruct_ov12_02225D50 * param0, u16 param1, u16 param2, fx32 param3, u32 param4)
{
    param0->unk_04[0] = param4;
    param0->unk_04[1] = param1;
    param0->unk_04[2] = param3;
    param0->unk_04[3] = (param2 - param1) / param4;
}

BOOL ov12_02225E0C (UnkStruct_ov12_02225D50 * param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04[0]) {
        param0->unk_04[1] += param0->unk_04[3];
        param0->unk_04[1] &= 0xffff;
        param0->unk_04[0]--;
        param0->unk_00 = FX_Mul(FX_CosIdx(param0->unk_04[1]), param0->unk_04[2]) >> FX32_SHIFT;

        return 1;
    }

    return 0;
}

#define SCALE_RATE_PER(p1, p2)  (((p1) * 0x100) / p2)
void ov12_02225E68 (UnkStruct_ov12_02225F6C * param0, s16 param1, s16 param2, s16 param3, u32 param4)
{
    UnkStruct_ov12_02225F6C * v0;

    GF_ASSERT(param0);

    v0 = param0;

    v0->unk_04[0] = param4;
    v0->unk_04[1] = ov12_022259A0(SCALE_RATE_PER(param1, param2) * FX32_ONE, SCALE_RATE_PER(param3, param2) * FX32_ONE, param4);
    v0->unk_00 = SCALE_RATE_PER(param1, param2);
    v0->unk_02 = SCALE_RATE_PER(param1, param2);
    v0->unk_04[3] = v0->unk_00 * FX32_ONE;
    v0->unk_04[4] = v0->unk_02 * FX32_ONE;
}

BOOL ov12_02225EB8 (UnkStruct_ov12_02225F6C * param0)
{
    UnkStruct_ov12_02225F6C * v0;

    GF_ASSERT(param0);

    v0 = param0;

    if (v0->unk_04[0]) {
        v0->unk_04[0]--;
        v0->unk_04[3] += v0->unk_04[1];
        v0->unk_04[4] += v0->unk_04[1];
        v0->unk_00 = (v0->unk_04[3] >> FX32_SHIFT);
        v0->unk_02 = (v0->unk_04[4] >> FX32_SHIFT);

        return 1;
    }

    return 0;
}

void ov12_02225EF0 (UnkStruct_ov12_02225F6C * param0, s16 param1, s16 param2, s16 param3, s16 param4, s16 param5, u32 param6)
{
    UnkStruct_ov12_02225F6C * v0;

    GF_ASSERT(param0);

    v0 = param0;

    v0->unk_04[0] = param6;
    v0->unk_04[1] = ov12_022259A0(SCALE_RATE_PER(param1, param5) * FX32_ONE, SCALE_RATE_PER(param2, param5) * FX32_ONE, param6);
    v0->unk_04[2] = ov12_022259A0(SCALE_RATE_PER(param3, param5) * FX32_ONE, SCALE_RATE_PER(param4, param5) * FX32_ONE, param6);
    v0->unk_00 = SCALE_RATE_PER(param1, param5);
    v0->unk_02 = SCALE_RATE_PER(param3, param5);
    v0->unk_04[3] = v0->unk_00 * FX32_ONE;
    v0->unk_04[4] = v0->unk_02 * FX32_ONE;
}

BOOL ov12_02225F6C (UnkStruct_ov12_02225F6C * param0)
{
    UnkStruct_ov12_02225F6C * v0;

    GF_ASSERT(param0);

    v0 = param0;

    if (v0->unk_04[0]) {
        v0->unk_04[0]--;
        v0->unk_04[3] += v0->unk_04[1];
        v0->unk_04[4] += v0->unk_04[2];
        v0->unk_00 = (v0->unk_04[3] >> FX32_SHIFT);
        v0->unk_02 = (v0->unk_04[4] >> FX32_SHIFT);

        return 1;
    }

    return 0;
}

void ov12_02225FA4 (UnkStruct_ov12_02225F6C * param0, f32 * param1, f32 * param2)
{
    *param1 = (1.0f * param0->unk_00) / 0x100;
    *param2 = (1.0f * param0->unk_02) / 0x100;
}

s16 ov12_02225FD4 (s16 param0, int param1, fx32 param2)
{
    fx32 v0 = (80 - (param1 * 2)) * FX32_ONE;
    fx32 v1 = 0x100 * FX32_ONE;
    fx32 v2;
    fx32 v3;
    fx32 v4;
    s16 v5;

    v3 = FX_Mul(v0, param2);
    v4 = FX_Div(v3, v1);
    v2 = (v0 - v4);

    {
        fx32 v6;
        fx32 v7;

        v7 = FX_Modf(v2, &v6);

        if (v7) {
            v7 += FX32_HALF;
        }

        v2 = v6 + v7;
    }

    v5 = (v2 >> FX32_SHIFT) / 2;

    return v5;
}

void ov12_02226024 (Sprite * param0, s16 param1, s16 param2, fx32 param3, int param4)
{
    s16 v0;
    s16 v1;

    v1 = param1;
    v0 = ov12_02225FD4(param1, param2, param3);

    if (param4 == 1) {
        v0 *= -1;
        v1 = param1 - param2;
    }

    sub_02007DEC(param0, 1, v1 + v0);
}

void ov12_0222605C (CellActorData * param0, s16 param1, s16 param2, fx32 param3, int param4)
{
    s16 v0;
    s16 v1;
    s16 v2;
    s16 v3;

    v1 = param1;
    v0 = ov12_02225FD4(param1, param2, param3);

    if (param4 == 1) {
        v0 *= -1;
        v1 = param1 - param2;
    }

    SpriteActor_GetSpritePositionXY(param0, &v2, &v3);
    SpriteActor_SetSpritePositionXY(param0, v2, v1 + v0);
}

BOOL ov12_022260A8 (UnkStruct_ov12_02225F6C * param0, CellActorData * param1)
{
    if (ov12_02225EB8(param0)) {
        ov12_022259FC(param0, param1);
        return 1;
    }

    return 0;
}

BOOL ov12_022260C8 (UnkStruct_ov12_02225F6C * param0, Sprite * param1)
{
    if (ov12_02225EB8(param0)) {
        ov12_02225A3C(param0, param1);
        return 1;
    }

    return 0;
}

BOOL ov12_022260E8 (UnkStruct_ov12_02225F6C * param0, Sprite * param1)
{
    if (ov12_02225F6C(param0)) {
        ov12_02225A3C(param0, param1);
        return 1;
    }

    return 0;
}

static inline void inline_ov12_02226138 (s16 * param0, s32 * param1, s32 param2)
{
    s32 v0 = *param1;

    *param1 = *param0;

    if (v0 == 0) {
        *param0 = 0;
    } else {
        *param0 = v0 *= -1;
    }
}

void ov12_02226108 (UnkStruct_ov12_02225F6C * param0, s16 param1, s16 param2, u32 param3, u32 param4)
{
    UnkStruct_ov12_02225F6C * v0;

    GF_ASSERT(param0);

    v0 = param0;

    v0->unk_04[0] = param3;
    v0->unk_04[1] = param3;
    v0->unk_04[2] = param4;
    v0->unk_04[3] = 0;
    v0->unk_04[4] = param1;
    v0->unk_04[5] = param2;
    v0->unk_04[6] = param1 * -1;
    v0->unk_04[7] = param2 * -1;
    v0->unk_00 = 0;
    v0->unk_02 = 0;
}

BOOL ov12_02226138 (UnkStruct_ov12_02225F6C * param0)
{
    UnkStruct_ov12_02225F6C * v0;

    GF_ASSERT(param0);

    v0 = param0;

    if (v0->unk_04[2]) {
        v0->unk_04[0]++;

        if (v0->unk_04[0] >= v0->unk_04[1]) {
            v0->unk_04[0] = 0;

            inline_ov12_02226138(&v0->unk_00, &v0->unk_04[6], v0->unk_04[4]);
            inline_ov12_02226138(&v0->unk_02, &v0->unk_04[7], v0->unk_04[5]);

            if ((++v0->unk_04[3]) >= 4) {
                v0->unk_04[3] = 0;
                v0->unk_04[2]--;
            }
        }

        return 1;
    }

    return 0;
}

BOOL ov12_0222619C (UnkStruct_ov12_02225F6C * param0, s16 param1, s16 param2, Sprite * param3)
{
    if (ov12_02226138(param0)) {
        ov12_02225A18(param0, param3, param1, param2);
        return 1;
    }

    return 0;
}

void ov12_022261C4 (UnkStruct_ov12_02226274 * param0, UnkStruct_ov12_02225F6C * param1, UnkFuncPtr_ov12_02226274 param2, s16 param3, s16 param4, u16 param5, u8 param6, u8 param7, CellActorData * param8, CellActorData * param9, CellActorData * param10, CellActorData * param11)
{
    int v0;

    param0->unk_00 = param3;
    param0->unk_02 = param4;
    param0->unk_94 = param2;
    param0->unk_A8 = param5;
    param0->unk_AA = 0;
    param0->unk_AC = param6;
    param0->unk_AD = 0;
    param0->unk_AE = param7;

    for (v0 = 0; v0 < param6; v0++) {
        param0->unk_04[v0] = *param1;
    }

    param0->unk_98[0] = param8;
    param0->unk_98[1] = param9;
    param0->unk_98[2] = param10;
    param0->unk_98[3] = param11;

    for (v0 = 0; v0 < param0->unk_AC; v0++) {
        SpriteActor_EnableObject(param0->unk_98[v0], 0);
    }
}

BOOL ov12_02226274 (UnkStruct_ov12_02226274 * param0)
{
    int v0;
    BOOL v1[4];
    f32 v2, v3;

    for (v0 = 0; v0 < 4; v0++) {
        v1[v0] = 1;
    }

    if (param0->unk_A8 <= param0->unk_AA) {
        SpriteActor_EnableObject(param0->unk_98[param0->unk_AD], 1);
        param0->unk_AD++;
        param0->unk_AA = 0;
    }

    if (param0->unk_AD < param0->unk_AC) {
        param0->unk_AA++;
    }

    for (v0 = 0; v0 < param0->unk_AD; v0++) {
        v1[v0] = param0->unk_94(&param0->unk_04[v0]);

        if (v1[v0]) {
            if (param0->unk_AE == 0) {
                SpriteActor_SetSpritePositionXY(param0->unk_98[v0], param0->unk_00 + param0->unk_04[v0].unk_00, param0->unk_02 + param0->unk_04[v0].unk_02);
            } else {
                ov12_02225FA4(&param0->unk_04[v0], &v2, &v3);
                sub_0200D6E8(param0->unk_98[v0], v2, v3);
            }
        } else {
            SpriteActor_EnableObject(param0->unk_98[v0], 0);
        }
    }

    for (v0 = 0; v0 < param0->unk_AC; v0++) {
        if (v1[v0] == 1) {
            return 1;
        }
    }

    return 0;
}

void ov12_022263A4 (UnkStruct_ov12_02225F6C * param0, int param1, int param2)
{
    int v0;

    ov12_02225A5C(param0, 0, ((360 * 0xffff) / 360), 0, ((360 * 0xffff) / 360), (32 * FX32_ONE), (-8 * FX32_ONE), param2);
    param0->unk_04[0] *= param1;
}

static void ov12_022263DC (SysTask * param0, void * param1)
{
    BOOL v0;
    UnkStruct_ov12_02226454 * v1 = param1;

    v0 = ov12_02225C14(&v1->unk_00);

    if (v0 == 0) {
        v1->unk_24 = 1;
        SysTask_Done(param0);
    } else {
        if (v1->unk_00.unk_00 < 0) {
            v1->unk_00.unk_00 = 0;
        }

        if (v1->unk_00.unk_02 < 0) {
            v1->unk_00.unk_02 = 0;
        }

        G2_ChangeBlendAlpha(v1->unk_00.unk_00, v1->unk_00.unk_02);
    }
}

void ov12_02226424 (UnkStruct_ov12_02226454 * param0, s16 param1, s16 param2, s16 param3, s16 param4, int param5)
{
    ov12_02225BC8(&param0->unk_00, param1, param2, param3, param4, param5);

    param0->unk_24 = 0;
    SysTask_Start(ov12_022263DC, param0, 0);
}

BOOL ov12_02226454 (const UnkStruct_ov12_02226454 * param0)
{
    return param0->unk_24;
}

static void ov12_02226458 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02226490 * v0 = param1;

    if (v0->unk_08) {
        v0->unk_0C = 1;
        v0->unk_10(v0->unk_18);
    } else {
        sub_02013BA8();
    }
}

static void ov12_02226474 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02226490 * v0 = param1;

    if (v0->unk_08 && v0->unk_0C) {
        v0->unk_14(v0->unk_18);
        v0->unk_0C = 0;
    }
}

static void ov12_02226490 (UnkStruct_ov12_02226490 * param0, void * param1, UnkFuncPtr_ov12_02226490 param2, UnkFuncPtr_ov12_02226490 param3)
{
    GF_ASSERT(param0);

    param0->unk_08 = 1;
    param0->unk_0C = 0;
    param0->unk_18 = param1;
    param0->unk_10 = param2;
    param0->unk_14 = param3;
    param0->unk_04 = sub_0200DA3C(ov12_02226458, param0, 0);
    param0->unk_00 = sub_0200DA04(ov12_02226474, param0, 0);
}

static void ov12_022264D0 (UnkStruct_ov12_02226490 * param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04 != NULL) {
        SysTask_Done(param0->unk_04);
    }

    if (param0->unk_00 != NULL) {
        SysTask_Done(param0->unk_00);
    }

    sub_02013BA8();
}

static void ov12_022264F4 (UnkStruct_ov12_02226490 * param0)
{
    GF_ASSERT(param0);
    param0->unk_08 = 0;
}

static void ov12_02226504 (UnkStruct_ov12_02226504 * param0)
{
    const void * v0;

    v0 = sub_02013B68(param0->unk_1C);

    sub_02013BA8();
    sub_02013BB8(v0, (void *)param0->unk_620, 4, 1);
}

static void ov12_02226528 (void * param0)
{
    UnkStruct_ov12_02226504 * v0 = param0;

    sub_02013B94(v0->unk_1C);
    ov12_02226504(v0);
}

static void ov12_0222653C (void * param0)
{
    UnkStruct_ov12_02226504 * v0 = param0;
    ov12_02226504(v0);
}

UnkStruct_ov12_02226504 * ov12_02226544 (u32 param0, u32 param1, int param2)
{
    UnkStruct_ov12_02226504 * v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov12_02226504));
    memset(v0, 0, sizeof(UnkStruct_ov12_02226504));

    GF_ASSERT(v0);
    v0->unk_1C = sub_02013B10(param2, v0->unk_20, v0->unk_320);

    GF_ASSERT(v0->unk_1C);
    v0->unk_620 = param0;

    MI_CpuFill32(v0->unk_20, param1, sizeof(u32) * 192);
    MI_CpuFill32(v0->unk_320, param1, sizeof(u32) * 192);

    ov12_02226490(&v0->unk_00, v0, ov12_02226528, ov12_0222653C);

    return v0;
}

void ov12_022265C0 (UnkStruct_ov12_02226504 * param0)
{
    GF_ASSERT(param0);

    ov12_022264D0(&param0->unk_00);

    if (param0->unk_1C != NULL) {
        sub_02013B40(param0->unk_1C);
    }

    Heap_FreeToHeap(param0);
}

void * ov12_022265E4 (const UnkStruct_ov12_02226504 * param0)
{
    GF_ASSERT(param0);
    return sub_02013B54(param0->unk_1C);
}

void ov12_022265F8 (UnkStruct_ov12_02226504 * param0)
{
    GF_ASSERT(param0);
    ov12_022264F4(&param0->unk_00);
}

static void ov12_0222660C (void * param0)
{
    UnkStruct_ov12_0222660C * v0 = param0;

    sub_02013DA4(v0->unk_1C);
    sub_02013DDC(v0->unk_1C);
}

static void ov12_02226620 (void * param0)
{
    UnkStruct_ov12_0222660C * v0 = param0;
    sub_02013DDC(v0->unk_1C);
}

UnkStruct_ov12_0222660C * ov12_0222662C (u8 param0, u8 param1, u16 param2, fx32 param3, s16 param4, u32 param5, u32 param6, u32 param7, int param8)
{
    UnkStruct_ov12_0222660C * v0;
    u32 v1;
    void * v2;
    const void * v3;

    v0 = Heap_AllocFromHeap(param8, sizeof(UnkStruct_ov12_0222660C));
    GF_ASSERT(v0);

    memset(v0, 0, sizeof(UnkStruct_ov12_0222660C));

    v1 = ov12_022266F0(param5);
    v0->unk_1C = sub_02013BE0(param8);

    sub_02013C10(v0->unk_1C, param0, param1, param2, param3, param4, v1, param7, param6);
    ov12_02226490(&v0->unk_00, v0, ov12_0222660C, ov12_02226620);

    return v0;
}

void ov12_0222669C (UnkStruct_ov12_0222660C * param0)
{
    GF_ASSERT(param0);

    ov12_022264D0(&param0->unk_00);

    if (param0->unk_1C) {
        sub_02013D74(param0->unk_1C);
    }

    Heap_FreeToHeap(param0);
}

void * ov12_022266C0 (const UnkStruct_ov12_0222660C * param0)
{
    GF_ASSERT(param0);
    return sub_02013D94(param0->unk_1C);
}

void ov12_022266D4 (UnkStruct_ov12_0222660C * param0)
{
    GF_ASSERT(param0);
    ov12_022264F4(&param0->unk_00);
}

u32 ov12_022266E8 (u16 param0, u16 param1)
{
    return (param1 << 16) | param0;
}

u32 ov12_022266F0 (int param0)
{
    u32 v0;

    switch (param0) {
    case 0:
        v0 = REG_BG0HOFS_ADDR;
        break;
    case 1:
        v0 = REG_BG1HOFS_ADDR;
        break;
    case 2:
        v0 = REG_BG2HOFS_ADDR;
        break;
    case 3:
        v0 = REG_BG3HOFS_ADDR;
        break;
    }

    return v0;
}

void ov12_02226728 (s16 param0, s16 param1, s16 param2, s16 param3, s16 * param4, s16 * param5)
{
    *param4 = (param0 + param2) / 2;
    *param5 = (param1 + param3) / 2;
}

void ov12_02226744 (s16 param0, s16 param1, s16 param2, s16 param3, fx32 * param4)
{
    s16 v0 = (param0 - param2);
    s16 v1 = (param1 - param3) * -1;

    *param4 = FX_Sqrt(((v1 * v1) + (v0 * v0)) * FX32_ONE);
}

void ov12_0222676C (s16 param0, s16 param1, s16 param2, s16 param3, u16 * param4)
{
    s16 v0 = (param0 - param2);
    s16 v1 = (param1 - param3) * -1;
    s16 v2;

    *param4 = FX_Atan2Idx((v1 * FX32_ONE), v0 * FX32_ONE);

    if ((*param4 > 0) && (v1 < 0)) {
        *param4 = (*param4 - ((180 * 0xffff) / 360)) * 0xffff;
    } else if ((*param4 < 0) && (v1 > 0)) {
        *param4 += +((180 * 0xffff) / 360);
    }
}

BOOL ov12_022267A8 (int * param0, int param1, s32 param2)
{
    if (param2 < 0) {
        if (*param0 + param2 > param1) {
            *param0 += param2;
            return 0;
        } else {
            *param0 = param1;
            return 1;
        }
    } else {
        if (*param0 + param2 < param1) {
            *param0 += param2;
            return 0;
        } else {
            *param0 = param1;
            return 1;
        }
    }

    return 1;
}

static void ov12_022267D4 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_022267D4 * v0 = (UnkStruct_ov12_022267D4 *)param1;

    if (v0->unk_00 == 0) {
        return;
    }

    if ((++v0->unk_17) >= v0->unk_16) {
        v0->unk_17 = 0;
        sub_020039B0(v0->unk_18, v0->unk_08, v0->unk_0C, v0->unk_0E, v0->unk_14, v0->unk_10);

        if (v0->unk_14 == v0->unk_13) {
            v0->unk_00 = 0;
        } else {
            s8 v1 = v0->unk_14 + v0->unk_15;

            if (v0->unk_15 > 0) {
                if (v1 > v0->unk_13) {
                    v0->unk_14 = v0->unk_13;
                } else {
                    v0->unk_14 += v0->unk_15;
                }
            } else {
                if (v1 < v0->unk_13) {
                    v0->unk_14 = v0->unk_13;
                } else {
                    v0->unk_14 += v0->unk_15;
                }
            }
        }
    }
}

BOOL ov12_02226848 (UnkStruct_ov12_022267D4 * param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_00;
}

void ov12_02226858 (UnkStruct_ov12_022267D4 * param0)
{
    GF_ASSERT(param0 != NULL);

    SysTask_Done(param0->unk_04);
    Heap_FreeToHeap(param0);
}

UnkStruct_ov12_022267D4 * ov12_02226870 (PaletteData * param0, int param1, int param2, u16 param3, u16 param4, s8 param5, s8 param6, u8 param7, u8 param8, u16 param9, int param10)
{
    UnkStruct_ov12_022267D4 * v0 = NULL;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov12_022267D4));

    GF_ASSERT(v0 != NULL);

    v0->unk_18 = param0;
    v0->unk_08 = param2;
    v0->unk_0C = param3;
    v0->unk_0E = param4;
    v0->unk_10 = param9;
    v0->unk_12 = param7;
    v0->unk_13 = param8;
    v0->unk_14 = param7;
    v0->unk_16 = param5;
    v0->unk_17 = param5;

    if (v0->unk_12 < v0->unk_13) {
        v0->unk_15 = param6;
    } else {
        v0->unk_15 = param6 * -1;
    }

    v0->unk_00 = 1;
    v0->unk_04 = SysTask_Start(ov12_022267D4, v0, param10);

    return v0;
}

static void ov12_022268DC (u16 * param0, u16 param1)
{
    int v0, v1, v2, v3;
    u32 v4;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ((*param0) & 0x1f);
        v2 = (((*param0) >> 5) & 0x1f);
        v3 = (((*param0) >> 10) & 0x1f);
        v4 = (((v1) * 76 + (v2) * 151 + (v3) * 29) >> 8);

        *param0 = (u16)((v4 << 10) | (v4 << 5) | v4);
        param0++;
    }
}

void ov12_02226924 (UnkStruct_ov12_0221FCDC * param0)
{
    PaletteData * v0;
    u16 * v1;

    v0 = ov12_0222332C(param0);
    v1 = sub_0200316C(v0, 0);

    if (ov12_0221FDD4(param0) == 1) {
        ov12_022268DC(v1, 16 * 3);
    } else {
        ov12_022268DC(v1, 16 * 8);
    }
}

void ov12_02226954 (UnkStruct_ov12_0221FCDC * param0)
{
    PaletteData * v0;

    v0 = ov12_0222332C(param0);

    if (ov12_0221FDD4(param0) == 1) {
        sub_02003120(v0, 0, 0, 0, 0, 16 * 3 * 2);
    } else {
        sub_02003120(v0, 0, 0, 0, 0, 16 * 8 * 2);
    }
}
