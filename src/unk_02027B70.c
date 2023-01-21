#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_020973A8_decl.h"

#include "struct_defs/struct_02027854.h"
#include "struct_defs/struct_02027BF4.h"

#include "heap.h"
#include "unk_02027B70.h"
#include "unk_0209739C.h"

static void sub_02027C50(UnkStruct_02027854 * param0);
static int sub_02027C7C(const UnkStruct_02027BF4 * param0, int param1, int param2);

void sub_02027B70 (UnkStruct_02027854 * param0)
{
    int v0;

    MI_CpuClear8(param0, sizeof(UnkStruct_02027854) * 128);

    for (v0 = 0; v0 < 128; v0++) {
        param0[v0].unk_01 = 0;
        param0[v0].unk_00 = 0;
    }
}

void sub_02027B90 (UnkStruct_02027854 * param0, int param1, const u16 * param2, int param3)
{
    int v0;
    UnkStruct_02027BF4 * v1 = sub_02027BF4(param1);

    for (v0 = 0; v0 < 128 || v0 < param3; v0++) {
        sub_02027C50(&param0[v0]);
        param0[v0].unk_00 = param2[v0 * 2] - 149 + 1;
        param0[v0].unk_01 = 5;
        param0[v0].unk_02 = sub_02027C7C(v1, param0[v0].unk_00, param0[v0].unk_0C) * 4;
        param0[v0].unk_08 = param2[v0 * 2 + 1];
        param0[v0].unk_0A = 100;
        param0[v0].unk_0B = 3;
    }

    FreeToHeap(v1);
}

UnkStruct_02027BF4 * sub_02027BF4 (int param0)
{
    int v0;
    UnkStruct_02027BF4 * v1;
    UnkStruct_020973A8 * v2;
    NARC * v3;

    v3 = sub_0209739C(param0);
    v1 = AllocFromHeap(param0, sizeof(UnkStruct_02027BF4) * 64);

    for (v0 = 0; v0 < 64; v0++) {
        v2 = sub_020973A8(v3, v0, param0);

        v1[v0].unk_00 = sub_020973D4(v2, 3);
        v1[v0].unk_01 = sub_020973D4(v2, 4);
        v1[v0].unk_02 = sub_020973D4(v2, 2);

        FreeToHeap(v2);
    }

    sub_020973B0(v3);
    return v1;
}

static void sub_02027C50 (UnkStruct_02027854 * param0)
{
    param0->unk_00 = 0;
    param0->unk_01 = 0;
    param0->unk_02 = 0;
    param0->unk_04 = 0;
    param0->unk_06 = 0;
    param0->unk_08 = 0;
    param0->unk_0A = 0;
    param0->unk_0B = 0;
    param0->unk_0C = 0;
    param0->unk_0D = 0;
}

static int sub_02027C68 (UnkStruct_02027854 * param0, const UnkStruct_02027BF4 * param1)
{
    return param1[param0->unk_00 - 1].unk_02 * param0->unk_0B;
}

static int sub_02027C7C (const UnkStruct_02027BF4 * param0, int param1, int param2)
{
    int v0;

    v0 = param0[param1 - 1].unk_00 * 60;

    if (param2 == 1) {
        v0 = (v0 * 3) / 4;
    } else if (param2 == 2) {
        v0 = v0 + (v0 / 2);
    }

    return v0;
}

static int sub_02027CA8 (const UnkStruct_02027BF4 * param0, int param1, int param2)
{
    int v0 = param0[param1 - 1].unk_01;

    if (param2 == 2) {
        return v0 / 2;
    } else if (param2 == 1) {
        return v0 + v0 / 2;
    } else {
        return v0;
    }
}

static int sub_02027CCC (const UnkStruct_02027854 * param0)
{
    if (param0->unk_0C == 3) {
        return 4 + 2;
    } else {
        return 4;
    }
}

static int sub_02027CDC (const UnkStruct_02027854 * param0)
{
    if (param0->unk_0C == 4) {
        return 10 + 5;
    } else {
        return 10;
    }
}

static int sub_02027CEC (UnkStruct_02027854 * param0)
{
    return 1 + (1 + 1 + 1 + sub_02027CCC(param0)) * sub_02027CDC(param0);
}

int sub_02027D04 (const UnkStruct_02027854 * param0, int param1)
{
    return param0[param1].unk_01;
}

int sub_02027D10 (const UnkStruct_02027854 * param0, int param1)
{
    return param0[param1].unk_00;
}

int sub_02027D18 (const UnkStruct_02027854 * param0, int param1)
{
    int v0;

    v0 = param0[param1].unk_0A;

    if (v0 == 0) {
        return 0;
    } else if (v0 <= 50) {
        return 1;
    } else {
        return 2;
    }
}

int sub_02027D34 (const UnkStruct_02027854 * param0, int param1)
{
    return param0[param1].unk_0B;
}

void sub_02027D40 (UnkStruct_02027854 * param0, int param1, const UnkStruct_02027BF4 * param2, int param3)
{
    param0[param1].unk_00 = param3;
    param0[param1].unk_01 = 1;
    param0[param1].unk_02 = sub_02027C7C(param2, param3, param0[param1].unk_0C);
    param0[param1].unk_04 = 0;
    param0[param1].unk_06 = 0;
    param0[param1].unk_08 = 0;
    param0[param1].unk_0A = 100;
    param0[param1].unk_0B = 5;
    param0[param1].unk_0D = 1;
}

void sub_02027D78 (UnkStruct_02027854 * param0, int param1)
{
    param0[param1].unk_0A = 100;
}

BOOL sub_02027D84 (const UnkStruct_02027854 * param0, int param1)
{
    return param0[param1].unk_0D;
}

void sub_02027D90 (UnkStruct_02027854 * param0, int param1, BOOL param2)
{
    param0[param1].unk_0D = param2;
}

int sub_02027D9C (const UnkStruct_02027854 * param0, int param1)
{
    return param0[param1].unk_0C;
}

void sub_02027DA8 (UnkStruct_02027854 * param0, int param1, int param2)
{
    param0[param1].unk_0C = param2;
}

int sub_02027DB4 (const UnkStruct_02027854 * param0, int param1)
{
    return param0[param1].unk_08;
}

int sub_02027DC0 (UnkStruct_02027854 * param0, int param1)
{
    int v0;

    v0 = param0[param1].unk_08;
    sub_02027C50(&param0[param1]);

    return v0;
}

static void sub_02027DD4 (UnkStruct_02027854 * param0, const UnkStruct_02027BF4 * param1)
{
    switch (param0->unk_01) {
    case 0:
        GF_ASSERT(0);
        break;
    case 1:
    case 2:
    case 3:
        param0->unk_01++;
        break;
    case 4:
        param0->unk_08 = sub_02027C68(param0, param1);

        if (param0->unk_08 < 2) {
            param0->unk_08 = 2;
        }

        param0->unk_01++;
        break;
    case 5:
        param0->unk_08 = 0;
        param0->unk_01 = 2;
        param0->unk_0B = 5;
        param0->unk_06++;

        if (param0->unk_06 == sub_02027CDC(param0)) {
            sub_02027C50(param0);
        }
        break;
    }
}

static void sub_02027E40 (UnkStruct_02027854 * param0, const UnkStruct_02027BF4 * param1, int param2)
{
    int v0;
    int v1;
    int v2;

    if (param0->unk_01 == 5) {
        return;
    }

    v1 = sub_02027CA8(param1, param0->unk_00, param0->unk_0C);
    param2 += param0->unk_04;

    v0 = param2 / 60;
    param0->unk_04 = param2 % 60;

    if (v0 == 0) {
        return;
    }

    if (param0->unk_0A >= v1 * v0) {
        param0->unk_0A -= v1 * v0;
        return;
    }

    if (param0->unk_0A > 0) {
        v2 = (param0->unk_0A + (v1 - 1)) / v1;
        v0 -= v2;
        param0->unk_0A = 0;
    }

    if (param0->unk_0B > v0) {
        param0->unk_0B -= v0;
    } else {
        param0->unk_0B = 0;
    }
}

void sub_02027EAC (UnkStruct_02027854 * param0, const UnkStruct_02027BF4 * param1, int param2)
{
    int v0;
    s32 v1;
    UnkStruct_02027854 * v2;

    for (v0 = 0; v0 < 128; v0++) {
        v2 = &param0[v0];

        if ((v2->unk_00 == 0) || (v2->unk_01 == 0) || (v2->unk_0D == 0)) {
            continue;
        }

        if (param2 >= sub_02027C7C(param1, v2->unk_00, v2->unk_0C) * sub_02027CEC(v2)) {
            sub_02027C50(v2);
            continue;
        }

        v1 = param2;

        while (v2->unk_01 != 0 && v1 != 0) {
            if (v2->unk_02 > v1) {
                sub_02027E40(v2, param1, v1);
                v2->unk_02 -= v1;
                v1 = 0;
                break;
            } else {
                sub_02027E40(v2, param1, v2->unk_02);
                sub_02027DD4(v2, param1);

                v1 -= v2->unk_02;
                v2->unk_02 = sub_02027C7C(param1, v2->unk_00, v2->unk_0C);

                if (v2->unk_01 == 5) {
                    v2->unk_02 *= sub_02027CCC(v2);
                }
            }
        }
    }
}
