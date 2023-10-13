#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/sys_task.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay116/struct_ov116_0226139C.h"
#include "overlay116/struct_ov116_02262A8C.h"
#include "overlay116/struct_ov116_0226469C.h"
#include "overlay116/struct_ov116_022647BC.h"
#include "overlay116/struct_ov116_022649E4.h"
#include "overlay116/struct_ov116_0226501C.h"
#include "overlay116/struct_ov116_0226534C.h"
#include "overlay116/struct_ov116_02265470.h"
#include "overlay116/struct_ov116_02265AA4.h"
#include "overlay116/struct_ov116_02265D84.h"
#include "overlay116/struct_ov116_022660A8.h"
#include "overlay116/union_ov116_02266FEC.h"

#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_0200F174.h"
#include "unk_020170BC.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "overlay116/ov116_02261870.h"
#include "overlay116/ov116_0226432C.h"
#include "overlay116/ov116_02266FEC.h"

typedef struct {
    CellActorData * unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    fx32 unk_18;
    fx32 unk_1C;
    fx32 unk_20;
    u8 unk_24;
    u8 unk_25;
    u8 unk_26;
    u8 unk_27;
    int unk_28;
    s16 unk_2C;
    s16 unk_2E;
    s16 unk_30;
    s16 unk_32;
} UnkStruct_ov116_02264FEC_sub1;

typedef struct {
    UnkStruct_ov116_02262A8C * unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    BOOL * unk_10;
    UnkStruct_ov116_02264FEC_sub1 unk_14[36];
} UnkStruct_ov116_02264FEC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C[3];
    int unk_18[3];
    void * unk_24;
} UnkStruct_ov116_02267DA4;

static void ov116_022647BC(SysTask * param0, void * param1);
static inline void inline_ov116_022649E4(UnkStruct_ov116_02264FEC_sub1 * param0);
static inline void inline_ov116_022649E4_1(UnkStruct_ov116_02264FEC_sub1 * wk, fx32 x, fx32 y);
static void ov116_022649E4(SysTask * param0, void * param1);
static void ov116_0226501C(UnkStruct_ov116_02265470 * param0);
static void ov116_0226510C(UnkStruct_ov116_02265470 * param0);
static void ov116_02265260(UnkStruct_ov116_02265470 * param0);
static void ov116_022652F4(UnkStruct_ov116_02265470 * param0);
static void ov116_0226534C(SysTask * param0, void * param1);
static void ov116_022655DC(UnkStruct_ov116_022660A8 * param0);
static void ov116_02265754(UnkStruct_ov116_022660A8 * param0);
static int ov116_022658C8(int param0);
static void ov116_0226591C(SysTask * param0, void * param1);
static void ov116_02265AA4(SysTask * param0, void * param1);
static void ov116_02265D84(UnkStruct_ov116_02265D84 * param0);
static BOOL ov116_02265D8C(UnkStruct_ov116_02265D84 * param0, int param1, int param2, int param3);
static BOOL ov116_02265E64(UnkStruct_ov116_02265D84 * param0, int param1, int param2, int param3);
static BOOL ov116_02265F1C(UnkStruct_ov116_02265D84 * param0, int param1, int param2, int param3);
static BOOL ov116_02265FD4(UnkStruct_ov116_02265D84 * param0, int param1, int param2, int param3);
static void ov116_022660A8(SysTask * param0, void * param1);
static void ov116_0226644C(SysTask * param0, void * param1);
static void ov116_022667F4(SysTask * param0, void * param1);
static void ov116_02266BF0(SysTask * param0, void * param1);
BOOL ov116_0226432C(UnkStruct_ov116_0226501C * param0, int param1, int param2, int param3, int param4, f32 param5, BOOL param6);
BOOL ov116_0226452C(UnkStruct_ov116_0226501C * param0, f32 param1);
int ov116_02264680(UnkStruct_ov116_0226139C * param0, int param1);
void ov116_0226469C(UnkStruct_ov116_0226469C * param0, fx32 param1, fx32 param2, fx32 param3, int param4);
BOOL ov116_022646FC(UnkStruct_ov116_0226469C * param0);
void ov116_02264764(UnkStruct_ov116_0226469C * param0, fx32 param1, fx32 param2, s32 param3);
BOOL ov116_02264774(UnkStruct_ov116_0226469C * param0);
void ov116_0226493C(UnkStruct_ov116_02262A8C * param0, s16 param1, s16 param2);
void ov116_02264FEC(UnkStruct_ov116_02262A8C * param0, BOOL * param1);
void ov116_02265470(UnkStruct_ov116_02262A8C * param0);
void ov116_02265A1C(UnkStruct_ov116_02262A8C * param0);

BOOL ov116_0226432C (UnkStruct_ov116_0226501C * param0, int param1, int param2, int param3, int param4, f32 param5, BOOL param6)
{
    f32 v0;
    fx32 v1;
    f32 v2, v3;

    v2 = (param1 - param3) * (((1.33) / 256)) * param5;
    v3 = (param2 - param4) * (((1.00) / 192)) * param5;

    if (param6) {
        param0->unk_1FC = v2;
        param0->unk_200 = v3;
        param0->unk_1F8 = 8;
        param0->unk_204 = param0->unk_1FC / param0->unk_1F8;
        param0->unk_208 = param0->unk_200 / param0->unk_1F8;
    }

    {
        f32 v4 = ((v2 * v2) + (v3 * v3));
        fx32 v5 = FX_F32_TO_FX32(v4);

        v1 = FX_Sqrt(v5);
        v0 = FX_FX32_TO_F32(v1);
        v0 *= (1.00);
    }

    if (v0 != 0.0) {
        fx32 v6 = v1;
        fx64c v7 = FX_SinFx64c(v6);
        fx64c v8 = FX_CosFx64c(v6);
        f32 v9 = FX_FX64C_TO_F32(v7);
        f32 v10 = FX_FX64C_TO_F32(v8);
        f32 v11 = v9 / v0;
        UnkUnion_ov116_02266FEC v12;

        v12.val2[0] = v10;
        v12.val2[1] = v3 * v11;
        v12.val2[2] = v2 * v11;
        v12.val2[3] = 0.0;

        ov116_0226700C(&param0->unk_190, &v12, &param0->unk_1A0);
        ov116_022671EC(&param0->unk_150, &param0->unk_190);
        ov116_02266FFC(&param0->unk_1A0, &param0->unk_190);
        ov116_02267728(&param0->unk_150, &param0->unk_1B0);

        {
            UnkUnion_ov116_02266FEC v13;
            f32 v14 = ov116_02267160(&param0->unk_190);

            v13 = param0->unk_190;
            ov116_022671B8(&param0->unk_190, &v13, v14);
        }

        return 1;
    }

    return 0;
}

BOOL ov116_0226452C (UnkStruct_ov116_0226501C * param0, f32 param1)
{
    f32 v0;
    fx32 v1;
    f32 v2, v3;

    v2 = param0->unk_1FC;
    v3 = param0->unk_200;

    param0->unk_1FC -= param0->unk_204;
    param0->unk_200 -= param0->unk_208;
    param0->unk_1F8--;

    {
        f32 v4 = ((v2 * v2) + (v3 * v3));
        fx32 v5 = FX_F32_TO_FX32(v4);

        v1 = FX_Sqrt(v5);
        v0 = FX_FX32_TO_F32(v1);
        v0 *= (1.00);
    }

    if (v0 != 0.0) {
        fx32 v6 = v1;
        fx64c v7 = FX_SinFx64c(v6);
        fx64c v8 = FX_CosFx64c(v6);
        f32 v9 = FX_FX64C_TO_F32(v7);
        f32 v10 = FX_FX64C_TO_F32(v8);
        f32 v11 = v9 / v0;
        UnkUnion_ov116_02266FEC v12;

        v12.val2[0] = v10;
        v12.val2[1] = v3 * v11;
        v12.val2[2] = v2 * v11;
        v12.val2[3] = 0.0;

        ov116_0226700C(&param0->unk_190, &v12, &param0->unk_1A0);
        ov116_022671EC(&param0->unk_150, &param0->unk_190);
        ov116_02266FFC(&param0->unk_1A0, &param0->unk_190);
        ov116_02267728(&param0->unk_150, &param0->unk_1B0);

        return 1;
    }

    return 0;
}

int ov116_02264680 (UnkStruct_ov116_0226139C * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_B4[v0] == param1) {
            return v0;
        }
    }

    return 0xFF;
}

void ov116_0226469C (UnkStruct_ov116_0226469C * param0, fx32 param1, fx32 param2, fx32 param3, int param4)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;

    v2 = param2 - param1;

    v0 = (param4 * param4) << FX32_SHIFT;
    v1 = FX_Mul(param3, param4 * FX32_ONE);
    v1 = v2 - v1;
    v1 = FX_Mul(v1, 2 * FX32_ONE);
    v3 = FX_Div(v1, v0);

    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param3;
    param0->unk_0C = v3;
    param0->unk_10 = 0;
    param0->unk_14 = param4;
}

BOOL ov116_022646FC (UnkStruct_ov116_0226469C * param0)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;

    v3 = FX_Mul(param0->unk_08, param0->unk_10 << FX32_SHIFT);
    v1 = (param0->unk_10 * param0->unk_10) << FX32_SHIFT;
    v2 = FX_Mul(param0->unk_0C, v1);
    v2 = FX_Div(v2, 2 * FX32_ONE);
    v0 = v3 + v2;

    param0->unk_00 = param0->unk_04 + v0;

    if ((param0->unk_10 + 1) <= param0->unk_14) {
        param0->unk_10++;
        return 0;
    }

    param0->unk_10 = param0->unk_14;

    return 1;
}

void ov116_02264764 (UnkStruct_ov116_0226469C * param0, fx32 param1, fx32 param2, s32 param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_0C = param2 - param1;
    param0->unk_10 = 0;
    param0->unk_14 = param3;
}

BOOL ov116_02264774 (UnkStruct_ov116_0226469C * param0)
{
    s32 v0;
    BOOL v1;
    fx32 v2;

    if (param0->unk_10 >= param0->unk_14) {
        v0 = param0->unk_14;
        v1 = 1;
    } else {
        v0 = param0->unk_10;
        param0->unk_10++;
        v1 = 0;
    }

    v2 = FX_Mul(param0->unk_0C, v0 << FX32_SHIFT);
    v2 = FX_Div(v2, param0->unk_14 << FX32_SHIFT);
    v2 += param0->unk_04;

    param0->unk_00 = v2;

    return v1;
}

static void ov116_022647BC (SysTask * param0, void * param1)
{
    UnkStruct_ov116_022647BC * v0 = param1;
    int v1;
    fx32 v2, v3;
    BOOL v4[4][2];
    BOOL v5 = 1;
    const fx32 v6[] = {
        FX32_CONST(-5),
        FX32_CONST(+3),
        FX32_CONST(+4),
        FX32_CONST(-3),
        FX32_CONST(+3),
        FX32_CONST(-2)
    };
    const fx32 v7[] = {
        FX32_CONST(+4),
        FX32_CONST(+5),
        FX32_CONST(-4),
        FX32_CONST(-5),
        FX32_CONST(-3),
        FX32_CONST(+2)
    };

    if ((ScreenWipe_Done() == 0) || (v0->unk_A4->unk_2C.unk_00 == 1)) {
        for (v1 = 0; v1 < 3; v1++) {
            sub_0200D0F4(v0->unk_08[v1]);
        }

        v0->unk_00 = 0;
        SysTask_Done(param0);

        return;
    }

    switch (v0->unk_04) {
    case 0:
        for (v1 = 0; v1 < 3; v1++) {
            sub_0200D638(v0->unk_08[v1], &v2, &v3);
            ov116_0226469C(&v0->unk_14[v1][0], v2, v2 + v6[v1], FX_F32_TO_FX32(0.3f), 8);
            ov116_0226469C(&v0->unk_14[v1][1], v3, v3 + v7[v1], FX_F32_TO_FX32(0.2f), 8);
        }

        v0->unk_04++;
        break;
    case 1:
        for (v1 = 0; v1 < 3; v1++) {
            v4[v1][0] = ov116_022646FC(&v0->unk_14[v1][0]);
            v4[v1][1] = ov116_022646FC(&v0->unk_14[v1][1]);

            sub_0200D614(v0->unk_08[v1], v0->unk_14[v1][0].unk_00, v0->unk_14[v1][1].unk_00);

            if ((v4[v1][0] == 0) || (v4[v1][1] == 0)) {
                v5 = 0;
            }

            sub_0200D330(v0->unk_08[v1]);
        }
        if (v5) {
            v0->unk_04++;
        }

        break;
    default:
        for (v1 = 0; v1 < 3; v1++) {
            sub_0200D0F4(v0->unk_08[v1]);
        }

        v0->unk_00 = 0;

        SysTask_Done(param0);
        break;
    }
}

void ov116_0226493C (UnkStruct_ov116_02262A8C * param0, s16 param1, s16 param2)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_214C[v0].unk_00 == 1) {
            continue;
        }

        param0->unk_214C[v0].unk_A4 = param0->unk_14;
        param0->unk_214C[v0].unk_04 = 0;
        param0->unk_214C[v0].unk_00 = 1;

        for (v1 = 0; v1 < 3; v1++) {
            param0->unk_214C[v0].unk_08[v1] = ov116_022626E8(param0, param1, param2);
            sub_0200D364(param0->unk_214C[v0].unk_08[v1], ((param1 * (v0 + 1)) + (param2 * (v1 + 1))) % 3);
        }

        SysTask_Start(ov116_022647BC, &param0->unk_214C[v0], 4096);
        break;
    }
}

static inline void inline_ov116_022649E4 (UnkStruct_ov116_02264FEC_sub1 * param0)
{
    param0->unk_1C = FX_Mul(sub_0201D250(param0->unk_28), FX32_CONST(param0->unk_2E));
    param0->unk_20 = FX_Mul(sub_0201D264(param0->unk_28), FX32_CONST(param0->unk_30));
}

static inline void inline_ov116_022649E4_1 (UnkStruct_ov116_02264FEC_sub1 * wk, fx32 x, fx32 y)
{
    wk->unk_04 += x;
    wk->unk_08 += y;

    sub_0200D650(wk->unk_00, wk->unk_14 + wk->unk_0C + wk->unk_1C + wk->unk_04, wk->unk_18 + wk->unk_10 + wk->unk_20 + wk->unk_08, FX32_CONST((192 + 32)));
}

static void ov116_022649E4 (SysTask * param0, void * param1)
{
    UnkStruct_ov116_02264FEC * v0 = param1;
    UnkStruct_ov116_022649E4 * v1 = v0->unk_00->unk_14;

    if ((ScreenWipe_Done() == 0) || (v1->unk_2C.unk_00 == 1)) {
        *v0->unk_10 = 0;
        SysTask_Done(param0);
        Heap_FreeToHeap(v0);
        return;
    }

    switch (v0->unk_04) {
    case 0:
        v0->unk_0C = 0;
        v0->unk_04++;
    case 1:
    {
        int v2;
        s16 v3[][2] = {
            {96, 58}, {230, 48}, {128, 32}, {40, 64}, {180, 48}
        };
        u32 v4 = v3[v0->unk_0C][0];
        u32 v5 = v3[v0->unk_0C][1];

        v0->unk_08 = 0;

        for (v2 = 0; v2 < (3 * 12); v2++) {
            v0->unk_14[v2].unk_26 = v2 % 2;
            v0->unk_14[v2].unk_2E = 6 - (v2 % 3);
            v0->unk_14[v2].unk_30 = 6 - (v2 % 3);
            v0->unk_14[v2].unk_00 = v0->unk_00->unk_28[v2];
            v0->unk_14[v2].unk_28 = ((v2 / 3) * (360 / 12));
            v0->unk_14[v2].unk_28 %= 360;
            v0->unk_14[v2].unk_2C = 0;
            v0->unk_14[v2].unk_32 = -((v2 % 3) * 2);
            v0->unk_14[v2].unk_0C = FX32_CONST(v4);
            v0->unk_14[v2].unk_10 = FX32_CONST(v5);
            v0->unk_14[v2].unk_1C = 0;
            v0->unk_14[v2].unk_20 = 0;
            v0->unk_14[v2].unk_04 = 0;
            v0->unk_14[v2].unk_08 = 0;
            v0->unk_14[v2].unk_14 = 0;
            v0->unk_14[v2].unk_18 = 0;
            v0->unk_14[v2].unk_24 = 0;
            v0->unk_14[v2].unk_25 = 1;
            v0->unk_14[v2].unk_27 = 0;

            if (v0->unk_14[v2].unk_28 == 180) {
                v0->unk_14[v2].unk_24 = 2;
            }

            if ((v0->unk_14[v2].unk_28 >= 270) && (v0->unk_14[v2].unk_28 <= 90)) {
                v0->unk_14[v2].unk_24 = 1;
            }

            inline_ov116_022649E4(&v0->unk_14[v2]);
            inline_ov116_022649E4_1(&v0->unk_14[v2], FX32_CONST(0), FX32_CONST(v0->unk_14[v2].unk_2C));
        }
    }
        v0->unk_04++;
        break;

    case 2:
    {
        int v6;
        s16 v7, v8;
        BOOL v9 = 1;

        if (v0->unk_08 == 0) {
            v0->unk_08++;
            ov116_02261E0C(v0->unk_00, 1, 0);
            Sound_PlayEffect(1395);
        }

        if (v0->unk_08 > 30) {
            v0->unk_04 = 1;
            v0->unk_0C++;
            v0->unk_0C %= 5;
            ov116_02261E0C(v0->unk_00, 0, 1);
        } else {
            v0->unk_08++;

            for (v6 = 0; v6 < (3 * 12); v6++) {
                if ((++v0->unk_14[v6].unk_32) < 0) {
                    continue;
                }

                if (v0->unk_14[v6].unk_32 >= (10 + v0->unk_14[v6].unk_26)) {
                    if (v0->unk_14[v6].unk_32 == (10 + v0->unk_14[v6].unk_26)) {
                        sub_0200D364(v0->unk_14[v6].unk_00, 0);
                    }

                    if (v0->unk_14[v6].unk_32 == (18 + v0->unk_14[v6].unk_26)) {
                        v0->unk_14[v6].unk_25 = 0;
                    } else {
                        if (v0->unk_14[v6].unk_32 % 2) {
                            v0->unk_14[v6].unk_25 ^= 1;
                        }
                    }

                    sub_0200D3F4(v0->unk_14[v6].unk_00, v0->unk_14[v6].unk_25);

                    switch (v0->unk_14[v6].unk_27) {
                    case 0:
                        v0->unk_14[v6].unk_14 = FX32_CONST(-1);
                        break;
                    case 1:
                        v0->unk_14[v6].unk_14 = FX32_CONST(+0);
                        break;
                    case 2:
                        v0->unk_14[v6].unk_14 = FX32_CONST(+1);
                        break;
                    }

                    v0->unk_14[v6].unk_27++;
                    v0->unk_14[v6].unk_27 %= 3;
                }
                if (v0->unk_14[v6].unk_32 > 5) {
                    switch (v0->unk_14[v6].unk_24) {
                    case 2:
                        v0->unk_14[v6].unk_2C = (v0->unk_14[v6].unk_32 + 5) / 6;
                        break;
                    case 1:
                        v0->unk_14[v6].unk_2C = (v0->unk_14[v6].unk_32 + 5) / 6;
                        break;
                    case 0:
                        v0->unk_14[v6].unk_2C = (v0->unk_14[v6].unk_32 + 5) / 7;
                        break;
                    }
                }

                switch (v0->unk_14[v6].unk_24) {
                case 2:
                    v7 = (30 - (v0->unk_14[v6].unk_32 + 5)) / 8;
                    v8 = (30 - (v0->unk_14[v6].unk_32 + 7)) / 8;
                    break;
                case 1:
                default:
                    v7 = (30 - (v0->unk_14[v6].unk_32 + 5)) / 8;
                    v8 = (30 - (v0->unk_14[v6].unk_32 + 6)) / 8;
                    break;
                case 0:
                    v7 = (30 - (v0->unk_14[v6].unk_32 + 5)) / 8;
                    v8 = (30 - (v0->unk_14[v6].unk_32 + 4)) / 8;
                    break;
                }

                if (v7 > 0) {
                    v0->unk_14[v6].unk_2E += v7;
                } else {
                    v0->unk_14[v6].unk_2E++;
                }

                if (v8 > 0) {
                    v0->unk_14[v6].unk_30 += v8;
                } else {
                    v0->unk_14[v6].unk_30++;
                }

                inline_ov116_022649E4(&v0->unk_14[v6]);
                inline_ov116_022649E4_1(&v0->unk_14[v6], FX32_CONST(0), FX32_CONST(v0->unk_14[v6].unk_2C));
            }
        }
        if (*v0->unk_10) {
            v0->unk_04++;
        }
    }
    break;

    default:
        ov116_02261E0C(v0->unk_00, 0, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        break;
    }

    ov116_02261E28(v0->unk_00);
}

void ov116_02264FEC (UnkStruct_ov116_02262A8C * param0, BOOL * param1)
{
    UnkStruct_ov116_02264FEC * v0 = Heap_AllocFromHeap(106, sizeof(UnkStruct_ov116_02264FEC));

    v0->unk_00 = param0;
    v0->unk_04 = 0;
    v0->unk_08 = 0;
    v0->unk_10 = param1;

    SysTask_Start(ov116_022649E4, v0, 4096);
}

static void ov116_0226501C (UnkStruct_ov116_02265470 * param0)
{
    UnkStruct_ov116_0226501C * v0 = param0->unk_08[0];
    int * v1 = param0->unk_08[1];
    int * v2 = param0->unk_08[3];
    PaletteSys * v3 = param0->unk_08[2];

    if (param0->unk_04 == 0) {
        return;
    }

    switch (param0->unk_00) {
    case 0:
        if (*v1 < 4) {
            *v1 += 1;
        } else {
            *v1 = 4;
            param0->unk_00++;
        }

        sub_02003A2C(v3, 0, 0x1, *v1 + *v2, 0x0);
        sub_02003A2C(v3, 1, 0x1, *v1 + *v2, 0x0);
        break;

    case 1:
        sub_02017348(&v0->unk_00, 1);
        param0->unk_28[0] = 0;
        param0->unk_00++;
        break;

    case 2:
        if (param0->unk_50[0] == 1) {
            if (++param0->unk_28[0] >= 15) {
                param0->unk_00++;
            }
        }

        break;

    case 3:
        if (*v1 > 0) {
            *v1 -= 1;
        } else {
            *v1 = 0;
            param0->unk_00++;
        }

        sub_02003A2C(v3, 0, 0x1, *v1 + *v2, 0x0);
        sub_02003A2C(v3, 1, 0x1, *v1 + *v2, 0x0);
        break;

    default:
        param0->unk_50[0] = 0;
        param0->unk_04 = 0;
        param0->unk_00 = 0;

        sub_02017348(&v0->unk_00, 0);

        break;
    }
}

static void ov116_0226510C (UnkStruct_ov116_02265470 * param0)
{
    int v0;
    s16 v1, v2;
    s16 v3[] = {188, 188, 180, 180};
    BOOL v4[4] = {1, 1, 1, 1};
    CellActorData * v5;

    if (param0->unk_04 == 0) {
        return;
    }

    switch (param0->unk_00) {
    case 0:
        for (v0 = 0; v0 < 4; v0++) {
            v5 = param0->unk_08[v0];
            if (v5 == NULL) {
                continue;
            }

            sub_0200D550(v5, &v1, &v2);
            if (v2 > v3[v0]) {
                v2 -= 6;
                sub_0200D4C4(v5, v1, v2);
                v4[v0] = 0;
            }
        }
        if (v4[0] && v4[1] && v4[2] && v4[2]) {
            param0->unk_28[0] = 0;
            param0->unk_50[0] = 0;
            param0->unk_00++;
        }

        break;

    case 1:
        if (param0->unk_50[0] == 1) {
            if (++param0->unk_28[0] >= 15) {
                param0->unk_00++;
            }
        }

        break;

    case 2:
        for (v0 = 0; v0 < 4; v0++) {
            v5 = param0->unk_08[v0];
            if (v5 == NULL) {
                continue;
            }

            sub_0200D550(v5, &v1, &v2);
            if (v2 < (192 + 32)) {
                v2 += 6;
                sub_0200D4C4(v5, v1, v2);
                v4[v0] = 0;
            }
        }
        if (v4[0] && v4[1] && v4[2] && v4[2]) {
            param0->unk_00++;
        }

        break;

    default:
        param0->unk_50[0] = 0;
        param0->unk_04 = 0;
        param0->unk_00 = 0;

        break;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v5 = param0->unk_08[v0];
        if (v5 == NULL) {
            continue;
        }

        sub_0200D33C(v5);
    }
}

static void ov116_02265260 (UnkStruct_ov116_02265470 * param0)
{
    int v0;

    if (param0->unk_04 == 0) {
        return;
    }

    switch (param0->unk_00) {
    case 0:
        for (v0 = 0; v0 < 8; v0++) {
            UnkStruct_ov116_0226501C * v1 = param0->unk_08[v0];

            sub_02017240(&v1->unk_88[0], (v0 * 20) % 40);
            sub_02017348(&v1->unk_00, 1);
        }

        param0->unk_28[9] = 0;
        param0->unk_00++;
        break;
    case 1:
        if (param0->unk_50[0] == 1) {
            if (++param0->unk_28[9] >= 15) {
                param0->unk_00++;
            }
        }
        break;
    default:
        for (v0 = 0; v0 < 8; v0++) {
            UnkStruct_ov116_0226501C * v2 = param0->unk_08[v0];

            sub_02017348(&v2->unk_00, 0);
        }

        param0->unk_50[0] = 0;
        param0->unk_04 = 0;
        param0->unk_00 = 0;

        break;
    }
}

static void ov116_022652F4 (UnkStruct_ov116_02265470 * param0)
{
    if (param0->unk_04 == 0) {
        return;
    }

    switch (param0->unk_00) {
    case 0:
        ov116_02264FEC(param0->unk_08[0], &param0->unk_50[1]);
        param0->unk_28[0] = 0;
        param0->unk_00++;
        break;
    case 1:
        if (param0->unk_50[0] == 1) {
            if (++param0->unk_28[0] >= 15) {
                param0->unk_50[1] = 1;
                param0->unk_00++;
            }
        }
        break;
    default:
        if (param0->unk_50[1] == 0) {
            param0->unk_50[0] = 0;
            param0->unk_04 = 0;
            param0->unk_00 = 0;
        }
        break;
    }
}

static void ov116_0226534C (SysTask * param0, void * param1)
{
    UnkStruct_ov116_0226534C * v0 = param1;
    UnkStruct_ov116_022649E4 * v1 = v0->unk_84;

    if ((ScreenWipe_Done() == 0) || (v1->unk_2C.unk_00 == 1)) {
        SysTask_Done(param0);

        return;
    }

    switch (*v0->unk_04) {
    case 5:
        if (v0->unk_08[4].unk_04 == 0) {
            v0->unk_08[4].unk_04 = 1;
            v0->unk_08[4].unk_50[0] = 0;
        }
    case 4:
        if (v0->unk_08[3].unk_04 == 0) {
            Sound_PlayEffect(1551);
            v0->unk_08[3].unk_04 = 1;
            v0->unk_08[3].unk_50[0] = 0;
        }
    case 3:
        if (v0->unk_08[2].unk_04 == 0) {
            v0->unk_08[2].unk_04 = 1;
            v0->unk_08[2].unk_50[0] = 0;
        }
    case 2:
        if (v0->unk_08[1].unk_04 == 0) {
            Sound_PlayEffect(1393);
            v0->unk_08[1].unk_04 = 1;
            v0->unk_08[1].unk_50[0] = 0;
        }
    case 1:
        if (v0->unk_08[0].unk_04 == 0) {
            v0->unk_08[0].unk_04 = 1;
            v0->unk_08[0].unk_50[0] = 0;
        }
        break;
    default:
        if (*v0->unk_04 != v0->unk_00) {
            v0->unk_08[0].unk_50[0] = 1;
            v0->unk_08[1].unk_50[0] = 1;
            v0->unk_08[2].unk_50[0] = 1;
            v0->unk_08[3].unk_50[0] = 1;
            v0->unk_08[4].unk_50[0] = 1;
            sub_020057A4(1393, 0);
        }
        break;
    }

    ov116_0226501C(&v0->unk_08[0]);
    ov116_0226510C(&v0->unk_08[1]);
    ov116_02265260(&v0->unk_08[2]);
    ov116_0226510C(&v0->unk_08[3]);
    ov116_022652F4(&v0->unk_08[4]);

    v0->unk_00 = *v0->unk_04;
}

void ov116_02265470 (UnkStruct_ov116_02262A8C * param0)
{
    int v0;

    param0->unk_20C4.unk_84 = param0->unk_14;
    param0->unk_20C4.unk_04 = &param0->unk_279C.unk_08;
    param0->unk_20C4.unk_00 = *param0->unk_20C4.unk_04;

    for (v0 = 0; v0 < 5; v0++) {
        UnkStruct_ov116_02265470 * v1 = &param0->unk_20C4.unk_08[v0];

        v1->unk_00 = 0;
        v1->unk_04 = 0;

        switch (v0) {
        case 0:
            v1->unk_08[0] = &param0->unk_92C;
            v1->unk_08[1] = &param0->unk_F0;
            v1->unk_08[3] = &param0->unk_F4;
            v1->unk_08[2] = param0->unk_14->unk_14;
            break;
        case 1:
            v1->unk_08[0] = param0->unk_B8[0];
            v1->unk_08[1] = param0->unk_B8[1];
            v1->unk_08[2] = NULL;
            v1->unk_08[3] = NULL;
            {
                s16 v2, v3;

                sub_0200D550(param0->unk_B8[0], &v2, &v3);
                sub_0200D4C4(param0->unk_B8[0], v2, (192 + 32));
                sub_0200D550(param0->unk_B8[1], &v2, &v3);
                sub_0200D4C4(param0->unk_B8[1], v2, (192 + 32));
            }
            break;
        case 2:
        {
            int v4;

            for (v4 = 0; v4 < 8; v4++) {
                v1->unk_08[v4] = &param0->unk_B38[v4];
            }
        }
        break;
        case 3:
            v1->unk_08[0] = NULL;
            v1->unk_08[1] = NULL;
            v1->unk_08[2] = param0->unk_B8[2];
            v1->unk_08[3] = param0->unk_B8[3];
            {
                s16 v5, v6;

                sub_0200D550(param0->unk_B8[2], &v5, &v6);
                sub_0200D4C4(param0->unk_B8[2], v5, (192 + 32));
                sub_0200D550(param0->unk_B8[3], &v5, &v6);
                sub_0200D4C4(param0->unk_B8[3], v5, (192 + 32));
            }
            break;
        case 4:
            v1->unk_08[0] = param0;
            break;
        }
    }

    param0->unk_20C4.unk_80 = SysTask_Start(ov116_0226534C, &param0->unk_20C4, 4096);
}

static void ov116_022655DC (UnkStruct_ov116_022660A8 * param0)
{
    int * v0 = param0->unk_10;
    int * v1 = param0->unk_14;
    BOOL v2[5];

    switch (param0->unk_24) {
    case 0:
        ov116_02264764(&param0->unk_34[0], FX32_CONST(0), FX32_CONST(+40), 10);
        ov116_02264764(&param0->unk_34[1], FX32_CONST(0), FX32_CONST(+80), 10);
        ov116_02264764(&param0->unk_34[2], FX32_CONST(0), FX32_CONST(-80), 10);

        param0->unk_24++;
        break;
    case 1:
    {
        int v3;

        for (v3 = 0; v3 < 3; v3++) {
            v2[v3] = ov116_02264774(&param0->unk_34[v3]);
        }

        sub_0201C63C(param0->unk_30->unk_10, 7, 3, param0->unk_34[0].unk_00 >> FX32_SHIFT);
        sub_0201C63C(param0->unk_30->unk_10, 5, 0, param0->unk_34[1].unk_00 >> FX32_SHIFT);
        sub_0201C63C(param0->unk_30->unk_10, 6, 0, param0->unk_34[2].unk_00 >> FX32_SHIFT);
        sub_0201C63C(param0->unk_30->unk_10, 1, 0, param0->unk_34[1].unk_00 >> FX32_SHIFT);
        sub_0201C63C(param0->unk_30->unk_10, 2, 0, param0->unk_34[2].unk_00 >> FX32_SHIFT);

        if (v2[0] && v2[1] && v2[2]) {
            param0->unk_24++;
        }
    }
    break;
    case 2:
        param0->unk_2C = 1;
        param0->unk_24 = 0;
        break;
    }

    if (*v1 < 6) {
        *v1 += 1;
    } else {
        *v1 = 6;
    }

    sub_02003A2C(param0->unk_30->unk_14, 0, 0x1, *v0 + *v1, 0x0);
    sub_02003A2C(param0->unk_30->unk_14, 1, 0x1, *v0 + *v1, 0x0);
}

static void ov116_02265754 (UnkStruct_ov116_022660A8 * param0)
{
    int * v0 = param0->unk_10;
    int * v1 = param0->unk_14;
    BOOL v2[5];

    switch (param0->unk_24) {
    case 0:
        ov116_02264764(&param0->unk_34[0], FX32_CONST(+40), FX32_CONST(0), 10);
        ov116_02264764(&param0->unk_34[1], FX32_CONST(+80), FX32_CONST(0), 10);
        ov116_02264764(&param0->unk_34[2], FX32_CONST(-80), FX32_CONST(0), 10);
        param0->unk_24++;
        break;
    case 1:
    {
        int v3;

        for (v3 = 0; v3 < 3; v3++) {
            v2[v3] = ov116_02264774(&param0->unk_34[v3]);
        }

        sub_0201C63C(param0->unk_30->unk_10, 7, 3, param0->unk_34[0].unk_00 >> FX32_SHIFT);
        sub_0201C63C(param0->unk_30->unk_10, 5, 0, param0->unk_34[1].unk_00 >> FX32_SHIFT);
        sub_0201C63C(param0->unk_30->unk_10, 6, 0, param0->unk_34[2].unk_00 >> FX32_SHIFT);
        sub_0201C63C(param0->unk_30->unk_10, 1, 0, param0->unk_34[1].unk_00 >> FX32_SHIFT);
        sub_0201C63C(param0->unk_30->unk_10, 2, 0, param0->unk_34[2].unk_00 >> FX32_SHIFT);

        if (v2[0] && v2[1] && v2[2]) {
            param0->unk_24++;
        }
    }
    break;
    case 2:
        param0->unk_2C = 0;
        param0->unk_24 = 0;
        break;
    }

    if (*v1 > 4) {
        *v1 -= 1;
    } else {
        *v1 = 0;
    }

    sub_02003A2C(param0->unk_30->unk_14, 0, 0x1, *v0 + *v1, 0x0);
    sub_02003A2C(param0->unk_30->unk_14, 1, 0x1, *v0 + *v1, 0x0);
}

static int ov116_022658C8 (int param0)
{
    switch (param0) {
    case 1:
        return 28;
    case 2:
        return 14;
    case 3:
        return 12;
    case 4:
        return 10;
    case 5:
        return 9;
    case 6:
        return 32 * 1;
    case 7:
        return 14 * 1;
    case 8:
        return 12 * 1;
    case 9:
        return 11 * 1;
    case 10:
        return 11 * 1;
    default:
        return 9;
    }
}

static const UnkStruct_ov116_02267DA4 Unk_ov116_02267DA4[] = {
    {
        0x96,
        0x0,
        0x0,
        {0x0, 0x0, 0x0},
        {0x0, 0x0, 0x0},
        NULL
    },
    {
        0x96,
        0x2,
        0x1,
        {0x0, 0x0, 0x0},
        {0x0, 0x0, 0x0},
        ov116_02265AA4
    },
    {
        0x96,
        0x3,
        0x2,
        {0x0, 0x0, 0x0},
        {0x0, 0x0, 0x0},
        ov116_022660A8
    },
    {
        0x96,
        0x3,
        0x2,
        {0x0, 0x1, 0x0},
        {0x1, 0x0, 0x0},
        ov116_022660A8
    },
    {
        0x96,
        0x3,
        0x3,
        {0x0, 0x1, 0x2},
        {0x2, 0x0, 0x0},
        ov116_0226644C
    },
    {
        0x96,
        0x3,
        0x4,
        {0x0, 0x1, 0x2},
        {0x2, 0x0, 0x0},
        ov116_0226644C
    },
    {
        0x96,
        0x3,
        0x5,
        {0x2, 0x1, 0x0},
        {0x1, 0x0, 0x0},
        ov116_022667F4
    },
    {
        0x96,
        0x3,
        0x5,
        {0x2, 0x1, 0x0},
        {0x2, 0x0, 0x0},
        ov116_02266BF0
    },
    {
        0x96,
        0x3,
        0x5,
        {0x2, 0x1, 0x0},
        {0x2, 0x0, 0x0},
        ov116_02266BF0
    }
};

static void ov116_0226591C (SysTask * param0, void * param1)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_ov116_022660A8 * v3 = param1;
    UnkStruct_ov116_02265AA4 * v4 = &v3->unk_00;

    v2 = *v3->unk_0C;

    if ((ScreenWipe_Done() == 0) || (v3->unk_30->unk_2C.unk_00 == 1)) {
        SysTask_Done(param0);
        return;
    }

    if (v3->unk_28) {
        if (v3->unk_2C == 0) {
            ov116_022655DC(v3);
        }

        if (v3->unk_18 == 0) {
            if (v2 && (v2 < (8 - 0))) {
                v3->unk_18 = Unk_ov116_02267DA4[v2].unk_00;
                v3->unk_1C = 0;
                v4->unk_140 = Unk_ov116_02267DA4[v2].unk_04 - 1;
                v4->unk_144 = Unk_ov116_02267DA4[v2].unk_08;
                v4->unk_148 = Unk_ov116_02267DA4[v2].unk_08 + 5;

                for (v0 = 0; v0 < 2; v0++) {
                    int v5 = Unk_ov116_02267DA4[v2].unk_0C[v0];

                    sub_0200D430(v4->unk_00[v0].unk_00, 4 + v5);
                    v5 = Unk_ov116_02267DA4[v2].unk_18[v0];
                    sub_0200D430(v4->unk_A0[v0].unk_00, 0 + v5);
                }

                SysTask_Start(Unk_ov116_02267DA4[v2].unk_24, v3, 4097);
            }
        }
    } else if ((v3->unk_28 == 0) && (v3->unk_18 == 0)) {
        if (v3->unk_2C == 1) {
            ov116_02265754(v3);
        }
    }

    if (v3->unk_18) {
        v3->unk_18--;
    }
}

void ov116_02265A1C (UnkStruct_ov116_02262A8C * param0)
{
    param0->unk_2018.unk_0C = &param0->unk_279C.unk_14;
    param0->unk_2018.unk_10 = &param0->unk_F0;
    param0->unk_2018.unk_14 = &param0->unk_F4;
    param0->unk_2018.unk_30 = param0->unk_14;
    param0->unk_2018.unk_18 = 0;
    param0->unk_2018.unk_24 = 0;
    param0->unk_2018.unk_28 = 0;

    {
        int v0;

        for (v0 = 0; v0 < 2; v0++) {
            param0->unk_2018.unk_00.unk_00[v0].unk_00 = param0->unk_D0[v0];
            param0->unk_2018.unk_00.unk_A0[v0].unk_00 = param0->unk_C8[v0];
        }
    }

    param0->unk_2018.unk_08 = SysTask_Start(ov116_0226591C, &param0->unk_2018, 4096);
}

static void ov116_02265AA4 (SysTask * param0, void * param1)
{
    UnkStruct_ov116_022660A8 * v0 = param1;
    UnkStruct_ov116_02265AA4 * v1 = &v0->unk_00;
    BOOL v2[2];
    fx32 v3, v4;
    fx32 v5, v6;

    if ((ScreenWipe_Done() == 0) || (v0->unk_30->unk_2C.unk_00 == 1)) {
        SysTask_Done(param0);
        return;
    }

    switch (v0->unk_1C) {
    case 0:
        v1->unk_00[0].unk_08 = 0;
        v1->unk_00[0].unk_14 = 128;
        v1->unk_00[0].unk_16 = (128 + 32);
        v1->unk_00[0].unk_18 = 64;
        v1->unk_00[0].unk_1C = 24;

        sub_0200D3F4(v1->unk_00[0].unk_00, 1);

        v1->unk_A0[0].unk_08 = 0;
        v1->unk_A0[0].unk_14 = 128;
        v1->unk_A0[0].unk_16 = (128 + 32);
        v1->unk_A0[0].unk_18 = 64;
        v1->unk_A0[0].unk_1C = 24;

        sub_0200D3F4(v1->unk_A0[0].unk_00, 1);

        {
            sub_0200D67C(v1->unk_00[0].unk_00, &v5, &v6, ((192 + 64) << FX32_SHIFT));

            v3 = (v1->unk_00[0].unk_14 << FX32_SHIFT) + (sub_0201D250(v1->unk_00[0].unk_08) * v1->unk_00[0].unk_18);
            v4 = (v1->unk_00[0].unk_16 << FX32_SHIFT) + (sub_0201D264(v1->unk_00[0].unk_08) * v1->unk_00[0].unk_1C);

            sub_0200D650(v1->unk_00[0].unk_00, v3, v4, ((192 + 64) << FX32_SHIFT));
            ov116_02264764(&v1->unk_00[0].unk_20, v3, v3 + FX32_CONST(180), ov116_022658C8(v1->unk_148));
            ov116_02264764(&v1->unk_00[0].unk_38, v4, v4 - FX32_CONST(24), ov116_022658C8(v1->unk_148));
            sub_0200D67C(v1->unk_A0[0].unk_00, &v5, &v6, ((192 + 64) << FX32_SHIFT));

            v3 = (v1->unk_A0[0].unk_14 << FX32_SHIFT) + (sub_0201D250(v1->unk_A0[0].unk_08) * v1->unk_A0[0].unk_18);
            v4 = (v1->unk_A0[0].unk_16 << FX32_SHIFT) - (sub_0201D264(v1->unk_A0[0].unk_08) * v1->unk_A0[0].unk_1C);

            sub_0200D650(v1->unk_A0[0].unk_00, v3, v4, ((192 + 64) << FX32_SHIFT));
            ov116_02264764(&v1->unk_A0[0].unk_20, v3, v3 - FX32_CONST(180), ov116_022658C8(v1->unk_144));
            ov116_02264764(&v1->unk_A0[0].unk_38, v4, v4 + FX32_CONST(24), ov116_022658C8(v1->unk_144));
        }

        ov116_02265D84(&v1->unk_A0[0]);
        ov116_02265D84(&v1->unk_00[0]);
        v0->unk_1C++;
    case 1:
        v2[0] = ov116_02265FD4(&v1->unk_A0[0], v1->unk_144, 0, 1);
        v2[1] = ov116_02265F1C(&v1->unk_00[0], v1->unk_148, 1, 3);

        if (v2[0] && v2[1]) {
            ov116_02265D84(&v1->unk_A0[0]);
            ov116_02265D84(&v1->unk_00[0]);
            v0->unk_1C++;
        }
        break;
    case 2:
        v2[0] = ov116_02265D8C(&v1->unk_A0[0], v1->unk_144, 0, 3);
        v2[1] = ov116_02265D8C(&v1->unk_00[0], v1->unk_148, 1, 2);
        if (v2[0] && v2[1]) {
            ov116_02265D84(&v1->unk_A0[0]);
            ov116_02265D84(&v1->unk_00[0]);
            v0->unk_1C++;
        }

        break;
    case 3:
        v2[0] = ov116_02265E64(&v1->unk_A0[0], v1->unk_144, 0, 2);
        v2[1] = ov116_02265F1C(&v1->unk_00[0], v1->unk_148, 1, 3);
        if (v2[0] && v2[1]) {
            ov116_02265D84(&v1->unk_A0[0]);
            ov116_02265D84(&v1->unk_00[0]);
            v0->unk_1C++;
        }

        break;
    case 4:
        v2[0] = ov116_02265FD4(&v1->unk_A0[0], v1->unk_144, 0, 1);
        v2[1] = ov116_02265D8C(&v1->unk_00[0], v1->unk_148, 1, 2);

        if (v2[0] && v2[1]) {
            ov116_02265D84(&v1->unk_A0[0]);
            ov116_02265D84(&v1->unk_00[0]);
            v0->unk_1C++;
        }
        break;
    default:
        SysTask_Done(param0);
        break;
    }
}

static void ov116_02265D84 (UnkStruct_ov116_02265D84 * param0)
{
    param0->unk_04 = 0;
}

static BOOL ov116_02265D8C (UnkStruct_ov116_02265D84 * param0, int param1, int param2, int param3)
{
    BOOL v0[2];
    fx32 v1, v2;
    fx32 v3, v4;

    switch (param0->unk_04) {
    case 0:
        sub_0200D67C(param0->unk_00, &v1, &v2, ((192 + 64) << FX32_SHIFT));
        if (param2 == 0) {
            ov116_02264764(&param0->unk_20, v1, v1 - FX32_CONST(180), ov116_022658C8(param1));
        } else {
            ov116_02264764(&param0->unk_20, v1, v1 + FX32_CONST(180), ov116_022658C8(param1));
        }

        if (param3 == 2) {
            ov116_02264764(&param0->unk_38, v2, v2 - FX32_CONST(24), ov116_022658C8(param1));
        } else {
            ov116_02264764(&param0->unk_38, v2, v2 + FX32_CONST(24), ov116_022658C8(param1));
        }

        param0->unk_04++;
    case 1:
        v0[0] = ov116_02264774(&param0->unk_20);
        ov116_02264774(&param0->unk_38);
        sub_0200D650(param0->unk_00, param0->unk_20.unk_00, param0->unk_38.unk_00, ((192 + 64) << FX32_SHIFT));

        if (v0[0]) {
            return 1;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static BOOL ov116_02265E64 (UnkStruct_ov116_02265D84 * param0, int param1, int param2, int param3)
{
    BOOL v0[2];
    fx32 v1, v2;
    fx32 v3, v4;

    switch (param0->unk_04) {
    case 0:
        if (param2 == 0) {
            ov116_02264764(&param0->unk_20, FX32_CONST(308), FX32_CONST(128), ov116_022658C8(param1));
        } else {
            ov116_02264764(&param0->unk_20, FX32_CONST(-62), FX32_CONST(128), ov116_022658C8(param1));
        }

        if (param3 == 2) {
            ov116_02264764(&param0->unk_38, FX32_CONST((128 + 32)), FX32_CONST((128 + 32) - 24), ov116_022658C8(param1));
        } else {
            ov116_02264764(&param0->unk_38, FX32_CONST((128 + 32)), FX32_CONST((128 + 32) + 24), ov116_022658C8(param1));
        }

        param0->unk_04++;
    case 1:
        v0[0] = ov116_02264774(&param0->unk_20);
        ov116_02264774(&param0->unk_38);
        sub_0200D650(param0->unk_00, param0->unk_20.unk_00, param0->unk_38.unk_00, ((192 + 64) << FX32_SHIFT));

        if (v0[0]) {
            return 1;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static BOOL ov116_02265F1C (UnkStruct_ov116_02265D84 * param0, int param1, int param2, int param3)
{
    BOOL v0[2];
    fx32 v1, v2;
    fx32 v3, v4;

    switch (param0->unk_04) {
    case 0:
        if (param2 == 0) {
            ov116_02264764(&param0->unk_20, FX32_CONST(308), FX32_CONST(128), ov116_022658C8(param1));
        } else {
            ov116_02264764(&param0->unk_20, FX32_CONST(-62), FX32_CONST(128), ov116_022658C8(param1));
        }

        if (param3 == 2) {
            ov116_02264764(&param0->unk_38, FX32_CONST(96), FX32_CONST(96 - 24), ov116_022658C8(param1));
        } else {
            ov116_02264764(&param0->unk_38, FX32_CONST(96), FX32_CONST(96 + 24), ov116_022658C8(param1));
        }

        param0->unk_04++;
    case 1:
        v0[0] = ov116_02264774(&param0->unk_20);
        ov116_02264774(&param0->unk_38);
        sub_0200D650(param0->unk_00, param0->unk_20.unk_00, param0->unk_38.unk_00, ((192 + 64) << FX32_SHIFT));

        if (v0[0]) {
            return 1;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static BOOL ov116_02265FD4 (UnkStruct_ov116_02265D84 * param0, int param1, int param2, int param3)
{
    BOOL v0[2];
    fx32 v1, v2;
    fx32 v3, v4;

    switch (param0->unk_04) {
    case 0:
        param0->unk_10 = 0;
        param0->unk_08 = 0;
        param0->unk_04++;
    case 1:
        param0->unk_08 += (360 / ov116_022658C8(param1));

        if (param0->unk_08 >= 360) {
            param0->unk_08 = 0;
        }

        sub_0200D67C(param0->unk_00, &v3, &v4, ((192 + 64) << FX32_SHIFT));

        if (param2 == 0) {
            v1 = (param0->unk_14 << FX32_SHIFT) - (sub_0201D250(param0->unk_08) * param0->unk_18);
            v2 = (param0->unk_16 << FX32_SHIFT) - (sub_0201D264(param0->unk_08) * param0->unk_1C);
        } else {
            v1 = (param0->unk_14 << FX32_SHIFT) + (sub_0201D250(param0->unk_08) * param0->unk_18);
            v2 = (param0->unk_16 << FX32_SHIFT) - (sub_0201D264(param0->unk_08) * param0->unk_1C);
        }

        sub_0200D650(param0->unk_00, v1, v2, ((192 + 64) << FX32_SHIFT));

        if (param0->unk_08 == 0) {
            param0->unk_10++;

            if (param0->unk_10 >= param3) {
                param0->unk_04++;
                return 1;
            } else {
                param0->unk_04 = 1;
            }
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static void ov116_022660A8 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov116_022660A8 * v1 = param1;
    UnkStruct_ov116_02265AA4 * v2 = &v1->unk_00;
    BOOL v3[4] = {1, 1, 1, 1};
    fx32 v4, v5;
    fx32 v6, v7;

    if ((ScreenWipe_Done() == 0) || (v1->unk_30->unk_2C.unk_00 == 1)) {
        SysTask_Done(param0);
        return;
    }

    switch (v1->unk_1C) {
    case 0:
        for (v0 = 0; v0 < v2->unk_140; v0++) {
            v2->unk_00[v0].unk_08 = 0;
            v2->unk_00[v0].unk_14 = 128;
            v2->unk_00[v0].unk_16 = (128 + 32);
            v2->unk_00[v0].unk_18 = 64;
            v2->unk_00[v0].unk_1C = 24;

            sub_0200D3F4(v2->unk_00[v0].unk_00, 1);

            v2->unk_A0[v0].unk_08 = 0;
            v2->unk_A0[v0].unk_14 = 128;
            v2->unk_A0[v0].unk_16 = (128 + 32);
            v2->unk_A0[v0].unk_18 = 64;
            v2->unk_A0[v0].unk_1C = 24;

            sub_0200D3F4(v2->unk_A0[v0].unk_00, 1);

            sub_0200D67C(v2->unk_00[v0].unk_00, &v6, &v7, ((192 + 64) << FX32_SHIFT));
            v4 = (v2->unk_00[v0].unk_14 << FX32_SHIFT) + (sub_0201D250(v2->unk_00[v0].unk_08) * v2->unk_00[v0].unk_18);
            v5 = (v2->unk_00[v0].unk_16 << FX32_SHIFT) + (sub_0201D264(v2->unk_00[v0].unk_08) * v2->unk_00[v0].unk_1C);
            sub_0200D650(v2->unk_00[v0].unk_00, v4, v5, ((192 + 64) << FX32_SHIFT));

            sub_0200D67C(v2->unk_A0[v0].unk_00, &v6, &v7, ((192 + 64) << FX32_SHIFT));
            v4 = (v2->unk_A0[v0].unk_14 << FX32_SHIFT) + (sub_0201D250(v2->unk_A0[v0].unk_08) * v2->unk_A0[v0].unk_18);
            v5 = (v2->unk_A0[v0].unk_16 << FX32_SHIFT) - (sub_0201D264(v2->unk_A0[v0].unk_08) * v2->unk_A0[v0].unk_1C);
            sub_0200D650(v2->unk_A0[v0].unk_00, v4, v5, ((192 + 64) << FX32_SHIFT));
        }

        ov116_02265D84(&v2->unk_A0[0]);
        ov116_02265D84(&v2->unk_A0[1]);
        ov116_02265D84(&v2->unk_00[0]);
        ov116_02265D84(&v2->unk_00[1]);
        sub_0200D3F4(v2->unk_00[1].unk_00, 0);
        v1->unk_1C++;
    case 1:
        v3[0] = ov116_02265D8C(&v2->unk_A0[0], v2->unk_144, 0, 3);
        v3[1] = ov116_02265E64(&v2->unk_A0[1], v2->unk_144, 0, 2);
        v3[2] = ov116_02265F1C(&v2->unk_00[0], v2->unk_148, 1, 3);
        v3[3] = 1;

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);
            sub_0200D3F4(v2->unk_00[1].unk_00, 1);
            v1->unk_1C++;
        } else {
            break;
        }

    case 2:
        v3[0] = 1;
        v3[1] = ov116_02265FD4(&v2->unk_A0[1], v2->unk_144, 0, 1);
        v3[2] = ov116_02265D8C(&v2->unk_00[0], v2->unk_148, 1, 2);
        v3[3] = ov116_02265F1C(&v2->unk_00[1], v2->unk_148, 1, 3);

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);
            v1->unk_1C++;
        } else {
            break;
        }

    case 3:
        v3[0] = ov116_02265E64(&v2->unk_A0[0], v2->unk_144, 0, 2);
        v3[1] = ov116_02265D8C(&v2->unk_A0[1], v2->unk_144, 0, 3);
        v3[2] = 1;
        v3[3] = ov116_02265D8C(&v2->unk_00[1], v2->unk_148, 1, 2);

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);

            v1->unk_1C++;
        } else {
            break;
        }

    case 4:
        v3[0] = ov116_02265FD4(&v2->unk_A0[0], v2->unk_144, 0, 1);
        v3[1] = 1;
        v3[2] = 1;
        v3[3] = ov116_02265D8C(&v2->unk_00[1], v2->unk_148, 1, 2);

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);

            if (v2->unk_14C != 1) {
                v2->unk_14C++;
                v1->unk_1C = 1;
            } else {
                v2->unk_14C = 0;
                v1->unk_1C++;
            }
        }
        break;
    default:
        SysTask_Done(param0);
        break;
    }
}

static void ov116_0226644C (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov116_022660A8 * v1 = param1;
    UnkStruct_ov116_02265AA4 * v2 = &v1->unk_00;
    BOOL v3[4] = {1, 1, 1, 1};
    fx32 v4, v5;
    fx32 v6, v7;

    if ((ScreenWipe_Done() == 0) || (v1->unk_30->unk_2C.unk_00 == 1)) {
        SysTask_Done(param0);
        return;
    }

    switch (v1->unk_1C) {
    case 0:
        for (v0 = 0; v0 < v2->unk_140; v0++) {
            v2->unk_00[v0].unk_08 = 0;
            v2->unk_00[v0].unk_14 = 128;
            v2->unk_00[v0].unk_16 = (128 + 32);
            v2->unk_00[v0].unk_18 = 64;
            v2->unk_00[v0].unk_1C = 24;

            sub_0200D3F4(v2->unk_00[v0].unk_00, 1);

            v2->unk_A0[v0].unk_08 = 0;
            v2->unk_A0[v0].unk_14 = 128;
            v2->unk_A0[v0].unk_16 = (128 + 32);
            v2->unk_A0[v0].unk_18 = 64;
            v2->unk_A0[v0].unk_1C = 24;

            sub_0200D3F4(v2->unk_A0[v0].unk_00, 1);

            sub_0200D67C(v2->unk_00[v0].unk_00, &v6, &v7, ((192 + 64) << FX32_SHIFT));
            v4 = (v2->unk_00[v0].unk_14 << FX32_SHIFT) + (sub_0201D250(v2->unk_00[v0].unk_08) * v2->unk_00[v0].unk_18);
            v5 = (v2->unk_00[v0].unk_16 << FX32_SHIFT) + (sub_0201D264(v2->unk_00[v0].unk_08) * v2->unk_00[v0].unk_1C);
            sub_0200D650(v2->unk_00[v0].unk_00, v4, v5, ((192 + 64) << FX32_SHIFT));

            sub_0200D67C(v2->unk_A0[v0].unk_00, &v6, &v7, ((192 + 64) << FX32_SHIFT));
            v4 = (v2->unk_A0[v0].unk_14 << FX32_SHIFT) + (sub_0201D250(v2->unk_A0[v0].unk_08) * v2->unk_A0[v0].unk_18);
            v5 = (v2->unk_A0[v0].unk_16 << FX32_SHIFT) - (sub_0201D264(v2->unk_A0[v0].unk_08) * v2->unk_A0[v0].unk_1C);
            sub_0200D650(v2->unk_A0[v0].unk_00, v4, v5, ((192 + 64) << FX32_SHIFT));
        }

        ov116_02265D84(&v2->unk_A0[0]);
        ov116_02265D84(&v2->unk_A0[1]);
        ov116_02265D84(&v2->unk_00[0]);
        ov116_02265D84(&v2->unk_00[1]);
        sub_0200D3F4(v2->unk_00[1].unk_00, 0);
        v1->unk_1C++;
    case 1:
        v3[0] = ov116_02265D8C(&v2->unk_A0[0], v2->unk_144, 0, 3);
        v3[1] = ov116_02265E64(&v2->unk_A0[1], v2->unk_144, 0, 2);
        v3[2] = ov116_02265F1C(&v2->unk_00[0], v2->unk_148, 1, 3);
        v3[3] = 1;
        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);
            sub_0200D3F4(v2->unk_00[1].unk_00, 1);
            v1->unk_1C++;
        } else {
            break;
        }
    case 2:
        v3[0] = 1;
        v3[1] = ov116_02265FD4(&v2->unk_A0[1], v2->unk_144, 0, 2);
        v3[2] = ov116_02265D8C(&v2->unk_00[0], v2->unk_148, 1, 2);
        v3[3] = ov116_02265F1C(&v2->unk_00[1], v2->unk_148, 1, 3);
        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);
            v1->unk_1C++;
        } else {
            break;
        }
    case 3:
        v3[0] = ov116_02265E64(&v2->unk_A0[0], v2->unk_144, 0, 2);
        v3[1] = ov116_02265D8C(&v2->unk_A0[1], v2->unk_144, 0, 3);
        v3[2] = 1;
        v3[3] = ov116_02265D8C(&v2->unk_00[1], v2->unk_148, 1, 2);
        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);
            v1->unk_1C++;
        } else {
            break;
        }
    case 4:
        v3[0] = ov116_02265FD4(&v2->unk_A0[0], v2->unk_144, 0, 2);
        v3[1] = 1;
        v3[2] = 1;
        v3[3] = ov116_02265D8C(&v2->unk_00[1], v2->unk_148, 1, 2);
        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);
            if (v2->unk_14C != 1) {
                v2->unk_14C++;
                v1->unk_1C = 1;
            } else {
                v2->unk_14C = 0;
                v1->unk_1C++;
            }
        }
        break;
    default:
        SysTask_Done(param0);
        break;
    }
}

static void ov116_022667F4 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov116_022660A8 * v1 = param1;
    UnkStruct_ov116_02265AA4 * v2 = &v1->unk_00;
    BOOL v3[4] = {1, 1, 1, 1};
    fx32 v4, v5;
    fx32 v6, v7;

    if ((ScreenWipe_Done() == 0) || (v1->unk_30->unk_2C.unk_00 == 1)) {
        SysTask_Done(param0);
        return;
    }

    switch (v1->unk_1C) {
    case 0:
        for (v0 = 0; v0 < v2->unk_140; v0++) {
            v2->unk_00[v0].unk_08 = 0;
            v2->unk_00[v0].unk_14 = 128;
            v2->unk_00[v0].unk_16 = (128 + 32);
            v2->unk_00[v0].unk_18 = 64;
            v2->unk_00[v0].unk_1C = 24;

            sub_0200D3F4(v2->unk_00[v0].unk_00, 1);

            v2->unk_A0[v0].unk_08 = 0;
            v2->unk_A0[v0].unk_14 = 128;
            v2->unk_A0[v0].unk_16 = (128 + 32);
            v2->unk_A0[v0].unk_18 = 64;
            v2->unk_A0[v0].unk_1C = 24;

            sub_0200D3F4(v2->unk_A0[v0].unk_00, 1);

            sub_0200D67C(v2->unk_00[v0].unk_00, &v6, &v7, ((192 + 64) << FX32_SHIFT));
            v4 = (v2->unk_00[v0].unk_14 << FX32_SHIFT) + (sub_0201D250(v2->unk_00[v0].unk_08) * v2->unk_00[v0].unk_18);
            v5 = (v2->unk_00[v0].unk_16 << FX32_SHIFT) + (sub_0201D264(v2->unk_00[v0].unk_08) * v2->unk_00[v0].unk_1C);
            sub_0200D650(v2->unk_00[v0].unk_00, v4, v5, ((192 + 64) << FX32_SHIFT));

            sub_0200D67C(v2->unk_A0[v0].unk_00, &v6, &v7, ((192 + 64) << FX32_SHIFT));
            v4 = (v2->unk_A0[v0].unk_14 << FX32_SHIFT) + (sub_0201D250(v2->unk_A0[v0].unk_08) * v2->unk_A0[v0].unk_18);
            v5 = (v2->unk_A0[v0].unk_16 << FX32_SHIFT) - (sub_0201D264(v2->unk_A0[v0].unk_08) * v2->unk_A0[v0].unk_1C);
            sub_0200D650(v2->unk_A0[v0].unk_00, v4, v5, ((192 + 64) << FX32_SHIFT));
        }

        ov116_02265D84(&v2->unk_A0[0]);
        ov116_02265D84(&v2->unk_A0[1]);
        ov116_02265D84(&v2->unk_00[0]);
        ov116_02265D84(&v2->unk_00[1]);
        sub_0200D3F4(v2->unk_00[1].unk_00, 0);
        v1->unk_1C++;

    case 1:
        v3[0] = ov116_02265D8C(&v2->unk_A0[0], v2->unk_144, 0, 3);
        v3[1] = ov116_02265E64(&v2->unk_A0[1], v2->unk_144, 0, 2);
        v3[2] = ov116_02265F1C(&v2->unk_00[0], v2->unk_148, 1, 3);
        v3[3] = 1;

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);
            sub_0200D3F4(v2->unk_00[1].unk_00, 1);
            v1->unk_1C++;
        } else {
            break;
        }

    case 2:
        v3[0] = 1;
        v3[1] = ov116_02265FD4(&v2->unk_A0[1], v2->unk_144, 0, 1);
        v3[2] = ov116_02265D8C(&v2->unk_00[0], v2->unk_148, 1, 2);
        v3[3] = ov116_02265F1C(&v2->unk_00[1], v2->unk_148, 1, 3);

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);

            v1->unk_1C++;
        } else {
            break;
        }

    case 3:
        v3[1] = ov116_02265FD4(&v2->unk_A0[1], v2->unk_144, 1, 1);
        if (v3[1]) {
            ov116_02265D84(&v2->unk_A0[1]);
            v1->unk_1C++;
        } else {
            break;
        }

    case 4:
        v3[0] = ov116_02265E64(&v2->unk_A0[0], v2->unk_144, 0, 2);
        v3[1] = ov116_02265D8C(&v2->unk_A0[1], v2->unk_144, 0, 3);
        v3[2] = 1;
        v3[3] = ov116_02265D8C(&v2->unk_00[1], v2->unk_148, 1, 2);

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);
            v1->unk_1C++;
        } else {
            break;
        }

    case 5:
        v3[0] = ov116_02265FD4(&v2->unk_A0[0], v2->unk_144, 0, 1);
        v3[1] = 1;
        v3[2] = 1;
        v3[3] = ov116_02265D8C(&v2->unk_00[1], v2->unk_148, 1, 2);

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);
            v1->unk_1C++;
        } else {
            break;
        }

    case 6:
        v3[0] = ov116_02265FD4(&v2->unk_A0[0], v2->unk_144, 1, 1);

        if (v3[0]) {
            ov116_02265D84(&v2->unk_A0[0]);
            if (v2->unk_14C != 1) {
                v2->unk_14C++;
                v1->unk_1C = 1;
            } else {
                v2->unk_14C = 0;
                v1->unk_1C++;
            }
        }
        break;
    default:
        SysTask_Done(param0);
        break;
    }
}

static void ov116_02266BF0 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov116_022660A8 * v1 = param1;
    UnkStruct_ov116_02265AA4 * v2 = &v1->unk_00;
    BOOL v3[4] = {1, 1, 1, 1};
    fx32 v4, v5;
    fx32 v6, v7;

    if ((ScreenWipe_Done() == 0) || (v1->unk_30->unk_2C.unk_00 == 1)) {
        SysTask_Done(param0);
        return;
    }

    switch (v1->unk_1C) {
    case 0:
        for (v0 = 0; v0 < v2->unk_140; v0++) {
            v2->unk_00[v0].unk_08 = 0;
            v2->unk_00[v0].unk_14 = 128;
            v2->unk_00[v0].unk_16 = (128 + 32);
            v2->unk_00[v0].unk_18 = 64;
            v2->unk_00[v0].unk_1C = 24;

            sub_0200D3F4(v2->unk_00[v0].unk_00, 1);

            v2->unk_A0[v0].unk_08 = 0;
            v2->unk_A0[v0].unk_14 = 128;
            v2->unk_A0[v0].unk_16 = (128 + 32);
            v2->unk_A0[v0].unk_18 = 64;
            v2->unk_A0[v0].unk_1C = 24;

            sub_0200D3F4(v2->unk_A0[v0].unk_00, 1);

            sub_0200D67C(v2->unk_00[v0].unk_00, &v6, &v7, ((192 + 64) << FX32_SHIFT));
            v4 = (v2->unk_00[v0].unk_14 << FX32_SHIFT) + (sub_0201D250(v2->unk_00[v0].unk_08) * v2->unk_00[v0].unk_18);
            v5 = (v2->unk_00[v0].unk_16 << FX32_SHIFT) + (sub_0201D264(v2->unk_00[v0].unk_08) * v2->unk_00[v0].unk_1C);
            sub_0200D650(v2->unk_00[v0].unk_00, v4, v5, ((192 + 64) << FX32_SHIFT));

            sub_0200D67C(v2->unk_A0[v0].unk_00, &v6, &v7, ((192 + 64) << FX32_SHIFT));
            v4 = (v2->unk_A0[v0].unk_14 << FX32_SHIFT) + (sub_0201D250(v2->unk_A0[v0].unk_08) * v2->unk_A0[v0].unk_18);
            v5 = (v2->unk_A0[v0].unk_16 << FX32_SHIFT) - (sub_0201D264(v2->unk_A0[v0].unk_08) * v2->unk_A0[v0].unk_1C);
            sub_0200D650(v2->unk_A0[v0].unk_00, v4, v5, ((192 + 64) << FX32_SHIFT));
        }

        ov116_02265D84(&v2->unk_A0[0]);
        ov116_02265D84(&v2->unk_A0[1]);
        ov116_02265D84(&v2->unk_00[0]);
        ov116_02265D84(&v2->unk_00[1]);
        sub_0200D3F4(v2->unk_00[1].unk_00, 0);
        v1->unk_1C++;
    case 1:
        v3[0] = ov116_02265D8C(&v2->unk_A0[0], v2->unk_144, 0, 3);
        v3[1] = ov116_02265E64(&v2->unk_A0[1], v2->unk_144, 0, 2);
        v3[2] = ov116_02265F1C(&v2->unk_00[0], v2->unk_148, 1, 3);
        v3[3] = 1;

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);
            sub_0200D3F4(v2->unk_00[1].unk_00, 1);
            v1->unk_1C++;
        } else {
            break;
        }

    case 2:
        v3[0] = 1;
        v3[1] = ov116_02265FD4(&v2->unk_A0[1], v2->unk_144, 0, 1);
        v3[2] = ov116_02265D8C(&v2->unk_00[0], v2->unk_148, 1, 2);
        v3[3] = ov116_02265F1C(&v2->unk_00[1], v2->unk_148, 1, 3);

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);

            v1->unk_1C++;
        } else {
            break;
        }

    case 3:
        v3[1] = ov116_02265FD4(&v2->unk_A0[1], v2->unk_144, 1, 1);

        if (v3[1]) {
            ov116_02265D84(&v2->unk_A0[1]);
            v1->unk_1C++;
        } else {
            break;
        }

    case 4:
        v3[0] = ov116_02265E64(&v2->unk_A0[0], v2->unk_144, 0, 2);
        v3[1] = ov116_02265D8C(&v2->unk_A0[1], v2->unk_144, 0, 3);
        v3[2] = 1;
        v3[3] = ov116_02265D8C(&v2->unk_00[1], v2->unk_148, 1, 2);

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);

            v1->unk_1C++;
        } else {
            break;
        }

    case 5:
        v3[0] = ov116_02265FD4(&v2->unk_A0[0], v2->unk_144, 0, 1);
        v3[1] = 1;
        v3[2] = 1;
        v3[3] = ov116_02265D8C(&v2->unk_00[1], v2->unk_148, 1, 2);

        if (v3[0] && v3[1] && v3[2] && v3[3]) {
            ov116_02265D84(&v2->unk_A0[0]);
            ov116_02265D84(&v2->unk_A0[1]);
            ov116_02265D84(&v2->unk_00[0]);
            ov116_02265D84(&v2->unk_00[1]);

            v1->unk_1C++;
        } else {
            break;
        }

    case 6:
        v3[0] = ov116_02265FD4(&v2->unk_A0[0], v2->unk_144, 1, 1);

        if (v3[0]) {
            ov116_02265D84(&v2->unk_A0[0]);

            if (v2->unk_14C != 8) {
                v2->unk_14C++;
                v1->unk_1C = 1;
            } else {
                v2->unk_14C = 0;
                v1->unk_1C++;
            }
        }

        break;
    default:
        SysTask_Done(param0);
        break;
    }
}
