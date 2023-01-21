#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02026324_decl.h"

#include "overlay021/struct_ov21_021D3208.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D37DC.h"
#include "overlay021/struct_ov21_021D3A60.h"

#include "unk_02006E3C.h"
#include "heap.h"
#include "unk_02023790.h"
#include "unk_02025E68.h"
#include "unk_0202631C.h"
#include "unk_02098700.h"
#include "unk_02098988.h"
#include "overlay021/ov21_021D3208.h"

static void ov21_021D39A4(u16 * param0, int * param1, const UnkStruct_02026324 * param2, const u16 * param3, int param4);
static void ov21_021D39E4(u16 * param0, int * param1, const u16 * param2, int param3, const u16 * param4, int param5, BOOL param6, const UnkStruct_02026324 * param7);
static void ov21_021D3A60(UnkStruct_ov21_021D3A60 * param0, const UnkStruct_02026324 * param1, const u16 * param2, int param3);
static void ov21_021D3AB8(UnkStruct_ov21_021D3A60 * param0, const u16 * param1, int param2);
static void ov21_021D3B28(UnkStruct_ov21_021D3A60 * param0);
static void ov21_021D3FA8(UnkStruct_ov21_021D3A60 * param0, int * param1, int * param2);
static u16 * ov21_021D3B64(int param0, int param1, int * param2);
static void ov21_021D3B98(int param0, u16 * param1, int * param2, const u16 * param3, int param4, int param5, const UnkStruct_02026324 * param6);
static void ov21_021D3C48(int param0, u16 * param1, int * param2, const u16 * param3, int param4, int param5, const UnkStruct_02026324 * param6);
static void ov21_021D3D2C(int param0, u16 * param1, int * param2, const u16 * param3, int param4, int param5, const UnkStruct_02026324 * param6);
static void ov21_021D3E80(int param0, u16 * param1, int * param2, const u16 * param3, int param4, int param5, const UnkStruct_02026324 * param6);

void ov21_021D3208 (UnkStruct_ov21_021D3320 * param0, UnkStruct_ov21_021D3208 * param1, int param2)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    BOOL v5;
    u32 v6;

    memset(param0, 0, sizeof(UnkStruct_ov21_021D3320));

    param0->unk_00 = param1->unk_00;
    param0->unk_1744 = param1->unk_08;

    if (sub_02027474(param0->unk_00)) {
        param0->unk_1734 = 1;
    } else {
        param0->unk_1734 = 0;
    }

    if (param1->unk_20 == 2) {
        if (param0->unk_1734) {
            v6 = 1;
        } else {
            v6 = 0;
        }
    } else {
        v6 = param1->unk_20;
    }

    if (v6 == 1) {
        param0->unk_1730 = 1;
        v0 = 0;
        v1 = 0;
        v2 = 0;
        v3 = 0;
        v4 = 0;
    } else {
        param0->unk_1730 = 0;
        v0 = 0;
        v1 = 0;
        v2 = 0;
        v3 = 0;
        v4 = 0;
    }

    v5 = ov21_021D3684(param0, v0, v1, v2, v3, v4, param0->unk_1730, param2);

    GF_ASSERT(v5);

    ov21_021D3794(param0, param1->unk_1C);
    ov21_021D3434(param0, param1->unk_1C);
    ov21_021D344C(param0, param1->unk_20);

    param0->unk_174C = sub_02025FCC(param1->unk_04);
    param0->unk_1750 = sub_02025F30(param1->unk_04);
    param0->unk_1754 = sub_02025F04(param1->unk_04, param2);
    param0->unk_1748 = sub_02098700(param2);

    if (param0->unk_1750 == 0) {
        sub_0209872C(param0->unk_1748, 0, param2);
    } else {
        sub_0209872C(param0->unk_1748, 1, param2);
    }

    param0->unk_1760 = param1->unk_0C;
    param0->unk_1764 = param1->unk_10;
    param0->unk_1768 = param1->unk_14;
    param0->unk_176C = param1->unk_18;
}

void ov21_021D3320 (UnkStruct_ov21_021D3320 * param0)
{
    sub_020237BC(param0->unk_1754);
    sub_020987BC(param0->unk_1748);
    sub_02098718(param0->unk_1748);

    param0->unk_1748 = NULL;
}

u32 ov21_021D334C (const UnkStruct_ov21_021D3320 * param0, int param1, int param2)
{
    u32 v0;

    v0 = sub_02027058(param0->unk_00, param1, param2);
    return v0;
}

u32 ov21_021D335C (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    int v0;

    GF_ASSERT(param1 < 28);
    v0 = sub_020270AC(param0->unk_00, param1);

    return v0;
}

u32 ov21_021D3374 (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 2);
    v0 = sub_020270F8(param0->unk_00, param1);

    return v0;
}

u32 ov21_021D338C (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 2);

    v0 = sub_02027154(param0->unk_00, param1);
    return v0;
}

u32 ov21_021D33A4 (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 3);

    v0 = sub_020271B0(param0->unk_00, param1);
    return v0;
}

u32 ov21_021D33BC (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 3);

    v0 = sub_02027208(param0->unk_00, param1);
    return v0;
}

u32 ov21_021D33D4 (const UnkStruct_ov21_021D3320 * param0, u32 param1)
{
    return sub_0202756C(param0->unk_00, param1, 0);
}

u32 ov21_021D33E0 (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    int v0 = ov21_021D334C(param0, param1, 1);

    if (v0 == -1) {
        return 1;
    }

    return 2;
}

u32 ov21_021D33F8 (const UnkStruct_ov21_021D3320 * param0)
{
    return sub_0202702C(param0->unk_00, 0);
}

u32 ov21_021D3404 (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    return sub_02027264(param0->unk_00, param1);
}

u32 ov21_021D3410 (const UnkStruct_ov21_021D3320 * param0, u32 param1, int param2)
{
    return sub_0202756C(param0->unk_00, param1, param2);
}

u32 ov21_021D341C (const UnkStruct_ov21_021D3320 * param0, u32 param1)
{
    return sub_020276C8(param0->unk_00, param1);
}

BOOL ov21_021D3428 (const UnkStruct_ov21_021D3320 * param0)
{
    return sub_02027474(param0->unk_00);
}

void ov21_021D3434 (UnkStruct_ov21_021D3320 * param0, u32 param1)
{
    param0->unk_175C = param1;
}

u32 ov21_021D3440 (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_175C;
}

void ov21_021D344C (UnkStruct_ov21_021D3320 * param0, u32 param1)
{
    param0->unk_175E = param1;
}

u32 ov21_021D3458 (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_175E;
}

BOOL ov21_021D3464 (UnkStruct_ov21_021D3320 * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, BOOL param8)
{
    u16 * v0;
    int v1;
    u16 * v2;
    int v3;
    u16 * v4;
    int v5;
    BOOL v6;

    v0 = AllocFromHeapAtEnd(param7, sizeof(u16) * 493);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(u16) * 493);

    v1 = 0;
    v2 = AllocFromHeapAtEnd(param7, sizeof(u16) * 493);

    GF_ASSERT(v2);
    memset(v2, 0, sizeof(u16) * 493);

    v3 = 0;

    if (param6 == 0) {
        v4 = ov21_021D3B64(param7, 1, &v5);
        ov21_021D39A4(v0, &v1, param0->unk_00, v4, v5);
    } else {
        v4 = ov21_021D3B64(param7, 0, &v5);
        ov21_021D39A4(v0, &v1, param0->unk_00, v4, v5);
    }

    ov21_021D3B98(param1, v2, &v3, v0, v1, param7, param0->unk_00);

    memcpy(v0, v2, sizeof(u16) * v3);
    v1 = v3;

    memset(v2, 0, sizeof(u16) * v3);
    v3 = 0;

    do {
        ov21_021D3C48(param2, v2, &v3, v0, v1, param7, param0->unk_00);

        if (v3 == 0) {
            v6 = 0;
            break;
        }

        memcpy(v0, v2, sizeof(u16) * v3);
        v1 = v3;

        memset(v2, 0, sizeof(u16) * v3);
        v3 = 0;

        ov21_021D3D2C(param3, v2, &v3, v0, v1, param7, param0->unk_00);

        if (v3 == 0) {
            v6 = 0;
            break;
        }

        memcpy(v0, v2, sizeof(u16) * v3);
        v1 = v3;

        memset(v2, 0, sizeof(u16) * v3);
        v3 = 0;

        ov21_021D3D2C(param4, v2, &v3, v0, v1, param7, param0->unk_00);

        if (v3 == 0) {
            v6 = 0;
            break;
        }

        memcpy(v0, v2, sizeof(u16) * v3);
        v1 = v3;

        memset(v2, 0, sizeof(u16) * v3);
        v3 = 0;

        ov21_021D3E80(param5, v2, &v3, v0, v1, param7, param0->unk_00);

        if (v3 == 0) {
            v6 = 0;
            break;
        }

        memcpy(v0, v2, sizeof(u16) * v3);
        v1 = v3;

        memset(v2, 0, sizeof(u16) * v3);
        v3 = 0;

        ov21_021D3A60(&param0->unk_04, param0->unk_00, v0, v1);

        if (((param1 != 0) || (param2 != 0) || (param3 != 0) || (param4 != 0) || (param5 != 0))) {
            param8 = 1;
        }

        if (param8 == 0) {
            ov21_021D3AB8(&param0->unk_04, v4, v5);
        } else {
            ov21_021D3B28(&param0->unk_04);
        }

        v6 = 1;
    } while (0);

    ov21_021D3FA8(&param0->unk_04, &param0->unk_1738, &param0->unk_173C);

    FreeToHeap(v0);
    FreeToHeap(v2);
    FreeToHeap(v4);

    return v6;
}

BOOL ov21_021D3684 (UnkStruct_ov21_021D3320 * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7)
{
    return ov21_021D3464(param0, param1, param2, param3, param4, param5, param6, param7, 0);
}

BOOL ov21_021D36A4 (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    if (param1 == 0) {
        return 1;
    }

    if (param0->unk_1734) {
        return 1;
    }

    return 0;
}

BOOL ov21_021D36C0 (UnkStruct_ov21_021D3320 * param0, int param1)
{
    BOOL v0;

    v0 = ov21_021D36A4(param0, param1);

    if (v0) {
        param0->unk_1730 = param1;
    }

    return v0;
}

int ov21_021D36D8 (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_1730;
}

BOOL ov21_021D36E4 (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    if (((param1) >= 0) && ((param1) < param0->unk_04.unk_F6C)) {
        return 1;
    }

    return 0;
}

BOOL ov21_021D36FC (UnkStruct_ov21_021D3320 * param0, int param1)
{
    if (ov21_021D36E4(param0, param1)) {
        param0->unk_04.unk_F68 = param1;
        return 1;
    }

    return 0;
}

BOOL ov21_021D371C (UnkStruct_ov21_021D3320 * param0, int param1)
{
    if (ov21_021D36E4(param0, param0->unk_04.unk_F68 + param1)) {
        param0->unk_04.unk_F68 += param1;
        return 1;
    }

    if (param1 >= 0) {
        param0->unk_04.unk_F68 = param0->unk_04.unk_F6C - 1;
    } else {
        param0->unk_04.unk_F68 = 0;
    }

    return 0;
}

int ov21_021D375C (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_04.unk_F68;
}

int ov21_021D3768 (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_04.unk_F6C;
}

int ov21_021D3770 (const UnkStruct_ov21_021D3320 * param0, u32 param1)
{
    int v0;
    int v1 = ov21_021D3768(param0);
    int v2;

    for (v0 = 0; v0 < v1; v0++) {
        v2 = param0->unk_04.unk_00[v0].unk_00;

        if (v2 == param1) {
            break;
        }
    }

    return v0;
}

BOOL ov21_021D3794 (UnkStruct_ov21_021D3320 * param0, int param1)
{
    u32 v0 = ov21_021D3768(param0);
    u32 v1 = ov21_021D3770(param0, param1);

    if (v0 > v1) {
        return ov21_021D36FC(param0, v1);
    }

    return 0;
}

int ov21_021D37BC (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_04.unk_00[param0->unk_04.unk_F68].unk_00;
}

int ov21_021D37CC (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_04.unk_00[param0->unk_04.unk_F68].unk_04;
}

const UnkStruct_ov21_021D37DC * ov21_021D37DC (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    if (ov21_021D36E4(param0, param1)) {
        return &param0->unk_04.unk_00[param1];
    }

    return NULL;
}

BOOL ov21_021D37F8 (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    if ((param0->unk_04.unk_1728 > param1) && (param1 >= 0)) {
        return 1;
    }

    return 0;
}

BOOL ov21_021D3810 (UnkStruct_ov21_021D3320 * param0, int param1)
{
    if (ov21_021D37F8(param0, param1)) {
        param0->unk_04.unk_1724 = param1;

        ov21_021D36FC(param0, param0->unk_04.unk_F70[param0->unk_04.unk_1724]);
        return 1;
    }

    return 0;
}

BOOL ov21_021D3844 (UnkStruct_ov21_021D3320 * param0, int param1)
{
    if (ov21_021D387C(param0, param1)) {
        param0->unk_04.unk_1724 += param1;

        ov21_021D36FC(param0, param0->unk_04.unk_F70[param0->unk_04.unk_1724]);
        return 1;
    }

    return 0;
}

BOOL ov21_021D387C (UnkStruct_ov21_021D3320 * param0, int param1)
{
    if (ov21_021D37F8(param0, param0->unk_04.unk_1724 + param1)) {
        return 1;
    }

    return 0;
}

int ov21_021D3898 (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_04.unk_1724;
}

int ov21_021D38A4 (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_04.unk_1728;
}

int ov21_021D38B0 (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    return param0->unk_04.unk_F70[param1];
}

void ov21_021D38C0 (UnkStruct_ov21_021D3320 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04.unk_1728; v0++) {
        if (ov21_021D38B0(param0, v0) == ov21_021D375C(param0)) {
            ov21_021D3810(param0, v0);
            break;
        }
    }
}

int ov21_021D38FC (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_1738;
}

int ov21_021D3908 (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_173C;
}

UnkStruct_02023790 * ov21_021D3914 (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_1754;
}

u32 ov21_021D3920 (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_1750;
}

BOOL ov21_021D392C (const UnkStruct_ov21_021D3320 * param0, int param1)
{
    int v0 = ov21_021D37BC(param0);

    if (sub_02027514(param0->unk_00) == 0) {
        return 0;
    }

    return sub_020274D0(param0->unk_00, v0, param1);
}

BOOL ov21_021D3954 (const UnkStruct_ov21_021D3320 * param0)
{
    return sub_02027494(param0->unk_00);
}

void ov21_021D3960 (UnkStruct_ov21_021D3320 * param0)
{
    if (Unk_021BF67C.unk_62) {
        param0->unk_1758 = 0;
        return;
    }

    if (Unk_021BF67C.unk_48) {
        if (param0->unk_1758 == 0) {
            param0->unk_1758 = 1;
        } else {
            param0->unk_1758 = 2;
        }
    }
}

u32 ov21_021D3998 (const UnkStruct_ov21_021D3320 * param0)
{
    return param0->unk_1758;
}

static void ov21_021D39A4 (u16 * param0, int * param1, const UnkStruct_02026324 * param2, const u16 * param3, int param4)
{
    int v0;

    *param1 = 0;

    for (v0 = 0; v0 < param4; v0++) {
        if (sub_02026FE8(param2, param3[v0])) {
            param0[*param1] = param3[v0];
            (*param1)++;
        }
    }
}

static void ov21_021D39E4 (u16 * param0, int * param1, const u16 * param2, int param3, const u16 * param4, int param5, BOOL param6, const UnkStruct_02026324 * param7)
{
    int v0, v1;

    *param1 = 0;

    for (v0 = 0; v0 < param3; v0++) {
        for (v1 = 0; v1 < param5; v1++) {
            if (param2[v0] == param4[v1]) {
                if (param6 == 1) {
                    break;
                } else {
                    if (sub_02026F9C(param7, param2[v0])) {
                        break;
                    }
                }
            }
        }

        if (v1 < param5) {
            param0[*param1] = param2[v0];
            (*param1)++;
        }
    }
}

static void ov21_021D3A60 (UnkStruct_ov21_021D3A60 * param0, const UnkStruct_02026324 * param1, const u16 * param2, int param3)
{
    int v0;

    param0->unk_F6C = 0;

    for (v0 = 0; v0 < param3; v0++) {
        if (sub_02026F9C(param1, param2[v0])) {
            param0->unk_00[param0->unk_F6C].unk_04 = 2;
        } else {
            param0->unk_00[param0->unk_F6C].unk_04 = 1;
        }

        param0->unk_00[param0->unk_F6C].unk_00 = param2[v0];
        param0->unk_F6C++;
    }
}

static void ov21_021D3AB8 (UnkStruct_ov21_021D3A60 * param0, const u16 * param1, int param2)
{
    int v0;
    int v1;

    v1 = 0;
    param0->unk_1728 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        if (v1 < param0->unk_F6C) {
            if (param0->unk_00[v1].unk_00 == param1[v0]) {
                param0->unk_F70[param0->unk_1728] = v1;
                v1++;
                param0->unk_1728++;
            } else {
                param0->unk_F70[param0->unk_1728] = (493 + 1);
                param0->unk_1728++;
            }
        }
    }
}

static void ov21_021D3B28 (UnkStruct_ov21_021D3A60 * param0)
{
    int v0;

    param0->unk_1728 = 0;

    for (v0 = 0; v0 < param0->unk_F6C; v0++) {
        param0->unk_F70[param0->unk_1728] = v0;
        param0->unk_1728++;
    }
}

static u16 * ov21_021D3B64 (int param0, int param1, int * param2)
{
    u32 v0;
    u16 * v1;
    u32 v2;

    GF_ASSERT(47 > param1);

    v2 = sub_020989B8();
    v1 = sub_02007068(v2, 11 + param1, 0, param0, 0, &v0);
    *param2 = v0 / (sizeof(u16));

    return v1;
}

static void ov21_021D3B98 (int param0, u16 * param1, int * param2, const u16 * param3, int param4, int param5, const UnkStruct_02026324 * param6)
{
    u16 * v0;
    int v1;
    BOOL v2 = 0;

    switch (param0) {
    case 0:
        v0 = NULL;
        break;
    case 1:
        v0 = ov21_021D3B64(param5, 2, &v1);
        v2 = 1;
        break;
    case 2:
        v0 = ov21_021D3B64(param5, 3, &v1);
        break;
    case 3:
        v0 = ov21_021D3B64(param5, 4, &v1);
        break;
    case 4:
        v0 = ov21_021D3B64(param5, 5, &v1);
        break;
    case 5:
        v0 = ov21_021D3B64(param5, 6, &v1);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v0 != NULL) {
        ov21_021D39E4(param1, param2, v0, v1, param3, param4, v2, param6);
        FreeToHeap(v0);
    } else {
        memcpy(param1, param3, (sizeof(u16)) * param4);
        *param2 = param4;
    }
}

static void ov21_021D3C48 (int param0, u16 * param1, int * param2, const u16 * param3, int param4, int param5, const UnkStruct_02026324 * param6)
{
    u16 * v0;
    int v1;

    switch (param0) {
    case 0:
        v0 = NULL;
        break;
    case 1:
        v0 = ov21_021D3B64(param5, 7, &v1);
        break;
    case 2:
        v0 = ov21_021D3B64(param5, 8, &v1);
        break;
    case 3:
        v0 = ov21_021D3B64(param5, 9, &v1);
        break;
    case 4:
        v0 = ov21_021D3B64(param5, 10, &v1);
        break;
    case 5:
        v0 = ov21_021D3B64(param5, 11, &v1);
        break;
    case 6:
        v0 = ov21_021D3B64(param5, 12, &v1);
        break;
    case 7:
        v0 = ov21_021D3B64(param5, 13, &v1);
        break;
    case 8:
        v0 = ov21_021D3B64(param5, 14, &v1);
        break;
    case 9:
        v0 = ov21_021D3B64(param5, 15, &v1);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v0 != NULL) {
        ov21_021D39E4(param1, param2, param3, param4, v0, v1, 1, param6);
        FreeToHeap(v0);
    } else {
        memcpy(param1, param3, (sizeof(u16)) * param4);
        *param2 = param4;
    }
}

static void ov21_021D3D2C (int param0, u16 * param1, int * param2, const u16 * param3, int param4, int param5, const UnkStruct_02026324 * param6)
{
    u16 * v0;
    int v1;

    switch (param0) {
    case 0:
        v0 = NULL;
        break;
    case 1:
        v0 = ov21_021D3B64(param5, 16, &v1);
        break;
    case 2:
        v0 = ov21_021D3B64(param5, 17, &v1);
        break;
    case 3:
        v0 = ov21_021D3B64(param5, 18, &v1);
        break;
    case 4:
        v0 = ov21_021D3B64(param5, 19, &v1);
        break;
    case 5:
        v0 = ov21_021D3B64(param5, 20, &v1);
        break;
    case 6:
        v0 = ov21_021D3B64(param5, 21, &v1);
        break;
    case 7:
        v0 = ov21_021D3B64(param5, 22, &v1);
        break;
    case 8:
        v0 = ov21_021D3B64(param5, 23, &v1);
        break;
    case 9:
        v0 = ov21_021D3B64(param5, 24, &v1);
        break;
    case 10:
        v0 = ov21_021D3B64(param5, 25, &v1);
        break;
    case 11:
        v0 = ov21_021D3B64(param5, 26, &v1);
        break;
    case 12:
        v0 = ov21_021D3B64(param5, 27, &v1);
        break;
    case 13:
        v0 = ov21_021D3B64(param5, 28, &v1);
        break;
    case 14:
        v0 = ov21_021D3B64(param5, 29, &v1);
        break;
    case 15:
        v0 = ov21_021D3B64(param5, 30, &v1);
        break;
    case 16:
        v0 = ov21_021D3B64(param5, 31, &v1);
        break;
    case 17:
        v0 = ov21_021D3B64(param5, 32, &v1);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v0 != NULL) {
        ov21_021D39E4(param1, param2, param3, param4, v0, v1, 0, param6);
        FreeToHeap(v0);
    } else {
        memcpy(param1, param3, (sizeof(u16)) * param4);
        *param2 = param4;
    }
}

static void ov21_021D3E80 (int param0, u16 * param1, int * param2, const u16 * param3, int param4, int param5, const UnkStruct_02026324 * param6)
{
    u16 * v0;
    int v1;

    switch (param0) {
    case 0:
        v0 = NULL;
        break;
    case 1:
        v0 = ov21_021D3B64(param5, 33, &v1);
        break;
    case 2:
        v0 = ov21_021D3B64(param5, 34, &v1);
        break;
    case 3:
        v0 = ov21_021D3B64(param5, 35, &v1);
        break;
    case 4:
        v0 = ov21_021D3B64(param5, 36, &v1);
        break;
    case 5:
        v0 = ov21_021D3B64(param5, 37, &v1);
        break;
    case 6:
        v0 = ov21_021D3B64(param5, 38, &v1);
        break;
    case 7:
        v0 = ov21_021D3B64(param5, 39, &v1);
        break;
    case 8:
        v0 = ov21_021D3B64(param5, 40, &v1);
        break;
    case 9:
        v0 = ov21_021D3B64(param5, 41, &v1);
        break;
    case 10:
        v0 = ov21_021D3B64(param5, 42, &v1);
        break;
    case 11:
        v0 = ov21_021D3B64(param5, 43, &v1);
        break;
    case 12:
        v0 = ov21_021D3B64(param5, 44, &v1);
        break;
    case 13:
        v0 = ov21_021D3B64(param5, 45, &v1);
        break;
    case 14:
        v0 = ov21_021D3B64(param5, 46, &v1);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v0 != NULL) {
        ov21_021D39E4(param1, param2, param3, param4, v0, v1, 1, param6);
        FreeToHeap(v0);
    } else {
        memcpy(param1, param3, (sizeof(u16)) * param4);
        *param2 = param4;
    }
}

static void ov21_021D3FA8 (UnkStruct_ov21_021D3A60 * param0, int * param1, int * param2)
{
    int v0;

    *param1 = 0;
    *param2 = 0;

    for (v0 = 0; v0 < param0->unk_F6C; v0++) {
        if (param0->unk_00[v0].unk_04 == 2) {
            (*param2)++;
        }

        (*param1)++;
    }
}
