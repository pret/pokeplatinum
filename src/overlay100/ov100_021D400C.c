#include <nitro.h>
#include <string.h>

#include "struct_decls/sys_task.h"

#include "overlay100/struct_ov100_021D4104.h"

#include "unk_0200C6E4.h"
#include "unk_0201D15C.h"
#include "overlay100/ov100_021D400C.h"

typedef struct {
    f32 unk_00;
    f32 unk_04;
} UnkStruct_ov100_021D400C;

static BOOL ov100_021D400C(s16 param0, s16 param1, f32 param2, f32 param3, f32 * param4, f32 * param5, f32 param6, s16 param7);
static BOOL ov100_021D4104(UnkStruct_ov100_021D4104 * param0, s16 param1, s16 param2, f32 param3, int param4);
static void ov100_021D41FC(UnkStruct_ov100_021D4104 * param0);
static void ov100_021D4214(UnkStruct_ov100_021D4104 * param0);
static void ov100_021D4264(UnkStruct_ov100_021D4104 * param0, int param1, int param2, int param3, int param4);
static void ov100_021D42B0(UnkStruct_ov100_021D4104 * param0);
static void ov100_021D4318(UnkStruct_ov100_021D4104 * param0);
static void ov100_021D43BC(UnkStruct_ov100_021D4104 * param0);

static void(*const Unk_ov100_021D5334[])(UnkStruct_ov100_021D4104 *) = {
    ov100_021D41FC,
    ov100_021D4214,
    ov100_021D42B0,
    ov100_021D4318
};

static BOOL ov100_021D400C (s16 param0, s16 param1, f32 param2, f32 param3, f32 * param4, f32 * param5, f32 param6, s16 param7)
{
    f32 v0;
    f32 v1;
    UnkStruct_ov100_021D400C v2;
    UnkStruct_ov100_021D400C v3;
    UnkStruct_ov100_021D400C v4;

    v4.unk_00 = 0;
    v4.unk_04 = 0;

    v3.unk_00 = (param0 - param2);
    v3.unk_04 = (param1 - param3);

    v2.unk_00 = 0;
    v2.unk_04 = 0;

    v1 = (v3.unk_00 * v3.unk_00) + (v3.unk_04 * v3.unk_04);
    v0 = FX_Sqrt(FX_F32_TO_FX32(v1));
    v0 = FX_FX32_TO_F32(v0);

    if ((v0 < param6) || (param7 > v0) || (v0 == 0)) {
        return 0;
    }

    v2.unk_00 = (v3.unk_00 * param6) / v0;
    v2.unk_04 = (v3.unk_04 * param6) / v0;

    *param4 = (v2.unk_00 + v4.unk_00);
    *param5 = (v2.unk_04 + v4.unk_04);

    return 1;
}

static BOOL ov100_021D4104 (UnkStruct_ov100_021D4104 * param0, s16 param1, s16 param2, f32 param3, int param4)
{
    f32 v0;
    f32 v1;
    fx32 v2;
    fx32 v3;
    f32 v4;
    f32 v5;
    BOOL v6;
    fx32 v7, v8;

    sub_0200D67C(param0->unk_00, &v2, &v3, FX32_CONST(192));

    v0 = FX_FX32_TO_F32(v2);
    v1 = FX_FX32_TO_F32(v3);

    v6 = ov100_021D400C(param1, param2, v0, v1, &v4, &v5, param3, param4);

    if (v6) {
        v7 = FX_F32_TO_FX32(v4);
        v8 = FX_F32_TO_FX32(v5);

        param0->unk_20 += 8;
        param0->unk_20 %= 360;

        v7 += (sub_0201D250(param0->unk_20) * 1);
        v8 += (sub_0201D264(param0->unk_20) * 1);

        sub_0200D5E8(param0->unk_00, v7, v8);
    }

    return v6;
}

static void ov100_021D41FC (UnkStruct_ov100_021D4104 * param0)
{
    BOOL v0 = ov100_021D4104(param0, 128, 40, 5.0f, 32);
}

static void ov100_021D4214 (UnkStruct_ov100_021D4104 * param0)
{
    fx32 v0, v1;

    param0->unk_1C += 8;
    param0->unk_1C %= 360;

    v0 = (128 << FX32_SHIFT) + (sub_0201D250(param0->unk_1C) * 64);
    v1 = (48 << FX32_SHIFT) + (sub_0201D264(param0->unk_1C) * 24);

    sub_0200D650(param0->unk_00, v0, v1, FX32_CONST(192));

    param0->unk_14 = v1 / FX32_ONE;
}

static void ov100_021D4264 (UnkStruct_ov100_021D4104 * param0, int param1, int param2, int param3, int param4)
{
    fx32 v0, v1;

    param0->unk_1C += 8;
    param0->unk_1C %= 360;

    v0 = (param1 << FX32_SHIFT) + (sub_0201D250(param0->unk_1C) * param3);
    v1 = (param2 << FX32_SHIFT) + (sub_0201D264(param0->unk_1C) * param4);

    sub_0200D650(param0->unk_00, v0, v1, FX32_CONST(192));
}

static void ov100_021D42B0 (UnkStruct_ov100_021D4104 * param0)
{
    fx32 v0, v1;
    static s16 v2[][2] = {
        {97, 80},
        {87, 106},
        {102, 94},
        {182, 83},
        {129, 116},
        {97, 116},
        {172, 84},
        {187, 99},
        {168, 123},
        {108, 93},
    };
    BOOL v3;

    v3 = ov100_021D4104(param0, v2[param0->unk_28[2]][0], v2[param0->unk_28[2]][1], 3.0f, 10);

    if (v3 == 0) {
        param0->unk_28[2]++;
        param0->unk_28[2] %= NELEMS(v2);
        param0->unk_28[2] = LCRNG_Next() % NELEMS(v2);
        param0->unk_0C = 3;
    }

    sub_0200D67C(param0->unk_00, &v0, &v1, FX32_CONST(192));

    param0->unk_14 = (v1 / FX32_ONE);
}

static void ov100_021D4318 (UnkStruct_ov100_021D4104 * param0)
{
    fx32 v0, v1;

    param0->unk_20 += 8;
    param0->unk_20 %= 360;

    if (param0->unk_20 < 12) {
        param0->unk_24++;
        param0->unk_24 %= 3;
        param0->unk_28[0] = (LCRNG_Next() % param0->unk_24) + 1;
        param0->unk_28[1] = (LCRNG_Next() % param0->unk_24) + 1;
        param0->unk_0C = 2;
    }

    sub_0200D67C(param0->unk_00, &v0, &v1, FX32_CONST(192));

    v0 += (sub_0201D250(param0->unk_20) * (3 * param0->unk_28[0]));
    v1 += (sub_0201D264(param0->unk_20) * (3 * param0->unk_28[1]));

    sub_0200D650(param0->unk_00, v0, v1, FX32_CONST(192));

    param0->unk_14 = v1 / FX32_ONE;
}

static void ov100_021D43BC (UnkStruct_ov100_021D4104 * param0)
{
    f32 v0;

    v0 = param0->unk_14;
    v0 /= 100.0f;
    v0 = 0.8f - v0;

    if (v0 <= 0.2f) {
        v0 = 0.2f;
    }

    if (v0 >= 0.6f) {
        v0 = 0.6f;
    }

    sub_0200D6E8(param0->unk_00, v0, v0);
    sub_0200D474(param0->unk_00, param0->unk_14);
}

void ov100_021D4414 (SysTask * param0, void * param1)
{
    UnkStruct_ov100_021D4104 * v0 = param1;

    Unk_ov100_021D5334[v0->unk_0C](v0);

    ov100_021D43BC(v0);
    sub_0200D33C(v0->unk_00);
}

void ov100_021D4438 (SysTask * param0, void * param1)
{
    UnkStruct_ov100_021D4104 * v0 = param1;

    if (v0->unk_0C) {
        ov100_021D4264(v0, 128, 48 - 12, 32, 12);
    } else {
        s16 v1, v2;
        BOOL v3;

        if (v0->unk_04 && v0->unk_3C) {
            sub_0200D550(v0->unk_04, &v1, &v2);

            v3 = ov100_021D4104(v0, v1, v2, 3.0f, 1);

            {
                f32 v4, v5;

                sub_0200D788(v0->unk_00, &v4, &v5);

                if (v4 > 0.10f) {
                    v4 = v4 - 0.002f;
                }

                sub_0200D6E8(v0->unk_00, v4, v4);
            }
        }
    }

    sub_0200D33C(v0->unk_00);
}
