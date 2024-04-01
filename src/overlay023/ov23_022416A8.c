#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/sys_task.h"
#include "strbuf.h"
#include "struct_decls/struct_020298B0_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "overlay023/struct_ov23_02241A80.h"
#include "overlay023/struct_ov23_02241A88.h"
#include "overlay023/struct_ov23_0224271C.h"

#include "unk_02005474.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "strbuf.h"
#include "unk_0202854C.h"
#include "unk_0202CD50.h"
#include "communication_system.h"
#include "unk_0203CC84.h"
#include "unk_020507CC.h"
#include "unk_02054D00.h"
#include "unk_02057518.h"
#include "unk_0206A8DC.h"
#include "overlay005/ov5_021F575C.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_022416A8.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_02253D40.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
} UnkStruct_ov23_02241974;

typedef struct {
    u8 unk_00;
    u16 unk_02;
} UnkStruct_ov23_02241E4C;

typedef struct {
    UnkStruct_ov23_02241974 unk_00[100];
    UnkStruct_ov23_02241974 * unk_2BC[100];
    u8 unk_44C[8];
    u8 unk_454[8];
    SysTask * unk_45C;
    UnkStruct_ov23_02241E4C * unk_460;
    FieldSystem * unk_464;
    u8 unk_468[8];
    int unk_470;
    u8 unk_474;
    u8 unk_475;
    u8 unk_476;
} UnkStruct_ov23_02257744;

static UnkStruct_ov23_02241974 * ov23_02241974(UnkStruct_ov23_02241974 * param0);
static UnkStruct_ov23_0224271C * ov23_02241890(UnkStruct_ov23_0224271C * param0, int param1);
static void ov23_02241C48(UnkStruct_ov23_02241974 * param0);
static void ov23_02241CAC(UnkStruct_ov23_02241974 * param0);
static void ov23_022418C0(UnkStruct_ov23_02241974 * param0);

static UnkStruct_ov23_02257744 * Unk_ov23_02257744 = NULL;

static void ov23_022416A8 (int param0)
{
    sub_02059514();
}

static void ov23_022416B0 (int param0)
{
    if (param0 > 0) {
        ov23_02254154(ov23_0224219C(), 0, param0);
        ov23_02253F40(ov23_0224219C(), 75, 1, ov23_022416A8);
    } else {
        ov23_022416A8(param0);
    }
}

void ov23_022416E0 (void * param0, FieldSystem * param1)
{
    int v0;
    UnkStruct_020298B0 * v1;

    if (Unk_ov23_02257744) {
        return;
    }

    Unk_ov23_02257744 = param0;
    MI_CpuFill8(Unk_ov23_02257744, 0, sizeof(UnkStruct_ov23_02257744));
    Unk_ov23_02257744->unk_464 = param1;

    v1 = sub_020298B0(sub_0203D174(param1));

    for (v0 = 0; v0 < 100; v0++) {
        Unk_ov23_02257744->unk_00[v0].unk_06 = sub_020290DC(v1, v0);
        Unk_ov23_02257744->unk_00[v0].unk_00 = sub_020290E8(v1, v0);
        Unk_ov23_02257744->unk_00[v0].unk_02 = sub_02029108(v1, v0);
        Unk_ov23_02257744->unk_00[v0].unk_04 = sub_02029128(v1, v0);
        Unk_ov23_02257744->unk_00[v0].unk_05 = sub_02029134(v1, v0);

        if (Unk_ov23_02257744->unk_00[v0].unk_06 != 0) {
            ov23_022418C0(&Unk_ov23_02257744->unk_00[v0]);
        }
    }
}

static void ov23_02241778 (void)
{
    UnkStruct_020298B0 * v0 = sub_020298B0(sub_0203D174(Unk_ov23_02257744->unk_464));
    int v1;

    for (v1 = 0; v1 < 100; v1++) {
        sub_02029088(v0, Unk_ov23_02257744->unk_00[v1].unk_06, v1, Unk_ov23_02257744->unk_00[v1].unk_00, Unk_ov23_02257744->unk_00[v1].unk_02, Unk_ov23_02257744->unk_00[v1].unk_04, Unk_ov23_02257744->unk_00[v1].unk_05);
    }
}

int ov23_022417C4 (void)
{
    return sizeof(UnkStruct_ov23_02257744);
}

void ov23_022417CC (void)
{
    Unk_ov23_02257744->unk_476 = 1;
}

void ov23_022417E0 (void)
{
    Unk_ov23_02257744->unk_476 = 0;
}

void ov23_022417F4 (void)
{
    if (Unk_ov23_02257744) {
        Heap_FreeToHeap(Unk_ov23_02257744);
        Unk_ov23_02257744 = NULL;
    }
}

void ov23_02241810 (void)
{
    if (Unk_ov23_02257744->unk_476) {
        return;
    }

    Unk_ov23_02257744->unk_470++;

    if (Unk_ov23_02257744->unk_470 >= (100 * 20)) {
        Unk_ov23_02257744->unk_470 = 0;
    }

    if ((Unk_ov23_02257744->unk_470 % 20) == 10) {
        int v0 = Unk_ov23_02257744->unk_470 / 20;
        int v1 = ov23_02241D18(v0);
        int v2 = ov23_02241D38(v0);

        if ((v1 != 0) && (v2 != 0)) {
            ov5_021F57C8(Unk_ov23_02257744->unk_464, v1, v2);
        }
    }
}

static UnkStruct_ov23_0224271C * ov23_02241890 (UnkStruct_ov23_0224271C * param0, int param1)
{
    if (Unk_ov23_02257744->unk_2BC[param1] == NULL) {
        return NULL;
    }

    param0->unk_00 = Unk_ov23_02257744->unk_2BC[param1]->unk_00;
    param0->unk_02 = Unk_ov23_02257744->unk_2BC[param1]->unk_02;

    return param0;
}

static void ov23_022418C0 (UnkStruct_ov23_02241974 * param0)
{
    int v0, v1;
    UnkStruct_ov23_0224271C v2;

    v2.unk_00 = param0->unk_00;
    v2.unk_02 = param0->unk_02;

    ov23_022427DC(100, ov23_02241890);

    v0 = ov23_02242788(&v2);

    GF_ASSERT(v0 < 100);

    for (v1 = (100 - 1); v1 > v0; v1--) {
        Unk_ov23_02257744->unk_2BC[v1] = Unk_ov23_02257744->unk_2BC[v1 - 1];
    }

    Unk_ov23_02257744->unk_2BC[v0] = param0;
}

static void ov23_02241928 (UnkStruct_ov23_02241974 * param0)
{
    int v0 = -1;
    UnkStruct_ov23_0224271C v1;
    int v2;

    MI_CpuClear8(Unk_ov23_02257744->unk_2BC, sizeof(u32) * 100);

    for (v2 = 0; v2 < 100; v2++) {
        if (Unk_ov23_02257744->unk_00[v2].unk_06 != 0) {
            ov23_022418C0(&Unk_ov23_02257744->unk_00[v2]);
        }
    }
}

static UnkStruct_ov23_02241974 * ov23_02241960 (UnkStruct_ov23_02241974 * param0)
{
    int v0;

    for (v0 = 0; v0 < 100; v0++) {
        if (param0->unk_06 == 0) {
            return param0;
        }

        param0++;
    }

    return NULL;
}

static UnkStruct_ov23_02241974 * ov23_02241974 (UnkStruct_ov23_02241974 * param0)
{
    return param0;
}

static UnkStruct_ov23_02241974 * ov23_02241978 (int param0, int param1)
{
    UnkStruct_ov23_0224271C v0;
    int v1;

    v0.unk_00 = param0;
    v0.unk_02 = param1;

    ov23_022427DC(100, ov23_02241890);

    v1 = ov23_0224271C(&v0);

    if (-1 == v1) {
        return NULL;
    }

    return Unk_ov23_02257744->unk_2BC[v1];
}

void ov23_022419B4 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    int v1 = CommSys_CurNetId();
    int v2, v3, v4;
    UnkStruct_ov23_02241974 * v5;

    if (v0[0] == v1) {
        v2 = sub_02058D88(v1);
        v3 = sub_02058DC0(v1);
        v5 = ov23_02241978(v2, v3);

        if (v5) {
            sub_020594FC();

            if (ov23_0224F6E0(v5->unk_06, v5->unk_04 + v5->unk_05)) {
                Unk_ov23_02257744->unk_468[v1] = v5->unk_06;
                Sound_PlayEffect(1507);
                v4 = 99;

                if (v5->unk_04 + v5->unk_05 < 99) {
                    v4 = v5->unk_04 + v5->unk_05;
                }

                ov23_02254154(ov23_0224219C(), 1, v4);
                ov23_022541DC(ov23_0224219C(), 2, v5->unk_06);

                v4 = v5->unk_05;

                if ((v4 + v5->unk_04) > 99) {
                    v4 = 99 - v5->unk_04;
                }

                ov23_02253F78(ov23_0224219C(), 69, 1, ov23_022416B0, v4);
                ov23_02253F98(ov23_0224219C());
                ov23_02241C48(v5);
                ov23_02241778();
            } else {
                ov23_02253F40(ov23_0224219C(), 83, 1, ov23_022416A8);
            }
        }
    }
}

void ov23_02241A80 (UnkStruct_ov23_02241A80 * param0, int param1)
{
    param0->unk_02 = param1;
    param0->unk_00 = 0;
}

BOOL ov23_02241A88 (UnkStruct_ov23_02241A80 * param0, UnkStruct_ov23_02241A88 * param1)
{
    int v0, v1, v2, v3;

    v1 = param0->unk_00;

    for (v0 = 0; v0 <= param0->unk_02; v0++) {
        if ((v1 - (v0 * 4)) > 0) {
            v1 = v1 - (v0 * 4);
        } else {
            if (v1 != 0) {
                v1--;
            }

            if (v1 < (v0 * 2)) {
                v3 = v0 - v1;
            } else {
                v3 = v1 - v0 * 3;
            }

            if (v1 < (v0)) {
                v2 = v1;
            } else if (v1 < (v0 * 3)) {
                v2 = v0 * 3 - (v1 + v0);
            } else {
                v2 = -v0 + (v1 - v0 * 3);
            }

            param1->unk_00 = v2;
            param1->unk_02 = v3;
            param0->unk_00++;

            return 1;
        }
    }

    return 0;
}

void ov23_02241AE8 (int param0, int param1, int param2, int param3)
{
    UnkStruct_ov23_02241974 v0;
    UnkStruct_ov23_02241974 * v1;
    BOOL v2 = 0;

    v0.unk_00 = param2;
    v0.unk_02 = param3;
    v0.unk_04 = param1;
    v0.unk_06 = param0;
    v0.unk_05 = 0;

    if (ov23_02242E58(param2, param3)) {
        ov23_02253F40(ov23_0224219C(), 84, 0, NULL);
        return;
    }

    if (sub_02058108(param2, param3)) {
        ov23_02253F40(ov23_0224219C(), 55, 0, NULL);
        return;
    }

    if (sub_02054F68(Unk_ov23_02257744->unk_464, param2, param3)) {
        ov23_02253F40(ov23_0224219C(), 60, 0, NULL);
        return;
    }

    v1 = ov23_02241978(param2, param3);

    if (v1) {
        if (v1->unk_06 == v0.unk_06) {
            if (v1->unk_04 > param1) {
                v1->unk_04 = v1->unk_04 + (param1 / 5) + 1;
            } else {
                v1->unk_04 = param1 + (v1->unk_04 / 5) + 1;
            }

            if (v1->unk_04 > 99) {
                v1->unk_04 = 99;
            }

            v2 = 1;
        } else {
            ov23_02253F40(ov23_0224219C(), 59, 0, NULL);
        }
    } else {
        ov23_02241CAC(&v0);
        v2 = 1;
    }

    if (v2) {
        ov23_022541A0(ov23_0224219C(), 0, param0);
        ov23_02254154(ov23_0224219C(), 1, param1);
        ov23_02253F40(ov23_0224219C(), 58, 0, NULL);
        ov23_02250128(param0);

        Sound_PlayEffect(1585);
        sub_0206AA14(SaveData_Events(Unk_ov23_02257744->unk_464->unk_0C));
        sub_0202CF28(sub_0202CD88(Unk_ov23_02257744->unk_464->unk_0C), (1 + 46));

        ov5_021F57C8(Unk_ov23_02257744->unk_464, param2, param3);
    }
}

static void ov23_02241C48 (UnkStruct_ov23_02241974 * param0)
{
    UnkStruct_ov23_02241974 * v0;
    int v1 = -1, v2;

    for (v2 = 0; v2 < 100; v2++) {
        v0 = &Unk_ov23_02257744->unk_00[v2];

        if (param0 == v0) {
            v1 = v2;
            break;
        }
    }

    GF_ASSERT(v1 != -1);

    for ( ; v2 < (100 - 1); v2++) {
        MI_CpuCopy8(&Unk_ov23_02257744->unk_00[v2 + 1], &Unk_ov23_02257744->unk_00[v2], sizeof(UnkStruct_ov23_02241974));
    }

    Unk_ov23_02257744->unk_00[100 - 1].unk_06 = 0;
    ov23_02241928(param0);
}

static void ov23_02241CAC (UnkStruct_ov23_02241974 * param0)
{
    UnkStruct_ov23_02241974 * v0 = ov23_02241960(Unk_ov23_02257744->unk_00);
    int v1;

    if (v0 == NULL) {
        v0 = ov23_02241974(Unk_ov23_02257744->unk_00);
        ov23_02241C48(v0);

        v0 = ov23_02241960(Unk_ov23_02257744->unk_00);
        GF_ASSERT(v0);
    }

    MI_CpuCopy8(param0, v0, sizeof(UnkStruct_ov23_02241974));

    ov23_022418C0(v0);
    ov23_02241778();
}

BOOL ov23_02241CF4 (int param0)
{
    if ((param0 != 0) && (param0 < 11)) {
        return 1;
    }

    return 0;
}

BOOL ov23_02241D04 (int param0, int param1)
{
    if (ov23_02241978(param0, param1)) {
        return 1;
    }

    return 0;
}

int ov23_02241D18 (int param0)
{
    if (Unk_ov23_02257744 && (Unk_ov23_02257744->unk_00[param0].unk_06 != 0)) {
        return Unk_ov23_02257744->unk_00[param0].unk_00;
    }

    return 0;
}

int ov23_02241D38 (int param0)
{
    if (Unk_ov23_02257744 && (Unk_ov23_02257744->unk_00[param0].unk_06 != 0)) {
        return Unk_ov23_02257744->unk_00[param0].unk_02;
    }

    return 0;
}

BOOL ov23_02241D58 (Strbuf *param0)
{
    int v0;
    StringFormatter * v1 = NULL;
    Strbuf* v2 = NULL;
    BOOL v3 = 0;

    if (!Unk_ov23_02257744) {
        return v3;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_ov23_02257744->unk_468[v0] != 0) {
            v1 = sub_0200B358(4);
            v2 = Strbuf_Init((50 * 2), 4);

            sub_0200BACC(v1, 2, Unk_ov23_02257744->unk_468[v0]);
            sub_0200C324(v1, 2);
            MessageLoader_GetStrbuf(ov23_02253E3C(ov23_0224219C()), 95, v2);
            StringFormatter_Format(v1, param0, v2);

            Unk_ov23_02257744->unk_468[v0] = 0;
            v3 = 1;
            break;
        }
    }

    if (v2) {
        Strbuf_Free(v2);
    }

    if (v1) {
        sub_0200B3F0(v1);
    }

    return v3;
}

int ov23_02241DF8 (MATHRandContext16 * param0)
{
    UnkStruct_020298B0 * v0 = sub_020298B0(sub_0203D174(Unk_ov23_02257744->unk_464));
    int v1, v2, v3;

    for (v3 = 0; v3 < 100; v3++) {
        if (0 != sub_020290DC(v0, v3)) {
            v1 = sub_020290E8(v0, v3);
            v2 = sub_02029108(v0, v3);
            ov23_0223E650(v1, v2, param0);
        }
    }

    return v3;
}

static void ov23_02241E4C (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02241E4C * v0 = param1;

    v0->unk_02++;

    if (100 < v0->unk_02) {
        Sound_PlayEffect(1354);
        v0->unk_02 = 0;
    }
}

void ov23_02241E6C (void)
{
    UnkStruct_ov23_02241E4C * v0;

    GF_ASSERT(!Unk_ov23_02257744->unk_460);
    GF_ASSERT(!Unk_ov23_02257744->unk_45C);

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov23_02241E4C));
    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_02241E4C));
    v0->unk_02 = 100;

    Unk_ov23_02257744->unk_460 = v0;
    Unk_ov23_02257744->unk_45C = SysTask_Start(ov23_02241E4C, v0, 100);
}

void ov23_02241ED0 (void)
{
    if (Unk_ov23_02257744->unk_45C) {
        SysTask_Done(Unk_ov23_02257744->unk_45C);
        Heap_FreeToHeap(Unk_ov23_02257744->unk_460);

        Unk_ov23_02257744->unk_45C = NULL;
        Unk_ov23_02257744->unk_460 = NULL;
    }
}

int ov23_02241F0C (int param0)
{
    if (Unk_ov23_02257744 && Unk_ov23_02257744->unk_460) {
        int v0 = Unk_ov23_02257744->unk_460->unk_02 / 2;
        v0 = (v0 + param0) % 100;

        return ov23_02241D18(v0);
    }

    return 0;
}

int ov23_02241F40 (int param0)
{
    if (Unk_ov23_02257744 && Unk_ov23_02257744->unk_460) {
        int v0 = Unk_ov23_02257744->unk_460->unk_02 / 2;

        v0 = (v0 + param0) % 100;
        return ov23_02241D38(v0);
    }

    return 0;
}
