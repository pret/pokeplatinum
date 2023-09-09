#include <nitro.h>
#include <string.h>
#include <nnsys/g3d/glbstate.h>

#include "struct_decls/struct_0201CD38_decl.h"
#include "strbuf.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_020507E4_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02057B48.h"
#include "overlay023/struct_ov23_0224A294.h"
#include "overlay023/struct_ov23_0224A5CC.h"
#include "overlay023/struct_ov23_0224ABC4.h"

#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "strbuf.h"
#include "unk_02025E68.h"
#include "unk_0202854C.h"
#include "unk_0202CD50.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_0203CC84.h"
#include "unk_020507CC.h"
#include "unk_02057518.h"
#include "unk_0205E7D0.h"
#include "unk_02063400.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206CCB0.h"
#include "unk_020711EC.h"
#include "overlay005/ov5_021F50BC.h"
#include "overlay005/ov5_021F5284.h"
#include "overlay005/ov5_021F5428.h"
#include "overlay005/ov5_021F55CC.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_02249918.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0224DC40.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_02253D40.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov23_0224A348;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov23_0224A570;

UnkStruct_ov23_0224A294 * sub_02057518(void);

void ov23_0224A1D0 (void)
{
    int v0;
    UnkStruct_ov23_0224A294 * v1 = sub_02057518();

    if (v1 == NULL) {
        return;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        sub_02057DB8(v0, 0, 0);
        sub_020593B4(v0);
    }

    v1->unk_2BD = 1;
}

static void ov23_0224A204 (int param0)
{
    int v0;
    UnkStruct_ov23_0224A294 * v1 = sub_02057518();

    if (param0 == sub_0203608C()) {
        if (v1->unk_290[param0] != NULL) {
            sub_0202CFEC(sub_0202CD88(v1->unk_54->unk_0C), 28);

            if (v1->unk_27C[5 - 1]) {
                Heap_FreeToHeap(v1->unk_27C[5 - 1]);
            }

            for (v0 = 5 - 1; v0 >= 1; v0--) {
                v1->unk_27C[v0] = v1->unk_27C[v0 - 1];
            }

            v1->unk_27C[0] = v1->unk_290[param0];
            sub_02028830(sub_020298B0(sub_0203D174(v1->unk_54)), v1->unk_290[param0]);

            v1->unk_290[param0] = NULL;
            v1->unk_14A[param0].unk_20 = 0xff;
        }
    } else {
        ov23_0224AE60(param0);
    }
}

static BOOL ov23_0224A294 (int param0, int param1)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if ((v0->unk_290[param0] == NULL) && (v0->unk_290[param1] != NULL)) {
        v0->unk_290[param0] = v0->unk_290[param1];
        v0->unk_290[param1] = NULL;
        v0->unk_FA[param0] = 1;
        v0->unk_FA[param1] = 0;
        v0->unk_14A[param0].unk_20 = param0;
        v0->unk_14A[param1].unk_20 = 0xff;
        sub_02025E80(v0->unk_290[param0], (UnkStruct_02025E6C *)&v0->unk_14A[param0].unk_00);
        return 1;
    }

    return 0;
}

static void ov23_0224A300 (int param0)
{
    sub_02059514();
}

static void ov23_0224A308 (int param0)
{
    sub_02059514();
}

static void ov23_0224A310 (int param0)
{
    sub_0205948C(0x2);
}

static void ov23_0224A31C (int param0)
{
    sub_0205948C(0x20);
}

static void ov23_0224A328 (int param0)
{
    sub_0205948C(0x1);
}

static void ov23_0224A334 (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (v0) {
        v0->unk_2B8 = 0;
    }
}

void ov23_0224A348 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_0224A348 v0;
    UnkStruct_ov23_0224A294 * v1 = sub_02057518();

    v0.unk_00 = 2;
    v0.unk_01 = param0;

    if (v1->unk_E2[param0] && !ov23_0224ACC0(param0)) {
        if (ov23_0224AEA4(param0)) {
            v0.unk_00 = 3;
        } else {
            v0.unk_00 = 1;
        }
    }

    if (sub_02035AC4(29, &v0, 2)) {
        if (v0.unk_00 != 2) {
            sub_02059058(param0, 0);
        }
    }
}

void ov23_0224A3A8 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    UnkStruct_ov23_0224A348 * v1 = param2;

    if (!sub_02035EE0()) {
        return;
    }

    if ((v1->unk_00 == 1) && (v1->unk_01 == sub_0203608C())) {
        if (!v0->unk_2B8) {
            v0->unk_2B8 = 1;

            ov23_0224F758(ov23_0224A334, v0->unk_54);
        }
    } else if ((v1->unk_00 == 3) && (v1->unk_01 == sub_0203608C())) {
        if (!v0->unk_2B8) {
            v0->unk_2B8 = 1;
            ov23_02250A50(ov23_0224A334, v0->unk_54);
        }
    }
}

void ov23_0224A410 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    UnkStruct_ov23_0224A348 * v1 = param2;
    UnkStruct_020507E4 * v2 = sub_020507E4(v0->unk_54->unk_0C);

    GF_ASSERT(v1->unk_01 < (7 + 1));

    if ((v1->unk_00 == 4) && (v1->unk_01 == sub_0203608C())) {
        sub_020594FC();
        ov23_02253F40(ov23_0224219C(), 72, 1, ov23_0224A300);
    }

    if (v1->unk_00 == 1) {
        sub_02058FE4(v1->unk_01, v1->unk_02);
    }

    if ((v1->unk_00 == 1) && (v1->unk_01 == sub_0203608C())) {
        ov23_0224DCB8(v1->unk_02, ov23_0224A334, v0->unk_54);

        v0->unk_58.unk_00_0 = v1->unk_01;
        v0->unk_58.unk_00_4 = v1->unk_02;
        v0->unk_58.unk_00_8 = 0;
        v0->unk_58.unk_00_9 = 0;

        if (v0->unk_5A[v1->unk_02] == 0) {
            sub_020294F4(sub_020298A0(sub_0203D174(v0->unk_54)), v1->unk_02);
            sub_0206B364(v2, sub_0206B354(v2) + 1);
            sub_0206B384(v2, sub_0206B374(v2) + 1);

            v0->unk_5A[v1->unk_02]++;
        }
    }

    if ((v1->unk_00 == 1) && (v1->unk_02 == sub_0203608C())) {
        ov23_0224F07C(v1->unk_02, v1->unk_01, v0->unk_54);
    }

    if ((v1->unk_00 == 2) && (v1->unk_01 == sub_0203608C())) {
        sub_020594FC();
        ov23_02253F40(ov23_0224219C(), 2, 1, ov23_0224A300);
    }

    if (v1->unk_00 == 1) {
        ov23_0224300C(v1->unk_01, v1->unk_02);
    }
}

int ov23_0224A56C (void)
{
    return sizeof(UnkStruct_ov23_0224A570);
}

void ov23_0224A570 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    UnkStruct_ov23_0224A570 v1;

    v1.unk_01 = param0;

    switch (v0[0]) {
    case 0:
        v1.unk_00 = 0;
        sub_02035B48(85, &v1);
        break;
    case 3:
        v1.unk_00 = 3;
        sub_02035B48(85, &v1);
        sub_02059058(param0, 0);
        break;
    }
}

static void ov23_0224A5B0 (int param0)
{
    ov23_0224B040(sub_0203608C());
    ov23_02254044(ov23_022421AC());

    sub_0205948C(0x4);
}

static void ov23_0224A5CC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    UnkStruct_ov23_0224A5CC * v1 = param1;
    u8 v2 = v1->unk_04;
    u8 v3 = 0;

    if (!sub_02035D78(v2)) {
        Heap_FreeToHeap(v1);
        sub_0200DA58(param0);
        return;
    } else {
        v1->unk_00++;

        if (v1->unk_00 > 60) {
            v3 = 1;
        }
    }

    if (v3) {
        v0->unk_EA[v2] = 1;
        Heap_FreeToHeap(v1);
        sub_0200DA58(param0);
    }
}

static void ov23_0224A620 (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    UnkStruct_ov23_0224A5CC * v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov23_0224A5CC));

    v1->unk_00 = 0;
    v1->unk_04 = param0;
    v0->unk_EA[param0] = 0;

    sub_0200D9E8(ov23_0224A5CC, v1, 100);
    sub_02059058(param0, 0);
}

BOOL ov23_0224A658 (int param0, int param1, BOOL param2)
{
    UnkStruct_ov23_0224A570 v0;

    if (param2 & 0x1) {
        v0.unk_00 = 11;
    } else if (ov23_0224AEA4(param0)) {
        v0.unk_00 = 11;
    } else {
        if (param1 == 0xff) {
            return 0;
        } else if (!ov23_0224AEA4(param1)) {
            return 0;
        } else {
            v0.unk_00 = 5;
            ov23_0224A620(param1);
        }
    }

    v0.unk_01 = param0;
    v0.unk_02 = param1;

    sub_02059058(param0, 0);
    sub_02035B48(85, &v0);

    return 1;
}

BOOL ov23_0224A6B8 (int param0)
{
    UnkStruct_ov23_0224A570 v0;

    if (ov23_0224AEA4(param0)) {
        v0.unk_00 = 12;
    } else {
        return 0;
    }

    v0.unk_01 = param0;
    sub_02035B48(85, &v0);

    return 1;
}

static void ov23_0224A6E4 (UnkStruct_ov23_0224A570 * param0, BOOL param1, UnkStruct_0202855C * param2)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    ov23_0224321C();

    sub_02057FC4(0);
    sub_02059464(0x4);

    ov23_02254068(ov23_022421AC(), sub_02032EE8(param0->unk_01));

    if (param1) {
        v0->unk_FA[sub_0203608C()] = 0;
        ov23_0224B040(sub_0203608C());
        ov23_0224B00C(sub_0203608C());
        ov23_02253F40(ov23_022421AC(), 10, 1, ov23_0224A5B0);
    } else {
        ov23_02253F40(ov23_022421AC(), 11, 1, ov23_0224A5B0);
    }

    sub_0200502C(4, 1060, 60, 0, 0xff, NULL);
    sub_02005748(1526);
}

void ov23_0224A77C (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    UnkStruct_ov23_0224A570 * v1 = param2;
    BOOL v2;
    int v3 = 0;
    UnkStruct_0202855C * v4 = sub_020298A0(sub_0203D174(v0->unk_54));

    switch (v1->unk_00) {
    case 0:
        if (v0->unk_290[v1->unk_01]) {
            ov23_0224AE60(v1->unk_01);
            ov23_0224B040(v1->unk_01);

            if (v1->unk_01 == sub_0203608C()) {
                sub_020594FC();
                ov23_02253F40(ov23_022421AC(), 2, 1, ov23_0224A308);
                sub_0200502C(4, 1060, 60, 0, 0xff, NULL);
            }
        }
        break;
    case 5:
        if (sub_02032EE8(v1->unk_01) == NULL) {
            ov23_0224AE60(v1->unk_02);
            return;
        }

        if (v0->unk_290[v1->unk_02] == NULL) {
            if (v1->unk_01 == sub_0203608C()) {
                sub_02059514();
            }

            return;
        }

        if (sub_0202600C(v0->unk_290[v1->unk_02], sub_02032EE8(v1->unk_01)) == 1) {
            ov23_0224AE60(v1->unk_02);

            if (v1->unk_01 == sub_0203608C()) {
                sub_020297EC(v4);
                sub_020594FC();
                ov23_02253F40(ov23_022421AC(), 13, 1, ov23_0224A300);
                sub_02005748(1573);
            } else if (v1->unk_02 == sub_0203608C()) {
                ov23_0224A6E4(v1, 0, v4);
            }

            ov23_0224D530(v1->unk_01);
        } else if (ov23_0224A294(v1->unk_01, v1->unk_02)) {
            if (v1->unk_01 == sub_0203608C()) {
                sub_0202955C(v4);
                sub_02059464(0x1);
                ov23_02254068(ov23_022421AC(), sub_02032EE8(v1->unk_02));
                ov23_02253F40(ov23_022421AC(), 12, 1, ov23_0224A328);
                sub_0200549C(1061);
                sub_02005748(1573);
            } else if (v1->unk_02 == sub_0203608C()) {
                ov23_0224A6E4(v1, 1, v4);
            }

            ov23_0224D518(v1->unk_01, v1->unk_02);
        }
        break;
    case 11:
        if (v1->unk_01 == sub_0203608C()) {
            sub_02059464(0x2);
            ov23_02253F40(ov23_022421AC(), 6, 1, ov23_0224A310);
        }
        break;
    case 12:
        if (v1->unk_01 == sub_0203608C()) {
            sub_02059464(0x20);
            ov23_02253F40(ov23_022421AC(), 5, 1, ov23_0224A31C);
        }
        break;
    case 3:
        v0->unk_FA[v1->unk_01] = 0;
        ov23_0224B040(v1->unk_01);

        if (v1->unk_01 == sub_0203608C()) {
            UnkStruct_0202855C * v5 = sub_020298A0(sub_0203D174(v0->unk_54));
            u8 v6 = sub_0202958C(v5);

            sub_020295C0(v5);
            sub_0206AA40(sub_020507E4(v0->unk_54->unk_0C));

            if (v0->unk_290[v1->unk_01]) {
                sub_0206DAB8(v0->unk_54, v0->unk_290[v1->unk_01]);

                if (v0->unk_2B2 != 0xffff) {
                    v0->unk_2B2++;
                }
            }

            sub_020594FC();
            sub_02005748(1579);

            if (v6 == sub_0202958C(v5)) {
                ov23_02253F40(ov23_022421AC(), 7, 1, ov23_0224A300);
            } else {
                sub_020360D0(96, &v6);
            }

            sub_0200502C(4, 1060, 60, 0, 0xff, NULL);
        }

        if (v0->unk_290[v1->unk_01]) {
            if (sub_0202600C(v0->unk_290[v1->unk_01], sub_02032EE8(sub_0203608C())) == 1) {
                sub_0206DAD4(v0->unk_54, sub_02032EE8(v1->unk_01));
            }
        }

        ov23_0224A204(v1->unk_01);
        break;
    }
}

void ov23_0224AA84 (void)
{
    int v0;
    UnkStruct_ov23_0224A294 * v1 = sub_02057518();

    for (v0 = 0; v0 < (7 + 1); v0++) {
        v1->unk_14A[v0].unk_20 = 0xff;
    }
}

u8 * ov23_0224AAA0 (int param0, void * param1, int param2)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    return (u8 *)&v0->unk_14A[(7 + 1)];
}

void ov23_0224AAB0 (void)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    v0->unk_2B9 = 0;

    if (v0->unk_290[sub_0203608C()]) {
        sub_020360D0(91, v0->unk_290[sub_0203608C()]);
    } else {
        UnkStruct_02025E6C * v0 = sub_02025E6C(15);
        Strbuf* v1 = Strbuf_Init(20, 15);

        GF_ASSERT(v0);
        GF_ASSERT(v1);

        sub_02025EE0(v0, v1);
        sub_020360D0(91, v0);
        Strbuf_Free(v1);
        Heap_FreeToHeap(v0);
    }
}

int ov23_0224AB2C (void)
{
    return 32;
}

void ov23_0224AB30 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    int v1;
    const UnkStruct_02025E6C * v2 = param2;
    Strbuf* v3;
    u8 v4 = param0;

    if (v0) {
        sub_02025E80(v2, (UnkStruct_02025E6C *)v0->unk_14A[param0].unk_00);

        v3 = sub_02025F04(v2, 15);

        if (Strbuf_Length(v3) != 0) {
            v0->unk_14A[param0].unk_20 = param0;
        }

        for (v1 = 0; v1 < (7 + 1); v1++) {
            if (v0->unk_14A[v1].unk_20 != 0xff) {
                v0->unk_14A[v1].unk_20 = v1;
                sub_02035A3C(92, &v0->unk_14A[v1], sizeof(UnkStruct_ov23_0224ABC4));
            }
        }

        sub_02035AC4(93, &v4, 1);
        Strbuf_Free(v3);

        v0->unk_2C2 = 1;
    } else {
        GF_ASSERT(0);
    }
}

void ov23_0224ABC4 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    UnkStruct_ov23_0224ABC4 * v1 = param2;
    int v2, v3;

    if (v0) {
        v3 = v1->unk_20;

        if (v0->unk_290[v3]) {
            Heap_FreeToHeap(v0->unk_290[v3]);
        }

        v0->unk_290[v3] = sub_02025E6C(15);
        sub_02025E80((UnkStruct_02025E6C *)v1->unk_00, v0->unk_290[v3]);
        v0->unk_FA[v3] = 1;
    }
}

int ov23_0224AC0C (void)
{
    return sizeof(UnkStruct_ov23_0224ABC4);
}

void ov23_0224AC10 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    UnkStruct_ov23_0224A294 * v1 = sub_02057518();

    if (v0[0] == sub_0203608C()) {
        v1->unk_2B9 = 1;
    }

    v1->unk_2C2 = 0;
}

BOOL ov23_0224AC3C (void)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    return v0->unk_2B9;
}

void ov23_0224AC4C (void)
{
    UnkStruct_02025E6C * v0 = NULL;
    int v1, v2;
    int v3 = sub_0203608C();
    UnkStruct_ov23_0224A294 * v4 = sub_02057518();

    if (v4->unk_290[v3]) {
        v0 = v4->unk_290[v3];
        v4->unk_290[v3] = NULL;
        v4->unk_FA[v3] = 0;
        v4->unk_14A[v3].unk_20 = 0xff;
    }

    for (v1 = 0; v1 < (7 + 1); v1++) {
        ov23_0224AE60(v1);
    }

    if (v0) {
        v4->unk_290[0] = v0;
        v4->unk_FA[0] = 1;

        sub_02025E80(v0, (UnkStruct_02025E6C *)&v4->unk_14A[0].unk_00);

        v4->unk_14A[0].unk_20 = 0;
    }
}

BOOL ov23_0224ACC0 (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (v0->unk_04) {
        return !ov23_0224999C(
            ov23_0224993C(v0->unk_04, param0));
    }

    return 0;
}

void ov23_0224ACE8 (int param0, int param1, void * param2, void * param3)
{
    u8 v0 = param0;
    sub_02035B48(26, &v0);
}

void ov23_0224ACF8 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    ov23_02243020(v0[0]);
}

int ov23_0224AD04 (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (!v0) {
        return 0xffff;
    } else if (sub_0203608C() == param0) {
        return v0->unk_A2[param0].unk_00;
    } else if (!sub_02058C40()) {
        return 0xffff;
    }

    return v0->unk_A2[param0].unk_00;
}

int ov23_0224AD40 (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (!v0) {
        return 0xffff;
    } else if (sub_0203608C() == param0) {
        return v0->unk_A2[param0].unk_02;
    } else if (!sub_02058C40()) {
        return 0xffff;
    }

    return v0->unk_A2[param0].unk_02;
}

void ov23_0224AD7C (int param0, int param1)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    ov23_02249994(ov23_0224993C(v0->unk_04, param0), param1);
}

void ov23_0224AD98 (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    ov23_02249994(ov23_0224993C(v0->unk_04, param0), 0);
}

void ov23_0224ADB0 (int param0, int param1, int param2, int param3)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    UnkStruct_02057B48 * v1 = &v0->unk_62[param0];

    v1->unk_00 = param1 + sub_0206419C(param3);
    v1->unk_02 = param2 + sub_020641A8(param3);
    v1->unk_04 = param3;
}

void ov23_0224ADE8 (int param0, int param1, int param2, int param3)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();
    UnkStruct_02057B48 * v1;

    if (!v0) {
        return;
    }

    v1 = &v0->unk_A2[param0];

    if (!v0->unk_2BD) {
        ov5_021F5634(v0->unk_54, v1->unk_00, 0, v1->unk_02);
    }

    v1->unk_00 = param1;
    v1->unk_02 = param2;
    v1->unk_04 = param3;

    if (v0->unk_08[param0]) {
        sub_0205ECE0(v0->unk_08[param0], param1, param2, param3);
    }

    if (!v0->unk_2BD) {
        ov5_021F5634(v0->unk_54, v1->unk_00, 0, v1->unk_02);
    }

    if (!v0->unk_2BD) {
        ov23_0224B040(param0);
    }
}

BOOL ov23_0224AE60 (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (v0->unk_290[param0] != NULL) {
        Heap_FreeToHeap(v0->unk_290[param0]);

        v0->unk_290[param0] = NULL;
        v0->unk_FA[param0] = 0;
        v0->unk_14A[param0].unk_20 = 0xff;

        return 1;
    }

    return 0;
}

BOOL ov23_0224AEA4 (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (v0->unk_290[param0] != NULL) {
        return 1;
    }

    return 0;
}

BOOL ov23_0224AEC4 (int param0, int param1)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (v0->unk_290[param0] == NULL) {
        UnkStruct_02025E6C * v1 = sub_02032EE8(param1);

        if (v1) {
            v0->unk_290[param0] = sub_02025E6C(15);
            sub_02025E80(v1, v0->unk_290[param0]);

            v0->unk_FA[param0] = 1;
            v0->unk_14A[param0].unk_20 = param0;

            sub_02025E80(v1, (UnkStruct_02025E6C *)&v0->unk_14A[param0].unk_00);

            if (param1 == sub_0203608C()) {
                UnkStruct_0202855C * v2 = sub_020298A0(v0->unk_54->unk_0C);
                sub_020297B4(v2);
            }

            return 1;
        }
    }

    return 0;
}

void ov23_0224AF4C (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (v0->unk_28[param0] != NULL) {
        if (sub_020714F0(v0->unk_28[param0])) {
            sub_0207136C(v0->unk_28[param0]);
        } else {
            GF_ASSERT(0);
        }

        v0->unk_28[param0] = NULL;
    }
}

void ov23_0224AF7C (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (!v0->unk_2BD) {
        if (v0->unk_08[param0]) {
            switch (v0->unk_FA[param0]) {
            case 3:
                if (v0->unk_28[param0] == NULL) {
                    v0->unk_28[param0] = ov5_021F5488(sub_0205EB3C(v0->unk_08[param0]));
                }

                v0->unk_FA[param0] = 0;
                break;
            case 2:
                if (v0->unk_28[param0] == NULL) {
                    v0->unk_28[param0] = ov5_021F52E4(sub_0205EB3C(v0->unk_08[param0]));
                }
                break;
            case 1:
                if (v0->unk_28[param0] == NULL) {
                    v0->unk_28[param0] = ov5_021F511C(sub_0205EB3C(v0->unk_08[param0]));
                }
                break;
            case 0:
                ov23_0224AF4C(param0);
                break;
            }
        }
    }
}

void ov23_0224B00C (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (v0->unk_FA[param0] != 1) {
        v0->unk_FA[param0] = 2;
    }
}

void ov23_0224B024 (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (v0->unk_FA[param0] != 1) {
        v0->unk_FA[param0] = 3;
    }

    ov23_0224AF4C(param0);
}

void ov23_0224B040 (int param0)
{
    UnkStruct_ov23_0224A294 * v0 = sub_02057518();

    if (v0->unk_FA[param0] != 1) {
        v0->unk_FA[param0] = 0;
    }

    ov23_0224AF4C(param0);
}
