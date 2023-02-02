#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02027F8C_decl.h"
#include "struct_decls/struct_0205B43C_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "constdata/const_020ED570.h"

#include "struct_defs/struct_0203330C.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0205B4F8.h"
#include "struct_defs/struct_0205C22C.h"
#include "struct_defs/struct_0205C680.h"
#include "struct_defs/struct_0205C924.h"
#include "struct_defs/struct_0205C95C.h"

#include "unk_02005474.h"
#include "unk_0200D9E8.h"
#include "unk_02014A84.h"
#include "heap.h"
#include "unk_02023790.h"
#include "unk_020244AC.h"
#include "unk_02025E68.h"
#include "unk_02027F84.h"
#include "unk_020366A0.h"
#include "unk_020508D4.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_020655F4.h"
#include "unk_020711EC.h"
#include "overlay005/ov5_021F134C.h"
#include "overlay005/ov5_021F600C.h"

static void sub_0205C304(UnkStruct_0201CD38 * param0, void * param1);
static void sub_0205C44C(UnkStruct_0205C22C * param0, UnkStruct_0205B43C * param1, UnkStruct_02061830 * param2, UnkStruct_02027F8C * param3);
static int sub_0205C340(UnkStruct_0205C22C * param0, int param1, WMBssDesc * param2, UnkStruct_02027F8C * param3);
static void sub_0205C51C(UnkStruct_0205C22C * param0, UnkStruct_02061830 * param1);
static void sub_0205C680(UnkStruct_0205C680 * param0, int param1);
static void sub_0205C6BC(UnkStruct_0205C680 * param0);
static void sub_0205C6E0(UnkStruct_0205C680 * param0, UnkStruct_02061AB4 * param1, int param2, int param3);
static void sub_0205C788(UnkStruct_0205C680 * param0, UnkStruct_02061AB4 * param1);
static void sub_0205C7BC(UnkStruct_0205C680 * param0, UnkStruct_02061AB4 * param1);
static void sub_0205C7E4(UnkStruct_02061830 * param0, int param1, int param2);
static void sub_0205C444(UnkStruct_0205C680 param0[], int param1, int param2);
void sub_0205C970(UnkStruct_0205C95C * param0);
UnkStruct_0205C95C * sub_0205C95C(int param0);
static void sub_0205C944(UnkStruct_0205C95C * param0);
static void sub_0205C924(UnkStruct_0205C924 * param0);
static void sub_0205C900(UnkStruct_0205C95C * param0);
static void sub_0205C8DC(UnkStruct_0205C924 * param0);

UnkStruct_0205C22C * sub_0205C22C (UnkStruct_0205B43C * param0)
{
    UnkStruct_0205C22C * v0;

    v0 = (UnkStruct_0205C22C *)Heap_AllocFromHeap(31, sizeof(UnkStruct_0205C22C));

    MI_CpuClearFast(v0, sizeof(UnkStruct_0205C22C));

    v0->unk_00 = param0;
    v0->unk_47C = 1;
    v0->unk_04 = sub_0200D9E8(sub_0205C304, v0, 11);
    v0->unk_470 = sub_0205B770(param0);
    v0->unk_474 = sub_020245BC(v0->unk_470->unk_0C, 9);
    v0->unk_08 = v0->unk_470->unk_3C;

    Heap_CreateAtEnd(11, 89, 10000);
    v0->unk_478 = sub_0205C95C(89);
    sub_0205C2C8(v0);

    return v0;
}

void sub_0205C2B0 (UnkStruct_0205C22C * param0)
{
    int v0;

    for (v0 = 0; v0 < 50 + 1; v0++) {
        if (param0->unk_0C[v0].unk_01 != 0) {
            param0->unk_0C[v0].unk_00 = 3;
        }
    }
}

void sub_0205C2C8 (UnkStruct_0205C22C * param0)
{
    int v0;

    for (v0 = 0; v0 < 50 + 1; v0++) {
        param0->unk_0C[v0].unk_00 = 0;
        param0->unk_0C[v0].unk_01 = 0;
        param0->unk_0C[v0].unk_02 = 0;
        param0->unk_0C[v0].unk_03 = 0;
    }
}

void sub_0205C2E0 (UnkStruct_0205C22C * param0)
{
    sub_0200DA58(param0->unk_04);
    sub_0205C970(param0->unk_478);
    Heap_Destroy(89);
    Heap_FreeToHeap(param0);
}

static void sub_0205C304 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_0205C22C * v0 = (UnkStruct_0205C22C *)param1;
    UnkStruct_0205B43C * v1 = v0->unk_00;
    UnkStruct_02061AB4 * v2;
    int v3;

    if (!sub_020509A4(v0->unk_470)) {
        v0->unk_08 = v0->unk_470->unk_3C;
        sub_0205C44C(v0, v1, v0->unk_470->unk_38, v0->unk_474);
        sub_0205C51C(v0, v0->unk_470->unk_38);
    }
}

static int sub_0205C340 (UnkStruct_0205C22C * param0, int param1, WMBssDesc * param2, UnkStruct_02027F8C * param3)
{
    int v0, v1, v2 = 0;
    UnkStruct_0203330C * v3;
    UnkStruct_0205B4F8 * v4;
    UnkStruct_02061AB4 * v5;

    if (param2 == NULL) {
        for (v0 = 0; v0 < 4; v0++) {
            v1 = Unk_020ED570[param1] + v0;
            sub_0205C444(param0->unk_0C, v1, 3);
        }

        return 0;
    }

    v3 = (UnkStruct_0203330C *)param2->gameInfo.userGameInfo;
    v4 = (UnkStruct_0205B4F8 *)v3->unk_30;

    if (param0->unk_0C[param1].unk_0C != v3->unk_00) {
        for (v0 = 0; v0 < 4; v0++) {
            v1 = Unk_020ED570[param1] + v0;
            sub_0205C444(param0->unk_0C, v1, 3);
        }

        return 0;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v1 = Unk_020ED570[param1] + v0;

        switch (param0->unk_0C[v1].unk_01) {
        case 0:
            if (v4->unk_18[v0] != 0) {
                param0->unk_0C[v1].unk_00 = 2;
                param0->unk_0C[v1].unk_08 = (v4->unk_18[v0] & 0x7f);
                param0->unk_0C[v1].unk_02 = sub_020280E0(param3, v4->unk_00[v0]);
                v2 = 1;
            }
            break;
        case 2:
            if (v4->unk_18[v0] == 0) {
                sub_0205C444(param0->unk_0C, v1, 3);
                {
                    int v6;

                    for (v6 = 0; v6 < 4; v6++) {
                        (void)0;
                    }
                }
            } else {
                v2 = 1;
            }
            break;
        case 4:
            param0->unk_0C[v1].unk_00 = 0;
            break;
        }
    }

    return v2;
}

static void sub_0205C444 (UnkStruct_0205C680 param0[], int param1, int param2)
{
    param0[param1].unk_00 = param2;
}

static void sub_0205C44C (UnkStruct_0205C22C * param0, UnkStruct_0205B43C * param1, UnkStruct_02061830 * param2, UnkStruct_02027F8C * param3)
{
    WMBssDesc * v0;
    int v1;
    UnkStruct_0203330C * v2;
    UnkStruct_02025E6C * v3;

    for (v1 = 0; v1 < 10; v1++) {
        v0 = sub_0205B774(param1, v1);

        if (v0 != NULL) {
            v2 = (UnkStruct_0203330C *)v0->gameInfo.userGameInfo;
            v3 = (UnkStruct_02025E6C *)v2->unk_10;
        } else {
            v2 = NULL;
            v3 = NULL;
        }

        switch (param0->unk_0C[v1].unk_01) {
        case 0:
            if (v0 != NULL) {
                param0->unk_0C[v1].unk_08 = sub_02025F8C(v3);
                param0->unk_0C[v1].unk_02 = sub_020280E0(param3, sub_02025F20(v3));
                param0->unk_0C[v1].unk_0C = v2->unk_00;

                if (sub_0205C340(param0, v1, v0, param3)) {
                    param0->unk_0C[v1].unk_00 = 2;
                } else {
                    param0->unk_0C[v1].unk_00 = 1;
                }
            }
            break;
        case 2:
            if (v0 == NULL) {
                sub_0205C444(param0->unk_0C, v1, 3);
            } else {
                if (param0->unk_0C[v1].unk_0C != v2->unk_00) {
                    sub_0205C444(param0->unk_0C, v1, 3);
                }
            }

            if (sub_0205C340(param0, v1, v0, param3)) {
                if (param0->unk_0C[v1].unk_09 == 1) {
                    param0->unk_0C[v1].unk_00 = 3;
                }
            }
            break;
        case 4:
            param0->unk_0C[v1].unk_00 = 0;
            break;
        }
    }
}

static void sub_0205C51C (UnkStruct_0205C22C * param0, UnkStruct_02061830 * param1)
{
    UnkStruct_02061AB4 * v0;
    int v1, v2, v3;

    GF_ASSERT(param0->unk_08 != NULL);

    v2 = sub_0205EABC(param0->unk_08);
    v3 = sub_0205EAC8(param0->unk_08);

    for (v1 = 0; v1 < 50; v1++) {
        v0 = sub_0206251C(param1, v1 + 1);

        if (v0 == NULL) {
            GF_ASSERT(0);
        }

        switch (param0->unk_0C[v1].unk_01) {
        case 0:
            if (sub_020655F4(v0) == 1) {
                int v4 = param0->unk_0C[v1].unk_00;

                if ((v4 == 1) || (v4 == 2)) {
                    sub_0205C6E0(&param0->unk_0C[v1], v0, v2, v3);
                }
            }
            break;
        case 1:
            if (sub_020655F4(v0) == 1) {
                if (param0->unk_0C[v1].unk_00 == 3) {
                    param0->unk_0C[v1].unk_01 = 0;
                    param0->unk_0C[v1].unk_00 = 0;
                    sub_0205C680(&param0->unk_0C[v1], 1);
                    continue;
                }

                sub_020656AC(v0);
                sub_02062DB4(v0, 0);

                if ((param0->unk_0C[v1].unk_00 == 1) && (param0->unk_0C[v1].unk_09 == 0)) {
                    sub_020633A8(v0, 0x3);
                    sub_020629FC(v0, 1);
                    sub_02062A04(v0, 1);
                    param0->unk_0C[v1].unk_09 = 1;
                }

                param0->unk_0C[v1].unk_01 = 2;
                param0->unk_0C[v1].unk_00 = 0;
            }
            break;
        case 2:
            if (sub_020655F4(v0) == 1) {
                sub_0205C7BC(&param0->unk_0C[v1], v0);

                if (param0->unk_0C[v1].unk_00 == 3) {
                    sub_0205C788(&param0->unk_0C[v1], v0);
                }

                sub_0205C6BC(&param0->unk_0C[v1]);
            }
            break;
        case 3:
            if (sub_020655F4(v0) == 1) {
                sub_020656AC(v0);

                param0->unk_0C[v1].unk_01 = 4;
                param0->unk_0C[v1].unk_00 = 0;
                param0->unk_0C[v1].unk_09 = 0;

                sub_02062D64(v0, 1);
                sub_02062D80(v0, 0);
            }
            break;
        case 4:
            param0->unk_0C[v1].unk_01 = 0;
            break;
        }
    }

    sub_0205C7BC(&param0->unk_0C[50], sub_0205EB3C(param0->unk_08));
    sub_0205C6BC(&param0->unk_0C[50]);
}

static void sub_0205C680 (UnkStruct_0205C680 * param0, int param1)
{
    if (param0->unk_10 != NULL) {
        if (sub_020714F0(param0->unk_10)) {
            sub_0207136C(param0->unk_10);
        }

        param0->unk_10 = NULL;
    }

    if (param1) {
        if (param0->unk_14 != NULL) {
            if (sub_020714F0(param0->unk_14)) {
                sub_0207136C(param0->unk_14);
            }

            param0->unk_14 = NULL;
        }
    }
}

static void sub_0205C6BC (UnkStruct_0205C680 * param0)
{
    if (param0->unk_04) {
        param0->unk_06--;

        if (param0->unk_06 == 0) {
            sub_0205C680(param0, 0);
            param0->unk_04 = 0;
        }
    }
}

static void sub_0205C6E0 (UnkStruct_0205C680 * param0, UnkStruct_02061AB4 * param1, int param2, int param3)
{
    int v0, v1, v2;

    v0 = sub_02062FF0(param1);
    v1 = sub_02062FF8(param1);
    v2 = sub_02063000(param1);

    if ((v0 == param2) && (v2 == param3)) {
        return;
    }

    sub_02005748(1615);
    sub_02061AD4(param1, param0->unk_08);
    sub_0205C680(param0, 0);
    sub_02063340(param1, v0, v1, v2, 1);
    sub_0206296C(param1, 1);
    sub_02065638(param1, 0x44);
    sub_02062D64(param1, 0);
    sub_02062D80(param1, 1);

    param0->unk_01 = 1;

    if (param0->unk_02 != 0) {
        if (param0->unk_02 == 1) {
            param0->unk_14 = ov5_021F16D4(param1, 1);
        } else if (param0->unk_02 >= 2) {
            param0->unk_14 = ov5_021F16D4(param1, 2);
        }

        param0->unk_02 = 0;
    }
}

static void sub_0205C788 (UnkStruct_0205C680 * param0, UnkStruct_02061AB4 * param1)
{
    sub_02065638(param1, 0x43);
    sub_02062DB4(param1, 1);
    sub_020633A8(param1, 0x0);
    sub_0205C680(param0, 1);

    param0->unk_04 = 0;
    param0->unk_06 = 0;
    param0->unk_01 = 3;
}

static void sub_0205C7BC (UnkStruct_0205C680 * param0, UnkStruct_02061AB4 * param1)
{
    if (param0->unk_03 == 1) {
        if (param0->unk_04 == 0) {
            param0->unk_10 = ov5_021F6094(param1);
            param0->unk_06 = 30;
            param0->unk_03 = 0;
            param0->unk_04 = 1;
        }
    }
}

static void sub_0205C7E4 (UnkStruct_02061830 * param0, int param1, int param2)
{
    int v0;
    UnkStruct_02061AB4 * v1;

    for (v0 = param1; v0 < param2; v0++) {
        v1 = sub_0206251C(param0, v0);

        if (v1 == NULL) {
            GF_ASSERT(0);
        }

        sub_02062D64(v1, 1);
        sub_02062D80(v1, 0);
        sub_02062DB4(v1, 1);
    }
}

void sub_0205C820 (UnkStruct_02061830 * param0, UnkStruct_0205C22C * param1)
{
    UnkStruct_02061AB4 * v0;
    UnkStruct_0205C680 * v1;

    v0 = sub_0206251C(param0, 0);

    if (v0 == NULL) {
        GF_ASSERT(0);
    }

    if (sub_020655F4(v0) == 1) {
        if (sub_02036AA0() || sub_02036A68()) {
            int v2;

            for (v2 = 0; v2 < 10; v2++) {
                v1 = &param1->unk_0C[v2];

                if (v1->unk_01 != 1) {
                    continue;
                }

                v0 = sub_0206251C(param0, v2 + 1);

                if (v0 == NULL) {
                    GF_ASSERT(0);
                }

                sub_02061AD4(v0, v1->unk_08);
                sub_0206296C(v0, 1);
                sub_02065638(v0, 0x44);
                sub_02062D64(v0, 0);
                sub_02062D80(v0, 1);

                v1->unk_01 = 1;

                if (v1->unk_02 != 0) {
                    if (v1->unk_02 == 1) {
                        v1->unk_14 = ov5_021F16D4(v0, 1);
                    } else if (v1->unk_02 >= 2) {
                        v1->unk_14 = ov5_021F16D4(v0, 2);
                    }

                    v1->unk_02 = 0;
                }
            }

            sub_0205C7E4(param0, 11, 51);
        } else {
            sub_0205C7E4(param0, 1, 51);
        }
    }
}

static void sub_0205C8DC (UnkStruct_0205C924 * param0)
{
    param0->unk_00 = sub_02023790(7 + 1, 89);
    param0->unk_04 = NULL;
    param0->unk_08 = NULL;

    sub_02014A9C(&param0->unk_14, 0);

    param0->unk_10 = 0;
    param0->unk_0C = 0;
}

static void sub_0205C900 (UnkStruct_0205C95C * param0)
{
    int v0;

    for (v0 = 0; v0 < 30; v0++) {
        sub_0205C8DC(&param0->unk_00[v0]);
    }

    param0->unk_348 = 0;
    param0->unk_34C = 0;
}

static void sub_0205C924 (UnkStruct_0205C924 * param0)
{
    Heap_FreeToHeap(param0->unk_00);

    if (param0->unk_04 != NULL) {
        sub_020237BC(param0->unk_04);
    }

    if (param0->unk_08 != NULL) {
        sub_020237BC(param0->unk_08);
    }
}

static void sub_0205C944 (UnkStruct_0205C95C * param0)
{
    int v0;

    for (v0 = 0; v0 < 30; v0++) {
        sub_0205C924(&param0->unk_00[v0]);
    }
}

UnkStruct_0205C95C * sub_0205C95C (int param0)
{
    UnkStruct_0205C95C * v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0205C95C));

    sub_0205C900(v0);
    return v0;
}

void sub_0205C970 (UnkStruct_0205C95C * param0)
{
    sub_0205C944(param0);
    Heap_FreeToHeap(param0);
}
