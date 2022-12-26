#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202A93C.h"
#include "struct_defs/struct_0202AB28.h"

#include "unk_02017E74.h"
#include "unk_0201D15C.h"
#include "unk_020244AC.h"
#include "unk_0202A910.h"

int sub_0202A910 (void)
{
    return sizeof(UnkStruct_0202A93C);
}

BOOL sub_0202A914 (UnkStruct_0202A93C * param0)
{
    if (param0->val1_00 == 30) {
        return 0;
    }

    return 1;
}

void sub_0202A924 (UnkStruct_0202A93C * param0)
{
    param0->val1_00 = 30;
    param0->val1_01 = 0;
    param0->val1_02 = 0;
    param0->val1_03 = 0;
    param0->val1_04 = 0;
    param0->val1_05 = 0;
    param0->val1_06 = 0;
    param0->val1_07 = 0;
}

UnkStruct_0202A93C * sub_0202A93C (int param0)
{
    UnkStruct_0202A93C * v0;

    v0 = sub_02018184(param0, sizeof(UnkStruct_0202A93C));
    sub_0202A924(v0);

    return v0;
}

void sub_0202A950 (UnkStruct_0202A93C * param0, UnkStruct_0202A93C * param1)
{
    param1->val1_00 = param0->val1_00;
    param1->val1_01 = param0->val1_01;
    param1->val1_02 = param0->val1_02;
    param1->val1_03 = param0->val1_03;
    param1->val1_04 = param0->val1_04;
    param1->val1_05 = param0->val1_05;
    param1->val1_06 = param0->val1_06;
    param1->val1_07 = param0->val1_07;
}

u8 sub_0202A974 (UnkStruct_0202A93C * param0, int param1)
{
    switch (param1) {
    case 0:
        return param0->val1_00;
    case 1:
        return param0->val1_01;
    case 2:
        return param0->val1_02;
    case 3:
        return param0->val1_03;
    case 4:
        return param0->val1_04;
    case 5:
        return param0->val1_05;
    case 6:
    default:
        return param0->val1_06;
    }
}

static void sub_0202A9B0 (UnkStruct_0202A93C * param0, u8 param1)
{
    int v0;
    u8 v1;

    v0 = 0;

    do {
        v1 = sub_0201D2E8() % 5;

        if (param0->val2[v1 + 1] != 0) {
            continue;
        }

        param0->val2[v1 + 1] = 2;
        ++v0;
    } while (v0 < 3);

    param0->val1_00 = 27;
    param0->val1_06 = param1;
}

int sub_0202A9E4 (UnkStruct_0202A93C * param0, u8 * param1, u8 param2, BOOL param3)
{
    int v0, v1 = 0;
    u8 v2[5];
    u8 v3 = 0, v4 = 0;

    v4 = 27;

    if (param3) {
        sub_0202A9B0(param0, param2);
        return v4;
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param1[v0]) {
            if (param1[v0] >= 50) {
                v3 = 1;
            }

            v2[v1++] = v0;
        }
    }

    switch (v1) {
    case 0:
        sub_0202A9B0(param0, param2);
        return v4;
    case 1:
        v4 = v2[0] * 5 + v2[0];
        break;
    case 2:
        if (param1[v2[0]] >= param1[v2[1]]) {
            v4 = v2[0] * 5 + v2[1];
        } else {
            v4 = v2[1] * 5 + v2[0];
        }
        break;
    case 3:
        v4 = 25;
        break;
    case 4:
    case 5:
        v4 = 26;
        break;
    }

    if (v3) {
        v4 = 28;
    }

    for (v0 = 0; v0 < 5; v0++) {
        param0->val2[v0 + 1] = param1[v0];
    }

    param0->val1_00 = v4;
    param0->val1_06 = param2;

    return v4;
}

void sub_0202AA9C (UnkStruct_0202A93C * param0, u8 * param1)
{
    param1[0] = param0->val1_00;
    param1[1] = param0->val1_01;
    param1[2] = param0->val1_02;
    param1[3] = param0->val1_03;
    param1[4] = param0->val1_04;
    param1[5] = param0->val1_05;
    param1[6] = param0->val1_06;
}

u8 sub_0202AABC (UnkStruct_0202A93C * param0)
{
    u8 v0 = 0;
    u8 v1 = 0;

    v0 = param0->val1_00 / 5;

    switch (v0) {
    case 0:
        v1 = param0->val1_01;
        break;
    case 1:
        v1 = param0->val1_02;
        break;
    case 2:
        v1 = param0->val1_03;
        break;
    case 3:
        v1 = param0->val1_04;
        break;
    case 4:
        v1 = param0->val1_05;
        break;
    case 5:
    default:
        v1 = param0->val1_01;

        if (v1 < param0->val1_02) {
            v1 = param0->val1_02;
        }

        if (v1 < param0->val1_03) {
            v1 = param0->val1_03;
        }

        if (v1 < param0->val1_04) {
            v1 = param0->val1_04;
        }

        if (v1 < param0->val1_05) {
            v1 = param0->val1_05;
        }
        break;
    }

    if (v1 > 99) {
        return 99;
    }

    return v1;
}

UnkStruct_0202AB28 * sub_0202AB28 (UnkStruct_021C0794 * param0)
{
    return sub_020245BC(param0, 16);
}

int sub_0202AB34 (void)
{
    return sizeof(UnkStruct_0202A93C) * 100;
}

void sub_0202AB3C (UnkStruct_0202AB28 * param0)
{
    int v0 = 0;

    for (v0 = 0; v0 < 100; v0++) {
        sub_0202A924(&param0->unk_00[v0]);
    }
}

u16 sub_0202AB54 (UnkStruct_0202AB28 * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 100; v0++) {
        if (param0->unk_00[v0].val1_00 == 30) {
            return v0;
        }
    }

    return 0xFFFF;
}

u16 sub_0202AB74 (UnkStruct_0202AB28 * param0, UnkStruct_0202A93C * param1)
{
    u16 v0 = sub_0202AB54(param0);

    if (v0 == 0xFFFF) {
        return v0;
    }

    sub_0202A950(param1, &param0->unk_00[v0]);
    return v0;
}

BOOL sub_0202AB98 (UnkStruct_0202AB28 * param0, u16 param1)
{
    if (param1 >= 100) {
        return 0;
    }

    sub_0202A924(&param0->unk_00[param1]);
    return 1;
}

static u16 sub_0202ABB0 (UnkStruct_0202AB28 * param0, u16 param1)
{
    u16 v0;

    for (v0 = param1; v0 < 100; v0++) {
        if (param0->unk_00[v0].val1_00 != 30) {
            return v0;
        }
    }

    return 0xFFFF;
}

void sub_0202ABD4 (UnkStruct_0202AB28 * param0)
{
    u16 v0, v1, v2;
    u16 v3, v4, v5;

    v5 = 100;

    for (v0 = 0; v0 < v5; v0++) {
        if (param0->unk_00[v0].val1_00 != 30) {
            continue;
        }

        v3 = v0;
        v2 = sub_0202ABB0(param0, v3);

        if (v2 == 0xFFFF) {
            break;
        }

        v4 = v2;
        v2 = v4 - v3;

        for (; v4 < v5; v3++, v4++) {
            sub_0202A950(&param0->unk_00[v4], &param0->unk_00[v3]);
            sub_0202A924(&param0->unk_00[v4]);
        }

        v5 -= v2;
    }
}

void sub_0202AC54 (UnkStruct_0202AB28 * param0, u16 param1, UnkStruct_0202A93C * param2)
{
    if (param1 >= 100) {
        sub_0202A924(param2);
        return;
    }

    sub_0202A950(&param0->unk_00[param1], param2);
    return;
}

UnkStruct_0202A93C * sub_0202AC70 (UnkStruct_0202AB28 * param0, u16 param1, int param2)
{
    UnkStruct_0202A93C * v0;

    v0 = sub_0202A93C(param2);

    if (param1 >= 100) {
        sub_0202A924(v0);
        return NULL;
    }

    sub_0202A950(&param0->unk_00[param1], v0);
    return v0;
}

u16 sub_0202AC98 (UnkStruct_0202AB28 * param0)
{
    u16 v0 = 0, v1;

    for (v1 = 0; v1 < 100; v1++) {
        if (sub_0202A914(&param0->unk_00[v1])) {
            ++v0;
        }
    }

    return v0;
}

u16 sub_0202ACC0 (UnkStruct_0202AB28 * param0)
{
    u16 v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < 100; v0++) {
        if (param0->unk_00[v0].val1_00 == 30) {
            v1++;
        }
    }

    return v1;
}
