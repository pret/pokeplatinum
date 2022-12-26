#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202E858.h"
#include "struct_defs/struct_0202E8C0.h"
#include "struct_defs/struct_0202E91C.h"
#include "struct_defs/struct_0202EA80.h"
#include "struct_defs/struct_0202EE10.h"

#include "unk_020021B0.h"
#include "unk_02017E74.h"
#include "unk_02023790.h"
#include "unk_020244AC.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202B37C.h"
#include "unk_0202CD50.h"
#include "unk_0202E840.h"
#include "unk_0203061C.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_0202E858 * unk_0C[11];
    UnkStruct_0202E858 * unk_38[6];
    UnkStruct_0202EA80 unk_50;
} UnkStruct_0202EABC;

static const u8 Unk_020E5CD0[][2] = {
    {0x6, 0x0},
    {0x4, 0x6},
    {0x3, 0xA}
};

u8 sub_0202E840 (int param0)
{
    return Unk_020E5CD0[param0][0];
}

u8 sub_0202E84C (int param0)
{
    return Unk_020E5CD0[param0][1];
}

void sub_0202E858 (UnkStruct_0202E858 * param0)
{
    param0->unk_00 = 0;
    param0->unk_04 = 0;

    sub_02002294(param0->unk_08, 7 + 1);
    sub_02025C84(28);
}

BOOL sub_0202E870 (UnkStruct_0202E858 * param0)
{
    if (sub_020021F0(param0->unk_08) == 0) {
        return 0;
    }

    return 1;
}

int sub_0202E884 (void)
{
    return sizeof(UnkStruct_0202E8C0);
}

void sub_0202E88C (UnkStruct_0202E8C0 * param0)
{
    int v0, v1;

    MI_CpuClear8(param0, sizeof(UnkStruct_0202E8C0));

    for (v0 = 0; v0 < (13 * 2); v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            sub_0202E858(&(param0->unk_00[v0].unk_00[v1]));
        }
    }

    sub_02025C84(28);
}

UnkStruct_0202E8C0 * sub_0202E8C0 (UnkStruct_021C0794 * param0)
{
    sub_02025C48(28);
    return sub_020245BC(param0, 28);
}

void sub_0202E8D4 (UnkStruct_0202E8C0 * param0, int param1, u8 param2)
{
    int v0;
    UnkStruct_0202EA80 * v1;

    if (param2 >= 6) {
        GF_ASSERT(param2 < 6);
        return;
    }

    v1 = &(param0->unk_00[param1]);

    for (v0 = param2; v0 < (6 - 1); v0++) {
        v1->unk_00[v0] = v1->unk_00[v0 + 1];
    }

    sub_0202E858(&(v1->unk_00[6 - 1]));
    sub_02025C84(28);
}

int sub_0202E91C (void)
{
    return sizeof(UnkStruct_0202E91C);
}

static u32 * sub_0202E924 (UnkStruct_021C0794 * param0, int param1)
{
    int v0;
    u32 v1;
    UnkStruct_0202CD88 * v2;
    UnkStruct_0203068C * v3;
    u32 * v4;
    static const int v5[] = {
        0x0,
        0x2,
        0x4,
        0x6,
        0x8,
        0x1D,
        0x29,
        0x9,
        0xB,
        0xA,
        0x5C,
        0x5A,
        0x5E
    };

    v2 = sub_0202CD88(param0);
    v3 = sub_0203068C(param0);
    v4 = sub_02018184(param1, 4 * 13);

    for (v0 = 0; v0 < 13; v0++) {
        switch (v0) {
        case 5:
            v1 = sub_0202CFB8(v2, (1 + 14));

            if (v1 > 0) {
                v1 = sub_0202CFB8(v2, (1 + 28)) / v1;
            }

            v4[v0] = v1;
            break;
        case 10:
            v1 = sub_0202CFB8(v2, (((70 + 1)) + 21));
            v1 += sub_0202CFB8(v2, (((70 + 1)) + 22));
            v4[v0] = v1;
            break;
        case 11:
            v1 = sub_0202CFB8(v2, (((70 + 1)) + 19));
            v1 += sub_0202CFB8(v2, (((70 + 1)) + 20));

            if (v1 > 0) {
                v1 = (v4[10] * 100) / v1;
            }

            v4[v0] = v1;
            break;
        default:
            if ((v0 >= 0) && (v0 <= 4)) {
                v4[v0] = sub_02030698(v3, v5[v0], 0xff);
            } else {
                v4[v0] = sub_0202CFB8(v2, v5[v0]);
            }
        }
    }

    sub_02025C84(28);

    return v4;
}

void * sub_0202E9FC (UnkStruct_021C0794 * param0, int param1)
{
    int v0;
    u32 v1, v2;
    UnkStruct_0202E91C * v3;
    UnkStruct_02023790 * v4;
    UnkStruct_02025E6C * v5 = sub_02025E38(param0);
    u32 * v6;

    v3 = sub_02018184(param1, sizeof(UnkStruct_0202E91C));
    MI_CpuClear8(v3, sizeof(UnkStruct_0202E91C));

    v1 = sub_0202B400(sub_0202B4A0(param0), 1);
    v4 = sub_02025F04(v5, param1);
    v6 = sub_0202E924(param0, param1);

    for (v0 = 0; v0 < 13; v0++) {
        v2 = 0;

        v3->unk_00[v0].unk_00 = v1;
        sub_02023DF0(v4, v3->unk_00[v0].unk_08, 7 + 1);
        v3->unk_00[v0].unk_04 = v6[v0];
    }

    sub_020181C4(v6);
    sub_020237BC(v4);
    sub_02025C84(28);

    return v3;
}

static void sub_0202EA80 (UnkStruct_0202EA80 * param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        sub_0202E858(&(param0->unk_00[v0]));
    }
}

static BOOL sub_0202EA98 (const UnkStruct_0202E858 * param0, const UnkStruct_0202E858 * param1)
{
    if (param0->unk_00 != param1->unk_00) {
        return 0;
    }

    if (sub_0200220C(param0->unk_08, param1->unk_08)) {
        return 0;
    }

    return 1;
}

static BOOL sub_0202EABC (UnkStruct_0202EABC * param0, const UnkStruct_0202E858 * param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (sub_0202EA98(param0->unk_0C[v0], param1)) {
            return 1;
        }
    }

    return 0;
}

static void sub_0202EAEC (UnkStruct_0202E8C0 * param0, UnkStruct_0202EABC * param1, u32 param2, u8 param3, u8 param4, UnkStruct_0202E91C ** param5, u8 param6, int param7)
{
    int v0, v1;
    UnkStruct_0202E858 * v2;
    UnkStruct_0202EA80 * v3;

    MI_CpuClear8(param1, sizeof(UnkStruct_0202EABC));

    if (param4 == 0) {
        v3 = &(param0->unk_00[param3]);

        MI_CpuCopy8(v3, &(param1->unk_50), sizeof(UnkStruct_0202EA80));

        for (v0 = 0; v0 < param6; v0++) {
            param1->unk_0C[param1->unk_04++] = &(param5[v0]->unk_00[param3]);
        }

        for (v0 = 0; v0 < 6; v0++) {
            if (!sub_0202E870(&(param1->unk_50.unk_00[v0]))) {
                continue;
            }

            if (sub_0202EABC(param1, &(param1->unk_50.unk_00[v0]))) {
                continue;
            }

            param1->unk_38[param1->unk_00++] = &(param1->unk_50.unk_00[v0]);
        }
    } else {
        v3 = &(param0->unk_00[param3 + 13]);
        MI_CpuCopy8(v3, &(param1->unk_50), sizeof(UnkStruct_0202EA80));

        for (v0 = 0; v0 < param6; v0++) {
            if ((param5[v0]->unk_00[param3].unk_00 == 0) || (param5[v0]->unk_00[param3].unk_00 != param2)) {
                continue;
            }

            param1->unk_0C[param1->unk_04++] = &(param5[v0]->unk_00[param3]);
        }

        for (v0 = 0; v0 < 6; v0++) {
            if (!sub_0202E870(&(param1->unk_50.unk_00[v0]))) {
                continue;
            }

            if (param1->unk_50.unk_00[v0].unk_00 != param2) {
                continue;
            }

            if (sub_0202EABC(param1, &(param1->unk_50.unk_00[v0]))) {
                continue;
            }

            param1->unk_38[param1->unk_00++] = &(param1->unk_50.unk_00[v0]);
        }
    }

    param1->unk_08 = param1->unk_04 + param1->unk_00;

    for (v0 = 0; v0 < param1->unk_00; v0++) {
        param1->unk_0C[v0 + param1->unk_04] = param1->unk_38[v0];
    }

    for (v0 = 0; v0 < (param1->unk_08 - 1); v0++) {
        for (v1 = (param1->unk_08 - 1); v1 > v0; v1--) {
            if (param1->unk_0C[v0]->unk_04 >= param1->unk_0C[v1]->unk_04) {
                continue;
            }

            v2 = param1->unk_0C[v0];

            param1->unk_0C[v0] = param1->unk_0C[v1];
            param1->unk_0C[v1] = v2;
        }
    }

    sub_0202EA80(v3);

    for (v0 = 0; (v0 < 6 && v0 < param1->unk_08); v0++) {
        v3->unk_00[v0] = *(param1->unk_0C[v0]);
    }
}

static void sub_0202ECB0 (UnkStruct_0202E8C0 * param0, u32 param1, u8 param2, UnkStruct_0202E91C ** param3, u8 param4, int param5)
{
    int v0, v1;
    UnkStruct_0202EABC * v2;

    v2 = sub_02018184(param5, sizeof(UnkStruct_0202EABC));

    sub_0202EAEC(param0, v2, param1, param2, 0, param3, param4, param5);

    if (param1 != 0) {
        sub_0202EAEC(param0, v2, param1, param2, 1, param3, param4, param5);
    }

    sub_020181C4(v2);
}

void sub_0202ED0C (UnkStruct_021C0794 * param0, int param1, u8 param2, const void ** param3, int param4)
{
    u8 v0, v1;
    u32 v2;
    UnkStruct_0202E91C * v3[5];
    UnkStruct_0202E8C0 * v4;
    UnkStruct_0202EE10 * v5;

    v4 = sub_0202E8C0(param0);
    v2 = sub_0202B400(sub_0202B4A0(param0), 1);
    v1 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        if (v0 == param1) {
            continue;
        }

        if (param3[v0] == NULL) {
            continue;
        }

        v3[v1++] = (UnkStruct_0202E91C *)param3[v0];
    }

    if (v1 == 0) {
        return;
    }

    for (v0 = 0; v0 < 13; v0++) {
        sub_0202ECB0(v4, v2, v0, v3, v1, param4);
    }

    sub_02025C84(28);

    return;
}

UnkStruct_0202EE10 * sub_0202ED8C (UnkStruct_021C0794 * param0, int param1, int param2)
{
    int v0, v1;
    u32 v2;
    UnkStruct_0202EE10 * v3;
    u32 * v4;
    UnkStruct_02025E6C * v5;

    v5 = sub_02025E38(param0);
    v3 = sub_02018144(param2, sizeof(UnkStruct_0202EE10));

    MI_CpuClear8(v3, sizeof(UnkStruct_0202EE10));

    v2 = sub_0202B400(sub_0202B4A0(param0), 1);
    v4 = sub_0202E924(param0, param2);
    v3->unk_00 = sub_0202E840(param1);
    v1 = sub_0202E84C(param1);

    for (v0 = 0; v0 < v3->unk_00; v0++) {
        v3->unk_04[v0].unk_00 = v2;
        v3->unk_04[v0].unk_04 = v4[v0 + v1];
        v3->unk_04[v0].unk_08 = sub_02025F04(v5, param2);
    }

    sub_020181C4(v4);
    return v3;
}

UnkStruct_0202EE10 * sub_0202EE10 (UnkStruct_0202E8C0 * param0, int param1, int param2)
{
    int v0;
    UnkStruct_0202EE10 * v1;
    UnkStruct_0202EA80 * v2;

    v1 = sub_02018144(param2, sizeof(UnkStruct_0202EE10));
    MI_CpuClear8(v1, sizeof(UnkStruct_0202EE10));
    v2 = &(param0->unk_00[param1]);

    for (v0 = 0; v0 < 6; v0++) {
        if (!sub_0202E870(&(v2->unk_00[v0]))) {
            continue;
        }

        v1->unk_04[v1->unk_00].unk_00 = v2->unk_00[v0].unk_00;
        v1->unk_04[v1->unk_00].unk_04 = v2->unk_00[v0].unk_04;
        v1->unk_04[v1->unk_00].unk_08 = sub_02023790(7 + 1, param2);
        sub_02023D28(v1->unk_04[v1->unk_00].unk_08, v2->unk_00[v0].unk_08);
        ++v1->unk_00;
    }

    return v1;
}

void sub_0202EE8C (UnkStruct_0202EE10 * param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_04[v0].unk_08 != NULL) {
            sub_020237BC(param0->unk_04[v0].unk_08);
        }
    }

    MI_CpuClear8(param0, sizeof(UnkStruct_0202EE10));

    sub_020181C4(param0);
    param0 = NULL;
    sub_02025C84(28);
}
