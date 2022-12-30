#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_0201CD38_decl.h"

#include "struct_defs/struct_02032188.h"
#include "struct_defs/struct_020322D8.h"
#include "struct_defs/struct_020322F8.h"
#include "struct_defs/struct_0203233C.h"

#include "unk_0200D9E8.h"
#include "unk_0201378C.h"
#include "unk_02017E74.h"
#include "unk_02030EE0.h"
#include "unk_02032188.h"
#include "unk_020322D8.h"
#include "unk_0203266C.h"
#include "unk_02032798.h"
#include "unk_020329E0.h"
#include "unk_02033200.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "overlay004/ov4_021D0D80.h"

typedef struct {
    u8 * unk_00;
    UnkStruct_020322D8 * unk_04;
    UnkStruct_020322D8 * unk_08;
    u16 unk_0C;
    u8 unk_0E;
    u8 unk_0F_0 : 1;
    u8 unk_0F_1 : 1;
    u8  : 6;
} UnkStruct_020322D8_t;

typedef struct {
    int unk_00;
    u8 * unk_04;
    u16 unk_08;
    u8 unk_0A;
} UnkStruct_02035B6C;

typedef struct {
    u8 unk_00[2][64];
    u8 unk_80[2][192];
    u8 unk_200[264];
    u8 unk_308[384];
    u8 * unk_488;
    u8 * unk_48C;
    u8 * unk_490;
    u8 * unk_494;
    UnkStruct_02032188 unk_498;
    UnkStruct_02032188 unk_4A4;
    UnkStruct_02032188 unk_4B0[8];
    UnkStruct_02032188 unk_510;
    UnkStruct_02032188 unk_51C[8];
    UnkStruct_0201CD38 * unk_57C;
    UnkStruct_020322F8 unk_580;
    UnkStruct_020322F8 unk_5A0;
    UnkStruct_02035B6C unk_5C0[8];
    UnkStruct_02035B6C unk_618;
    MATHRandContext32 unk_624;
    u16 unk_63C[8];
    u8 unk_64C[8];
    u16 unk_654;
    u8 unk_656;
    u8 unk_657;
    u8 unk_658;
    s8 unk_659;
    u16 unk_65A;
    BOOL unk_65C;
    volatile int unk_660;
    volatile int unk_664[8];
    int unk_684;
    int unk_688;
    u16 unk_68C;
    u8 unk_68E;
    u8 unk_68F[8];
    u8 unk_697[8];
    u8 unk_69F[4];
    u8 unk_6A3;
    u8 unk_6A4;
    u8 unk_6A5;
    u8 unk_6A6;
    u8 unk_6A7;
    u8 unk_6A8;
    u8 unk_6A9;
    u8 unk_6AA;
    u8 unk_6AB;
    u8 unk_6AC;
    u8 unk_6AD;
    u8 unk_6AE;
    u8 unk_6AF;
    u8 unk_6B0;
    u8 unk_6B1;
    u8 unk_6B2;
    u8 unk_6B3;
    u8 unk_6B4;
    u8 unk_6B5;
} UnkStruct_021C07CC;

static void sub_0203463C(void);
static void sub_0203498C(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02034B50(void);
static void sub_02034DC8(void);
static void sub_02034F68(void);
static void sub_02035394(BOOL param0);
static void sub_020353B0(BOOL param0);
static void sub_020350A4(u16 param0, u16 * param1, u16 param2);
static void sub_02035200(u16 param0, u16 * param1, u16 param2);
static BOOL sub_02034F1C(void);
static void sub_02035534(void);
static void sub_020353CC(void);
static void sub_02035CA8(void);
static void sub_02035CF8(void);
static BOOL sub_020357F0(u8 * param0);
static void sub_020358C0(u8 * param0);
static BOOL sub_020356A0(u8 * param0, int param1);
static BOOL sub_02035730(u8 * param0);
static void sub_02035F84(void);
static BOOL sub_0203594C(void);

static u32 Unk_021C07C8 = 0;
static UnkStruct_021C07CC * Unk_021C07CC = NULL;
static volatile u8 Unk_021C07C5 = 0;
static volatile u8 Unk_02100A1C = 4;
static volatile u8 Unk_02100A1D = 4;
static u8 Unk_021C07C4 = 0;

static BOOL sub_02034198 (BOOL param0, int param1)
{
    void * v0;
    int v1;
    BOOL v2 = 0;

    Unk_021C07C5 = 0;

    if (param0) {
        int v3 = sub_0203266C(sub_0203895C()) + 1;

        if (Unk_021C07CC != NULL) {
            return 1;
        }

        sub_020363E8(15);

        Unk_021C07C8 = (u32)sub_02018144(15, sizeof(UnkStruct_021C07CC) + 32);
        Unk_021C07CC = (UnkStruct_021C07CC *)(32 - (Unk_021C07C8 % 32) + Unk_021C07C8);

        MI_CpuClear8(Unk_021C07CC, sizeof(UnkStruct_021C07CC));

        if (sub_020326EC(sub_0203895C())) {
            Unk_021C07CC->unk_688 = param1 * 2 + 64;
        } else {
            Unk_021C07CC->unk_688 = param1 + 64;
        }

        Unk_021C07CC->unk_684 = Unk_021C07CC->unk_688 * v3;
        Unk_021C07CC->unk_6A5 = 0;
        Unk_021C07CC->unk_6A6 = 38;
        Unk_021C07CC->unk_490 = sub_02018144(15, Unk_021C07CC->unk_688 * 2);
        Unk_021C07CC->unk_494 = sub_02018144(15, Unk_021C07CC->unk_688);
        Unk_021C07CC->unk_48C = sub_02018144(15, Unk_021C07CC->unk_684);
        Unk_021C07CC->unk_488 = sub_02018144(15, Unk_021C07CC->unk_684);

        if (sub_0203895C() == 10) {
            sub_020325EC(&Unk_021C07CC->unk_580, 100, &Unk_021C07CC->unk_498);
            sub_020325EC(&Unk_021C07CC->unk_5A0, 800, &Unk_021C07CC->unk_510);
        } else {
            sub_020325EC(&Unk_021C07CC->unk_580, 20, &Unk_021C07CC->unk_498);
            sub_020325EC(&Unk_021C07CC->unk_5A0, 280, &Unk_021C07CC->unk_510);
        }
    } else {
        v2 = 1;
        GF_ASSERT((Unk_021C07CC));
    }

    Unk_021C07CC->unk_68C = 0;

    for (v1 = 0; v1 < 4; v1++) {
        Unk_021C07CC->unk_69F[v1] = 0xff;
    }

    if (!v2) {
        sub_0203463C();
    }

    sub_020361BC(&Unk_021C07CC->unk_624);

    if (!v2) {
        Unk_021C07CC->unk_57C = sub_0200DA04(sub_0203498C, NULL, 0);
    }

    Unk_021C07CC->unk_6AF = 0;
    return 1;
}

static void sub_02034378 (void)
{
    int v0, v1;
    int v2 = sub_0203266C(sub_0203895C()) + 1;

    Unk_021C07CC->unk_658 = 0;
    Unk_021C07CC->unk_659 = 0;

    MI_CpuClear8(Unk_021C07CC->unk_48C, Unk_021C07CC->unk_684);
    MI_CpuClear8(Unk_021C07CC->unk_51C, sizeof(UnkStruct_02032188) * (7 + 1));

    v1 = Unk_021C07CC->unk_684 / v2;

    for (v0 = 0; v0 < v2; v0++) {
        sub_02032188(&Unk_021C07CC->unk_51C[v0], &Unk_021C07CC->unk_48C[v0 * v1], v1);
    }

    MI_CpuClear8(Unk_021C07CC->unk_488, Unk_021C07CC->unk_684);
    MI_CpuClear8(Unk_021C07CC->unk_4B0, sizeof(UnkStruct_02032188) * (7 + 1));

    for (v0 = 0; v0 < v2; v0++) {
        sub_02032188(&Unk_021C07CC->unk_4B0[v0], &Unk_021C07CC->unk_488[v0 * v1], v1);
    }

    MI_CpuClear8(Unk_021C07CC->unk_308, (192 * 2));
    sub_02032188(&Unk_021C07CC->unk_510, Unk_021C07CC->unk_308, (192 * 2));

    MI_CpuFill8(Unk_021C07CC->unk_80[0], 0xee, (192 * 2));
    MI_CpuFill8(Unk_021C07CC->unk_80[1], 0xee, (192 * 2));
    MI_CpuClear8(Unk_021C07CC->unk_200, (12 * 22));

    sub_02032188(&Unk_021C07CC->unk_498, Unk_021C07CC->unk_200, (12 * 22));

    MI_CpuFill8(Unk_021C07CC->unk_00[0], 0xee, 38);
    MI_CpuFill8(Unk_021C07CC->unk_00[1], 0xee, 38);

    Unk_021C07CC->unk_00[0][0] = 0xff;
    Unk_021C07CC->unk_00[1][0] = 0xff;

    MI_CpuClear8(Unk_021C07CC->unk_490, Unk_021C07CC->unk_688 * 2);
    sub_02032188(&Unk_021C07CC->unk_4A4, Unk_021C07CC->unk_490, Unk_021C07CC->unk_688 * 2);

    Unk_021C07CC->unk_6AC = 0;
    Unk_021C07CC->unk_6AD = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        Unk_021C07CC->unk_68F[v0] = 0;
        Unk_021C07CC->unk_697[v0] = 1;
        Unk_021C07CC->unk_63C[v0] = 0;
        Unk_021C07CC->unk_5C0[v0].unk_0A = 0xee;
        Unk_021C07CC->unk_5C0[v0].unk_08 = 0xffff;
        Unk_021C07CC->unk_5C0[v0].unk_04 = NULL;
        Unk_021C07CC->unk_5C0[v0].unk_00 = 0;
        Unk_021C07CC->unk_664[v0] = 0;
    }

    Unk_021C07CC->unk_660 = 0;
    Unk_021C07CC->unk_618.unk_0A = 0xee;
    Unk_021C07CC->unk_618.unk_08 = 0xffff;
    Unk_021C07CC->unk_618.unk_04 = NULL;
    Unk_021C07CC->unk_618.unk_00 = 0;
    Unk_021C07CC->unk_6AA = 1;
    Unk_021C07CC->unk_6AB = 1;
    Unk_021C07C4 = 0;

    sub_02032618(&Unk_021C07CC->unk_580);
    sub_02032618(&Unk_021C07CC->unk_5A0);

    Unk_021C07CC->unk_6B0 = 0;
}

static void sub_0203463C (void)
{
    Unk_021C07CC->unk_6A7 = 0;
    Unk_021C07CC->unk_6A8 = 0;
    Unk_021C07CC->unk_65C = 1;

    sub_02034378();

    Unk_02100A1C = 4;
    Unk_02100A1D = 4;
}

static void sub_02034670 (void)
{
    sub_02034378();
}

static void sub_02034678 (int param0)
{
    Unk_021C07CC->unk_68F[param0] = 0;
    Unk_021C07CC->unk_697[param0] = 1;
    Unk_021C07CC->unk_664[param0] = 0;

    {
        int v0 = sub_0203266C(sub_0203895C()) + 1;
        int v1 = Unk_021C07CC->unk_684 / v0;

        sub_02032188(&Unk_021C07CC->unk_4B0[param0], &Unk_021C07CC->unk_488[param0 * v1], v1);
        sub_02032188(&Unk_021C07CC->unk_51C[param0], &Unk_021C07CC->unk_48C[param0 * v1], v1);
    }

    Unk_021C07CC->unk_5C0[param0].unk_0A = 0xee;
    Unk_021C07CC->unk_5C0[param0].unk_08 = 0xffff;
    Unk_021C07CC->unk_5C0[param0].unk_04 = NULL;
    Unk_021C07CC->unk_5C0[param0].unk_00 = 0;
}

static void sub_02034734 (void)
{
    int v0;

    for (v0 = 1; v0 < (7 + 1); v0++) {
        if ((!sub_02035D78(v0)) && !Unk_021C07CC->unk_697[v0]) {
            if (!sub_02036180()) {
                sub_02034678(v0);
            }
        }
    }
}

static void sub_02034770 (int param0)
{
    sub_02034678(param0);
}

BOOL sub_02034778 (BOOL param0, BOOL param1, int param2, BOOL param3)
{
    BOOL v0 = 1;

    if (!sub_020326EC(sub_0203895C())) {
        v0 = sub_020335DC(param0, param1, param3);
        sub_02032124(sub_02034770);
    }

    sub_02034198(param0, param2);
    return v0;
}

BOOL sub_020347B4 (BOOL param0, BOOL param1, int param2)
{
    BOOL v0 = 1;

    if (!sub_020326EC(sub_0203895C())) {
        v0 = sub_02033650(param0, param1);
    } else {
        (void)0;
    }

    sub_02034198(param0, param2);
    Unk_02100A1D = 4;

    return v0;
}

static void sub_020347EC (void)
{
    int v0;
    BOOL v1 = 0;

    if (sub_0203608C() == 0) {
        if (Unk_02100A1C != 4) {
            return;
        }
    } else {
        if (Unk_02100A1D != 4) {
            return;
        }
    }

    if (Unk_021C07CC->unk_6A5 == 2) {
        Unk_021C07CC->unk_6A5 = 0;
        v1 = 1;
    }

    if (Unk_021C07CC->unk_6A5 == 3) {
        Unk_021C07CC->unk_6A5 = 1;
        v1 = 1;
    }

    if (v1) {
        sub_02034670();
    }

    sub_02035F84();
}

static void sub_02034848 (int param0)
{
    if ((Unk_021C07CC->unk_6A5 == 0) && (param0 == 1)) {
        Unk_021C07CC->unk_6A5 = 3;
        return;
    }

    if ((Unk_021C07CC->unk_6A5 == 1) && (param0 == 0)) {
        Unk_021C07CC->unk_6A5 = 2;
        return;
    }
}

void sub_02034878 (void)
{
    sub_02034848(1);
}

void sub_02034884 (void)
{
    sub_02034848(0);
}

static int sub_02034890 (void)
{
    if (Unk_021C07CC->unk_6A5 == 2) {
        return 1;
    }

    if (Unk_021C07CC->unk_6A5 == 3) {
        return 0;
    }

    return Unk_021C07CC->unk_6A5;
}

BOOL sub_020348B0 (void)
{
    if (1 == sub_02034890()) {
        return 1;
    }

    return 0;
}

void sub_020348C4 (void)
{
    BOOL v0 = 0;

    if (Unk_021C07CC) {
        if (sub_020326EC(sub_0203895C())) {
            ov4_021D2184();
            v0 = 1;
        } else {
            if (sub_02033768()) {
                v0 = 1;
            }
        }
    }

    if (v0) {
        sub_02036438();
        sub_02032A70();

        Unk_021C07C5 = 0;
        sub_0200DA58(Unk_021C07CC->unk_57C);
        Unk_021C07CC->unk_57C = NULL;

        sub_020181C4(Unk_021C07CC->unk_490);
        sub_020181C4(Unk_021C07CC->unk_494);
        sub_020181C4(Unk_021C07CC->unk_48C);
        sub_020181C4(Unk_021C07CC->unk_488);
        sub_02032638(&Unk_021C07CC->unk_5A0);
        sub_02032638(&Unk_021C07CC->unk_580);
        sub_020181C4((void *)Unk_021C07C8);

        Unk_021C07CC = NULL;
        Unk_021C07C8 = 0;
    }
}

BOOL sub_02034984 (u16 param0)
{
    return sub_020339E8(param0);
}

static void sub_0203498C (UnkStruct_0201CD38 * param0, void * param1)
{
    if (Unk_021C07C5) {
        sub_020353CC();

        if (((sub_0203608C() == 0) && (sub_02035D78(0))) || sub_02036180()) {
            sub_02034DC8();
        }

        Unk_021C07C5 = 0;
    }
}

static void sub_020349C4 (void)
{
    if (!sub_0203406C()) {
        return;
    }

    if (sub_0203608C() == 0) {
        if (sub_02033E48()) {
            return;
        }

        sub_020348C4();
    } else {
        sub_020348C4();
    }
}

BOOL sub_020349EC (void)
{
    int v0;

    sub_02036C50();

    if (Unk_021C07CC != NULL) {
        if (!Unk_021C07CC->unk_6B2) {
            Unk_021C07CC->unk_6B5++;
            Unk_021C07C5 = 0;
            sub_020347EC();
            Unk_021C07CC->unk_654 |= (Unk_021BF67C.unk_44 & 0x7fff);
            sub_02035534();
            sub_02034B50();
            Unk_021C07CC->unk_654 &= 0x8000;

            if (sub_02034890() == 0) {
                sub_02035CA8();
            }

            if ((sub_0203608C() == 0) && (sub_02035D78(0)) || sub_02036180()) {
                if (!sub_0203272C(sub_0203895C())) {
                    sub_02034F68();
                }
            }

            if ((sub_0203608C() == 0) || (sub_02034890() == 1) || sub_02036180()) {
                sub_02035CF8();
            }

            Unk_021C07C5 = 1;
        }

        sub_02033D94(Unk_021C07CC->unk_68C);

        if (sub_0203608C() == 0) {
            sub_02034734();
        }

        sub_020349C4();
    } else {
        sub_02033D94(0);
    }

    sub_02038A20(0);
    sub_0203650C();

    return 1;
}

void sub_02034AE4 (void)
{
    BOOL v0 = Unk_021C07C5;

    Unk_021C07C5 = 0;

    if (Unk_021C07CC) {
        sub_0203463C();
    }

    Unk_021C07C5 = v0;
}

void sub_02034B04 (void)
{
    BOOL v0 = Unk_021C07C5;

    Unk_021C07C5 = 0;

    if (Unk_021C07CC) {
        Unk_021C07CC->unk_6A5 = 1;
        sub_0203463C();
    }

    Unk_021C07C5 = v0;
}

void sub_02034B2C (void)
{
    BOOL v0 = Unk_021C07C5;

    Unk_021C07C5 = 0;

    if (Unk_021C07CC) {
        sub_0203463C();
        sub_02033518();
    }

    Unk_021C07C5 = v0;
}

static void sub_02034B50 (void)
{
    if (sub_0203272C(sub_0203895C())) {
        if (Unk_021C07CC->unk_6AF) {
            if (Unk_021C07CC->unk_65C) {
                if (!sub_02034F1C()) {
                    return;
                }

                if (Unk_02100A1D == 4) {
                    sub_020357F0(Unk_021C07CC->unk_00[0]);
                    Unk_02100A1D = 2;
                }
            } else {
                if (Unk_02100A1D == 4) {
                    if (!sub_020357F0(Unk_021C07CC->unk_00[0])) {
                        return;
                    }

                    Unk_02100A1D = 2;
                }
            }

            if (sub_0203594C()) {
                return;
            }

            if (ov4_021D1590(Unk_021C07CC->unk_00[0], 38)) {
                int v0;
                int v1 = sub_0203266C(sub_0203895C()) + 1;

                for (v0 = 0; v0 < v1; v0++) {
                    if (sub_02035D78(v0)) {
                        Unk_021C07CC->unk_664[v0]++;
                    }
                }

                Unk_02100A1D = 4;
            } else {
                (void)0;
            }
        }
    } else if (sub_020326EC(sub_0203895C())) {
        if (Unk_021C07CC->unk_6AF) {
            if (Unk_021C07CC->unk_65C) {
                if (Unk_021C07CC->unk_660 > 3) {
                    return;
                }

                if (Unk_02100A1D == 4) {
                    sub_020357F0(Unk_021C07CC->unk_00[0]);
                    Unk_02100A1D = 2;
                }
            } else {
                if (Unk_02100A1D == 4) {
                    if (!sub_020357F0(Unk_021C07CC->unk_00[0])) {
                        return;
                    }

                    Unk_02100A1D = 2;
                }
            }

            if (sub_0203594C()) {
                return;
            }

            if (ov4_021D142C(Unk_021C07CC->unk_00[0], 38)) {
                Unk_02100A1D = 4;
                Unk_021C07CC->unk_660++;
            } else {
                (void)0;
            }
        }
    } else if (((sub_02031934() == 4) && (sub_02035D78(sub_0203608C()))) || sub_02036180()) {
        while (TRUE) {
            if (Unk_02100A1D != 4) {
                break;
            }

            if (Unk_021C07CC->unk_660 > 3) {
                break;
            }

            sub_020357F0(Unk_021C07CC->unk_00[Unk_021C07CC->unk_6A7]);
            sub_020357F0(Unk_021C07CC->unk_00[1 - Unk_021C07CC->unk_6A7]);
            Unk_02100A1D = 0;
            break;
        }

        sub_020353CC();
    }
}

static BOOL sub_02034CF8 (int param0)
{
    int v0;
    int v1;
    int v2, v3, v4 = 0;

    v0 = sub_02036128(sub_0203895C());
    v1 = sub_0203266C(sub_0203895C()) + 1;

    for (v2 = 0; v2 < v1; v2++) {
        sub_020322D0(&Unk_021C07CC->unk_4B0[v2]);

        if (sub_02035D78(v2)) {
            Unk_021C07CC->unk_80[param0][v2 * v0] = 0xe;
        } else {
            Unk_021C07CC->unk_80[param0][v2 * v0] = 0xff;
            v4++;
            continue;
        }

        v3 = sub_020321F4(&Unk_021C07CC->unk_4B0[v2], &Unk_021C07CC->unk_80[param0][v2 * v0], v0);

        if (Unk_021C07CC->unk_80[param0][v2 * v0] == 0xe) {
            v4++;
        }
    }

    if (v4 == v1) {
        return 0;
    }

    return 1;
}

static void sub_02034DC8 (void)
{
    int v0;
    int v1 = 0;
    int v2, v3;

    if (!Unk_021C07CC) {
        return;
    }

    if (sub_020326EC(sub_0203895C())) {
        return;
    }

    v2 = sub_02036128(sub_0203895C());
    v3 = sub_0203266C(sub_0203895C()) + 1;

    if ((Unk_02100A1C == 2) || (Unk_02100A1C == 0)) {
        Unk_02100A1C++;

        if (sub_02034890() == 1) {
            if (Unk_021C07C4 == 0) {
                sub_02034CF8(Unk_021C07CC->unk_6A8);
                Unk_021C07C4 = 1;
            }
        }

        if ((sub_02031934() == 4) && !sub_02036180()) {
            if (!sub_02031E9C(Unk_021C07CC->unk_80[Unk_021C07CC->unk_6A8], 192, 14, sub_020353B0)) {
                Unk_02100A1C--;
            }
        }

        if ((Unk_02100A1C == 1) || (Unk_02100A1C == 3)) {
            Unk_021C07C4 = 0;

            for (v0 = 0; v0 < v3; v0++) {
                if (sub_02035D78(v0)) {
                    Unk_021C07CC->unk_664[v0]++;
                } else if (sub_02036180() && (v0 == 0)) {
                    Unk_021C07CC->unk_664[v0]++;
                }
            }

            sub_020350A4(0, (u16 *)Unk_021C07CC->unk_80[Unk_021C07CC->unk_6A8], 192);
            Unk_021C07CC->unk_6A8 = 1 - Unk_021C07CC->unk_6A8;
        }

        if ((sub_02031934() != 4) || sub_02036180()) {
            Unk_02100A1C++;
        }
    }
}

static BOOL sub_02034F1C (void)
{
    int v0;
    int v1 = sub_0203266C(sub_0203895C()) + 1;

    for (v0 = 1; v0 < v1; v0++) {
        if (sub_02035D78(v0)) {
            if (Unk_021C07CC->unk_664[v0] > 3) {
                return 0;
            }
        }
    }

    return 1;
}

static void sub_02034F68 (void)
{
    int v0;
    int v1 = sub_0203266C(sub_0203895C()) + 1;

    if (sub_020326EC(sub_0203895C())) {
        if (sub_02035D78(0)) {
            if (Unk_021C07CC->unk_65C) {
                if (!sub_02034F1C()) {
                    return;
                }

                if (Unk_02100A1C == 4) {
                    if (sub_02034890() == 1) {
                        sub_02034CF8(0);
                    }

                    Unk_02100A1C = 2;
                }
            } else {
                if (Unk_02100A1C == 4) {
                    if (sub_02034890() == 1) {
                        if (!sub_02034CF8(0)) {
                            return;
                        }
                    }
                }

                Unk_02100A1C = 2;
            }

            if (ov4_021D14D4(Unk_021C07CC->unk_80[0], 192)) {
                Unk_02100A1C = 4;

                for (v0 = 0; v0 < v1; v0++) {
                    if (sub_02035D78(v0)) {
                        Unk_021C07CC->unk_664[v0]++;
                    }
                }
            } else {
                (void)0;
            }
        }
    } else if ((sub_02031934() == 4) || (sub_02036180())) {
        if (Unk_02100A1C != 4) {
            return;
        }

        if (!sub_02034F1C()) {
            return;
        }

        if (sub_02034890() == 0) {
            sub_020358C0(Unk_021C07CC->unk_80[Unk_021C07CC->unk_6A8]);
            sub_020358C0(Unk_021C07CC->unk_80[1 - Unk_021C07CC->unk_6A8]);
        }

        Unk_02100A1C = 0;

        sub_02034DC8();
    }
}

void sub_0203509C (u16 param0, u16 * param1, u16 param2)
{
    u8 * v0 = (u8 *)param1;
    sub_020350A4(param0, param1, param2);
}

static void sub_020350A4 (u16 param0, u16 * param1, u16 param2)
{
    u8 * v0 = (u8 *)param1;
    int v1;
    int v2 = param2;

    Unk_021C07CC->unk_660--;

    if (v0 == NULL) {
        return;
    }

    if (v0[0] == 0xb) {
        if (sub_02034890() == 1) {
            return;
        }

        v0++;
        v2--;
    } else if (sub_02034890() == 0) {
        return;
    }

    if ((Unk_021C07CC->unk_6AA) && (v0[0] & 0x1)) {
        return;
    }

    Unk_021C07CC->unk_6AA = 0;

    if (sub_02034890() == 1) {
        int v3 = sub_02036128(sub_0203895C());
        int v4 = sub_0203266C(sub_0203895C()) + 1;

        for (v1 = 0; v1 < v4; v1++) {
            if (v0[0] == 0xff) {
                Unk_021C07CC->unk_68C = Unk_021C07CC->unk_68C & ~(1 << v1);
            } else {
                Unk_021C07CC->unk_68C = Unk_021C07CC->unk_68C | (1 << v1);
            }

            if (v0[0] == 0xff) {
                v0 += v3;
            } else if (v0[0] == 0xe) {
                v0 += v3;
            } else if ((Unk_021C07CC->unk_697[v1]) && (v0[0] & 0x1)) {
                v0 += v3;
            } else {
                v0++;
                sub_02032198(&Unk_021C07CC->unk_51C[v1], v0, v3 - 1, 1360 + v1);
                v0 += (v3 - 1);
                Unk_021C07CC->unk_697[v1] = 0;
            }
        }
    } else {
        v0++;
        Unk_021C07CC->unk_68C = v0[0];
        Unk_021C07CC->unk_68C *= 256;

        v0++;
        Unk_021C07CC->unk_68C += v0[0];

        v0++;
        v2 -= 3;
        v2 = v0[0];

        v0++;
        sub_02032198(&Unk_021C07CC->unk_4A4, v0, v2, 1380);
    }
}

void sub_020351F8 (u16 param0, u16 * param1, u16 param2)
{
    u8 * v0 = (u8 *)param1;
    sub_02035200(param0, param1, param2);
}

static void sub_02035200 (u16 param0, u16 * param1, u16 param2)
{
    u8 * v0 = (u8 *)param1;
    int v1;

    Unk_021C07CC->unk_664[param0]--;

    if (v0 == NULL) {
        return;
    }

    if ((Unk_021C07CC->unk_697[param0]) && (v0[0] & 0x1)) {
        v1 = 0;
        return;
    }

    Unk_021C07CC->unk_697[param0] = 0;

    if (sub_02034890() == 1) {
        int v2 = sub_02036128(sub_0203895C());
        int v3 = sub_0203266C(sub_0203895C()) + 1;

        if (!(v0[0] & 0x2)) {
            sub_02032198(&Unk_021C07CC->unk_4B0[param0], v0, v2, 1449);
        }

        Unk_021C07CC->unk_68F[param0]++;
    } else {
        sub_020356A0(v0, param0);

        if (v0[0] & 0x2) {
            return;
        }

        v0++;
        sub_02032198(&Unk_021C07CC->unk_51C[param0], v0, (12 - 1), 1458);
    }
}

void sub_020352C0 (u16 param0, u16 * param1, u16 param2)
{
    u8 * v0 = (u8 *)param1;
    int v1;

    Unk_021C07CC->unk_664[param0]--;

    if (v0 == NULL) {
        return;
    }

    if ((Unk_021C07CC->unk_697[param0]) && (v0[0] & 0x1)) {
        v1 = 0;
        return;
    }

    Unk_021C07CC->unk_697[param0] = 0;

    if (sub_02034890() == 1) {
        int v2 = sub_02036128(sub_0203895C());
        int v3 = sub_0203266C(sub_0203895C()) + 1;

        if (v0[0] == 0xff) {
            Unk_021C07CC->unk_68C = Unk_021C07CC->unk_68C & ~(1 << param0);
        } else {
            Unk_021C07CC->unk_68C = Unk_021C07CC->unk_68C | (1 << param0);
        }

        if (v0[0] == 0xff) {
            (void)0;
        } else if (v0[0] == 0x2) {
            (void)0;
        } else if (v0[0] == 0xe) {
            (void)0;
        } else if ((Unk_021C07CC->unk_697[param0]) && (v0[0] & 0x1)) {
            (void)0;
        } else {
            v0++;
            sub_02032198(&Unk_021C07CC->unk_51C[param0], v0, v2 - 1, 1515);
            Unk_021C07CC->unk_697[param0] = 0;
        }
    }
}

static void sub_02035394 (BOOL param0)
{
    if (param0) {
        Unk_02100A1D++;
    } else {
        GF_ASSERT(0);
    }
}

static void sub_020353B0 (BOOL param0)
{
    if (param0) {
        Unk_02100A1C++;
    } else {
        GF_ASSERT(0);
    }
}

static void sub_020353CC (void)
{
    u16 v0;
    u8 * v1;
    int v2;

    if (!Unk_021C07CC) {
        return;
    }

    if (sub_020326EC(sub_0203895C())) {
        return;
    }

    {
        int v3 = sub_02036128(sub_0203895C());
        int v4 = sub_0203266C(sub_0203895C()) + 1;

        if (sub_02036180()) {
            if ((Unk_02100A1D == 2) || (Unk_02100A1D == 0)) {
                Unk_02100A1D++;
                sub_02035394(1);

                sub_02035200(0, (u16 *)Unk_021C07CC->unk_00[Unk_021C07CC->unk_6A7], v3);
                Unk_021C07CC->unk_6A7 = 1 - Unk_021C07CC->unk_6A7;
                Unk_021C07CC->unk_660++;
                return;
            }
        }

        if (sub_02031934() == 4) {
            if (!sub_02035D78(sub_0203608C())) {
                if (sub_0203608C() == 1) {
                    (void)0;
                }

                return;
            }

            if ((Unk_02100A1D == 2) || (Unk_02100A1D == 0)) {
                if (sub_0203608C() != 0) {
                    Unk_02100A1D++;

                    if (!sub_02031E9C(Unk_021C07CC->unk_00[Unk_021C07CC->unk_6A7], v3, 14, sub_02035394)) {
                        Unk_02100A1D--;
                    } else {
                        Unk_021C07CC->unk_6A7 = 1 - Unk_021C07CC->unk_6A7;
                        Unk_021C07CC->unk_660++;
                    }
                } else if (sub_020318EC() & 0xfffe) {
                    Unk_02100A1D++;
                    sub_02035394(1);
                    sub_02035200(0, (u16 *)Unk_021C07CC->unk_00[Unk_021C07CC->unk_6A7], v3);
                    Unk_021C07CC->unk_6A7 = 1 - Unk_021C07CC->unk_6A7;
                    Unk_021C07CC->unk_660++;
                }
            }
        }
    }
}

static void sub_02035534 (void)
{
    u16 v0 = 0;

    if (Unk_021C07CC->unk_658 == 0) {
        return;
    }

    if (!(Unk_021C07CC->unk_654 & (PAD_KEY_LEFT | PAD_KEY_RIGHT | PAD_KEY_UP | PAD_KEY_DOWN))) {
        return;
    }

    if (Unk_021C07CC->unk_658 == 2) {
        if (Unk_021C07CC->unk_654 & PAD_KEY_LEFT) {
            v0 |= PAD_KEY_RIGHT;
        }

        if (Unk_021C07CC->unk_654 & PAD_KEY_RIGHT) {
            v0 |= PAD_KEY_LEFT;
        }

        if (Unk_021C07CC->unk_654 & PAD_KEY_UP) {
            v0 |= PAD_KEY_DOWN;
        }

        if (Unk_021C07CC->unk_654 & PAD_KEY_DOWN) {
            v0 |= PAD_KEY_UP;
        }
    } else {
        if (Unk_021C07CC->unk_65A) {
            v0 = Unk_021C07CC->unk_65A;
            Unk_021C07CC->unk_659--;

            if (Unk_021C07CC->unk_659 < 0) {
                Unk_021C07CC->unk_65A = 0;
            }
        } else {
            switch (MATH_Rand32(&Unk_021C07CC->unk_624, 4)) {
            case 0:
                v0 = PAD_KEY_LEFT;
                break;
            case 1:
                v0 = PAD_KEY_RIGHT;
                break;
            case 2:
                v0 = PAD_KEY_UP;
                break;
            case 3:
                v0 = PAD_KEY_DOWN;
                break;
            }

            Unk_021C07CC->unk_659 = MATH_Rand32(&Unk_021C07CC->unk_624, 16);
            Unk_021C07CC->unk_65A = v0;
        }
    }

    Unk_021C07CC->unk_654 &= ~(PAD_KEY_LEFT | PAD_KEY_RIGHT | PAD_KEY_UP | PAD_KEY_DOWN);
    Unk_021C07CC->unk_654 += v0;
}

void sub_02035664 (void)
{
    Unk_021C07CC->unk_658 = 1;
}

void sub_02035678 (void)
{
    Unk_021C07CC->unk_658 = 2;
}

void sub_0203568C (void)
{
    Unk_021C07CC->unk_658 = 0;
}

static BOOL sub_020356A0 (u8 * param0, int param1)
{
    int v0;
    u8 v1[2];

    Unk_021C07CC->unk_63C[param1] = 0;

    if (0x10 == (*param0 & 0x10)) {
        v1[0] = *param0 & 0xc;

        if (v1[0] == 0x0) {
            Unk_021C07CC->unk_63C[param1] |= PAD_KEY_UP;
        } else if (v1[0] == 0x4) {
            Unk_021C07CC->unk_63C[param1] |= PAD_KEY_DOWN;
        } else if (v1[0] == 0x8) {
            Unk_021C07CC->unk_63C[param1] |= PAD_KEY_LEFT;
        } else if (v1[0] == 0xC) {
            Unk_021C07CC->unk_63C[param1] |= PAD_KEY_RIGHT;
        }

        Unk_021C07CC->unk_64C[param1] = (*param0 >> 5) & 0x7;
    }

    return 1;
}

void sub_0203572C (void)
{
    return;
}

static BOOL sub_02035730 (u8 * param0)
{
    int v0, v1;

    if (Unk_021C07CC->unk_656) {
        return 0;
    }

    if (sub_02035EE0() == 0) {
        return 0;
    }

    if (Unk_021C07CC->unk_6A9) {
        Unk_021C07CC->unk_6A9--;
    }

    if (Unk_021C07CC->unk_654 & PAD_KEY_UP) {
        param0[0] = param0[0] | 0x0 | 0x10;
        Unk_021C07CC->unk_6A9 = 8;
    } else if (Unk_021C07CC->unk_654 & PAD_KEY_DOWN) {
        param0[0] = param0[0] | 0x4 | 0x10;
        Unk_021C07CC->unk_6A9 = 8;
    } else if (Unk_021C07CC->unk_654 & PAD_KEY_LEFT) {
        param0[0] = param0[0] | 0x8 | 0x10;
        Unk_021C07CC->unk_6A9 = 8;
    } else if (Unk_021C07CC->unk_654 & PAD_KEY_RIGHT) {
        param0[0] = param0[0] | 0xC | 0x10;
        Unk_021C07CC->unk_6A9 = 8;
    }

    param0[0] |= (Unk_021C07CC->unk_657 << 5);
    return 0;
}

static BOOL sub_020357F0 (u8 * param0)
{
    int v0;
    int v1 = sub_02036128(sub_0203895C());
    int v2 = sub_0203266C(sub_0203895C()) + 1;

    if (Unk_021C07CC->unk_6AC == 0) {
        param0[0] = 0x0;
    } else {
        param0[0] = 0x1;
    }

    if (sub_02034890() == 0) {
        sub_02035730(param0);
    }

    Unk_021C07CC->unk_6AC = 0;

    if (sub_020322F8(&Unk_021C07CC->unk_580)) {
        param0[0] |= 0x2;

        if (param0[0] == 0x2) {
            return 0;
        }
    } else {
        UnkStruct_0203233C v3;

        v3.unk_04 = v1 - 1;
        v3.unk_00 = &param0[1];

        if (!sub_02032574(&Unk_021C07CC->unk_580, &v3, 1)) {
            Unk_021C07CC->unk_6AC = 1;
        }

        if (sub_02034890() == 1) {
            Unk_021C07CC->unk_68E++;

            param0[0] |= ((Unk_021C07CC->unk_68E << 4) & 0xf0);
        }
    }

    return 1;
}

static void sub_020358C0 (u8 * param0)
{
    int v0;

    param0[0] = 0xb;

    if (Unk_021C07CC->unk_6AD == 0) {
        param0[1] = 0x0;
    } else {
        param0[1] = 0x1;
    }

    {
        u16 v1 = sub_020318EC();

        param0[2] = v1 >> 8;
        param0[3] = v1 & 0xff;

        {
            UnkStruct_0203233C v2;

            v2.unk_04 = 192 - 5;
            v2.unk_00 = &param0[5];

            if (sub_02032574(&Unk_021C07CC->unk_5A0, &v2, 0)) {
                Unk_021C07CC->unk_6AD = 0;
                param0[4] = (192 - 5) - v2.unk_04;
            } else {
                Unk_021C07CC->unk_6AD = 1;
                param0[4] = 192 - 5;
            }
        }
    }
}

void sub_02035938 (u8 param0)
{
    Unk_021C07CC->unk_6B4 = param0;
}

static BOOL sub_0203594C (void)
{
    if (Unk_021C07CC->unk_6B4 == 0) {
        return 0;
    }

    if ((Unk_021C07CC->unk_6B5 % Unk_021C07CC->unk_6B4) == 0) {
        return 1;
    }

    return 0;
}

BOOL sub_0203597C (int param0, const void * param1, int param2)
{
    if (!sub_02035D78(sub_0203608C()) && !sub_02036180()) {
        return 0;
    }

    if (sub_02032498(&Unk_021C07CC->unk_580, param0, (u8 *)param1, param2, 1, 0)) {
        return 1;
    }

    if (sub_0203895C() == 10) {
        sub_020363BC();
    }

    return 0;
}

BOOL sub_020359DC (int param0, const void * param1, int param2)
{
    if (!sub_02035D78(sub_0203608C()) && !sub_02036180()) {
        return 0;
    }

    if (sub_02032498(&Unk_021C07CC->unk_580, param0, (u8 *)param1, param2, 1, 1)) {
        return 1;
    }

    if (sub_0203895C() == 10) {
        sub_020363BC();
    }

    return 0;
}

BOOL sub_02035A3C (int param0, const void * param1, int param2)
{
    if (sub_0203608C() != 0) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (!sub_02035D78(0) && !sub_02036180()) {
        return 0;
    }

    if (sub_02034890() == 1) {
        return sub_0203597C(param0, param1, param2);
    }

    if (sub_02032498(&Unk_021C07CC->unk_5A0, param0, (u8 *)param1, param2, 1, 0)) {
        return 1;
    }

    if (sub_0203895C() == 10) {
        sub_020363BC();
    }

    return 0;
}

BOOL sub_02035AC4 (int param0, const void * param1, int param2)
{
    if (sub_0203608C() != 0) {
        sub_020363BC();

        return 0;
    }

    if (!sub_02035D78(0) && !sub_02036180()) {
        return 0;
    }

    if (sub_02034890() == 1) {
        return sub_020359DC(param0, param1, param2);
    }

    if (sub_02032498(&Unk_021C07CC->unk_5A0, param0, (u8 *)param1, param2, 1, 1)) {
        return 1;
    }

    if (sub_0203895C() == 10) {
        sub_020363BC();
    }

    return 0;
}

BOOL sub_02035B48 (int param0, const void * param1)
{
    return sub_02035AC4(param0, param1, 0);
}

int sub_02035B54 (void)
{
    return sub_0203228C(&Unk_021C07CC->unk_498);
}

static void sub_02035B6C (int param0, int param1, int param2, void * param3, UnkStruct_02035B6C * param4)
{
    sub_020327FC(param0, param1, param2, param3);
    param4->unk_0A = 0xee;
    param4->unk_08 = 0xffff;
    param4->unk_04 = NULL;
    param4->unk_00 = 0;
}

static void sub_02035B88 (UnkStruct_02032188 * param0, int param1, u8 * param2, UnkStruct_02035B6C * param3)
{
    int v0;
    u8 v1;
    int v2;
    int v3;

    while (sub_0203226C(param0) != 0) {
        v2 = param0->unk_04;

        if (param3->unk_0A != 0xee) {
            v1 = param3->unk_0A;
        } else {
            v1 = sub_02032210(param0);

            if (v1 == 0xee) {
                continue;
            }
        }

        v2 = param0->unk_04;
        param3->unk_0A = v1;

        if (param3->unk_08 != 0xffff) {
            v0 = param3->unk_08;
        } else {
            v0 = sub_02032868(v1);

            if (Unk_021C07CC->unk_6B1) {
                return;
            }

            if (0xffff == v0) {
                if (sub_0203226C(param0) < 1) {
                    param0->unk_04 = v2;
                    break;
                }

                v0 = sub_02032210(param0) * 0x100;
                v0 += sub_02032210(param0);
                v2 = param0->unk_04;
            }

            param3->unk_08 = v0;
        }

        if (sub_020328D0(v1)) {
            if (param3->unk_04 == NULL) {
                param3->unk_04 = sub_0203290C(v1, param1, param3->unk_08);
            }

            v3 = sub_020321F4(param0, param2, v0 - param3->unk_00);

            if (param3->unk_04) {
                MI_CpuCopy8(param2, &param3->unk_04[param3->unk_00], v3);
            }

            param3->unk_00 += v3;

            if (param3->unk_00 >= v0) {
                sub_02035B6C(param1, v1, v0, param3->unk_04, param3);

                if (v1 == 17) {
                    break;
                }
            }
        } else {
            if (sub_0203226C(param0) >= v0) {
                sub_020321F4(param0, param2, v0);
                sub_02035B6C(param1, v1, v0, (void *)param2, param3);

                if (v1 == 17) {
                    break;
                }
            } else {
                param0->unk_04 = v2;
                break;
            }
        }
    }
}

static void sub_02035CA8 (void)
{
    int v0 = 0;
    int v1;
    u8 v2;
    int v3;

    if (!Unk_021C07CC) {
        return;
    }

    if (Unk_021C07CC->unk_6B3) {
        return;
    }

    sub_020322D0(&Unk_021C07CC->unk_4A4);

    if (sub_0203226C(&Unk_021C07CC->unk_4A4) > 0) {
        sub_02035B88(&Unk_021C07CC->unk_4A4, v0, Unk_021C07CC->unk_494, &Unk_021C07CC->unk_618);
    }
}

static void sub_02035CF8 (void)
{
    int v0;
    int v1;
    u8 v2;
    int v3;

    if (!Unk_021C07CC) {
        return;
    }

    if (Unk_021C07CC->unk_6B3) {
        return;
    }

    v3 = sub_0203266C(sub_0203895C()) + 1;

    for (v0 = 0; v0 < v3; v0++) {
        sub_020322D0(&Unk_021C07CC->unk_51C[v0]);

        if (sub_0203226C(&Unk_021C07CC->unk_51C[v0]) > 0) {
            sub_02035B88(&Unk_021C07CC->unk_51C[v0], v0, Unk_021C07CC->unk_494, &Unk_021C07CC->unk_5C0[v0]);
        }
    }
}

BOOL sub_02035D78 (u16 param0)
{
    if (!Unk_021C07CC) {
        return 0;
    }

    if (sub_020326EC(sub_0203895C())) {
        if (Unk_021C07CC->unk_6AF) {
            u16 v0 = DWC_GetAIDBitmap();

            if (v0 & (1 << param0)) {
                return 1;
            }
        }

        return 0;
    }

    if (!sub_02035E38()) {
        return 0;
    }

    if (sub_02031934() != 4) {
        return 0;
    }

    if (sub_0203608C() == param0) {
        return 1;
    } else if (sub_0203608C() == 0) {
        u16 v1 = sub_020318EC();

        if (v1 & (1 << param0)) {
            return 1;
        }
    } else if (Unk_021C07CC->unk_68C & (1 << param0)) {
        return 1;
    }

    return 0;
}

int sub_02035E18 (void)
{
    int v0 = 0, i;

    for (i = 0; i < (7 + 1); i++) {
        if (sub_02035D78(i)) {
            v0++;
        }
    }

    return v0;
}

BOOL sub_02035E38 (void)
{
    if (Unk_021C07CC) {
        if (sub_020326EC(sub_0203895C())) {
            return 1;
        }
    }

    return sub_02033E1C();
}

void sub_02035E5C (u8 param0)
{
    Unk_021C07CC->unk_657 = param0;
}

u8 sub_02035E70 (int param0)
{
    return Unk_021C07CC->unk_64C[param0];
}

u16 sub_02035E84 (int param0)
{
    int v0;

    if (!Unk_021C07CC) {
        return 0;
    }

    v0 = Unk_021C07CC->unk_63C[param0];
    Unk_021C07CC->unk_63C[param0] = 0;

    return v0;
}

void sub_02035EA8 (void)
{
    if (Unk_021C07CC) {
        Unk_021C07CC->unk_654 |= 0x8000;
    }
}

void sub_02035EC8 (void)
{
    if (Unk_021C07CC) {
        Unk_021C07CC->unk_654 = 0;
    }
}

BOOL sub_02035EE0 (void)
{
    if (Unk_021C07CC) {
        return Unk_021C07CC->unk_654 & 0x8000;
    }

    return 1;
}

BOOL sub_02035F00 (int param0, const void * param1, int param2)
{
    if (sub_02034890() == 1) {
        return sub_02032498(&Unk_021C07CC->unk_580, param0, (u8 *)param1, param2, 1, 0);
    } else {
        return sub_02032498(&Unk_021C07CC->unk_5A0, param0, (u8 *)param1, param2, 1, 0);
    }
}

BOOL sub_02035F58 (int param0, const void * param1, int param2)
{
    return sub_02032498(&Unk_021C07CC->unk_580, param0, (u8 *)param1, param2, 0, 0);
}

static void sub_02035F84 (void)
{
    BOOL v0 = 0;

    if (!Unk_021C07CC) {
        return;
    }

    switch (Unk_021C07CC->unk_6A3) {
    case 1:
        if (sub_02034890() == 1) {
            v0 = sub_020360D0(11, &Unk_021C07CC->unk_6A4);
        } else {
            v0 = sub_02035AC4(11, &Unk_021C07CC->unk_6A4, 1);
        }

        if (v0) {
            Unk_021C07CC->unk_6A3 = 2;
        }
        break;
    case 3:
        if (sub_020360D0(12, &Unk_021C07CC->unk_6A4)) {
            sub_02034848(Unk_021C07CC->unk_6A4);
            Unk_021C07CC->unk_6A3 = 0;
        }
        break;
    }
}

void sub_02036008 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    int v1;

    if (sub_0203608C() != 0) {
        return;
    }

    Unk_021C07CC->unk_6A3 = 1;
    Unk_021C07CC->unk_6A4 = v0[0];
}

void sub_02036030 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    int v1;

    if (sub_0203608C() == 0) {
        return;
    }

    Unk_021C07CC->unk_6A4 = v0[0];
    Unk_021C07CC->unk_6A3 = 3;
}

void sub_02036058 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    int v1;

    if (sub_0203608C() != 0) {
        return;
    }

    if (Unk_021C07CC->unk_6A3 == 2) {
        sub_02034848(v0[0]);
        Unk_021C07CC->unk_6A3 = 0;
    }
}

u16 sub_0203608C (void)
{
    if (Unk_021C07CC) {
        if (sub_020326EC(sub_0203895C())) {
            int v0 = ov4_021D1E30();

            if (v0 != -1) {
                return v0;
            }
        } else if (sub_02036180()) {
            return 0;
        } else {
            return sub_02031F90();
        }
    }

    return 0;
}

BOOL sub_020360D0 (int param0, const void * param1)
{
    return sub_020359DC(param0, param1, 0);
}

BOOL sub_020360DC (int param0)
{
    return sub_020359DC(param0, NULL, 0);
}

BOOL sub_020360E8 (void)
{
    return sub_02033E48();
}

BOOL sub_020360F0 (void)
{
    if (sub_02036180()) {
        return 0;
    }

    if (Unk_021C07CC) {
        if (Unk_021C07CC->unk_6B1) {
            sub_020388F4(1, 1);
            return 1;
        }
    }

    return sub_02033E84();
}

u16 sub_02036128 (u16 param0)
{
    if (sub_0203266C(param0) >= 5) {
        return 12;
    }

    if (sub_02034890() == 0) {
        return 12;
    }

    return 38;
}

int sub_02036148 (int param0)
{
    return sub_0203266C(param0) + 1;
}

int sub_02036158 (int param0)
{
    return sub_02032698(param0) + 1;
}

void sub_02036168 (BOOL param0)
{
    if (Unk_021C07CC) {
        Unk_021C07CC->unk_6AE = param0;
    }
}

BOOL sub_02036180 (void)
{
    if (Unk_021C07CC) {
        return Unk_021C07CC->unk_6AE;
    }

    return 0;
}

void sub_0203619C (int param0, int param1, void * param2, void * param3)
{
    u8 v0;

    if (!sub_0203406C()) {
        if (sub_0203608C() == 0) {
            sub_02035B48(2, &v0);
        }
    }

    sub_0203408C();
}

void sub_020361BC (MATHRandContext32 * param0)
{
    u64 v0 = 0;
    RTCDate v1;
    RTCTime v2;

    sub_0201384C(&v1, &v2);
    v0 = (((((((u64)v1.year * 16ULL + v1.month) * 32ULL) + v1.day) * 32ULL + v2.hour) * 64ULL + v2.minute) * 64ULL + (v2.second + Unk_021BF67C.unk_2C));
    MATH_InitRand32(param0, v0);
}

BOOL sub_02036254 (int param0)
{
    return sub_02032644(&Unk_021C07CC->unk_5A0, param0);
}

BOOL sub_0203626C (int param0)
{
    return sub_02032644(&Unk_021C07CC->unk_580, param0);
}

BOOL sub_02036284 (void)
{
    return sub_020322F8(&Unk_021C07CC->unk_5A0);
}

BOOL sub_0203629C (void)
{
    return sub_020322F8(&Unk_021C07CC->unk_580);
}

void sub_020362B4 (BOOL param0)
{
    Unk_021C07CC->unk_6AF = param0;
}

BOOL sub_020362C8 (void)
{
    return Unk_021C07CC->unk_6AF;
}

void sub_020362DC (int param0, int param1)
{
    if (Unk_021C07CC) {
        Unk_021C07CC->unk_69F[param1] = param0;
    }
}

int sub_020362F4 (int param0)
{
    if (Unk_021C07CC) {
        if (Unk_021C07CC->unk_69F[param0] != 0xff) {
            return Unk_021C07CC->unk_69F[param0];
        }
    }

    return param0;
}

BOOL sub_02036314 (void)
{
    if (!sub_020326EC(sub_0203895C())) {
        return 0;
    }

    return ov4_021D254C();
}

void sub_0203632C (BOOL param0)
{
    int v0;

    if (sub_020326EC(sub_0203895C())) {
        if (Unk_021C07CC->unk_65C == param0) {
            return;
        }

        Unk_021C07CC->unk_65C = param0;

        if (param0) {
            Unk_021C07CC->unk_660 = 0;

            for (v0 = 0; v0 < (7 + 1); v0++) {
                Unk_021C07CC->unk_664[v0] = 0;
            }
        }
    }
}

void sub_02036378 (BOOL param0)
{
    sub_0203632C(param0);

    if (sub_020326EC(sub_0203895C())) {
        if (param0) {
            ov4_021D2598(0);
        } else {
            ov4_021D2598(1);
        }
    }
}

BOOL sub_020363A0 (void)
{
    if (Unk_021C07CC->unk_6A9) {
        return 1;
    }

    return 0;
}

void sub_020363BC (void)
{
    Unk_021C07CC->unk_6B1 = 1;
}

void sub_020363D0 (void)
{
    if (Unk_021C07CC) {
        Unk_021C07CC->unk_6B2 = 1;
    }
}
