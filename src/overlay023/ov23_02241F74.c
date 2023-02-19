#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_plstring_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02029894_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay023/struct_ov23_02253598_decl.h"
#include "overlay023/struct_ov23_02253E2C_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "overlay023/struct_ov23_02241A80.h"
#include "overlay023/struct_ov23_02241A88.h"
#include "overlay023/struct_ov23_0224271C.h"
#include "overlay023/funcptr_ov23_022427DC.h"
#include "overlay023/funcptr_ov23_022431EC.h"

#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "heap.h"
#include "plstring.h"
#include "unk_02025E08.h"
#include "unk_020279FC.h"
#include "unk_0202854C.h"
#include "unk_02030EE0.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_020366A0.h"
#include "unk_0203CC84.h"
#include "unk_020507CC.h"
#include "unk_02054D00.h"
#include "unk_02057518.h"
#include "unk_0206A8DC.h"
#include "overlay005/ov5_021E779C.h"
#include "overlay005/ov5_021EAFA4.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_022416A8.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_0225128C.h"
#include "overlay023/ov23_022521F0.h"
#include "overlay023/ov23_02253598.h"
#include "overlay023/ov23_02253D40.h"

typedef BOOL (* UnkFuncPtr_ov23_02242540)(int, int);

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_ov23_02257748_sub1;

typedef struct {
    void * unk_00;
    UnkStruct_0201CD38 * unk_04;
    UnkFuncPtr_ov23_022431EC unk_08;
    UnkStruct_0203CDB0 * unk_0C;
    UnkStruct_ov23_02253598 * unk_10;
    UnkStruct_0201CD38 * unk_14;
    UnkStruct_ov23_0224271C unk_18;
    UnkStruct_ov23_0224271C unk_1C;
    UnkStruct_ov23_02257748_sub1 unk_20[20];
    u16 unk_C0;
    u8 unk_C2[8];
    u8 unk_CA[8];
    u8 unk_D2[8];
    PLString * unk_DC[8];
    u8 unk_FC[8];
    u8 unk_104[8];
    u8 unk_10C[8];
    UnkFuncPtr_ov23_022427DC unk_114;
    UnkStruct_ov23_02253E2C * unk_118;
    UnkStruct_ov23_02253E2C * unk_11C;
    UnkStruct_ov23_02253E2C * unk_120;
    UnkStruct_ov23_02253E2C * unk_124;
    UnkStruct_ov23_02253E2C * unk_128;
    int unk_12C;
    int unk_130;
    u8 unk_134;
    u8 unk_135[8];
    u8 unk_13D[8];
    u8 unk_145;
    u8 unk_146;
    u8 unk_147;
    u8 unk_148;
    u8 unk_149;
    u8 unk_14A;
    u8 unk_14B;
    u8 unk_14C;
} UnkStruct_ov23_02257748;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov23_022428D8;

typedef struct {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_ov23_02242830;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
} UnkStruct_ov23_02243360;

static void ov23_022433F4(int param0);
static void ov23_02243310(UnkStruct_0201CD38 * param0, void * param1);

static UnkStruct_ov23_02257748 * Unk_ov23_02257748 = NULL;

static void ov23_02241F74 (UnkStruct_ov23_02257748 * param0, UnkStruct_0203CDB0 * param1)
{
    u8 v0 = sub_02027AC0(sub_02025E44(param1->unk_0C));
    int v1;

    Unk_ov23_02257748 = param0;
    MI_CpuFill8(Unk_ov23_02257748, 0, sizeof(UnkStruct_ov23_02257748));

    Unk_ov23_02257748->unk_0C = param1;
    Unk_ov23_02257748->unk_134 = 0;
    Unk_ov23_02257748->unk_1C.unk_00 = 0;
    Unk_ov23_02257748->unk_1C.unk_02 = 0;
    Unk_ov23_02257748->unk_14B = 0;
    Unk_ov23_02257748->unk_147 = 1;
    Unk_ov23_02257748->unk_118 = ov23_02253D48(634, 33, param1->unk_08, v0, 500);
    Unk_ov23_02257748->unk_11C = ov23_02253D48(638, 33, param1->unk_08, v0, 0);
    Unk_ov23_02257748->unk_120 = ov23_02253D48(636, 33, param1->unk_08, v0, 1000);
    Unk_ov23_02257748->unk_124 = ov23_02253D48(637, 33, param1->unk_08, v0, 0);
    Unk_ov23_02257748->unk_128 = ov23_02253D48(630, 33, param1->unk_08, v0, 0);

    sub_0200DD0C(Unk_ov23_02257748->unk_0C->unk_08, 3, (1024 - (18 + 12)), 10, 0, 4);
    sub_02006E84(50, 52, 0, 10 * 0x20, 4 * 0x20, 4);
    sub_0200DAA4(Unk_ov23_02257748->unk_0C->unk_08, 3, 1024 - (18 + 12) - 9, 11, 2, 4);

    for (v1 = 0; v1 < (7 + 1); v1++) {
        Unk_ov23_02257748->unk_C2[v1] = 0xff;
        Unk_ov23_02257748->unk_D2[v1] = 0xff;
        Unk_ov23_02257748->unk_DC[v1] = NULL;
    }

    sub_0206A9F4(sub_020507E4(Unk_ov23_02257748->unk_0C->unk_0C));
    Unk_ov23_02257748->unk_14 = sub_0200D9E8(ov23_02243310, NULL, 0);
    sub_02032110(ov23_022433F4);
}

static void ov23_02242108 (void)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_ov23_02257748->unk_DC[v0]) {
            PLString_Free(Unk_ov23_02257748->unk_DC[v0]);
        }
    }

    sub_02032110(NULL);
    sub_0200DA58(Unk_ov23_02257748->unk_14);

    ov23_02253DD8(Unk_ov23_02257748->unk_118);
    ov23_02253DD8(Unk_ov23_02257748->unk_11C);
    ov23_02253DD8(Unk_ov23_02257748->unk_120);
    ov23_02253DD8(Unk_ov23_02257748->unk_124);
    ov23_02253DD8(Unk_ov23_02257748->unk_128);

    Unk_ov23_02257748->unk_0C->unk_90 = 0;
    Heap_FreeToHeap(Unk_ov23_02257748);
    Unk_ov23_02257748 = NULL;
}

UnkStruct_ov23_02253E2C * ov23_0224219C (void)
{
    return Unk_ov23_02257748->unk_118;
}

UnkStruct_ov23_02253E2C * ov23_022421AC (void)
{
    return Unk_ov23_02257748->unk_11C;
}

UnkStruct_ov23_02253E2C * ov23_022421BC (void)
{
    return Unk_ov23_02257748->unk_120;
}

UnkStruct_ov23_02253E2C * ov23_022421CC (void)
{
    return Unk_ov23_02257748->unk_124;
}

UnkStruct_ov23_02253E2C * ov23_022421DC (void)
{
    return Unk_ov23_02257748->unk_128;
}

void ov23_022421EC (void)
{
    ov23_02254210(Unk_ov23_02257748->unk_118);
    ov23_02254210(Unk_ov23_02257748->unk_11C);
    ov23_02254210(Unk_ov23_02257748->unk_120);
    ov23_02254210(Unk_ov23_02257748->unk_124);
    ov23_02254210(Unk_ov23_02257748->unk_128);
}

BOOL ov23_0224223C (UnkStruct_02025E6C * param0, UnkStruct_02025E6C * param1, int param2, PLString * param3)
{
    UnkStruct_0200B358 * v0;
    PLString * v1;

    if (param0 && param1) {
        v0 = sub_0200B358(4);
        v1 = PLString_New((50 * 2), 4);

        sub_0200B498(v0, 0, param0);
        sub_0200B498(v0, 1, param1);
        sub_0200B1B8(ov23_02253E3C(ov23_0224219C()), param2, v1);
        sub_0200C388(v0, param3, v1);
        PLString_Free(v1);
        sub_0200B3F0(v0);

        return 1;
    }

    return 0;
}

BOOL ov23_022422A8 (UnkStruct_02025E6C * param0, int param1, int param2, PLString * param3)
{
    UnkStruct_0200B358 * v0;
    PLString * v1;

    if (param0) {
        v0 = sub_0200B358(4);
        v1 = PLString_New((50 * 2), 4);

        sub_0200B498(v0, param1, param0);
        sub_0200B1B8(ov23_02253E3C(ov23_0224219C()), param2, v1);
        sub_0200C388(v0, param3, v1);
        PLString_Free(v1);
        sub_0200B3F0(v0);

        return 1;
    }

    return 0;
}

static BOOL ov23_02242308 (PLString * param0)
{
    int v0;
    UnkStruct_0200B358 * v1;
    PLString * v2;
    UnkStruct_02025E6C * v3;
    UnkStruct_02025E6C * v4;

    if (!Unk_ov23_02257748) {
        return 0;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (sub_02032DE0(v0)) {
            v3 = sub_02032EE8(v0);
            sub_02032E30(v0);

            if (ov23_022422A8(v3, 1, 91, param0)) {
                return 1;
            }
        }

        if (Unk_ov23_02257748->unk_C2[v0] != 0xff) {
            v3 = sub_02032EE8(v0);
            v4 = sub_02032EE8(Unk_ov23_02257748->unk_C2[v0]);

            Unk_ov23_02257748->unk_C2[v0] = 0xff;

            if (ov23_0224223C(v3, v4, 111, param0)) {
                return 1;
            }
        }

        if (Unk_ov23_02257748->unk_D2[v0] != 0xff) {
            v3 = sub_02032EE8(v0);
            Unk_ov23_02257748->unk_D2[v0] = 0xff;

            if (ov23_022422A8(v3, 0, 112, param0)) {
                return 1;
            }
        }

        if (Unk_ov23_02257748->unk_13D[v0] == 1) {
            if (Unk_ov23_02257748->unk_DC[v0]) {
                PLString_Copy(param0, Unk_ov23_02257748->unk_DC[v0]);
                PLString_Free(Unk_ov23_02257748->unk_DC[v0]);
                Unk_ov23_02257748->unk_DC[v0] = NULL;
            }

            Unk_ov23_02257748->unk_13D[v0] = 0;
            return 1;
        }
    }

    return 0;
}

BOOL ov23_0224240C (int param0, int param1)
{
    UnkStruct_ov23_0224271C v0;

    v0.unk_00 = param0;
    v0.unk_02 = param1;

    if (sub_02054F68(Unk_ov23_02257748->unk_0C, param0, param1)) {
        return 1;
    }

    if (ov23_022442D8(param0, param1)) {
        return 1;
    }

    if (ov23_022512D4(&v0, -1) != 0xff) {
        return 1;
    }

    return 0;
}

BOOL ov23_02242458 (void)
{
    VecFx32 v0;
    UnkStruct_02061AB4 * v1;
    int v2, v3;
    UnkStruct_ov23_0224271C v4;

    if ((Unk_ov23_02257748->unk_146 != 0) || (Unk_ov23_02257748->unk_134 != 0)) {
        if (Unk_ov23_02257748->unk_134 > 0) {
            Unk_ov23_02257748->unk_134--;
        }

        return 0;
    }

    if (Unk_021BF67C.unk_60) {
        Unk_ov23_02257748->unk_134 = 30;

        if (!Unk_ov23_02257748->unk_14B) {
            if (sub_02057FAC() && !ov23_0224ACC0(sub_0203608C())) {
                if (sub_020360F0()) {
                    return 0;
                }

                if (0 != sub_020593CC(sub_0203608C())) {
                    return 0;
                }

                v0 = ov5_021EAFA4(Unk_021BF67C.unk_5C, Unk_021BF67C.unk_5E, Unk_ov23_02257748->unk_0C->unk_8C);
                ov5_021E9230(v0.x, v0.z, &v2, &v3);
                v4.unk_00 = v2;
                v4.unk_02 = v3;

                Unk_ov23_02257748->unk_18.unk_00 = Unk_021BF67C.unk_5C;
                Unk_ov23_02257748->unk_18.unk_02 = Unk_021BF67C.unk_5E;
                Unk_ov23_02257748->unk_1C.unk_00 = v2;
                Unk_ov23_02257748->unk_1C.unk_02 = v3;

                sub_020359DC(48, &v4, sizeof(UnkStruct_ov23_0224271C));

                return 1;
            }
        }
    }

    return 0;
}

static int ov23_02242540 (u8 * param0, UnkFuncPtr_ov23_02242540 param1, UnkStruct_ov23_0224271C * param2)
{
    UnkStruct_ov23_02241A80 v0;
    UnkStruct_ov23_02241A88 v1;
    int v2 = 1;
    int v3, v4, v5, v6;

    v3 = param2->unk_00 - 6;
    v4 = param2->unk_02 - 6;

    ov23_02241A80(&v0, 6);

    while (ov23_02241A88(&v0, &v1)) {
        v5 = param2->unk_00 + v1.unk_00;
        v6 = param2->unk_02 + v1.unk_02;

        if (param1(v5, v6)) {
            param0[v2] = (v5 - v3) + (v6 - v4) * 16;

            if (v2 == 8) {
                v2++;
                break;
            }

            v2++;
        }
    }

    return v2;
}

static void ov23_022425B8 (int param0, UnkStruct_ov23_0224271C * param1)
{
    u8 v0[8 + 1];
    UnkStruct_ov23_02241A80 v1;
    UnkStruct_ov23_02241A88 v2;
    int v3 = 1;
    int v4, v5, v6, v7;

    v0[0] = param0;

    v3 = ov23_02242540(v0, ov23_022442D8, param1);
    sub_02035AC4(49, v0, v3);

    v3 = ov23_02242540(v0, ov23_02241200, param1);
    sub_02035AC4(50, v0, v3);
}

void ov23_022425F8 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_0224271C * v0 = param2;

    if (!sub_02059094(param0)) {
        return;
    }

    if (ov23_0224ACC0(param0)) {
        return;
    }

    sub_02059058(param0, 0);
    ov23_022425B8(param0, v0);
}

void ov23_02242624 (int param0, int param1, void * param2, void * param3)
{
    int v0;
    u8 * v1 = param2;
    UnkStruct_ov23_0224271C v2;

    if (sub_0203608C() != v1[0]) {
        return;
    }

    MI_CpuCopy8(&v1[1], Unk_ov23_02257748->unk_FC, param1 - 1);
    Unk_ov23_02257748->unk_148 = param1 - 1;
}

void ov23_02242654 (int param0, int param1, void * param2, void * param3)
{
    int v0;
    u8 * v1 = param2;
    UnkStruct_ov23_0224271C v2;
    u8 v3[9];

    if (sub_0203608C() != v1[0]) {
        return;
    }

    MI_CpuCopy8(&v1[1], Unk_ov23_02257748->unk_104, param1 - 1);
    Unk_ov23_02257748->unk_149 = param1 - 1;

    Unk_ov23_02257748->unk_14A = ov23_02242540(v3, ov23_02241D04, &Unk_ov23_02257748->unk_1C);
    Unk_ov23_02257748->unk_14A -= 1;

    MI_CpuCopy8(&v3[1], Unk_ov23_02257748->unk_10C, Unk_ov23_02257748->unk_14A);
    ov23_022489F8(Unk_ov23_02257748->unk_0C, Unk_ov23_02257748->unk_1C.unk_00, Unk_ov23_02257748->unk_1C.unk_02, Unk_ov23_02257748->unk_18.unk_00, Unk_ov23_02257748->unk_18.unk_02, Unk_ov23_02257748->unk_FC, Unk_ov23_02257748->unk_148, Unk_ov23_02257748->unk_104, Unk_ov23_02257748->unk_149, Unk_ov23_02257748->unk_10C, Unk_ov23_02257748->unk_14A);
}

static int ov23_02242704 (UnkStruct_ov23_0224271C * param0)
{
    int v0 = 0, v1 = 0;

    if (param0 == NULL) {
        return 30 * 30 * 32 * 32;
    }

    v0 = param0->unk_00;
    v1 = param0->unk_02;

    return (v1 * 30 * 32) + v0;
}

int ov23_0224271C (UnkStruct_ov23_0224271C * param0)
{
    int v0;
    int v1 = 0;
    int v2 = Unk_ov23_02257748->unk_12C - 1;
    int v3 = ov23_02242704(param0);
    UnkStruct_ov23_0224271C v4;
    UnkFuncPtr_ov23_022427DC v5 = Unk_ov23_02257748->unk_114;

    while (v1 < v2) {
        v0 = (v1 + v2) / 2;

        if (ov23_02242704(v5(&v4, v0)) < v3) {
            v1 = v0 + 1;
        } else {
            v2 = v0;
        }
    }

    if (ov23_02242704(v5(&v4, v1)) == v3) {
        return v1;
    }

    return -1;
}

int ov23_02242788 (UnkStruct_ov23_0224271C * param0)
{
    int v0;
    int v1 = 0;
    int v2 = Unk_ov23_02257748->unk_12C - 2;
    int v3 = ov23_02242704(param0);
    UnkFuncPtr_ov23_022427DC v4 = Unk_ov23_02257748->unk_114;
    UnkStruct_ov23_0224271C v5;

    v2++;

    while (v1 < v2) {
        v0 = (v1 + v2) / 2;

        if (ov23_02242704(v4(&v5, v0)) < v3) {
            v1 = v0 + 1;
        } else {
            v2 = v0;
        }
    }

    return v1;
}

void ov23_022427DC (int param0, UnkFuncPtr_ov23_022427DC param1)
{
    Unk_ov23_02257748->unk_114 = param1;
    Unk_ov23_02257748->unk_12C = param0;
}

void ov23_022427F8 (void)
{
    if (0 == sub_020593CC(sub_0203608C())) {
        sub_020360DC(27);
        sub_0203572C();
    }
}

void ov23_02242814 (void)
{
    if (Unk_ov23_02257748->unk_146 != 0) {
        Unk_ov23_02257748->unk_146--;
    }
}

void ov23_02242830 (u8 param0)
{
    u8 v0 = param0;
    UnkStruct_ov23_02242830 v1;
    int v2, v3;
    UnkStruct_020298B0 * v4 = sub_020298B0(Unk_ov23_02257748->unk_0C->unk_0C);

    if ((Unk_ov23_02257748->unk_146 != 0) && (Unk_ov23_02257748->unk_134 != 0)) {
        return;
    }

    if (0 != sub_020593CC(sub_0203608C())) {
        return;
    }

    if (40 == sub_02028E28(v4)) {
        v0 = v0 | 0x10;
    }

    v2 = sub_02058D88(sub_0203608C());
    v3 = sub_02058DC0(sub_0203608C());

    if (ov23_02241D04(v2, v3)) {
        v0 = v0 | 0x20;
    }

    v1.unk_00 = v0;
    v1.unk_01 = (v2 & 0xf) * 16 + (v3 & 0xf);

    sub_020360D0(28, &v1);
    sub_0203572C();

    Unk_ov23_02257748->unk_146 = 8;
}

int ov23_022428D4 (void)
{
    return sizeof(UnkStruct_ov23_02242830);
}

void ov23_022428D8 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_022428D8 v0;
    UnkStruct_ov23_02242830 * v1 = param2;
    UnkStruct_ov23_0224271C v2;
    int v3;
    u8 v4;

    v4 = param0;
    v2.unk_00 = sub_02058EE0(param0);
    v2.unk_02 = sub_02058F18(param0);

    if (param0 == 2) {
        (void)0;
    }

    if ((sub_02058DF8(param0) == 0xffff) && (sub_02058E4C(param0) == 0xffff)) {
        return;
    }

    if (!sub_02059094(param0)) {
        return;
    }

    if (ov23_0224ACC0(param0)) {
        return;
    }

    v3 = sub_0205900C(v2.unk_00, v2.unk_02);

    if (v3 != 0xff) {
        if (ov23_0224C1C8(v3)) {
            (void)0;
        } else if (ov23_0224162C(v3)) {
            v0.unk_00 = 4;
            v0.unk_02 = v3;
            v0.unk_01 = param0;

            sub_02035AC4(30, &v0, sizeof(v0));
            sub_02059058(param0, 0);
        } else if (ov23_0224A658(param0, v3, 0)) {
            (void)0;
        } else if (ov23_0224ACC0(v3)) {
            if (!ov23_02244470(v3)) {
                ov23_02245560(param0, v3);
            } else {
                v0.unk_00 = 2;
                v0.unk_02 = v3;
                v0.unk_01 = param0;

                sub_02035AC4(30, &v0, sizeof(v0));
                sub_02059058(param0, 0);
            }
        } else if (!sub_02059094(param0)) {
            (void)0;
        } else if (!sub_02059094(v3) || (0 != sub_020593E0(v3))) {
            v0.unk_00 = 2;
            v0.unk_02 = v3;
            v0.unk_01 = param0;

            sub_02035AC4(30, &v0, sizeof(v0));
            sub_02059058(param0, 0);
        } else {
            v0.unk_00 = 1;
            v0.unk_02 = v3;
            v0.unk_01 = param0;

            if (sub_02059094(v3)) {
                if (sub_02035AC4(30, &v0, sizeof(v0))) {
                    sub_02059058(param0, 0);
                    sub_02059058(v3, 0);
                    sub_02058FB0(param0, v3);
                }
            }
        }

        return;
    }

    if (ov23_02244080(param0, &v2, v1->unk_00)) {
        sub_02059058(param0, 0);
        return;
    }

    if (ov23_0223E354(param0, &v2)) {
        sub_02059058(param0, 0);
        return;
    }

    if (ov23_02251324(param0, &v2)) {
        sub_02059058(param0, 0);
        return;
    }

    if (ov23_0224D454(param0, &v2)) {
        sub_02059058(param0, 0);
        return;
    }

    if (sub_02058108(v2.unk_00, v2.unk_02)) {
        if (ov23_0224A658(param0, 0xff, 0)) {
            return;
        }

        sub_02035B48(24, &v4);
        sub_02059058(param0, 0);

        return;
    }

    if (v1->unk_00 & 0x20) {
        if (ov23_0224A6B8(param0)) {
            return;
        }

        if (v1->unk_01 == (v2.unk_00 & 0xf) * 16 + (v2.unk_02 & 0xf)) {
            sub_02035B48(63, &v4);
            sub_02059058(param0, 0);
        }
    }
}

void ov23_02242B14 (void)
{
    int v0;

    if (sub_0203608C() == 0) {
        for (v0 = 0; v0 < (7 + 1); v0++) {
            if ((NULL != sub_02032EE8(v0)) && !Unk_ov23_02257748->unk_135[v0]) {
                ov23_0224B5CC(v0);
            }

            if (sub_02032EE8(v0)) {
                Unk_ov23_02257748->unk_135[v0] = 1;
            } else {
                Unk_ov23_02257748->unk_135[v0] = 0;
            }
        }

        sub_02037B58(ov23_022433D0() + 2);
    }

    Unk_ov23_02257748->unk_145++;

    if (sub_0203608C() == 0) {
        if (sub_02032CE8()) {
            sub_02057AE4(1);
        }
    }

    ov23_02241810();
    ov23_02243AE8();
    ov23_0223E878();

    if (!Unk_ov23_02257748->unk_14B) {
        ov23_022468A8(Unk_ov23_02257748->unk_0C->unk_08);
    }
}

void ov23_02242BC0 (UnkStruct_0203CDB0 * param0)
{
    void * v0;

    if (Unk_ov23_02257748 == NULL) {
        v0 = Heap_AllocFromHeap(15, sizeof(UnkStruct_ov23_02257748));
        ov23_02241F74(v0, param0);

        v0 = Heap_AllocFromHeap(15, sub_02057C84());
        sub_02057524(v0, param0, 1);

        v0 = Heap_AllocFromHeap(15, ov23_02243858());
        ov23_022434BC(v0, param0);

        v0 = Heap_AllocFromHeap(15, ov23_0224B5C4());
        ov23_0224B144(v0, param0);

        v0 = Heap_AllocFromHeap(15, ov23_022417C4());
        ov23_022416E0(v0, param0);

        v0 = Heap_AllocFromHeap(15, ov23_0223E2E8());
        ov23_0223E1E4(v0, param0);

        v0 = Heap_AllocFromHeap(15, ov23_02253608());
        ov23_02253598(v0, sub_020298A0(sub_0203D174(param0)), sub_0203D174(param0));
        ov23_0224F588(sub_020298B0(sub_0203D174(param0)));
    }
}

void ov23_02242C78 (void)
{
    if (Unk_ov23_02257748) {
        ov23_022535EC();
        ov23_022417CC();
        ov23_0224B430();
        ov23_02243520();
        sub_0205764C();
        ov23_0223E2F0();
        ov23_022421EC();

        Unk_ov23_02257748->unk_14B = 1;
    }
}

void ov23_02242CB4 (void)
{
    if (Unk_ov23_02257748) {
        sub_020576A0();
        ov23_02253604();
        ov23_022417E0();
        ov23_0224B460();
        ov23_022435A8();
        ov23_0223E2F4();
        Unk_ov23_02257748->unk_14B = 0;
        sub_0200DD0C(Unk_ov23_02257748->unk_0C->unk_08, 3, (1024 - (18 + 12)), 10, 0, 4);
    }
}

void ov23_02242D08 (void)
{
    if (Unk_ov23_02257748 != NULL) {
        sub_020287F8(Unk_ov23_02257748->unk_0C->unk_0C);
        ov23_0224B4E4();
        ov23_022435DC();
        sub_020576CC(1);
        ov23_022417F4();
        ov23_0223E2F8();
        ov23_0224F5B8();
        ov23_022535CC();
        ov23_02242108();
    }
}

void ov23_02242D44 (UnkStruct_0203CDB0 * param0)
{
    void * v0;

    if (Unk_ov23_02257748 != NULL) {
        ov23_02243670(param0);
        sub_02057764();
        ov23_0224B518();
    }
}

BOOL ov23_02242D60 (PLString * param0)
{
    if (Unk_ov23_02257748->unk_14C) {
        Unk_ov23_02257748->unk_14C = 0;
        return 0;
    }

    if (ov23_02242308(param0)) {
        Unk_ov23_02257748->unk_14C = 1;
        return 1;
    } else if (ov23_022446B0(param0)) {
        Unk_ov23_02257748->unk_14C = 1;
        return 1;
    } else if (ov23_02244784(param0)) {
        Unk_ov23_02257748->unk_14C = 1;
        return 1;
    } else if (ov23_0224D020(param0)) {
        Unk_ov23_02257748->unk_14C = 1;
        return 1;
    } else if (ov23_022415B8(param0)) {
        Unk_ov23_02257748->unk_14C = 1;
        return 1;
    } else if (ov23_02241D58(param0)) {
        Unk_ov23_02257748->unk_14C = 1;
        return 1;
    }

    return 0;
}

UnkStruct_02029894 * ov23_02242E10 (UnkStruct_021C0794 * param0)
{
    if (!Unk_ov23_02257748) {
        return NULL;
    }

    return ov23_0224D130(param0);
}

int ov23_02242E28 (void)
{
    if (!Unk_ov23_02257748) {
        return 0;
    }

    return ov23_0224D150();
}

int ov23_02242E40 (void)
{
    if (!Unk_ov23_02257748) {
        return 0;
    }

    return ov23_0224D178();
}

BOOL ov23_02242E58 (int param0, int param1)
{
    if ((32 < param0) && (64 < param1) && (479 > param0) && (479 > param1)) {
        return 0;
    }

    return 1;
}

int ov23_02242E78 (int param0)
{
    int v0, v1;

    if (Unk_ov23_02257748) {
        if (param0 < 16) {
            v1 = param0;

            switch (Unk_ov23_02257748->unk_147) {
            case 0:
                return 0;
            case 1:
                if (param0 < 8) {
                    return ov23_0224121C(v1);
                }
            case 2:
                return ov23_02241F0C(v1);
            case 4:
                return ov23_02245698(v1);
            case 3:
                return ov23_0224125C(v1);
            }
        } else {
            UnkStruct_02029894 * v2 = sub_02029894(Unk_ov23_02257748->unk_0C->unk_0C);
            return sub_02029874(v2);
        }
    }

    return 0;
}

int ov23_02242EE0 (int param0)
{
    int v0, v1, v2;

    if (Unk_ov23_02257748) {
        if (param0 < 16) {
            v1 = param0;

            switch (Unk_ov23_02257748->unk_147) {
            case 0:
                return 0;
            case 1:
                if (param0 < 8) {
                    return ov23_0224123C(v1);
                }
            case 2:
                return ov23_02241F40(v1);
            case 4:
                return ov23_022456CC(v1);
            case 3:
                return ov23_02241294(v1);
            }
        } else {
            UnkStruct_02029894 * v3 = sub_02029894(Unk_ov23_02257748->unk_0C->unk_0C);

            return sub_0202987C(v3);
        }
    }

    return 0;
}

int ov23_02242F48 (int param0)
{
    if (Unk_ov23_02257748) {
        if (param0 < 16) {
            switch (Unk_ov23_02257748->unk_147) {
            case 1:
                if (param0 < 8) {
                    return 12;
                }
            case 2:
                return 9;
            case 4:
                return 11;
            case 3:
                return 12;
            }
        } else {
            UnkStruct_02029894 * v0 = sub_02029894(Unk_ov23_02257748->unk_0C->unk_0C);

            if (sub_0202988C(v0)) {
                return 3;
            }
        }
    }

    return 0;
}

void ov23_02242FA8 (void)
{
    Unk_ov23_02257748->unk_147 = 0;
}

void ov23_02242FBC (void)
{
    Unk_ov23_02257748->unk_147 = 1;
}

void ov23_02242FD0 (void)
{
    Unk_ov23_02257748->unk_147 = 2;
}

void ov23_02242FE4 (void)
{
    Unk_ov23_02257748->unk_147 = 4;
}

void ov23_02242FF8 (void)
{
    Unk_ov23_02257748->unk_147 = 3;
}

void ov23_0224300C (int param0, int param1)
{
    if (Unk_ov23_02257748) {
        Unk_ov23_02257748->unk_C2[param0] = param1;
    }
}

void ov23_02243020 (int param0)
{
    if (Unk_ov23_02257748) {
        Unk_ov23_02257748->unk_D2[param0] = 1;
    }
}

void ov23_02243038 (int param0)
{
    UnkStruct_0200B358 * v0;
    PLString * v1;

    if (Unk_ov23_02257748) {
        if (Unk_ov23_02257748->unk_DC[param0] == NULL) {
            Unk_ov23_02257748->unk_DC[param0] = PLString_New((50 * 2), 15);

            v0 = sub_0200B358(11);
            v1 = PLString_New((50 * 2), 11);

            sub_0200B498(v0, 0, sub_02032EE8(param0));
            sub_0200B1B8(ov23_02253E3C(ov23_0224219C()), 115, v1);
            sub_0200C388(v0, Unk_ov23_02257748->unk_DC[param0], v1);
            PLString_Free(v1);
            sub_0200B3F0(v0);
        }
    }
}

void ov23_022430B8 (int param0)
{
    Unk_ov23_02257748->unk_13D[param0] = 1;
}

void ov23_022430D0 (u16 param0)
{
    Unk_ov23_02257748->unk_C0 = param0;
}

void ov23_022430E0 (u16 param0, u16 param1, u16 param2)
{
    int v0;

    if (Unk_ov23_02257748->unk_C0 == 0) {
        return;
    }

    for (v0 = 0; v0 < 20; v0++) {
        if (Unk_ov23_02257748->unk_C0 == Unk_ov23_02257748->unk_20[v0].unk_00) {
            if (Unk_ov23_02257748->unk_20[v0].unk_02 == param0) {
                Unk_ov23_02257748->unk_20[v0].unk_04 = param1;
                Unk_ov23_02257748->unk_20[v0].unk_06 = param2;
                return;
            }
        }
    }

    for (v0 = 0; v0 < 20; v0++) {
        if (0 == Unk_ov23_02257748->unk_20[v0].unk_00) {
            Unk_ov23_02257748->unk_20[v0].unk_00 = Unk_ov23_02257748->unk_C0;
            Unk_ov23_02257748->unk_20[v0].unk_02 = param0;
            Unk_ov23_02257748->unk_20[v0].unk_04 = param1;
            Unk_ov23_02257748->unk_20[v0].unk_06 = param2;
            return;
        }
    }

    GF_ASSERT(0);
}

u16 ov23_02243154 (u16 param0)
{
    int v0;

    for (v0 = 0; v0 < 20; v0++) {
        if (Unk_ov23_02257748->unk_C0 == Unk_ov23_02257748->unk_20[v0].unk_00) {
            if (Unk_ov23_02257748->unk_20[v0].unk_02 == param0) {
                return Unk_ov23_02257748->unk_20[v0].unk_06;
            }
        }
    }

    return 0;
}

u16 ov23_0224318C (u16 param0)
{
    int v0;

    for (v0 = 0; v0 < 20; v0++) {
        if (Unk_ov23_02257748->unk_C0 == Unk_ov23_02257748->unk_20[v0].unk_00) {
            if (Unk_ov23_02257748->unk_20[v0].unk_02 == param0) {
                return Unk_ov23_02257748->unk_20[v0].unk_04;
            }
        }
    }

    return 0;
}

void ov23_022431C4 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    int v1 = v0[0];

    if (v1 == sub_0203608C()) {
        ov23_022534A0(Unk_ov23_02257748->unk_0C);
        sub_020360DC(25);
        sub_020594FC();
    }
}

void ov23_022431EC (void * param0, UnkStruct_0201CD38 * param1, UnkFuncPtr_ov23_022431EC param2)
{
    Unk_ov23_02257748->unk_00 = param0;
    Unk_ov23_02257748->unk_04 = param1;
    Unk_ov23_02257748->unk_08 = param2;
}

void ov23_02243204 (void)
{
    Unk_ov23_02257748->unk_00 = NULL;
    Unk_ov23_02257748->unk_04 = NULL;
    Unk_ov23_02257748->unk_08 = NULL;
}

BOOL ov23_0224321C (void)
{
    BOOL v0 = 0;

    if (Unk_ov23_02257748->unk_04) {
        Unk_ov23_02257748->unk_08(Unk_ov23_02257748->unk_04, Unk_ov23_02257748->unk_00);
        ov23_02243204();
        v0 = 1;
    }

    ov23_022421EC();
    ov23_02254044(Unk_ov23_02257748->unk_118);
    ov23_02254044(Unk_ov23_02257748->unk_11C);
    ov23_02254044(Unk_ov23_02257748->unk_120);
    ov23_02254044(Unk_ov23_02257748->unk_124);
    ov23_02254044(Unk_ov23_02257748->unk_128);
    ov23_02254044(Unk_ov23_02257748->unk_118);

    return v0;
}

BOOL ov23_02243298 (int param0)
{
    int v0, v1;

    if (Unk_ov23_02257748->unk_04) {
        return 0;
    }

    if (Unk_ov23_02257748->unk_0C->unk_10) {
        Unk_ov23_02257748->unk_130++;

        if (Unk_ov23_02257748->unk_130 > 100) {
            GF_ASSERT(0);
        }

        return 0;
    }

    if (ov23_0224ACC0(param0)) {
        return 0;
    }

    v0 = sub_02058D48(param0);
    v1 = sub_02058D68(param0);

    if (ov23_02242E58(v0, v1) && (param0 != 0)) {
        return 0;
    }

    Unk_ov23_02257748->unk_130 = 0;

    return 1;
}

static void ov23_02243310 (UnkStruct_0201CD38 * param0, void * param1)
{
    ov23_02254250(Unk_ov23_02257748->unk_118);
    ov23_02254250(Unk_ov23_02257748->unk_11C);
    ov23_02254250(Unk_ov23_02257748->unk_120);
    ov23_02254250(Unk_ov23_02257748->unk_124);
    ov23_02254250(Unk_ov23_02257748->unk_128);
}

void ov23_02243360 (void)
{
    UnkStruct_ov23_02243360 v0;

    v0.unk_00 = ov23_0224DB48();
    v0.unk_02 = ov23_0224DB64();
    v0.unk_04 = ov23_0224DB84();
    v0.unk_05 = ov23_02241670();

    sub_020360D0(70, &v0);
}

void ov23_02243390 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_02243360 * v0 = param2;

    ov23_0224DBA0(param0, v0->unk_00);
    ov23_0224DBBC(param0, v0->unk_02);
    ov23_0224DBD8(param0, v0->unk_04);
    ov23_02241690(param0, v0->unk_05);
}

int ov23_022433B8 (void)
{
    return sizeof(UnkStruct_ov23_02243360);
}

void ov23_022433BC (int param0, int param1, void * param2, void * param3)
{
    Unk_ov23_02257748->unk_CA[param0] = 1;
}

int ov23_022433D0 (void)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_ov23_02257748->unk_CA[v0]) {
            v1++;
        }
    }

    return v1;
}

static void ov23_022433F4 (int param0)
{
    Unk_ov23_02257748->unk_CA[param0] = 0;
    ov23_0224B5CC(param0);
}
