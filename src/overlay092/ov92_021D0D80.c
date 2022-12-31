#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_020279FC.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay092/struct_ov92_021D28C0.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02002328.h"
#include "unk_02002B7C.h"
#include "unk_02005474.h"
#include "unk_020067E8.h"
#include "unk_020068C8.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02017728.h"
#include "unk_02017E74.h"
#include "unk_02018340.h"
#include "unk_0201C970.h"
#include "unk_0201D15C.h"
#include "unk_0201D670.h"
#include "unk_0201FE94.h"
#include "unk_02020020.h"
#include "unk_02023790.h"
#include "unk_0202419C.h"
#include "unk_02025E08.h"
#include "unk_020279FC.h"
#include "unk_0202C858.h"
#include "unk_020996D0.h"
#include "overlay092/ov92_021D0D80.h"

typedef struct UnkStruct_ov92_021D1530_t {
    u16 unk_00;
    s16 unk_02;
    s16 unk_04;
} UnkStruct_ov92_021D1530;

typedef struct UnkStruct_ov69_0225C980_t {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov69_0225C980;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    MtxFx33 unk_04;
    u16 unk_28;
    u16 unk_2A;
    u16 unk_2C;
} UnkStruct_ov92_021D1B24_sub1_sub1;

typedef struct {
    u32 unk_00;
    UnkStruct_ov92_021D1B24_sub1_sub1 unk_04[1024];
} UnkStruct_ov92_021D1B24_sub1;

typedef struct {
    int unk_00;
    UnkStruct_0202C878 * unk_04;
    UnkStruct_020279FC * unk_08;
    UnkStruct_ov92_021D1B24_sub1 unk_0C;
    UnkStruct_02018340 * unk_B810;
    UnkStruct_0205AA50 unk_B814;
    UnkStruct_0205AA50 unk_B824;
    UnkStruct_0205AA50 unk_B834;
    UnkStruct_0205AA50 unk_B844;
    UnkStruct_0200112C * unk_B854;
    UnkStruct_02013A04 * unk_B858;
    UnkStruct_02001AF4 * unk_B85C;
    UnkStruct_0200B144 * unk_B860;
    int unk_B864;
    int unk_B868;
    UnkStruct_02023790 * unk_B86C;
    UnkStruct_0200B358 * unk_B870;
    NNSG3dRenderObj unk_B874;
    NNSG3dResMdl * unk_B8C8;
    NNSG3dResFileHeader * unk_B8CC;
    NNSG3dRenderObj unk_B8D0[5];
    NNSG3dResMdl * unk_BA74[5];
    NNSG3dResFileHeader * unk_BA88[5];
    VecFx32 unk_BA9C;
    VecFx32 unk_BAA8;
    VecFx32 unk_BAB4;
    VecFx32 unk_BAC0;
    UnkStruct_020203AC * unk_BACC;
    UnkStruct_ov115_0226527C unk_BAD0;
    u16 unk_BAD8;
    VecFx32 unk_BADC;
    int unk_BAE8;
    BOOL unk_BAEC;
    BOOL unk_BAF0;
    u16 unk_BAF4;
    u16 unk_BAF6;
    int unk_BAF8;
    int unk_BAFC;
    int unk_BB00;
    int unk_BB04;
    int unk_BB08;
    int unk_BB0C;
    int unk_BB10;
    int unk_BB14;
    int unk_BB18;
    int unk_BB1C;
    int unk_BB20;
    BOOL unk_BB24;
    int unk_BB28;
} UnkStruct_ov92_021D1B24;

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov92_021D2958;

BOOL ov92_021D27E8(int param0, int param1, UnkStruct_02023790 * param2, UnkStruct_02023790 * param3, int param4);
BOOL ov92_021D2854(int param0);
int ov92_021D0D80(UnkStruct_020067E8 * param0, int * param1);
int ov92_021D0EB8(UnkStruct_020067E8 * param0, int * param1);
int ov92_021D1478(UnkStruct_020067E8 * param0, int * param1);
static void ov92_021D14F0(void);
static void ov92_021D1510(void);
static void ov92_021D1888(UnkStruct_ov92_021D1B24 * param0, UnkStruct_02006C24 * param1);
static void ov92_021D1B24(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D1530(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D1634(UnkStruct_ov92_021D1B24 * param0, u32 param1, s16 param2, s16 param3, u16 param4, u16 param5);
static void ov92_021D16A8(UnkStruct_ov92_021D1B24 * param0);
static int  ov92_021D16F8(int param0);
static void ov92_021D1700(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D1818(int param0, int param1, int * param2, int * param3, int * param4, int * param5);
static BOOL ov92_021D1B70(UnkStruct_ov92_021D1B24 * param0, u32 param1, int param2);
static void ov92_021D1C4C(UnkStruct_ov92_021D1B24 * param0, UnkStruct_0205AA50 * param1, const UnkStruct_ov61_0222C884 * param2, const UnkStruct_ov84_02240FA8 * param3, const UnkStruct_ov92_021D2958 * param4);
static void ov92_021D1CF4(UnkStruct_ov92_021D1B24 * param0, UnkStruct_0205AA50 * param1, const UnkStruct_ov61_0222C884 * param2, const UnkStruct_ov84_02240FA8 * param3, u32 param4, const u8 * param5, u32 param6);
static void ov92_021D1DB4(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D1DEC(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D1EBC(UnkStruct_ov92_021D1B24 * param0, int param1, int param2);
static void ov92_021D1F74(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D1F90(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D2150(UnkStruct_ov92_021D1B24 * param0, UnkStruct_02006C24 * param1);
static void ov92_021D2210(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D2254(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D22B0(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D2334(UnkStruct_ov92_021D1B24 * param0);
static BOOL ov92_021D2460(UnkStruct_ov92_021D1B24 * param0, int param1, int param2);
static BOOL ov92_021D2644(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D26D0(UnkStruct_ov92_021D1B24 * param0);
static void ov92_021D2370(MtxFx33 * param0, VecFx32 * param1);
static void ov92_021D23E8(MtxFx33 * param0, VecFx32 * param1);
static void ov92_021D2868(UnkStruct_ov92_021D28C0 * param0);
static u32 ov92_021D28C0(const UnkStruct_ov92_021D28C0 * param0, const UnkStruct_ov92_021D28C0 * param1);
void sub_02000EC4(FSOverlayID param0, const UnkStruct_0208BE5C * param1);

static const UnkStruct_ov97_0222DB78 Unk_ov92_021D2970 = {
    0x0,
    0x0,
    0x800,
    0x0,
    0x1,
    GX_BG_COLORMODE_16,
    GX_BG_SCRBASE_0x7000,
    GX_BG_CHARBASE_0x00000,
    GX_BG_EXTPLTT_01,
    0x0,
    0x0,
    0x0,
    0x0
};

static const UnkStruct_ov97_0222DB78 Unk_ov92_021D298C = {
    0x0,
    0x0,
    0x800,
    0x0,
    0x1,
    GX_BG_COLORMODE_16,
    GX_BG_SCRBASE_0x7800,
    GX_BG_CHARBASE_0x04000,
    GX_BG_EXTPLTT_01,
    0x3,
    0x0,
    0x0,
    0x0
};

static const UnkStruct_ov61_0222C884 Unk_ov92_021D2934 = {
    0x6,
    0x2,
    0x13,
    0x1B,
    0x4,
    0x4,
    0x16D
};

static const UnkStruct_ov61_0222C884 Unk_ov92_021D292C = {
    0x6,
    0x19,
    0xD,
    0x6,
    0x4,
    0x4,
    0x155
};

static const UnkStruct_ov61_0222C884 Unk_ov92_021D290C = {
    0x6,
    0x13,
    0xB,
    0xC,
    0x6,
    0x4,
    0x125
};

static const UnkStruct_ov61_0222C884 Unk_ov92_021D2914 = {
    0x6,
    0x3,
    0x2,
    0x1A,
    0xE,
    0x4,
    0x1
};

static const UnkStruct_ov61_0222C884 Unk_ov92_021D291C = {
    0x6,
    0x2,
    0x1,
    0x1B,
    0x6,
    0x4,
    0xB3
};

static const UnkStruct_ov61_0222C884 Unk_ov92_021D2924 = {
    0x2,
    0x19,
    0x15,
    0x6,
    0x2,
    0x4,
    0x1CD
};

static const UnkStruct_ov92_021D2958 Unk_ov92_021D2958[] = {
    {0xA, 0x0},
    {0xB, 0x1},
    {0xC, 0x2}
};

static const UnkStruct_ov84_02240FA8 Unk_ov92_021D29A8 = {
    NULL,
    NULL,
    NULL,
    NULL,
    NELEMS(Unk_ov92_021D2958),
    NELEMS(Unk_ov92_021D2958),
    0x0,
    0xC,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0
};

static const UnkStruct_ov84_02240FA8 Unk_ov92_021D29C8 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x7,
    0x0,
    0xC,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x0
};

int ov92_021D0D80 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov92_021D1B24 * v0;
    int v1 = 50;

    sub_02017798(NULL, NULL);
    sub_020177BC(NULL, NULL);
    sub_0201FF00();
    sub_0201FF68();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    sub_02017FC8(3, v1, 0x80000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov92_021D1B24), v1);
    memset(v0, 0, sizeof(UnkStruct_ov92_021D1B24));
    v0->unk_00 = v1;

    if (Unk_020E4C44 == 1) {
        v0->unk_BAF0 = 1;
    } else {
        v0->unk_BAF0 = 0;
    }

    {
        UnkStruct_021C0794 * v2 = sub_02006840(param0);

        v0->unk_04 = sub_0202C878(v2);
        v0->unk_BB14 = sub_0202C8C0(v0->unk_04);
        v0->unk_BB18 = sub_0202C8C4(v0->unk_04);
        v0->unk_BB24 = sub_0202C990(v0->unk_04);
        v0->unk_08 = sub_02025E44(v2);
    }

    ov92_021D14F0();
    ov92_021D1510();
    sub_0201CAF4(v0->unk_00);

    v0->unk_B810 = sub_02018340(v0->unk_00);

    sub_0201FFD0();
    sub_0201D710();

    v0->unk_B870 = sub_0200B368(8, 64, v0->unk_00);
    v0->unk_BACC = sub_020203AC(v0->unk_00);
    v0->unk_BAE8 = 0;

    Unk_021BF67C.unk_65 = 1;

    sub_0201FFE8();
    sub_02017DD4(4, 8);
    sub_02002AC8(1);
    sub_02002AE4(0);
    sub_02002B20(0);

    ov92_021D1530(v0);

    return 1;
}

int ov92_021D0EB8 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov92_021D1B24 * v0 = sub_0200682C(param0);
    int v1 = 0;
    UnkStruct_02006C24 * v2;

    switch (*param1) {
    case 0:
        v0->unk_B860 = sub_0200B144(1, 26, 356, v0->unk_00);
        v2 = sub_02006C24(129, v0->unk_00);

        ov92_021D2150(v0, v2);
        ov92_021D1888(v0, v2);
        sub_02006CA8(v2);

        v0->unk_BAEC = 0;

        sub_0200F174(0, 1, 1, 0x0, 6, 1, v0->unk_00);
        sub_0201FF0C(GX_PLANEMASK_BG2, 1);
        sub_0201FF74(GX_PLANEMASK_BG2, 1);
        sub_0201FF0C(GX_PLANEMASK_BG3, 1);
        sub_0201FF74(GX_PLANEMASK_BG3, 1);
        *param1 = 1;
        break;
    case 1:
        if (sub_0200F2AC() == 1) {
            *param1 = 2;
        }
        break;
    case 2:
        if (ov92_021D1B70(v0, 0, 1) == 1) {
            if (v0->unk_BB14 == 0) {
                *param1 = 3;
            } else {
                *param1 = 14;
            }
        }
        break;
    case 3:
        if (ov92_021D1B70(v0, 1, 1) == 1) {
            ov92_021D1C4C(v0, &v0->unk_B824, &Unk_ov92_021D290C, &Unk_ov92_021D29A8, Unk_ov92_021D2958);
            *param1 = 4;
        }
        break;
    case 4:
    {
        int v3 = sub_02001288(v0->unk_B854);

        if (v3 == 0xffffffff) {
            break;
        }

        ov92_021D1DB4(v0);
        sub_02005748(1500);

        switch (v3) {
        default:
        case 0:
            *param1 = 14;
            break;
        case 1:
            *param1 = 5;
            break;
        case 0xfffffffe:
        case 2:
            *param1 = 17;
            break;
        }
    }
    break;
    case 5:
        if (ov92_021D1B70(v0, 2, 1) == 1) {
            v0->unk_B85C = sub_02002100(v0->unk_B810, &Unk_ov92_021D292C, ((512 - ((18 + 12))) - 9), 7, v0->unk_00);
            *param1 = 6;
        }
        break;
    case 6:
    {
        u32 v4 = sub_02002114(v0->unk_B85C, v0->unk_00);

        switch (v4) {
        case 0:
            if (v0->unk_BAF0 == 1) {
                v0->unk_BB1C = 103;
                *param1 = 9;
            } else {
                *param1 = 7;
            }
            break;
        case 0xfffffffe:
            *param1 = 3;
            break;
        }
    }
    break;
    case 7:
        if (ov92_021D1B70(v0, 3, 1) == 1) {
            v0->unk_BB1C = 0;

            ov92_021D1CF4(v0, &v0->unk_B824, &Unk_ov92_021D2914, &Unk_ov92_021D29C8, 694, sub_02099780(0), sub_0209979C(0));
            *param1 = 8;
        }
        break;
    case 8:
    {
        int v5 = sub_02001288(v0->unk_B854);

        if (v5 == 0xffffffff) {
            break;
        }

        ov92_021D1DB4(v0);
        sub_02005748(1500);

        if (v5 != 0xfffffffe) {
            v5 = sub_02099780(0)[v5];
        }

        switch (v5) {
        default:
        {
            v0->unk_BB1C = v5;

            if (ov92_021D2854(v0->unk_BB1C) == 1) {
                *param1 = 9;
            } else {
                v0->unk_BB20 = 0;
                *param1 = 11;
            }
        }
        break;
        case 0xfffffffe:

            *param1 = 3;
            break;
        }
    }
    break;
    case 9:
        if (ov92_021D1B70(v0, 4, 1) == 1) {
            v0->unk_BB20 = 0;

            {
                u32 v6 = sub_020996D4(v0->unk_BB1C);
                ov92_021D1CF4(v0, &v0->unk_B824, &Unk_ov92_021D2914, &Unk_ov92_021D29C8, sub_0209972C(v6), sub_02099780(v6), sub_0209979C(v6));
            }
            *param1 = 10;
        }
        break;
    case 10:
    {
        int v7 = sub_02001288(v0->unk_B854);

        if (v7 == 0xffffffff) {
            break;
        }

        ov92_021D1DB4(v0);
        sub_02005748(1500);

        if (v7 != 0xfffffffe) {
            u32 v8 = sub_020996D4(v0->unk_BB1C);
            v7 = sub_02099780(v8)[v7];
        }

        switch (v7) {
        default:
            v0->unk_BB20 = v7;
            *param1 = 11;
            break;
        case 0xfffffffe:
            if (v0->unk_BAF0 == 1) {
                *param1 = 3;
            } else {
                *param1 = 7;
            }
        }
    }
    break;
    case 11:
        ov92_021D1EBC(v0, v0->unk_BB1C, v0->unk_BB20);
        *param1 = 12;
        break;
    case 12:
        if (ov92_021D1B70(v0, 5, 1) == 1) {
            v0->unk_B85C = sub_02002100(v0->unk_B810, &Unk_ov92_021D292C, ((512 - ((18 + 12))) - 9), 7, v0->unk_00);
            *param1 = 13;
        }
        break;
    case 13:
    {
        u32 v9 = sub_02002114(v0->unk_B85C, v0->unk_00);

        switch (v9) {
        case 0:
            ov92_021D1F74(v0);
            sub_0202C88C(v0->unk_04, v0->unk_BB1C, v0->unk_BB20);

            v0->unk_BB14 = v0->unk_BB1C;
            v0->unk_BB18 = v0->unk_BB20;
            *param1 = 14;
            break;
        case 0xfffffffe:
            ov92_021D1F74(v0);
            *param1 = 3;
            break;
        }
    }
    break;
    case 14:
        if ((v0->unk_BAF0 == 1) && (v0->unk_BB24 == 0)) {
            v0->unk_BAF4 = 0;
        } else {
            v0->unk_BAF4 = 1;
        }

        ov92_021D2254(v0);
        ov92_021D16A8(v0);
        ov92_021D22B0(v0);
        ov92_021D2334(v0);

        sub_0201AE78(&v0->unk_B814, 15, 0, 0, 27 * 8, 4 * 8);
        sub_0200DC48(&v0->unk_B834, 0, ((512 - ((18 + 12))) - 9), 7);

        if (v0->unk_BB14 != 0) {
            ov92_021D1DEC(v0);
        }

        ov92_021D1F90(v0);

        v0->unk_BB28 = 0;
        v0->unk_BAE8 = 1;
        *param1 = 15;
        break;
    case 15:
    {
        u16 v10 = v0->unk_BAD8;
        ov92_021D1700(v0);

        if ((Unk_021BF67C.unk_48 & PAD_BUTTON_B) || (v0->unk_BAF8 & PAD_BUTTON_B)) {
            sub_0200DC9C(&v0->unk_B834, 0);
            sub_02005748(1501);
            sub_0201AE78(&v0->unk_B814, 15, 0, 0, 27 * 8, 4 * 8);

            if (v0->unk_BB14 == 0) {
                v0->unk_BAE8 = 2;
                *param1 = 3;
            } else {
                ov92_021D1F74(v0);
                *param1 = 17;
            }
        } else {
            if ((Unk_021BF67C.unk_48 & PAD_BUTTON_X) && (v0->unk_BB28 == 0)) {
                v0->unk_BB28 = 1;
                ov92_021D1F90(v0);

                if (v0->unk_BB28 == 1) {
                    sub_02005748(1501);
                }
                break;
            }

            if ((Unk_021BF67C.unk_48 & (PAD_BUTTON_X | PAD_BUTTON_A | PAD_BUTTON_B)) && (v0->unk_BB28 == 1)) {
                v0->unk_BB28 = 0;
                ov92_021D1F90(v0);
                break;
            }

            {
                BOOL v11;

                v11 = ov92_021D2460(v0, Unk_021BF67C.unk_48, Unk_021BF67C.unk_44);

                if ((v11 == 1) && (v0->unk_BB28 == 1)) {
                    v0->unk_BB28 = 0;
                    ov92_021D1F90(v0);
                }
            }

            if (v10 != v0->unk_BAD8) {
                *param1 = 16;

                if (v0->unk_BAD8 == 0) {
                    sub_02005748(1474);
                } else {
                    sub_02005748(1474);
                }
            }
        }
    }
    break;
    case 16:
    {
        BOOL v12 = ov92_021D2644(v0);

        if (v12 == 1) {
            *param1 = 15;
        }
    }
    break;
    case 17:
        v0->unk_BAEC = 0;
        sub_0200F174(0, 0, 0, 0x0, 6, 1, v0->unk_00);
        *param1 = 18;
        break;
    case 18:
        if (sub_0200F2AC() == 1) {
            v0->unk_BAE8 = 1;

            ov92_021D1B24(v0);
            ov92_021D2210(v0);
            sub_0200B190(v0->unk_B860);
            (*param1) = 0;
            v1 = 1;
        }
        break;
    }

    ov92_021D26D0(v0);

    return v1;
}

int ov92_021D1478 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov92_021D1B24 * v0 = sub_0200682C(param0);
    int v1 = v0->unk_00;

    sub_0201FF0C(GX_PLANEMASK_BG2, 0);
    sub_0201FF74(GX_PLANEMASK_BG2, 0);
    sub_0201FF0C(GX_PLANEMASK_BG3, 0);
    sub_0201FF74(GX_PLANEMASK_BG3, 0);
    sub_020203B8(v0->unk_BACC);
    sub_0200B3F0(v0->unk_B870);
    sub_0201CBA0();
    sub_020181C4(v0->unk_B810);
    sub_02017798(NULL, NULL);
    sub_02006830(param0);
    sub_0201807C(v1);

    Unk_021BF67C.unk_65 = 0;

    return 1;
}

static void ov92_021D14F0 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_16_F,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0123_E
    };

    sub_0201FE94(&v0);
}

static void ov92_021D1510 (void)
{
    UnkStruct_ov84_0223BA5C v0 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };

    sub_02018368(&v0);
}

static void ov92_021D1530 (UnkStruct_ov92_021D1B24 * param0)
{
    UnkStruct_02006C24 * v0 = sub_02006C24(102, param0->unk_00);

    param0->unk_0C.unk_00 = 0;

    {
        void * v1;
        UnkStruct_ov92_021D1530 * v2;
        u32 v3;
        int v4, v5;

        v1 = sub_02007250(v0, 18, 0, param0->unk_00, 0, &v3);
        v2 = (UnkStruct_ov92_021D1530 *)v1;
        v5 = v3 / 6;

        v2++;

        for (v4 = 1; v4 < v5; v4++) {
            if (v2->unk_00 != 2) {
                ov92_021D1634(param0, param0->unk_0C.unk_00, v2->unk_02, v2->unk_04, v4, 0);
                param0->unk_0C.unk_00++;
            }

            v2++;
        }

        sub_020181C4(v1);
    }
    {
        void * v6;
        UnkStruct_ov69_0225C980 * v7;
        u32 v8, v9;
        int v10, v11, v12, v13;

        v12 = 1;
        v11 = sub_020996D0();

        while (v12 < v11) {
            v9 = sub_02099764(v12);
            v6 = sub_02007250(v0, v9, 0, param0->unk_00, 0, &v8);
            v7 = (UnkStruct_ov69_0225C980 *)v6;
            v13 = v8 / 4;

            v7++;

            for (v10 = 1; v10 < v13; v10++) {
                ov92_021D1634(param0, param0->unk_0C.unk_00, v7->unk_00, v7->unk_02, sub_02099748(v12), v10);
                param0->unk_0C.unk_00++;
                v7++;
            }

            sub_020181C4(v6);
            v12++;
        }
    }

    sub_02006CA8(v0);
}

static void ov92_021D1634 (UnkStruct_ov92_021D1B24 * param0, u32 param1, s16 param2, s16 param3, u16 param4, u16 param5)
{
    MtxFx33 v0 = {FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE};
    VecFx32 v1;

    param0->unk_0C.unk_04[param1].unk_00 = param2;
    param0->unk_0C.unk_04[param1].unk_02 = param3;

    v1.x = param2;
    v1.y = param3;
    v1.z = 0;

    ov92_021D23E8(&v0, &v1);

    param0->unk_0C.unk_04[param1].unk_04 = v0;
    param0->unk_0C.unk_04[param1].unk_28 = sub_0202C8C8(param0->unk_04, param4, param5);
    param0->unk_0C.unk_04[param1].unk_2A = param4;
    param0->unk_0C.unk_04[param1].unk_2C = param5;
}

static void ov92_021D16A8 (UnkStruct_ov92_021D1B24 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_0C.unk_00; v0++) {
        if ((param0->unk_0C.unk_04[v0].unk_2A == param0->unk_BB14) && (param0->unk_0C.unk_04[v0].unk_2C == param0->unk_BB18)) {
            param0->unk_0C.unk_04[v0].unk_28 = 3;
            param0->unk_BAB4.x = param0->unk_0C.unk_04[v0].unk_00;
            param0->unk_BAB4.y = param0->unk_0C.unk_04[v0].unk_02;
        }
    }
}

static int  ov92_021D16F8 (int param0)
{
    return sub_020996D4(param0);
}

static void ov92_021D1700 (UnkStruct_ov92_021D1B24 * param0)
{
    int v0, v1, v2, v3;

    param0->unk_BAF8 = 0;

    if (Unk_021BF67C.unk_60) {
        if ((Unk_021BF67C.unk_5C >= (25 * 8)) && (Unk_021BF67C.unk_5C <= ((25 + 6) * 8)) && (Unk_021BF67C.unk_5E >= (21 * 8)) && (Unk_021BF67C.unk_5E <= ((21 + 2) * 8))) {
            param0->unk_BAF8 = PAD_BUTTON_B;
            return;
        } else {
            param0->unk_BAFC = 0;
            param0->unk_BB08 = 0;
            param0->unk_BB0C = 0;
            param0->unk_BB10 = 0;
            param0->unk_BAF8 = 0;
            param0->unk_BB00 = Unk_021BF67C.unk_5C;
            param0->unk_BB04 = Unk_021BF67C.unk_5E;
            param0->unk_BB10 = 4;
        }
    }

    if (Unk_021BF67C.unk_62) {
        switch (param0->unk_BAFC) {
        case 0:
            if (!param0->unk_BB10) {
                param0->unk_BAFC++;
            } else {
                param0->unk_BB10--;
            }
        case 1:
            ov92_021D1818(param0->unk_BB00, param0->unk_BB04, &v0, &v1, &v2, &v3);
            param0->unk_BAF8 = v0 | v2;
            param0->unk_BB08 = v1;
            param0->unk_BB0C = v3;
            param0->unk_BB00 = Unk_021BF67C.unk_5C;
            param0->unk_BB04 = Unk_021BF67C.unk_5E;
            break;
        }
    } else {
        if (param0->unk_BB10) {
            param0->unk_BAF8 = PAD_BUTTON_A;
        }

        param0->unk_BAFC = 0;
        param0->unk_BB08 = 0;
        param0->unk_BB0C = 0;
        param0->unk_BB10 = 0;
    }
}

static void ov92_021D1818 (int param0, int param1, int * param2, int * param3, int * param4, int * param5)
{
    int v0 = 0;
    int v1 = 0;
    int v2 = 0;
    int v3 = 0;

    if (Unk_021BF67C.unk_5C != 0xffff) {
        v2 = Unk_021BF67C.unk_5C - param0;

        if (v2 < 0) {
            v2 ^= -1;
            v0 = PAD_KEY_RIGHT;
        } else {
            if (v2 > 0) {
                v0 = PAD_KEY_LEFT;
            }
        }
    }

    v2 &= 0x3f;
    *param2 = v0;
    *param3 = v2;

    if (Unk_021BF67C.unk_5E != 0xffff) {
        v3 = Unk_021BF67C.unk_5E - param1;

        if (v3 < 0) {
            v3 ^= -1;
            v1 = PAD_KEY_DOWN;
        } else {
            if (v3 > 0) {
                v1 = PAD_KEY_UP;
            }
        }
    }

    v3 &= 0x3f;
    *param4 = v1;
    *param5 = v3;
}

static void ov92_021D1888 (UnkStruct_ov92_021D1B24 * param0, UnkStruct_02006C24 * param1)
{
    sub_020183C4(param0->unk_B810, 6, &Unk_ov92_021D2970, 0);
    sub_02019EBC(param0->unk_B810, 6);
    sub_020183C4(param0->unk_B810, 7, &Unk_ov92_021D298C, 0);
    sub_020070E8(param1, 5, param0->unk_B810, 7, 0, 0, 0, param0->unk_00);
    sub_02007130(param1, 6, 4, 0 * (2 * 16), (2 * 16) * 4, param0->unk_00);
    sub_0200710C(param1, 7, param0->unk_B810, 7, 0, 0, 0, param0->unk_00);
    sub_0200DD0C(param0->unk_B810, 6, (512 - ((18 + 12))), 6, sub_02027B50(param0->unk_08), param0->unk_00);
    sub_0200DAA4(param0->unk_B810, 6, ((512 - ((18 + 12))) - 9), 7, 0, param0->unk_00);
    sub_02002E7C(4, 4 * (2 * 16), param0->unk_00);
    sub_02019690(6, 32, 0, param0->unk_00);
    sub_0201975C(6, 0x4753);
    sub_0201A8D4(param0->unk_B810, &param0->unk_B814, &Unk_ov92_021D2934);
    sub_0201AE78(&param0->unk_B814, 15, 0, 0, 27 * 8, 4 * 8);
    sub_0200E060(&param0->unk_B814, 0, (512 - ((18 + 12))), 6);

    param0->unk_B864 = 0;

    sub_020183C4(param0->unk_B810, 2, &Unk_ov92_021D2970, 0);
    sub_02019EBC(param0->unk_B810, 2);
    sub_020183C4(param0->unk_B810, 3, &Unk_ov92_021D298C, 0);
    sub_020070E8(param1, 5, param0->unk_B810, 3, 0, 0, 0, param0->unk_00);
    sub_02007130(param1, 6, 0, 0 * (2 * 16), (2 * 16) * 4, param0->unk_00);
    sub_0200710C(param1, 7, param0->unk_B810, 3, 0, 0, 0, param0->unk_00);
    sub_0200DAA4(param0->unk_B810, 2, ((512 - ((18 + 12))) - 9), 7, 0, param0->unk_00);
    sub_02002E7C(0, 4 * (2 * 16), param0->unk_00);
    sub_02019690(2, 32, 0, param0->unk_00);
    sub_0201975C(2, 0x0);

    {
        UnkStruct_02023790 * v0 = sub_02023790(16, param0->unk_00);
        sub_02002BB8(2, param0->unk_00);

        {
            u16 v1 = 0x4e56;
            u16 v2 = 0x3571;
            u16 v3 = 0x208c;
            u16 v4 = 0x7fff;

            sub_0201972C(2, &v1, 2, 4 * (2 * 16) + 1 * 2);
            sub_0201972C(2, &v2, 2, 4 * (2 * 16) + 2 * 2);
            sub_0201972C(2, &v3, 2, 4 * (2 * 16) + 3 * 2);
            sub_0201972C(2, &v4, 2, 4 * (2 * 16) + 15 * 2);
        }

        sub_0201A8D4(param0->unk_B810, &param0->unk_B834, &Unk_ov92_021D2924);
        sub_0201AE78(&param0->unk_B834, 15, 0, 0, 27 * 8, 4 * 8);
        sub_0200B1B8(param0->unk_B860, 12, v0);

        {
            u32 v5;

            v5 = sub_02002EEC(2, v0, 0, 6 * 8);
            sub_0201D738(&param0->unk_B834, 2, v0, v5, 0, 0xff, NULL);
        }

        sub_020237BC(v0);
        sub_02002C60(2);
    }
}

static void ov92_021D1B24 (UnkStruct_ov92_021D1B24 * param0)
{
    sub_0201A8FC(&param0->unk_B834);
    sub_0201A8FC(&param0->unk_B814);
    sub_02019044(param0->unk_B810, 2);
    sub_02019044(param0->unk_B810, 6);
    sub_02019044(param0->unk_B810, 3);
    sub_02019044(param0->unk_B810, 7);
}

static BOOL ov92_021D1B70 (UnkStruct_ov92_021D1B24 * param0, u32 param1, int param2)
{
    BOOL v0 = 0;

    switch (param0->unk_B864) {
    case 0:
        sub_0201AE78(&param0->unk_B814, 15, 0, 0, 27 * 8, 4 * 8);
        param0->unk_B86C = sub_02023790(0x400, param0->unk_00);
        sub_0200B1B8(param0->unk_B860, param1, param0->unk_B86C);
        param0->unk_B868 = sub_0201D738(&param0->unk_B814, 1, param0->unk_B86C, 0, 0, sub_02027AC0(param0->unk_08), NULL);
        param0->unk_B864 = 1;
        break;
    case 1:
        if (!(sub_0201D724(param0->unk_B868))) {
            sub_020237BC(param0->unk_B86C);
            param0->unk_B864 = 2;
        }
        break;
    case 2:
        if ((param2 != 0) || (Unk_021BF67C.unk_48 & PAD_BUTTON_A)) {
            param0->unk_B864 = 0;
            v0 = 1;
        }
    }

    return v0;
}

static void ov92_021D1C38 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        sub_02005748(1500);
    }
}

static void ov92_021D1C4C (UnkStruct_ov92_021D1B24 * param0, UnkStruct_0205AA50 * param1, const UnkStruct_ov61_0222C884 * param2, const UnkStruct_ov84_02240FA8 * param3, const UnkStruct_ov92_021D2958 * param4)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1;

    sub_0201A8D4(param0->unk_B810, param1, param2);
    param0->unk_B858 = sub_02013A04(param3->unk_10, param0->unk_00);

    for (v1 = 0; v1 < param3->unk_10; v1++) {
        sub_02013A4C(param0->unk_B858, param0->unk_B860, param4[v1].unk_00, param4[v1].unk_04);
    }

    v0 = *param3;
    v0.unk_00 = param0->unk_B858;
    v0.unk_0C = param1;
    v0.unk_04 = ov92_021D1C38;
    param0->unk_B854 = sub_0200112C(&v0, 0, 0, param0->unk_00);

    sub_0200DC48(v0.unk_0C, 1, ((512 - ((18 + 12))) - 9), 7);
    sub_0201A954(param1);
}

static void ov92_021D1CF4 (UnkStruct_ov92_021D1B24 * param0, UnkStruct_0205AA50 * param1, const UnkStruct_ov61_0222C884 * param2, const UnkStruct_ov84_02240FA8 * param3, u32 param4, const u8 * param5, u32 param6)
{
    UnkStruct_ov84_02240FA8 v0;
    UnkStruct_0200B144 * v1;
    int v2;

    sub_0201A8D4(param0->unk_B810, param1, param2);
    v1 = sub_0200B144(0, 26, param4, param0->unk_00);
    param0->unk_B858 = sub_02013A04(param6, param0->unk_00);

    for (v2 = 0; v2 < param6; v2++) {
        sub_02013A4C(param0->unk_B858, v1, param5[v2], v2);
    }

    sub_0200B190(v1);

    v0 = *param3;
    v0.unk_00 = param0->unk_B858;
    v0.unk_10 = param6;
    v0.unk_0C = param1;
    v0.unk_04 = ov92_021D1C38;

    param0->unk_B854 = sub_0200112C(&v0, 0, 0, param0->unk_00);

    sub_0200DC48(v0.unk_0C, 1, ((512 - ((18 + 12))) - 9), 7);
    sub_0201A954(param1);
}

static void ov92_021D1DB4 (UnkStruct_ov92_021D1B24 * param0)
{
    sub_0200DC9C(&param0->unk_B824, 0);
    sub_0201A8FC(&param0->unk_B824);
    sub_02001384(param0->unk_B854, NULL, NULL);
    sub_02013A3C(param0->unk_B858);
}

static void ov92_021D1DEC (UnkStruct_ov92_021D1B24 * param0)
{
    UnkStruct_02023790 * v0 = sub_02023790(0x400, param0->unk_00);
    UnkStruct_02023790 * v1 = sub_02023790(0x400, param0->unk_00);

    sub_0201A8D4(param0->unk_B810, &param0->unk_B844, &Unk_ov92_021D291C);
    sub_0201AE78(&param0->unk_B844, 15, 0, 0, 27 * 8, 6 * 8);
    sub_0200DC48(&param0->unk_B844, 0, ((512 - ((18 + 12))) - 9), 7);

    sub_0200BDD0(param0->unk_B870, 0, param0->unk_BB14);
    sub_0200BE08(param0->unk_B870, 1, param0->unk_BB14, param0->unk_BB18);

    sub_0200B1B8(param0->unk_B860, 13, v1);
    sub_0200C388(param0->unk_B870, v0, v1);

    sub_0201D738(&param0->unk_B844, 0, v0, 0, 0, 0, NULL);

    sub_020237BC(v1);
    sub_020237BC(v0);

    sub_0201A954(&param0->unk_B844);
}

static void ov92_021D1EBC (UnkStruct_ov92_021D1B24 * param0, int param1, int param2)
{
    UnkStruct_02023790 * v0 = sub_02023790(64, param0->unk_00);
    UnkStruct_02023790 * v1 = sub_02023790(64, param0->unk_00);

    sub_0201A8D4(param0->unk_B810, &param0->unk_B844, &Unk_ov92_021D291C);
    sub_0201AE78(&param0->unk_B844, 15, 0, 0, 27 * 8, 6 * 8);
    sub_0200DC48(&param0->unk_B844, 0, ((512 - ((18 + 12))) - 9), 7);

    ov92_021D27E8(param1, param2, v0, v1, param0->unk_00);

    if (param2 != 0) {
        sub_0201D738(&param0->unk_B844, 0, v1, 0, 16, 0xff, NULL);
    }

    sub_0201D738(&param0->unk_B844, 0, v0, 0, 0, 0, NULL);
    sub_020237BC(v1);
    sub_020237BC(v0);
    sub_0201A954(&param0->unk_B844);
}

static void ov92_021D1F74 (UnkStruct_ov92_021D1B24 * param0)
{
    sub_0200DC9C(&param0->unk_B844, 0);
    sub_0201A8FC(&param0->unk_B844);
}

static void ov92_021D1F90 (UnkStruct_ov92_021D1B24 * param0)
{
    if (param0->unk_BB28 == 0) {
        {
            UnkStruct_02023790 * v0 = sub_02023790(0x400, param0->unk_00);

            sub_0201AE78(&param0->unk_B814, 15, 0, 0, 27 * 8, 6 * 8);
            sub_0200B1B8(param0->unk_B860, 14, v0);
            sub_0201D738(&param0->unk_B814, 1, v0, 0, 0, 0, NULL);
            sub_020237BC(v0);
        }
    } else {
        {
            int v1;
            BOOL v2 = 0;
            s16 v3 = (s16)(param0->unk_BAB4.x - 0x80);
            s16 v4 = (s16)(param0->unk_BAB4.x + 0x80);
            s16 v5 = (s16)(param0->unk_BAB4.y - 0x80);
            s16 v6 = (s16)(param0->unk_BAB4.y + 0x80);
            u32 v7 = 0x80 * 2;
            u32 v8 = param0->unk_0C.unk_00;
            u32 v9;
            UnkStruct_ov92_021D28C0 v10, v11;

            v10.unk_00 = param0->unk_BAB4.x;
            v10.unk_04 = param0->unk_BAB4.y;

            ov92_021D2868(&v10);

            for (v1 = 0; v1 < param0->unk_0C.unk_00; v1++) {
                if ((param0->unk_0C.unk_04[v1].unk_00 > v3) && (param0->unk_0C.unk_04[v1].unk_00 < v4) && (param0->unk_0C.unk_04[v1].unk_02 > v5) && (param0->unk_0C.unk_04[v1].unk_02 < v6) && (param0->unk_0C.unk_04[v1].unk_28 != 0)) {
                    v11.unk_00 = param0->unk_0C.unk_04[v1].unk_00;
                    v11.unk_04 = param0->unk_0C.unk_04[v1].unk_02;

                    ov92_021D2868(&v11);

                    v9 = ov92_021D28C0(&v10, &v11);

                    if (v9 < v7) {
                        v7 = v9;
                        v8 = v1;
                    }
                }
            }

            if (v8 != param0->unk_0C.unk_00) {
                UnkStruct_02023790 * v12 = sub_02023790(64, param0->unk_00);
                UnkStruct_02023790 * v13 = sub_02023790(64, param0->unk_00);

                sub_0201AE78(&param0->unk_B814, 15, 0, 0, 27 * 8, 6 * 8);
                ov92_021D27E8(param0->unk_0C.unk_04[v8].unk_2A, param0->unk_0C.unk_04[v8].unk_2C, v12, v13, param0->unk_00);

                if (param0->unk_0C.unk_04[v8].unk_2C != 0) {
                    sub_0201D738(&param0->unk_B814, 1, v13, 0, 16, 0xff, NULL);
                }

                sub_0201D738(&param0->unk_B814, 1, v12, 0, 0, 0, NULL);
                sub_020237BC(v13);
                sub_020237BC(v12);

                param0->unk_BAB4.x = param0->unk_0C.unk_04[v8].unk_00;
                param0->unk_BAB4.y = param0->unk_0C.unk_04[v8].unk_02;

                v2 = 1;
            }

            if (v2 == 0) {
                param0->unk_BB28 = 0;
            }
        }
    }
}

static void ov92_021D2150 (UnkStruct_ov92_021D1B24 * param0, UnkStruct_02006C24 * param1)
{
    param0->unk_B8CC = sub_02006CB8(param1, 0, param0->unk_00);
    sub_0201CA3C(&param0->unk_B874, &param0->unk_B8C8, &param0->unk_B8CC);

    param0->unk_BA88[3] = sub_02006CB8(param1, 1, param0->unk_00);
    sub_0201CA3C(&param0->unk_B8D0[3], &param0->unk_BA74[3], &param0->unk_BA88[3]);

    param0->unk_BA88[4] = sub_02006CB8(param1, 2, param0->unk_00);
    sub_0201CA3C(&param0->unk_B8D0[4], &param0->unk_BA74[4], &param0->unk_BA88[4]);

    param0->unk_BA88[1] = sub_02006CB8(param1, 3, param0->unk_00);
    sub_0201CA3C(&param0->unk_B8D0[1], &param0->unk_BA74[1], &param0->unk_BA88[1]);

    param0->unk_BA88[2] = sub_02006CB8(param1, 4, param0->unk_00);
    sub_0201CA3C(&param0->unk_B8D0[2], &param0->unk_BA74[2], &param0->unk_BA88[2]);
}

static void ov92_021D2210 (UnkStruct_ov92_021D1B24 * param0)
{
    sub_020181C4(param0->unk_BA88[2]);
    sub_020181C4(param0->unk_BA88[1]);
    sub_020181C4(param0->unk_BA88[4]);
    sub_020181C4(param0->unk_BA88[3]);
    sub_020181C4(param0->unk_B8CC);
}

static void ov92_021D2254 (UnkStruct_ov92_021D1B24 * param0)
{
    {
        param0->unk_BA9C.x = 0;
        param0->unk_BA9C.y = 0;
        param0->unk_BA9C.z = 0;
    }
    {
        param0->unk_BAA8.x = (FX32_ONE);
        param0->unk_BAA8.y = (FX32_ONE);
        param0->unk_BAA8.z = (FX32_ONE);
    }
    {
        param0->unk_BAB4.x = 0x1A40;
        param0->unk_BAB4.y = 0x7C00;
        param0->unk_BAB4.z = 0;
    }
    {
        param0->unk_BAC0.x = (FX32_ONE);
        param0->unk_BAC0.y = (FX32_ONE);
        param0->unk_BAC0.z = (FX32_ONE);
    }
}

static void ov92_021D22B0 (UnkStruct_ov92_021D1B24 * param0)
{
    VecFx32 v0 = {0, 0, 0};
    VecFx32 v1 = {0, 0, 0x128000};

    sub_02020784(&v0, &v1, 0x5c1, 0, 0, param0->unk_BACC);
    sub_020206BC(0, (FX32_ONE * 100), param0->unk_BACC);
    sub_02020854(0, param0->unk_BACC);
    sub_020203D4(param0->unk_BACC);

    if (param0->unk_BAF4 == 0) {
        param0->unk_BAD8 = 1;
    } else {
        param0->unk_BAD8 = 0;
    }

    while (TRUE) {
        if (ov92_021D2644(param0) == 1) {
            break;
        }
    }
}

static void ov92_021D2334 (UnkStruct_ov92_021D1B24 * param0)
{
    param0->unk_BADC.x = 0;
    param0->unk_BADC.y = 0;
    param0->unk_BADC.z = (-(FX32_ONE - 1));

    NNS_G3dGlbLightVector(0, param0->unk_BADC.x, param0->unk_BADC.y, param0->unk_BADC.z);
}

static void  ov92_021D2370 (MtxFx33 * param0, VecFx32 * param1)
{
    MtxFx33 v0;

    MTX_RotY33(param0, FX_SinIdx((u16)param1->y), FX_CosIdx((u16)param1->y));
    MTX_RotX33(&v0, FX_SinIdx((u16)param1->x), FX_CosIdx((u16)param1->x));
    MTX_Concat33(param0, &v0, param0);
    MTX_RotZ33(&v0, FX_SinIdx((u16)param1->z), FX_CosIdx((u16)param1->z));
    MTX_Concat33(param0, &v0, param0);
}

static void  ov92_021D23E8 (MtxFx33 * param0, VecFx32 * param1)
{
    MtxFx33 v0;

    MTX_RotY33(param0, FX_SinIdx((u16)param1->x), FX_CosIdx((u16)param1->x));
    MTX_RotX33(&v0, FX_SinIdx((u16) - param1->y), FX_CosIdx((u16) - param1->y));
    MTX_Concat33(param0, &v0, param0);
    MTX_RotZ33(&v0, FX_CosIdx((u16)param1->z), FX_SinIdx((u16)param1->z));
    MTX_Concat33(param0, &v0, param0);
}

static BOOL ov92_021D2460 (UnkStruct_ov92_021D1B24 * param0, int param1, int param2)
{
    u16 v0;
    u16 v1;
    s16 v2;
    s16 v3;
    BOOL v4 = 0;

    v2 = param0->unk_BAB4.x;
    v3 = param0->unk_BAB4.y;

    if ((param1 & PAD_BUTTON_A) || (param0->unk_BAF8 & PAD_BUTTON_A)) {
        if (param0->unk_BAF4 == 1) {
            if (param0->unk_BAD8 == 0) {
                param0->unk_BAD8 = 1;
            } else {
                param0->unk_BAD8 = 0;
            }
        }

        v4 = 1;
        return v4;
    }

    if (param0->unk_BAD8 == 0) {
        if ((param0->unk_BB08) || (param0->unk_BB0C)) {
            v0 = 0x200 / 6 * param0->unk_BB08;
            v1 = 0x200 / 6 * param0->unk_BB0C;
        } else {
            v0 = 0x200;
            v1 = 0x200;
        }
    } else {
        if ((param0->unk_BB08) || (param0->unk_BB0C)) {
            v0 = 0x20 / 3 * param0->unk_BB08;
            v1 = 0x20 / 3 * param0->unk_BB0C;
        } else {
            v0 = 0x20;
            v1 = 0x20;
        }
    }

    if ((param2 & PAD_KEY_LEFT) || (param0->unk_BAF8 & PAD_KEY_LEFT)) {
        if (param0->unk_BAF4 == 1) {
            param0->unk_BAB4.y += v0;
        } else {
            if (v3 < (s16)0xd820) {
                param0->unk_BAB4.y += v0;
            }
        }

        v4 = 1;
    }

    if ((param2 & PAD_KEY_RIGHT) || (param0->unk_BAF8 & PAD_KEY_RIGHT)) {
        if (param0->unk_BAF4 == 1) {
            param0->unk_BAB4.y -= v0;
        } else {
            if (v3 > (s16)0xcc80) {
                param0->unk_BAB4.y -= v0;
            }
        }

        v4 = 1;
    }

    if ((param2 & PAD_KEY_UP) || (param0->unk_BAF8 & PAD_KEY_UP)) {
        if (param0->unk_BAF4 == 1) {
            if ((v2 + v1) < (0x4000 - 0x200)) {
                param0->unk_BAB4.x += v1;
            } else {
                param0->unk_BAB4.x = (0x4000 - 0x200);
            }
        } else {
            if (v2 < (s16)0x2020) {
                param0->unk_BAB4.x += v1;
            }
        }

        v4 = 1;
    }

    if ((param2 & PAD_KEY_DOWN) || (param0->unk_BAF8 & PAD_KEY_DOWN)) {
        if (param0->unk_BAF4 == 1) {
            if ((v2 - v1) > (-0x4000 + 0x200)) {
                param0->unk_BAB4.x -= v1;
            } else {
                param0->unk_BAB4.x = (-0x4000 + 0x200);
            }
        } else {
            if (v2 > (s16)0x1300) {
                param0->unk_BAB4.x -= v1;
            }
        }

        v4 = 1;
    }

    return v4;
}

static BOOL ov92_021D2644 (UnkStruct_ov92_021D1B24 * param0)
{
    fx32 v0 = sub_02020A90(param0->unk_BACC);
    BOOL v1 = 0;

    switch (param0->unk_BAD8) {
    case 1:
        if (v0 > (0x50000 + 0x8000)) {
            v0 -= 0x8000;
            param0->unk_BAC0.x -= 0x80;
            param0->unk_BAC0.y = param0->unk_BAC0.x;
        } else {
            v0 = 0x50000;
            v1 = 1;
        }
        break;
    case 0:
        if (v0 < (0x128000 - 0x8000)) {
            v0 += 0x8000;
            param0->unk_BAC0.x += 0x80;
            param0->unk_BAC0.y = param0->unk_BAC0.x;
        } else {
            v0 = 0x128000;
            v1 = 1;
        }
        break;
    }

    sub_02020A50(v0, param0->unk_BACC);

    return v1;
}

static void ov92_021D26D0 (UnkStruct_ov92_021D1B24 * param0)
{
    MtxFx33 v0 = {FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE};

    switch (param0->unk_BAE8) {
    case 0:
        break;
    case 2:
        sub_020241B4();
        sub_020241BC(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
        param0->unk_BAE8 = 0;
        break;
    case 1:
        sub_020241B4();
        sub_020203EC();

        {
            ov92_021D2370(&v0, &param0->unk_BAB4);
            sub_0201CA74(&param0->unk_B874, &param0->unk_BA9C, &v0, &param0->unk_BAA8);

            {
                MtxFx33 v1 = {FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE};
                sub_0201CA74(&param0->unk_B8D0[4], &param0->unk_BA9C, &v1, &param0->unk_BAC0);
            }

            {
                MtxFx33 v2 = {FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE};
                int v3;

                for (v3 = 0; v3 < param0->unk_0C.unk_00; v3++) {
                    MTX_Concat33(&param0->unk_0C.unk_04[v3].unk_04, &v0, &v2);

                    if (param0->unk_0C.unk_04[v3].unk_28 != 0) {
                        sub_0201CA74(&param0->unk_B8D0[param0->unk_0C.unk_04[v3].unk_28], &param0->unk_BA9C, &v2, &param0->unk_BAC0);
                    }
                }
            }
        }

        sub_020241BC(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
        break;
    }
}

BOOL ov92_021D27E8 (int param0, int param1, UnkStruct_02023790 * param2, UnkStruct_02023790 * param3, int param4)
{
    UnkStruct_0200B144 * v0;
    int v1 = ov92_021D16F8(param0);
    BOOL v2;

    v0 = sub_0200B144(0, 26, 694, param4);

    sub_0200B1B8(v0, param0, param2);
    sub_0200B190(v0);

    if (v1 == 0) {
        v1 = 1;
        param1 = 0;
        v2 = 0;
    } else {
        v2 = 1;
    }

    v0 = sub_0200B144(0, 26, sub_0209972C(v1), param4);

    sub_0200B1B8(v0, param1, param3);
    sub_0200B190(v0);

    return v2;
}

BOOL ov92_021D2854 (int param0)
{
    if (ov92_021D16F8(param0)) {
        return 1;
    } else {
        return 0;
    }
}

static void ov92_021D2868 (UnkStruct_ov92_021D28C0 * param0)
{
    if (param0->unk_00 >= 0) {
        param0->unk_00 = param0->unk_00 % 0xffff;
    } else {
        param0->unk_00 = param0->unk_00 + (0xffff * ((MATH_ABS(param0->unk_00) / 0xffff) + 1));
    }

    if (param0->unk_04 >= 0) {
        param0->unk_04 = param0->unk_04 % 0xffff;
    } else {
        param0->unk_04 = param0->unk_04 + (0xffff * ((MATH_ABS(param0->unk_04) / 0xffff) + 1));
    }
}

static u32 ov92_021D28C0 (const UnkStruct_ov92_021D28C0 * param0, const UnkStruct_ov92_021D28C0 * param1)
{
    s32 v0, v1;
    u32 v2;

    v0 = MATH_ABS(param0->unk_00 - param1->unk_00);
    v1 = MATH_ABS(param0->unk_04 - param1->unk_04);

    if (v0 > sub_0201D278(180)) {
        v0 = 0xffff - v0;
    }

    if (v1 > sub_0201D278(180)) {
        v1 = 0xffff - v1;
    }

    v2 = FX_Sqrt(((v0 * v0) + (v1 * v1)) << FX32_SHIFT) >> FX32_SHIFT;

    return v2;
}
