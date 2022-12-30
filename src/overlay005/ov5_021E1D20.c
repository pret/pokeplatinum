#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E5C_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02026324_decl.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay005/struct_ov5_021E1FF4_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_0205AA50.h"

#include "unk_02002B7C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B29C.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "unk_02017E74.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_02023790.h"
#include "unk_020244AC.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202631C.h"
#include "unk_0202CBE4.h"
#include "unk_020366A0.h"
#include "unk_0203A024.h"
#include "unk_0203A6DC.h"
#include "unk_0205E7D0.h"
#include "overlay005/ov5_021E1D20.h"
#include "overlay005/ov5_021EA714.h"

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_02025E6C * unk_08;
    UnkStruct_02025E5C * unk_0C;
} UnkStruct_ov5_021E1D20;

struct UnkStruct_ov5_021E1FF4_t {
    UnkStruct_0203CDB0 * unk_00;
    int unk_04;
    u8 unk_08;
    UnkStruct_02018340 * unk_0C;
    UnkStruct_0205AA50 * unk_10;
    UnkStruct_0200B358 * unk_14;
    UnkStruct_0200B144 * unk_18;
    UnkStruct_ov5_021E1D20 unk_1C;
    int unk_2C;
    int unk_30;
};

static void ov5_021E2028(UnkStruct_0203CDB0 * param0);

static const int Unk_ov5_021F9CCC[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4
};

static const int Unk_ov5_021F9CBC[] = {
    0x5,
    0x6,
    0x7,
    0x8
};

static void ov5_021E1D20 (UnkStruct_ov5_021E1D20 * param0, const UnkStruct_0203CDB0 * param1)
{
    UnkStruct_021C0794 * v0 = param1->unk_0C;
    UnkStruct_02049FA8 * v1 = sub_0203A720(sub_0203A790(v0));
    UnkStruct_02026324 * v2 = sub_02027560(v0);

    param0->unk_04 = sub_0203A138(v1->unk_00);

    if (sub_02027520(v2)) {
        param0->unk_00 = sub_02026E48(v2);
    } else {
        param0->unk_00 = 0;
    }

    param0->unk_08 = sub_02025E38(v0);
    param0->unk_0C = sub_02025E5C(v0);
}

static void ov5_021E1D6C (UnkStruct_0200B358 * param0, const UnkStruct_ov5_021E1D20 * param1)
{
    int v0, v1, v2;

    sub_0200B8C8(param0, 0, param1->unk_04);
    sub_0200B498(param0, 1, param1->unk_08);
    sub_0200B60C(param0, 2, sub_02025F58(param1->unk_08), 1, 0, 1);

    if (param1->unk_00 >= 100) {
        v0 = 3;
        v1 = 0;
    } else if (param1->unk_00 >= 10) {
        v0 = 3;
        v1 = 1;
    } else {
        v0 = 3 - 1;
        v1 = 1;
    }

    sub_0200B60C(param0, 3, param1->unk_00, v0, v1, 1);
    v2 = sub_0202CC58(param1->unk_0C);

    if (v2 >= 100) {
        v0 = 3;
        v1 = 0;
    } else if (v2 >= 10) {
        v0 = 3;
        v1 = 1;
    } else {
        v0 = 3 - 1;
        v1 = 1;
    }

    sub_0200B60C(param0, 4, v2, v0, v1, 1);
    sub_0200B60C(param0, 5, sub_0202CC5C(param1->unk_0C), 2, 2, 1);
}

static int ov5_021E1E10 (const UnkStruct_ov5_021E1D20 * param0)
{
    if (param0->unk_00 != 0) {
        return 10;
    } else {
        return 10 - 2;
    }
}

static void ov5_021E1E20 (const UnkStruct_ov5_021E1FF4 * param0)
{
    UnkStruct_02023790 * v0;
    int v1, v2;
    int v3;
    int v4;

    v3 = sub_02002DF8(0, 1) + sub_02002DF8(0, 3);
    v2 = 0;
    v0 = sub_0200B29C(param0->unk_14, param0->unk_18, Unk_ov5_021F9CCC[0], param0->unk_04);

    sub_0201D738(param0->unk_10, 0, v0, 0, v2, 0xff, NULL);
    sub_020237BC(v0);

    for (v4 = 1; v4 < NELEMS(Unk_ov5_021F9CCC); v4++) {
        if ((Unk_ov5_021F9CCC[v4] == 3) && (param0->unk_1C.unk_00 == 0)) {
            continue;
        }

        v2 += v3;
        v0 = sub_0200B1EC(param0->unk_18, Unk_ov5_021F9CCC[v4]);

        sub_0201D738(param0->unk_10, 0, v0, 0, v2, 0xff, NULL);
        sub_020237BC(v0);

        v0 = sub_0200B29C(param0->unk_14, param0->unk_18, Unk_ov5_021F9CBC[v4 - 1], param0->unk_04);
        v1 = 13 * 8 - sub_02002D7C(0, v0, sub_02002DF8(0, 2));

        sub_0201D738(param0->unk_10, 0, v0, v1, v2, 0xff, NULL);
        sub_020237BC(v0);
    }
}

void ov5_021E1F04 (UnkStruct_ov5_021E1FF4 * param0)
{
    param0->unk_10 = sub_02018144(param0->unk_04, sizeof(UnkStruct_0205AA50));

    sub_0201A7E8(param0->unk_0C, param0->unk_10, param0->unk_08, 1, 1, param0->unk_2C, param0->unk_30, 13, 393);
    sub_0200DAA4(param0->unk_0C, param0->unk_08, 985, 11, 0, param0->unk_04);
    sub_0201ADA4(param0->unk_10, sub_02002DF8(0, 6));

    ov5_021E1E20(param0);
    sub_0200DC48(param0->unk_10, 0, 985, 11);
}

void ov5_021E1F7C (UnkStruct_ov5_021E1FF4 * param0)
{
    sub_0200DC9C(param0->unk_10, 0);
    sub_0201A8FC(param0->unk_10);
    sub_020181C4(param0->unk_10);
}

UnkStruct_ov5_021E1FF4 * ov5_021E1F98 (UnkStruct_0203CDB0 * param0, int param1, u8 param2)
{
    UnkStruct_ov5_021E1FF4 * v0;

    v0 = sub_02018144(param1, sizeof(UnkStruct_ov5_021E1FF4));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = param0->unk_08;
    v0->unk_14 = sub_0200B358(param1);
    v0->unk_18 = sub_0200B144(1, 26, 534, param1);

    ov5_021E1D20(&v0->unk_1C, v0->unk_00);
    ov5_021E1D6C(v0->unk_14, &v0->unk_1C);

    v0->unk_2C = 13;
    v0->unk_30 = ov5_021E1E10(&v0->unk_1C);

    return v0;
}

void ov5_021E1FF4 (UnkStruct_ov5_021E1FF4 * param0)
{
    sub_0200B190(param0->unk_18);
    sub_0200B3F0(param0->unk_14);
    sub_020181C4(param0);
}

BOOL ov5_021E200C (UnkStruct_0203CDB0 * param0)
{
    ov5_021E2028(param0);

    if (sub_020246E0(param0->unk_0C) == 2) {
        return 1;
    } else {
        return 0;
    }
}

static void ov5_021E2028 (UnkStruct_0203CDB0 * param0)
{
    sub_0203A7A8(param0);
    ov5_021EA714(param0, 4, 0);

    param0->unk_1C->unk_08 = sub_0205EABC(param0->unk_3C);
    param0->unk_1C->unk_0C = sub_0205EAC8(param0->unk_3C);
    param0->unk_1C->unk_04 = -1;
    param0->unk_1C->unk_10 = sub_0205EA78(param0->unk_3C);
}

void ov5_021E2064 (UnkStruct_0203CDB0 * param0)
{
    if (param0 == NULL) {
        GF_ASSERT(0);
        return;
    }

    switch (param0->unk_1C->unk_00) {
    case 466:
    case 332:
    case 333:
        return;
    }

    if (sub_02038EB4() == 1) {
        return;
    }

    ov5_021E2028(param0);
}
