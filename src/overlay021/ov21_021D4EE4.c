#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "overlay021/struct_ov21_021D4FE4.h"

#include "heap.h"
#include "overlay021/ov21_021D4EE4.h"

typedef struct UnkStruct_ov21_021D4EE4_t {
    const UnkStruct_ov21_021D4FE4 * unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov21_021D4EE4;

static int inline inline_ov21_021D4F7C(const UnkStruct_ov21_021D4EE4 * param0);
static int inline inline_ov21_021D5040(const UnkStruct_ov21_021D4EE4 * param0, int param1, int param2);
static void inline inline_ov21_021D4F20(UnkStruct_ov21_021D4EE4 * param0, int param1);
static void inline inline_ov21_021D4F20_1(UnkStruct_ov21_021D4EE4 * param0, int param1);
static void ov21_021D5040(UnkStruct_ov21_021D4EE4 * param0, int param1);
static void ov21_021D5090(UnkStruct_ov21_021D4EE4 * param0, int param1);
static void ov21_021D50E0(UnkStruct_ov21_021D4EE4 * param0, int param1);
static void ov21_021D5110(UnkStruct_ov21_021D4EE4 * param0, int param1);
static void ov21_021D5140(UnkStruct_ov21_021D4EE4 * param0, int param1);

UnkStruct_ov21_021D4EE4 * ov21_021D4EE4 (int param0)
{
    UnkStruct_ov21_021D4EE4 * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4EE4));
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4EE4));

    return v0;
}

void ov21_021D4EFC (UnkStruct_ov21_021D4EE4 * param0)
{
    Heap_FreeToHeap(param0);
}

void ov21_021D4F04 (UnkStruct_ov21_021D4EE4 * param0, const UnkStruct_ov21_021D4FE4 * param1, int param2, int param3)
{
    memset(param0, 0, sizeof(UnkStruct_ov21_021D4EE4));

    param0->unk_00 = param1;
    param0->unk_04 = param2;
    param0->unk_08 = param3;
}

void ov21_021D4F20 (UnkStruct_ov21_021D4EE4 * param0, int param1, int param2)
{
    int v0;

    switch (param1) {
    case 0:
        ov21_021D50E0(param0, param2);
        break;
    case 1:
        ov21_021D5110(param0, param2);
        break;
    case 2:
        inline_ov21_021D4F20(param0, param2);
        break;
    case 3:
        inline_ov21_021D4F20_1(param0, param2);
        break;
    case 4:
        ov21_021D5140(param0, param2);
        break;
    }
}

int ov21_021D4F7C (const UnkStruct_ov21_021D4EE4 * param0)
{
    int v0;

    v0 = inline_ov21_021D4F7C(param0);
    return param0->unk_00[v0].unk_18;
}

void ov21_021D4F94 (const UnkStruct_ov21_021D4EE4 * param0, int * param1, int * param2)
{
    int v0;

    v0 = inline_ov21_021D4F7C(param0);

    *param1 = param0->unk_00[v0].unk_00;
    *param2 = param0->unk_00[v0].unk_04;
}

void ov21_021D4FBC (const UnkStruct_ov21_021D4EE4 * param0, int * param1, int * param2)
{
    int v0;

    v0 = inline_ov21_021D4F7C(param0);

    *param1 = param0->unk_00[v0].unk_08;
    *param2 = param0->unk_00[v0].unk_0C;
}

void ov21_021D4FE4 (UnkStruct_ov21_021D4FE4 * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
    param0->unk_08 = param3;
    param0->unk_0C = param4;
    param0->unk_10 = param5;
    param0->unk_14 = param6;
    param0->unk_18 = param7;
}

void ov21_021D4FFC (int param0, int * param1, int * param2, int param3, int param4, int param5, int param6)
{
    if ((param0 == 0) || (param0 == 2)) {
        param3 -= param5 / 2;
    } else {
        param3 += param5 / 2;
    }

    if ((param0 == 0) || (param0 == 1)) {
        param4 -= param6 / 2;
    } else {
        param4 += param6 / 2;
    }

    *param1 = param3;
    *param2 = param4;
}

static int inline inline_ov21_021D4F7C (const UnkStruct_ov21_021D4EE4 * param0)
{
    int v0;

    v0 = param0->unk_10 * param0->unk_04;
    v0 += param0->unk_0C;

    return v0;
}

static int inline inline_ov21_021D5040 (const UnkStruct_ov21_021D4EE4 * param0, int param1, int param2)
{
    int v0;

    v0 = param2 * param0->unk_04;
    v0 += param1;

    return v0;
}

static void ov21_021D5040 (UnkStruct_ov21_021D4EE4 * param0, int param1)
{
    int v0;
    const UnkStruct_ov21_021D4FE4 * v1;
    int v2;
    int v3;

    GF_ASSERT((param1 == -1) || (param1 == 1));
    v3 = 0;

    do {
        v3 += param1;
        v0 = param0->unk_0C + v3;

        if ((v0 < 0) || (v0 >= param0->unk_04)) {
            break;
        }

        v2 = inline_ov21_021D5040(param0, v0, param0->unk_10);
        v1 = &param0->unk_00[v2];
    } while (v1->unk_10 == 2);

    if ((v0 >= 0) && (v0 < param0->unk_04)) {
        if (v1->unk_10 == 0) {
            param0->unk_0C = v0;
        }
    }
}

static void ov21_021D5090 (UnkStruct_ov21_021D4EE4 * param0, int param1)
{
    int v0;
    const UnkStruct_ov21_021D4FE4 * v1;
    int v2;
    int v3;

    GF_ASSERT((param1 == -1) || (param1 == 1));

    v3 = 0;

    do {
        v3 += param1;
        v0 = param0->unk_10 + v3;

        if ((v0 < 0) || (v0 >= param0->unk_08)) {
            break;
        }

        v2 = inline_ov21_021D5040(param0, param0->unk_0C, v0);
        v1 = &param0->unk_00[v2];
    } while (v1->unk_14 == 2);

    if ((v0 >= 0) && (v0 < param0->unk_08)) {
        if (v1->unk_10 == 0) {
            param0->unk_10 = v0;
        }
    }
}

static void ov21_021D50E0 (UnkStruct_ov21_021D4EE4 * param0, int param1)
{
    int v0;
    int v1;
    int v2;

    v2 = MATH_ABS(param1);
    v1 = param1 / v2;

    for (v0 = 0; v0 < v2; v0++) {
        ov21_021D5040(param0, v1);
    }
}

static void ov21_021D5110 (UnkStruct_ov21_021D4EE4 * param0, int param1)
{
    int v0;
    int v1;
    int v2;

    v2 = MATH_ABS(param1);
    v1 = param1 / v2;

    for (v0 = 0; v0 < v2; v0++) {
        ov21_021D5090(param0, v1);
    }
}

static void inline inline_ov21_021D4F20 (UnkStruct_ov21_021D4EE4 * param0, int param1)
{
    GF_ASSERT((param1 >= 0) && (param1 < param0->unk_04));
    param0->unk_0C = param1;
}

static void inline inline_ov21_021D4F20_1 (UnkStruct_ov21_021D4EE4 * param0, int param1)
{
    GF_ASSERT((param1 >= 0) && (param1 < param0->unk_08));
    param0->unk_10 = param1;
}

static void ov21_021D5140 (UnkStruct_ov21_021D4EE4 * param0, int param1)
{
    int v0;
    int v1 = param0->unk_04 * param0->unk_08;

    for (v0 = 0; v0 < v1; v0++) {
        if (param0->unk_00[v0].unk_18 == param1) {
            param0->unk_0C = v0 % param0->unk_04;
            param0->unk_10 = v0 / param0->unk_04;
            break;
        }
    }
}
