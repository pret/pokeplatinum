#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0207A9CC.h"
#include "overlay006/struct_ov6_02240D5C.h"
#include "overlay016/struct_ov16_022431BC.h"
#include "overlay016/struct_ov16_022431BC_1.h"
#include "overlay016/struct_ov16_022431BC_2.h"
#include "overlay016/struct_ov16_022431BC_3.h"

#include "unk_020021B0.h"
#include "unk_020068C8.h"
#include "unk_0200AC5C.h"
#include "unk_02017E74.h"
#include "unk_0201D15C.h"
#include "unk_02023790.h"
#include "unk_020277A4.h"
#include "unk_02073C2C.h"
#include "unk_02079170.h"
#include "unk_02079FEC.h"


void sub_02079170(UnkStruct_ov6_02240D5C * param0, const UnkStruct_021C0794 * param1, int param2);
u32 sub_02079220(int param0, int param1);
BOOL sub_02079280(int param0, int param1, int param2);
void sub_020792F8(int param0, int param1, UnkStruct_02023790 * param2, int param3);
void sub_0207938C(int param0, UnkStruct_0207A9CC * param1);
void sub_0207939C(int param0, void * param1);
u8 sub_020793AC(int param0);
static void sub_020793B8(UnkStruct_ov6_02240D5C * param0, int param1, int param2);

static const u8 Unk_020F0714[] = {
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x1,
	0x0,
	0x1,
	0x0,
	0x0,
	0x1,
	0x0,
	0x0,
	0x0,
	0x1,
	0x1,
	0x0,
	0x0,
	0x1,
	0x1,
	0x2,
	0x0,
	0x1,
	0x1,
	0x0,
	0x0,
	0x0,
	0x1,
	0x2,
	0x0,
	0x1,
	0x0,
	0x1,
	0x1,
	0x0,
	0x0,
	0x0,
	0x1,
	0x0,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x2,
	0x0,
	0x0,
	0x1,
	0x0,
	0x0,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x0,
	0x0,
	0x0,
	0x1,
	0x0,
	0x0,
	0x0,
	0x0,
	0x1,
	0x0,
	0x0,
	0x1,
	0x2,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x1,
	0x1,
	0x0,
	0x1,
	0x0,
	0x2,
	0x0,
	0x1,
	0x1,
	0x0,
	0x1,
	0x1,
	0x1,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x0,
	0x1,
	0x1,
	0x0,
	0x1,
	0x0,
	0x0,
	0x1
};

void sub_02079170 (UnkStruct_ov6_02240D5C * param0, const UnkStruct_021C0794 * param1, int param2)
{
    UnkStruct_0207A9CC v0;
    int v1;
    UnkStruct_0200B144 * v2 = sub_0200B144(1, 26, 618, param2);
    UnkStruct_02023790 * v3;
    const u16 * v4 = sub_02027870(sub_02027848(param1));

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_18[v1]) {
            sub_0207938C(param0->unk_18[v1], &v0);
            param0->unk_28[v1] = v0;

            if (v0.unk_01 == 63) {
                sub_020021B0(&param0->unk_28[v1].unk_14[0], v4);
            } else {
                v3 = sub_0200B1EC(v2, param0->unk_18[v1]);
                sub_02023DF0(v3, &param0->unk_28[v1].unk_14[0], 8);
                sub_020237BC(v3);
            }

            sub_020793B8(param0, v1, param2);
        }
    }

    param0->unk_00 |= v0.unk_10;

    sub_0200B190(v2);
}

u32 sub_02079220 (int param0, int param1)
{
    u32 v0;
    UnkStruct_0207A9CC v1;

    sub_0207938C(param0, &v1);

    switch (param1) {
    case 0:
        v0 = v1.unk_00;
        break;
    case 1:
        v0 = v1.unk_01;
        break;
    case 2:
        v0 = v1.unk_02;
        break;
    case 3:
        v0 = v1.unk_03;
        break;
    case 4:
    case 5:
    case 6:
    case 7:
        v0 = v1.unk_04[param1 - 4];
        break;
    case 8:
        v0 = v1.unk_0C;
        break;
    case 9:
        v0 = v1.unk_10;
        break;
    }

    return v0;
}

BOOL sub_02079280 (int param0, int param1, int param2)
{
    UnkStruct_02006C24 * v0;
    int v1;
    u16 v2;
    u16 v3[2];
    BOOL v4;

    v4 = 0;

    v1 = sub_02006B58(59, 0);
    sub_02006AFC(&v2, 137, 0, param0 * 2, 2);
    v0 = sub_02006C24(59, param2);

    while (v2 != v1) {
        sub_02006DC8(v0, 0, v2, 4, &v3[0]);

        if ((v3[0] == param0) && (v3[1] == param1)) {
            v4 = 1;
            break;
        }

        if (v3[0] != param0) {
            break;
        }

        v2 += 4;
    }

    sub_02006CA8(v0);

    return v4;
}

void sub_020792F8 (int param0, int param1, UnkStruct_02023790 * param2, int param3)
{
    UnkStruct_02006C24 * v0;
    int v1;
    u16 v2;
    u16 v3[2];

    v1 = sub_02006B58(59, 0);
    sub_02006AFC(&v2, 137, 0, param0 * 2, 2);
    v0 = sub_02006C24(59, param3);

    while (v2 != v1) {
        sub_02006DC8(v0, 0, v2, 4, &v3[0]);

        if ((v3[0] == param0) && (v3[1] == param1)) {
            sub_0200AF20(26, 617, v2 / 4, param3, param2);
            break;
        }

        v2 += 4;
    }

    sub_02006CA8(v0);

    if (v2 == v1) {
        sub_020237E8(param2);
    }
}

void sub_0207938C (int param0, UnkStruct_0207A9CC * param1)
{
    sub_02006AA4(param1, 57, param0);
}

void sub_0207939C (int param0, void * param1)
{
    sub_02006AA4(param1, 58, param0);
}

u8 sub_020793AC (int param0)
{
    return Unk_020F0714[param0];
}

static void sub_020793B8 (UnkStruct_ov6_02240D5C * param0, int param1, int param2)
{
    void * v0;
    int v1, v2;
    u32 v3, v4;
    u32 v5;
    u8 v6;
    UnkStruct_02073C74 * v7;

    v5 = sub_0201D2D0();

    sub_0207A014(param0->unk_04[param1], 6);

    v0 = sub_02018144(param2, sizeof(UnkStruct_ov16_022431BC_3) * 6);
    v7 = sub_02073C74(param2);

    sub_0207939C(param0->unk_18[param1], v0);

    if (sub_020793AC(param0->unk_28[param1].unk_01) == 1) {
        v3 = 120;
    } else {
        v3 = 136;
    }

    switch (param0->unk_28[param1].unk_00) {
    case 0:
    {
        UnkStruct_ov16_022431BC * v8;
        u16 v9;
        u8 v10;

        v8 = (UnkStruct_ov16_022431BC *)v0;

        for (v1 = 0; v1 < param0->unk_28[param1].unk_03; v1++) {
            v9 = v8[v1].unk_04 & 0x3ff;
            v10 = (v8[v1].unk_04 & 0xfc00) >> 10;
            v4 = v8[v1].unk_00 + v8[v1].unk_02 + v9 + param0->unk_18[param1];

            sub_0201D2DC(v4);

            for (v2 = 0; v2 < param0->unk_28[param1].unk_01; v2++) {
                v4 = sub_0201D2E8();
            }

            v4 = (v4 << 8) + v3;
            v6 = v8[v1].unk_00 * 31 / 255;

            sub_02073D80(v7, v9, v8[v1].unk_02, v6, 1, v4, 2, 0);
            sub_02078AEC(v8[v1].unk_06, v7, param2);
            sub_02074B30(v7, 112, &v10);
            sub_0207A048(param0->unk_04[param1], v7);
        }
    }
    break;
    case 1:
    {
        UnkStruct_ov16_022431BC_1 * v11;
        u16 v12;
        u8 v13;

        v11 = (UnkStruct_ov16_022431BC_1 *)v0;

        for (v1 = 0; v1 < param0->unk_28[param1].unk_03; v1++) {
            v12 = v11[v1].unk_04 & 0x3ff;
            v13 = (v11[v1].unk_04 & 0xfc00) >> 10;
            v4 = v11[v1].unk_00 + v11[v1].unk_02 + v12 + param0->unk_18[param1];

            sub_0201D2DC(v4);

            for (v2 = 0; v2 < param0->unk_28[param1].unk_01; v2++) {
                v4 = sub_0201D2E8();
            }

            v4 = (v4 << 8) + v3;
            v6 = v11[v1].unk_00 * 31 / 255;

            sub_02073D80(v7, v12, v11[v1].unk_02, v6, 1, v4, 2, 0);

            for (v2 = 0; v2 < 4; v2++) {
                sub_02077230(v7, v11[v1].unk_06[v2], v2);
            }

            sub_02078AEC(v11[v1].unk_0E, v7, param2);
            sub_02074B30(v7, 112, &v13);
            sub_0207A048(param0->unk_04[param1], v7);
        }
    }
    break;
    case 2:
    {
        UnkStruct_ov16_022431BC_2 * v14;
        u16 v15;
        u8 v16;

        v14 = (UnkStruct_ov16_022431BC_2 *)v0;

        for (v1 = 0; v1 < param0->unk_28[param1].unk_03; v1++) {
            v15 = v14[v1].unk_04 & 0x3ff;
            v16 = (v14[v1].unk_04 & 0xfc00) >> 10;

            v4 = v14[v1].unk_00 + v14[v1].unk_02 + v15 + param0->unk_18[param1];
            sub_0201D2DC(v4);

            for (v2 = 0; v2 < param0->unk_28[param1].unk_01; v2++) {
                v4 = sub_0201D2E8();
            }

            v4 = (v4 << 8) + v3;
            v6 = v14[v1].unk_00 * 31 / 255;

            sub_02073D80(v7, v15, v14[v1].unk_02, v6, 1, v4, 2, 0);
            sub_02074B30(v7, 6, (u8 *)&v14[v1].unk_06);
            sub_02078AEC(v14[v1].unk_08, v7, param2);
            sub_02074B30(v7, 112, &v16);
            sub_0207A048(param0->unk_04[param1], v7);
        }
    }
    break;
    case 3:
    {
        UnkStruct_ov16_022431BC_3 * v17;
        u16 v18;
        u8 v19;

        v17 = (UnkStruct_ov16_022431BC_3 *)v0;

        for (v1 = 0; v1 < param0->unk_28[param1].unk_03; v1++) {
            v18 = v17[v1].unk_04 & 0x3ff;
            v19 = (v17[v1].unk_04 & 0xfc00) >> 10;
            v4 = v17[v1].unk_00 + v17[v1].unk_02 + v18 + param0->unk_18[param1];

            sub_0201D2DC(v4);

            for (v2 = 0; v2 < param0->unk_28[param1].unk_01; v2++) {
                v4 = sub_0201D2E8();
            }

            v4 = (v4 << 8) + v3;
            v6 = v17[v1].unk_00 * 31 / 255;

            sub_02073D80(v7, v18, v17[v1].unk_02, v6, 1, v4, 2, 0);
            sub_02074B30(v7, 6, (u8 *)&v17[v1].unk_06);

            for (v2 = 0; v2 < 4; v2++) {
                sub_02077230(v7, v17[v1].unk_08[v2], v2);
            }

            sub_02078AEC(v17[v1].unk_10, v7, param2);
            sub_02074B30(v7, 112, &v19);
            sub_0207A048(param0->unk_04[param1], v7);
        }
    }
    break;
    }

    sub_020181C4(v0);
    sub_020181C4(v7);
    sub_0201D2DC(v5);
}
