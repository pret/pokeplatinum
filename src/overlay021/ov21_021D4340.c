#include <nitro.h>
#include <string.h>

#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D3FE0_decl.h"
#include "overlay021/struct_ov21_021D423C_decl.h"

#include "overlay021/struct_ov21_021D4008.h"
#include "overlay021/struct_ov21_021D4340.h"
#include "overlay021/struct_ov21_021D4340_1.h"
#include "overlay021/struct_ov21_021D43A8.h"
#include "overlay021/struct_ov21_021D4434.h"
#include "overlay021/struct_ov21_021D4558.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021E68F4.h"

#include "heap.h"
#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D3FE0.h"
#include "overlay021/ov21_021D423C.h"
#include "overlay021/ov21_021D4340.h"

static void ov21_021D4628(UnkStruct_ov21_021E68F4 * param0, UnkStruct_ov21_021D423C * param1, UnkStruct_ov21_021D3FE0 * param2);

BOOL ov21_021D4340 (UnkStruct_ov21_021D4340_1 * param0)
{
    UnkStruct_ov21_021D4340 * v0 = param0->unk_08;

    switch (param0->unk_00) {
    case 0:
        ov21_021D4198(v0->unk_04);
        param0->unk_00++;
        break;
    case 1:
        if (ov21_021D41A8(v0->unk_04) == 1) {
            param0->unk_00++;
        }
        break;
    case 2:
        ov21_021D4628(v0->unk_00, v0->unk_08, v0->unk_04);
        param0->unk_00++;
        break;
    case 3:
        if (ov21_021D41C0(v0->unk_04) == 1) {
            return 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

BOOL ov21_021D43A8 (UnkStruct_ov21_021D4340_1 * param0)
{
    UnkStruct_ov21_021D43A8 * v0 = param0->unk_08;
    BOOL v1[4];
    int v2;

    switch (param0->unk_00) {
    case 0:
        ov21_021D4198(v0->unk_00);
        ov21_021D4198(v0->unk_04);
        ov21_021D4198(v0->unk_08);
        ov21_021D4198(v0->unk_0C);
        param0->unk_00++;
        break;
    case 1:
        v1[0] = ov21_021D41A8(v0->unk_00);
        v1[1] = ov21_021D41A8(v0->unk_04);
        v1[2] = ov21_021D41A8(v0->unk_08);
        v1[3] = ov21_021D41A8(v0->unk_0C);

        for (v2 = 0; v2 < 4; v2++) {
            if (v1[v2] == 0) {
                break;
            }
        }

        if (v2 >= 4) {
            param0->unk_00++;
        }
        break;
    case 2:
        *v0->unk_10 = 1;
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

BOOL ov21_021D4434 (UnkStruct_ov21_021D4340_1 * param0)
{
    UnkStruct_ov21_021D4434 * v0 = param0->unk_08;
    BOOL v1[4];
    int v2;

    switch (param0->unk_00) {
    case 0:
        ov21_021D4198(v0->unk_00);
        ov21_021D4198(v0->unk_04);
        ov21_021D4198(v0->unk_08);
        ov21_021D4198(v0->unk_0C);
        param0->unk_00++;
        break;
    case 1:
        v1[0] = ov21_021D41A8(v0->unk_00);
        v1[1] = ov21_021D41A8(v0->unk_04);
        v1[2] = ov21_021D41A8(v0->unk_08);
        v1[3] = ov21_021D41A8(v0->unk_0C);

        for (v2 = 0; v2 < 4; v2++) {
            if (v1[v2] == 0) {
                break;
            }
        }

        if (v2 >= 4) {
            param0->unk_00++;
        }
        break;
    case 2:
        ov21_021D4628(v0->unk_20, v0->unk_10, v0->unk_00);
        ov21_021D4628(v0->unk_24, v0->unk_14, v0->unk_04);
        ov21_021D4628(v0->unk_28, v0->unk_18, v0->unk_08);
        ov21_021D4628(v0->unk_2C, v0->unk_1C, v0->unk_0C);
        param0->unk_00++;
        break;
    case 3:
        if (v0->unk_20) {
            v1[0] = ov21_021D41C0(v0->unk_00);
        } else {
            v1[0] = 1;
        }

        if (v0->unk_24) {
            v1[1] = ov21_021D41C0(v0->unk_04);
        }

        if (v0->unk_28) {
            v1[2] = ov21_021D41C0(v0->unk_08);
        } else {
            v1[2] = 1;
        }

        if (v0->unk_2C) {
            v1[3] = ov21_021D41C0(v0->unk_0C);
        } else {
            v1[3] = 1;
        }

        for (v2 = 0; v2 < 4; v2++) {
            if (v1[v2] == 0) {
                break;
            }
        }

        if (v2 >= 4) {
            return 1;
        }

        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

BOOL ov21_021D4558 (UnkStruct_ov21_021D4340_1 * param0)
{
    UnkStruct_ov21_021D4558 * v0 = param0->unk_08;
    BOOL v1[2];
    int v2;

    switch (param0->unk_00) {
    case 0:
        ov21_021D4198(v0->unk_00);
        ov21_021D4198(v0->unk_04);
        param0->unk_00++;
        break;
    case 1:
        v1[0] = ov21_021D41A8(v0->unk_00);
        v1[1] = ov21_021D41A8(v0->unk_04);

        for (v2 = 0; v2 < 2; v2++) {
            if (v1[v2] == 0) {
                break;
            }
        }

        if (v2 >= 2) {
            param0->unk_00++;
        }
        break;
    case 2:
        ov21_021D4628(v0->unk_10, v0->unk_08, v0->unk_00);
        ov21_021D4628(v0->unk_14, v0->unk_0C, v0->unk_04);
        param0->unk_00++;
        break;
    case 3:
        if (v0->unk_10) {
            v1[0] = ov21_021D41C0(v0->unk_00);
        } else {
            v1[0] = 1;
        }

        if (v0->unk_14) {
            v1[1] = ov21_021D41C0(v0->unk_04);
        } else {
            v1[1] = 1;
        }

        for (v2 = 0; v2 < 2; v2++) {
            if (v1[v2] == 0) {
                break;
            }
        }

        if (v2 >= 2) {
            return 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static void ov21_021D4628 (UnkStruct_ov21_021E68F4 * param0, UnkStruct_ov21_021D423C * param1, UnkStruct_ov21_021D3FE0 * param2)
{
    UnkStruct_ov21_021D4008 v0;

    if (param0) {
        v0.unk_00 = param0->unk_00;
        v0.unk_04 = param0->unk_04;
        v0.unk_08 = param0->unk_08;
        v0.unk_0C = param0->unk_14;

        ov21_021D4008(param2, &v0);
        ov21_021D426C(param1, param0->unk_20, param0->unk_24);
    }
}

void ov21_021D4660 (UnkStruct_ov21_021D4660 * param0)
{
    GF_ASSERT(param0->unk_08.unk_08);

    FreeToHeap(param0->unk_08.unk_08);
    param0->unk_08.unk_08 = NULL;
}

void ov21_021D467C (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4434 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4434;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4434));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4434));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D1314(param2);
    v0->unk_0C = ov21_021D1328(param2);
    v0->unk_10 = ov21_021D133C(param2);
    v0->unk_14 = ov21_021D1350(param2);
    v0->unk_18 = ov21_021D1364(param2);
    v0->unk_1C = ov21_021D1378(param2);
    v0->unk_20 = ov21_021D1410(param2, 1);
    v0->unk_24 = ov21_021D1430(param2, 1);
    v0->unk_28 = NULL;
    v0->unk_2C = NULL;

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4704 (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D43A8 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D43A8;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D43A8));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D43A8));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D1314(param2);
    v0->unk_0C = ov21_021D1328(param2);
    v0->unk_10 = ov21_021D13DC(param2);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D475C (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4434 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4434;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4434));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4434));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D1314(param2);
    v0->unk_0C = ov21_021D1328(param2);
    v0->unk_10 = ov21_021D133C(param2);
    v0->unk_14 = ov21_021D1350(param2);
    v0->unk_18 = ov21_021D1364(param2);
    v0->unk_1C = ov21_021D1378(param2);
    v0->unk_20 = ov21_021D1410(param2, 2);
    v0->unk_24 = ov21_021D1430(param2, 2);
    v0->unk_28 = ov21_021D1410(param2, 5);
    v0->unk_2C = ov21_021D1430(param2, 3);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D47F0 (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4434 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4434;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4434));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4434));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D1314(param2);
    v0->unk_0C = ov21_021D1328(param2);
    v0->unk_10 = ov21_021D133C(param2);
    v0->unk_14 = ov21_021D1350(param2);
    v0->unk_18 = ov21_021D1364(param2);
    v0->unk_1C = ov21_021D1378(param2);
    v0->unk_20 = ov21_021D1410(param2, 0);
    v0->unk_24 = ov21_021D1430(param2, 0);
    v0->unk_28 = NULL;
    v0->unk_2C = NULL;

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4878 (UnkStruct_ov21_021D4660 * param0, UnkStruct_ov21_021D0F60 * param1, int param2, int param3)
{
    UnkStruct_ov21_021D4340 * v0;

    param0->unk_00 = param3;
    param0->unk_04 = ov21_021D4340;

    v0 = AllocFromHeap(param2, sizeof(UnkStruct_ov21_021D4340));
    GF_ASSERT(v0);

    v0->unk_00 = ov21_021D1410(param1, 0);
    v0->unk_04 = ov21_021D12EC(param1);
    v0->unk_08 = ov21_021D133C(param1);

    param0->unk_08.unk_08 = v0;
}

void ov21_021D48B8 (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4558 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4558;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4558));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4558));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_0C = ov21_021D1350(param2);
    v0->unk_10 = ov21_021D1410(param2, 6);
    v0->unk_14 = ov21_021D1430(param2, 4);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D491C (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4558 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4558;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4558));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4558));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_0C = ov21_021D1350(param2);
    v0->unk_10 = ov21_021D1410(param2, 7);
    v0->unk_14 = ov21_021D1430(param2, 5);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4980 (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4558 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4558;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4558));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4558));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_0C = ov21_021D1350(param2);
    v0->unk_10 = ov21_021D1410(param2, 8);
    v0->unk_14 = ov21_021D1430(param2, 6);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D49E4 (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4340 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4340;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4340));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4340));

    v0->unk_04 = ov21_021D12EC(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_00 = ov21_021D1410(param2, 8);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4A3C (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4340 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4340;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4340));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4340));

    v0->unk_04 = ov21_021D12EC(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_00 = ov21_021D1410(param2, 9);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4A94 (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4558 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4558;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4558));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4558));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_0C = ov21_021D1350(param2);
    v0->unk_10 = ov21_021D1410(param2, 2);
    v0->unk_14 = ov21_021D1430(param2, 2);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4AF8 (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4340 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4340;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4340));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4340));

    v0->unk_04 = ov21_021D12EC(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_00 = ov21_021D1410(param2, 2);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4B50 (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4558 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4558;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4558));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4558));

    v0->unk_00 = ov21_021D12EC(param2);
    v0->unk_04 = ov21_021D1300(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_0C = ov21_021D1350(param2);
    v0->unk_10 = ov21_021D1410(param2, 3);
    v0->unk_14 = ov21_021D1430(param2, 7);

    param1->unk_08.unk_08 = v0;
}

void ov21_021D4BB4 (int param0, UnkStruct_ov21_021D4660 * param1, UnkStruct_ov21_021D0F60 * param2, int param3)
{
    UnkStruct_ov21_021D4340 * v0;

    param1->unk_00 = param3;
    param1->unk_04 = ov21_021D4340;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4340));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4340));

    v0->unk_04 = ov21_021D12EC(param2);
    v0->unk_08 = ov21_021D133C(param2);
    v0->unk_00 = ov21_021D1410(param2, 4);

    param1->unk_08.unk_08 = v0;
}
