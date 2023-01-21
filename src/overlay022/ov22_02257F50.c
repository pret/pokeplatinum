#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201CD38_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "overlay022/struct_ov22_0225500C.h"
#include "overlay022/struct_ov22_02255040.h"
#include "overlay022/struct_ov22_02257F50.h"
#include "overlay022/struct_ov22_02257F50_sub1_sub1.h"
#include "overlay022/struct_ov22_02258470.h"
#include "overlay022/struct_ov22_0225899C.h"
#include "overlay022/struct_ov22_02259560.h"
#include "overlay022/struct_ov22_022599A0.h"

#include "unk_0200679C.h"
#include "heap.h"
#include "unk_0201CCF0.h"
#include "unk_0201D15C.h"
#include "unk_02022594.h"
#include "overlay022/ov22_02254DE0.h"
#include "overlay022/ov22_02257F50.h"
#include "overlay022/ov22_0225894C.h"
#include "overlay022/ov22_02259484.h"
#include "overlay022/ov22_02259560.h"
#include "overlay022/ov22_022597BC.h"

typedef struct {
    UnkStruct_ov22_02259560 * unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_ov22_0225886C;

typedef struct {
    UnkStruct_ov22_02257F50 * unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    BOOL unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    UnkStruct_ov22_0225886C * unk_28;
    int unk_2C;
} UnkStruct_ov22_022586C4;

static void ov22_02258470(UnkStruct_ov22_02257F50 * param0, UnkStruct_ov22_02258470 * param1);
static void ov22_022584AC(UnkStruct_ov22_02259560 * param0, int param1);
static void ov22_022584F0(UnkStruct_ov22_02257F50_sub1_sub1 * param0, int param1);
static void ov22_02258534(UnkStruct_ov22_02257F50_sub1_sub1 * param0);
static UnkStruct_ov22_02259560 * ov22_0225855C(UnkStruct_ov22_02257F50 * param0);
static UnkStruct_ov22_02259560 * ov22_02258584(UnkStruct_ov22_02257F50 * param0, int param1, int param2);
static int ov22_022585A8(UnkStruct_ov22_02257F50 * param0, int param1, int param2);
static UnkStruct_ov22_02259560 * ov22_022585C4(UnkStruct_ov22_02257F50 * param0, int param1, int param2, int param3);
static void ov22_022584E0(UnkStruct_ov22_02257F50 * param0, int param1);
static void ov22_022585E8(UnkStruct_ov22_02257F50 * param0, UnkStruct_ov22_02255040 * param1, int param2, int param3);
static void ov22_02258610(int param0, int * param1, int * param2);
static void ov22_0225864C(UnkStruct_ov22_02257F50 * param0, int param1, int param2, int param3, int param4);
static void ov22_022586C4(UnkStruct_0201CD38 * param0, void * param1);
static void ov22_0225882C(UnkStruct_ov22_02259560 * param0, UnkStruct_ov22_0225886C * param1, int param2);
static UnkStruct_ov22_0225886C * ov22_02258844(UnkStruct_ov22_0225886C * param0, int param1);
static void ov22_0225886C(UnkStruct_ov22_0225886C * param0, int param1);
static void ov22_02258890(UnkStruct_ov22_0225886C * param0);
static int ov22_022588D8(int param0, int param1);

void ov22_02257F50 (UnkStruct_ov22_02257F50 * param0, UnkStruct_ov22_02258470 * param1)
{
    param0->unk_44.unk_00 = param1->unk_00;
    param0->unk_44.unk_04 = param1->unk_04;
    param0->unk_44.unk_08 = param1->unk_08;
    param0->unk_44.unk_0C = param1->unk_0C;
    param0->unk_44.unk_10 = param1->unk_10;
    param0->unk_44.unk_14 = param1->unk_14;
    param0->unk_00.unk_08 = param1->unk_18;
    param0->unk_00.unk_04 = param1->unk_28;

    ov22_02258354(param0, 0);
    ov22_02258470(param0, param1);
}

void ov22_02257F88 (UnkStruct_ov22_02257F50 * param0)
{
    int v0;

    ov22_022581C0(param0);

    for (v0 = 0; v0 < (3 + 1); v0++) {
        ov22_02258534(&param0->unk_00.unk_0C[v0]);
    }

    memset(param0, 0, sizeof(UnkStruct_ov22_02257F50));
}

int ov22_02257FB0 (int param0, int param1, UnkStruct_ov22_0225899C * param2)
{
    int v0;

    switch (param0) {
    case 0:
        if (param1 <= 5) {
            v0 = 0;
        } else if (param1 <= 11) {
            v0 = 1;
        } else if (param1 <= 17) {
            v0 = 2;
        } else if (param1 <= 21) {
            v0 = 3;
        } else if (param1 <= 28) {
            v0 = 4;
        } else if (param1 <= 33) {
            v0 = 5;
        } else if (param1 <= 38) {
            v0 = 6;
        } else if (param1 <= 42) {
            v0 = 7;
        } else if (param1 <= 49) {
            v0 = 8;
        } else if (param1 <= 55) {
            v0 = 9;
        } else if (param1 <= 60) {
            v0 = 10;
        } else if (param1 <= 71) {
            v0 = 11;
        } else if (param1 <= 91) {
            v0 = 12;
        } else if (param1 <= 99) {
            v0 = 13;
        }
        break;
    case 1:
        param1 = ov22_022589BC(param2, param1);
        v0 = param1 / 9;
        break;
    case 2:
        param1 = ov22_022589BC(param2, param1);
        v0 = param1 / 9;
        break;
    }

    return v0;
}

void ov22_0225804C (int param0, int param1, int * param2, int * param3, int param4, int param5, UnkStruct_ov22_0225899C * param6)
{
    switch (param0) {
    case 0:
        *param2 = (8 + 2);
        *param3 = (16 + 2);
        *param2 += (sub_0201D35C() % ((112 - (2 * 2)) - param4));
        *param3 += (sub_0201D35C() % ((129 - (2 * 2)) - param5));
        break;
    case 1:
    case 2:
        param1 = ov22_022589BC(param6, param1);
        ov22_02258610(param1, param2, param3);
        break;
    }
}

void ov22_022580A4 (UnkStruct_ov22_02257F50 * param0, int param1, int param2)
{
    UnkStruct_ov22_0225500C v0;
    UnkStruct_ov22_02255040 * v1;
    UnkStruct_ov22_02259560 * v2;
    int v3;
    int v4, v5;
    int v6, v7;
    int v8, v9;

    v0.unk_00 = param0->unk_44.unk_14;
    v0.unk_18 = param2;
    v0.unk_04 = param0->unk_44.unk_00;
    v0.unk_10 = 0;
    v0.unk_14 = 0;

    switch (param1) {
    case 0:
        v4 = param2;
        v5 = 0;
        v0.unk_1C = param0->unk_44.unk_0C[param2];
        break;
    case 1:
        v4 = param2 + 100;
        v5 = param2 + 1;
        v0.unk_1C = 0;
        break;
    case 2:
        v4 = param2 + 100;
        v5 = param2 + 1;
        v0.unk_1C = 0;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    v0.unk_08 = param0->unk_44.unk_04[v4];
    v0.unk_0C = param0->unk_44.unk_08[v5];

    GF_ASSERT(v0.unk_08);
    GF_ASSERT(v0.unk_0C);

    v3 = ov22_02257FB0(param1, param2, param0->unk_00.unk_04);
    v1 = ov22_02254E20(&v0);
    v2 = ov22_022594C0(param0->unk_00.unk_08, v1, param1);

    ov22_02259520(v2, param0->unk_00.unk_0C[param1].unk_00[v3].unk_0C);
    ov22_02259698(v2, &v8, &v9);
    ov22_0225804C(param1, param2, &v6, &v7, v8, v9, param0->unk_00.unk_04);
    ov22_022595F8(v2, v6, v7);
    ov22_022585E8(param0, v1, param1, v3);
}

void ov22_0225818C (UnkStruct_ov22_02257F50 * param0, int param1, int param2, UnkStruct_ov22_02259560 * param3)
{
    ov22_02259520(param3, param0->unk_00.unk_0C[param1].unk_00 + param2);
    ov22_022585E8(param0, param3->unk_00, param1, param2);
}

void ov22_022581B8 (UnkStruct_ov22_02259560 * param0)
{
    ov22_02259530(param0);
}

void ov22_022581C0 (UnkStruct_ov22_02257F50 * param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 3; v0++) {
        for (v1 = 0; v1 < param0->unk_00.unk_0C[v0].unk_04; v1++) {
            ov22_02259540(param0->unk_00.unk_0C[v0].unk_00 + v1);
        }
    }
}

void ov22_022581EC (UnkStruct_ov22_02257F50 * param0)
{
    UnkStruct_ov22_02259560 * v0;
    UnkStruct_ov22_02259560 * v1;
    BOOL v2;
    int v3 = -1;

    v1 = ov22_0225855C(param0);
    v0 = v1->unk_08;

    while (v0 != v1) {
        if ((v0->unk_04 == 0) || (v0->unk_04 == 1) || (v0->unk_04 == 2)) {
            ov22_02254F6C(v0->unk_00, v3);
        }

        v3--;

        v0 = v0->unk_08;
    }
}

BOOL ov22_02258218 (UnkStruct_ov22_02257F50 * param0, int param1, int param2)
{
    if (param0->unk_00.unk_3C == 0) {
        ov22_0225864C(param0, param0->unk_00.unk_00, param0->unk_00.unk_0C[param0->unk_00.unk_00].unk_08, param1, param2);

        param0->unk_00.unk_00 = param1;
        param0->unk_00.unk_0C[param1].unk_08 = param2;

        ov22_022581EC(param0);

        return 1;
    }

    return 0;
}

BOOL ov22_02258258 (UnkStruct_ov22_02257F50 * param0, int param1, int param2)
{
    UnkStruct_ov22_02259560 * v0;
    int v1;
    int v2;
    int v3;
    int v4;
    BOOL v5;

    v1 = ov22_02258424(param0, param1);

    for (v3 = 1; v3 < param0->unk_00.unk_0C[param1].unk_04; v3++) {
        if (param2 == 0) {
            v4 = (v3 + v1) % param0->unk_00.unk_0C[param1].unk_04;
        } else {
            v4 = v1 - v3;

            if (v4 < 0) {
                v4 += param0->unk_00.unk_0C[param1].unk_04;
            }
        }

        v0 = ov22_02258584(param0, param1, v4);

        if (v0->unk_08 != v0) {
            v5 = ov22_02258218(param0, param1, v4);
            return v5;
        }
    }

    return 0;
}

void ov22_022582C0 (UnkStruct_ov22_02257F50 * param0, int param1, int param2)
{
    ov22_022584E0(param0, 0);

    param0->unk_00.unk_00 = param1;
    param0->unk_00.unk_0C[param1].unk_08 = param2;

    ov22_022584E0(param0, 1);
    ov22_022581EC(param0);
}

BOOL ov22_022582E8 (UnkStruct_ov22_02257F50 * param0)
{
    UnkUnion_020225E0 v0;

    v0.val1.unk_00 = (16 + 2);
    v0.val1.unk_01 = (16 + 2) + (129 - (2 * 2));
    v0.val1.unk_02 = (8 + 2);
    v0.val1.unk_03 = (8 + 2) + (112 - (2 * 2));

    return sub_02022734(&v0);
}

BOOL ov22_02258304 (UnkStruct_ov22_02257F50 * param0, int param1, int param2)
{
    UnkUnion_020225E0 v0;

    v0.val1.unk_00 = (16 + 2);
    v0.val1.unk_01 = (16 + 2) + (129 - (2 * 2));
    v0.val1.unk_02 = (8 + 2);
    v0.val1.unk_03 = (8 + 2) + (112 - (2 * 2));

    return sub_02022830(&v0, param1, param2);
}

UnkStruct_ov22_02259560 * ov22_02258320 (UnkStruct_ov22_02257F50 * param0, int * param1, int * param2, NNSG2dCharacterData ** param3)
{
    UnkStruct_ov22_02259560 * v0;
    UnkStruct_ov22_02259560 * v1;
    BOOL v2;

    v1 = ov22_0225855C(param0);
    v0 = v1->unk_08;

    while (v0 != v1) {
        v2 = 0;

        v2 = ov22_022595AC(v0, param1, param2, param3);

        if (v2 == 1) {
            return v0;
        }

        v0 = v0->unk_08;
    }

    return NULL;
}

void ov22_02258354 (UnkStruct_ov22_02257F50 * param0, int param1)
{
    UnkStruct_ov22_022599A0 v0;

    v0.unk_00 = param0->unk_44.unk_10;
    v0.unk_04 = 25;
    v0.unk_08 = (param1) * 2 + 129;
    v0.unk_0C = 133;
    v0.unk_10 = (param1) * 2 + 129 + 1;
    v0.unk_14 = 8;
    v0.unk_18 = 129;
    v0.unk_1C = 3;
    v0.unk_20 = 1;
    v0.unk_24 = 2;
    v0.unk_28 = 0;
    v0.unk_2C = 14;

    ov22_022597BC(&param0->unk_44.unk_18, &v0);

    param0->unk_00.unk_40 = param1;
}

void ov22_022583A0 (UnkStruct_ov22_02257F50 * param0, int param1, int param2, int param3, BOOL * param4)
{
    UnkStruct_ov22_022599A0 v0;
    int v1, v2;

    v0.unk_00 = param0->unk_44.unk_10;
    v0.unk_04 = 25;
    v0.unk_08 = (param1) * 2 + 129;
    v0.unk_0C = 133;
    v0.unk_10 = (param1) * 2 + 129 + 1;
    v0.unk_14 = 8;
    v0.unk_18 = 129;
    v0.unk_1C = 3;
    v0.unk_20 = 1;
    v0.unk_24 = 2;
    v0.unk_28 = 0;
    v0.unk_2C = 14;

    if (param2 & 1) {
        v1 = 112;
    } else {
        v1 = 0;
    }

    if (param2 & 2) {
        v2 = 129;
    } else {
        v2 = 0;
    }

    ov22_022598F4(&param0->unk_44.unk_18, &v0, v1, v2, param3, param4);

    param0->unk_00.unk_40 = param1;
}

void ov22_02258408 (UnkStruct_ov22_02257F50 * param0)
{
    ov22_02259804(&param0->unk_44.unk_18);
}

int ov22_02258414 (UnkStruct_ov22_02257F50 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_00.unk_00;
}

int ov22_02258424 (UnkStruct_ov22_02257F50 * param0, int param1)
{
    UnkStruct_ov22_02257F50_sub1_sub1 v0;

    GF_ASSERT(param0);

    v0 = param0->unk_00.unk_0C[param1];
    return v0.unk_08;
}

void ov22_0225844C (UnkStruct_ov22_02257F50 * param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_ov22_02259560 * v0;

    v0 = ov22_02258584(param0, param1, param2);
    ov22_022596EC(v0, param3, param4);
}

BOOL ov22_02258460 (UnkStruct_ov22_02257F50 * param0)
{
    if (param0->unk_00.unk_3C == 0) {
        return 1;
    }

    return 0;
}

static void ov22_02258470 (UnkStruct_ov22_02257F50 * param0, UnkStruct_ov22_02258470 * param1)
{
    ov22_022584F0(&param0->unk_00.unk_0C[0], param1->unk_1C);

    param0->unk_00.unk_00 = 0;

    ov22_022584AC(param0->unk_00.unk_0C[0].unk_00, 1);
    ov22_022584F0(&param0->unk_00.unk_0C[1], param1->unk_20);
    ov22_022584F0(&param0->unk_00.unk_0C[2], param1->unk_24);
    ov22_022584F0(&param0->unk_00.unk_0C[3], 1);
}

static void ov22_022584AC (UnkStruct_ov22_02259560 * param0, int param1)
{
    UnkStruct_ov22_02259560 * v0;

    v0 = param0->unk_08;

    while (v0 != (param0)) {
        if ((v0->unk_04 == 0) || (v0->unk_04 == 1) || (v0->unk_04 == 2)) {
            ov22_02254F60(v0->unk_00, param1);
        }

        v0 = v0->unk_08;
    }
}

static void ov22_022584D0 (UnkStruct_ov22_02257F50 * param0, int param1, int param2, int param3)
{
    UnkStruct_ov22_02259560 * v0;

    v0 = ov22_02258584(param0, param1, param2);
    ov22_022584AC(v0, param3);
}

static void ov22_022584E0 (UnkStruct_ov22_02257F50 * param0, int param1)
{
    UnkStruct_ov22_02259560 * v0;

    v0 = ov22_0225855C(param0);
    ov22_022584AC(v0, param1);
}

static void ov22_022584F0 (UnkStruct_ov22_02257F50_sub1_sub1 * param0, int param1)
{
    int v0;

    param0->unk_00 = AllocFromHeap(14, sizeof(UnkStruct_ov22_02259560) * param1);
    param0->unk_04 = param1;
    param0->unk_08 = 0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        param0->unk_00[v0].unk_08 = param0->unk_00 + v0;
        param0->unk_00[v0].unk_0C = param0->unk_00 + v0;

        ov22_022584AC(param0->unk_00 + v0, 0);
    }
}

static void ov22_02258534 (UnkStruct_ov22_02257F50_sub1_sub1 * param0)
{
    FreeToHeap(param0->unk_00);
    param0->unk_00 = NULL;
    memset(param0, 0, sizeof(UnkStruct_ov22_02257F50_sub1_sub1));
}

static UnkStruct_ov22_02259560 * ov22_0225855C (UnkStruct_ov22_02257F50 * param0)
{
    UnkStruct_ov22_02257F50_sub1_sub1 v0;

    v0 = param0->unk_00.unk_0C[param0->unk_00.unk_00];
    return &v0.unk_00[v0.unk_08];
}

static UnkStruct_ov22_02259560 * ov22_02258584 (UnkStruct_ov22_02257F50 * param0, int param1, int param2)
{
    UnkStruct_ov22_02257F50_sub1_sub1 v0;

    v0 = param0->unk_00.unk_0C[param1];
    return &v0.unk_00[param2];
}

static int ov22_022585A8 (UnkStruct_ov22_02257F50 * param0, int param1, int param2)
{
    UnkStruct_ov22_02259560 * v0;
    UnkStruct_ov22_02259560 * v1;
    int v2 = 0;

    v0 = ov22_02258584(param0, param1, param2);
    v1 = v0->unk_08;

    while (v1 != v0) {
        v2++;
        v1 = v1->unk_08;
    }

    return v2;
}

static UnkStruct_ov22_02259560 * ov22_022585C4 (UnkStruct_ov22_02257F50 * param0, int param1, int param2, int param3)
{
    UnkStruct_ov22_02259560 * v0;
    UnkStruct_ov22_02259560 * v1;
    int v2 = 0;

    v0 = ov22_02258584(param0, param1, param2);
    v1 = v0->unk_08;

    while (v1 != v0) {
        if (v2 == param3) {
            return v1;
        }

        v2++;
        v1 = v1->unk_08;
    }

    return NULL;
}

static void ov22_022585E8 (UnkStruct_ov22_02257F50 * param0, UnkStruct_ov22_02255040 * param1, int param2, int param3)
{
    if ((param0->unk_00.unk_00 != param2) || (param0->unk_00.unk_0C[param2].unk_08 != param3)) {
        ov22_02254F60(param1, 0);
    } else {
        ov22_02254F60(param1, 1);
    }
}

static void ov22_02258610 (int param0, int * param1, int * param2)
{
    int v0;
    int v1;

    param0 %= 9;

    v0 = param0 / 3;
    v1 = param0 % 3;

    *param2 = 8 * (v0 + 1);
    *param2 += 32 * v0;
    *param2 += 16;
    *param1 = 8 * (v1 + 1);
    *param1 += 24 * v1;
    *param1 += 8;
}

static void ov22_0225864C (UnkStruct_ov22_02257F50 * param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_0201CD38 * v0;
    UnkStruct_ov22_022586C4 * v1;

    v0 = sub_0200679C(ov22_022586C4, sizeof(UnkStruct_ov22_022586C4), 0, 13);
    v1 = sub_0201CED0(v0);

    v1->unk_00 = param0;
    v1->unk_04 = param1;
    v1->unk_08 = param2;
    v1->unk_0C = param3;
    v1->unk_10 = param4;
    v1->unk_1C = 0;
    v1->unk_20 = ov22_022585A8(param0, param1, param2);
    v1->unk_24 = ov22_022585A8(param0, param3, param4);
    v1->unk_2C = v1->unk_20 + v1->unk_24;
    v1->unk_28 = AllocFromHeap(13, sizeof(UnkStruct_ov22_0225886C) * v1->unk_2C);

    GF_ASSERT(v1->unk_28);

    memset(v1->unk_28, 0, sizeof(UnkStruct_ov22_0225886C) * v1->unk_2C);
    param0->unk_00.unk_3C = 1;
}

static void ov22_022586C4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov22_022586C4 * v0 = param1;
    int v1;
    int v2;

    switch (v0->unk_1C) {
    case 0:
        ov22_0225844C(v0->unk_00, v0->unk_0C, v0->unk_10, 0, -132);
        ov22_022584D0(v0->unk_00, v0->unk_0C, v0->unk_10, 1);

        v0->unk_14 = 0;
        v2 = (v0->unk_00->unk_00.unk_40 + 1) % 2;
        ov22_022583A0(v0->unk_00, v2, 2, 5, &v0->unk_14);

        v0->unk_18 = ov22_022588D8(v0->unk_20, 1);
        v0->unk_1C++;
        break;
    case 1:
        for (v1 = 0; v1 < v0->unk_18; v1++) {
            if ((v0->unk_20 - 1) >= 0) {
                UnkStruct_ov22_02259560 * v3;

                v0->unk_20--;
                v3 = ov22_022585C4(v0->unk_00, v0->unk_04, v0->unk_08, v0->unk_20);
                ov22_0225882C(v3, v0->unk_28, v0->unk_2C);
            }
        }

        if (v0->unk_20 == 0) {
            v0->unk_18 = ov22_022588D8(v0->unk_24, 2);
            v0->unk_1C++;
        }
        break;
    case 2:
        for (v1 = 0; v1 < v0->unk_18; v1++) {
            if ((v0->unk_24 - 1) >= 0) {
                UnkStruct_ov22_02259560 * v4;

                v0->unk_24--;
                v4 = ov22_022585C4(v0->unk_00, v0->unk_0C, v0->unk_10, v0->unk_24);

                ov22_0225882C(v4, v0->unk_28, v0->unk_2C);
            }
        }

        if (v0->unk_24 == 0) {
            v0->unk_1C++;
            v0->unk_18 = 0;
        }
        break;
    case 3:
        v0->unk_18++;

        if (v0->unk_18 > 3) {
            if (v0->unk_14) {
                v0->unk_1C++;
            }
        }
        break;
    case 4:
        ov22_022584D0(v0->unk_00, v0->unk_04, v0->unk_08, 0);
        ov22_0225844C(v0->unk_00, v0->unk_04, v0->unk_08, 0, -132);

        v0->unk_00->unk_00.unk_3C = 0;

        FreeToHeap(v0->unk_28);
        sub_020067D0(param0);

        return;
    default:
        GF_ASSERT(0);
        break;
    }

    ov22_0225886C(v0->unk_28, v0->unk_2C);
}

static void ov22_0225882C (UnkStruct_ov22_02259560 * param0, UnkStruct_ov22_0225886C * param1, int param2)
{
    UnkStruct_ov22_0225886C * v0;

    v0 = ov22_02258844(param1, param2);

    v0->unk_00 = param0;
    v0->unk_04 = 3;
    v0->unk_08 = (132 / 3);
}

static UnkStruct_ov22_0225886C * ov22_02258844 (UnkStruct_ov22_0225886C * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_00 == NULL) {
            return param0 + v0;
        }
    }

    return NULL;
}

static void ov22_0225886C (UnkStruct_ov22_0225886C * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_00) {
            ov22_02258890(param0 + v0);
        }
    }
}

static void ov22_02258890 (UnkStruct_ov22_0225886C * param0)
{
    int v0, v1;

    ov22_02259648(param0->unk_00, &v0, &v1);
    v1 += param0->unk_08;
    ov22_022595F8(param0->unk_00, v0, v1);

    param0->unk_04--;

    if (param0->unk_04 <= 0) {
        memset(param0, 0, sizeof(UnkStruct_ov22_0225886C));
    }
}

static int ov22_022588D8 (int param0, int param1)
{
    param0 += param1 - (param0 % param1);
    return param0 / param1;
}
