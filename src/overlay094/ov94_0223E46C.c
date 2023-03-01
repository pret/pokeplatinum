#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "data_021BF67C.h"
#include "inlines.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_strbuf_decl.h"

#include "overlay094/const_ov94_02245FD4.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay094/struct_ov94_0223BA24.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay094/struct_ov94_0223FD4C.h"
#include "overlay094/struct_ov94_0223FD4C_sub3.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02002B7C.h"
#include "unk_02005474.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_020218BC.h"
#include "string/strbuf.h"
#include "unk_020279FC.h"
#include "unk_0202DA40.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"
#include "unk_02073C2C.h"
#include "overlay094/ov94_0223B140.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_0223E46C.h"
#include "overlay094/ov94_022414B8.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/ov94_02244950.h"

static void ov94_0223E598(UnkStruct_02018340 * param0);
static void ov94_0223E684(UnkStruct_02018340 * param0);
static void ov94_0223E6B8(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223E770(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223E7C4(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223E7D4(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223E968(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223E9B8(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223EA20(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223EA5C(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223EA84(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223EBCC(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223ECD4(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223ED94(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223EE40(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223EF94(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223EFAC(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F0A8(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F0D0(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F154(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F190(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F25C(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F2B0(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F41C(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F474(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F4B0(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F5A0(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F5F8(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F638(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F728(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F780(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F7C0(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F8B4(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F8D8(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F920(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F928(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223F950(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223EE9C(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223F9A4(UnkStruct_ov94_0223FD4C * param0, int param1, int param2, int param3, u16 param4);
static int ov94_0223EEE0(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223EF1C(UnkStruct_ov94_0223FD4C * param0);
static int ov94_0223EF58(UnkStruct_ov94_0223FD4C * param0);
static void ov94_0223F9FC(UnkStruct_0205AA50 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0200B144 * param2);
static int ov94_0223EC74(UnkStruct_ov94_0223FD4C * param0, int param1);
static int ov94_0223FB0C(const UnkStruct_ov94_0223BA88_sub3 * param0, const UnkStruct_ov94_0223BA88_sub3 * param1, int param2, int param3);
static int ov94_0223F970(UnkStruct_ov94_0223FD4C * param0);

static int (* Unk_ov94_02246860[])(UnkStruct_ov94_0223FD4C *) = {
    ov94_0223EA5C,
    ov94_0223EA84,
    ov94_0223F0A8,
    ov94_0223F0D0,
    ov94_0223F154,
    ov94_0223F190,
    ov94_0223F25C,
    ov94_0223F2B0,
    ov94_0223F41C,
    ov94_0223F474,
    ov94_0223F4B0,
    ov94_0223F5A0,
    ov94_0223F5F8,
    ov94_0223F638,
    ov94_0223F728,
    ov94_0223F780,
    ov94_0223F7C0,
    ov94_0223EBCC,
    ov94_0223ECD4,
    ov94_0223ED94,
    ov94_0223EE40,
    ov94_0223EE9C,
    ov94_0223EEE0,
    ov94_0223F950,
    ov94_0223F970,
    ov94_0223F8B4,
    ov94_0223F8D8,
    ov94_0223F920,
    ov94_0223F928,
    ov94_0223EF1C,
    ov94_0223EF58
};

static u16 Unk_ov94_02246848[][2] = {
    {0x14, 0x2F},
    {0x14, 0x47},
    {0x14, 0x5F},
    {0x14, 0x77},
    {0xB0, 0x38},
    {0xB0, 0x60}
};

int ov94_0223E46C (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    ov94_0223E9B8(param0);
    ov94_0223E598(param0->unk_04);
    ov94_0223E6B8(param0);
    ov94_0223E7D4(param0);
    ov94_0223E770(param0);
    ov94_0223F9FC(&param0->unk_FCC[0], &param0->unk_10AC[0], param0->unk_B90);
    ov94_02242158(&param0->unk_FCC[1], param0->unk_B94, param0->unk_B7A.unk_00, 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
    ov94_02242204(&param0->unk_FCC[3], param0->unk_B90, param0->unk_B7A.unk_02, 1, 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
    ov94_022422B8(&param0->unk_FCC[5], param0->unk_B90, ov94_02242970(param0->unk_B7A.unk_03, param0->unk_B7A.unk_04, 1), 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), 1);
    ov94_0224218C(&param0->unk_10AC[1], param0->unk_BA0, param0->unk_B90, param0->unk_11B0, 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));

    sub_0200F174(3, 1, 1, 0x0, 6, 1, 62);
    param0->unk_2C = 0;

    return 2;
}

int ov94_0223E560 (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    int v0;

    v0 = (*Unk_ov94_02246860[param0->unk_2C])(param0);
    return v0;
}

int ov94_0223E574 (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    ov94_0223E7C4(param0);
    ov94_0223EA20(param0);
    ov94_0223E968(param0);
    ov94_0223E684(param0->unk_04);
    ov94_0223C4C8(param0);

    return 1;
}

static void ov94_0223E598 (UnkStruct_02018340 * param0)
{
    {
        UnkStruct_ov97_0222DB78 v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v0, 0);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v1, 0);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v2, 0);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1800,
            GX_BG_CHARBASE_0x1c000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v3, 0);
        sub_02019EBC(param0, 3);
    }

    sub_02019690(2, 32, 0, 62);
    sub_02019690(0, 32, 0, 62);
    sub_02019690(3, 32, 0, 62);
    sub_02019690(4, 32, 0, 62);
}

static void ov94_0223E684 (UnkStruct_02018340 * param0)
{
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
    sub_02019044(param0, 3);
}

static void ov94_0223E6B8 (UnkStruct_ov94_0223FD4C * param0)
{
    UnkStruct_02018340 * v0 = param0->unk_04;
    NARC * v1 = NARC_ctor(104, 62);

    sub_02007130(v1, 3, 0, 0, 16 * 3 * 2, 62);
    sub_02007130(v1, 5, 4, 0, 16 * 8 * 2, 62);
    sub_02002E98(0, 13 * 0x20, 62);
    sub_0200DD0C(v0, 0, 1, 10, sub_02027B50(param0->unk_00->unk_24), 62);
    sub_0200DAA4(v0, 0, (1 + (18 + 12)), 11, 0, 62);
    sub_020070E8(v1, 13, v0, 1, 0, 16 * 5 * 0x20, 1, 62);
    sub_0200710C(v1, 26, v0, 1, 0, 32 * 24 * 2, 1, 62);
    NARC_dtor(v1);
}

static void ov94_0223E770 (UnkStruct_ov94_0223FD4C * param0)
{
    UnkStruct_ov115_02261520 v0;

    ov94_0223C300(&v0, param0, &param0->unk_DB4, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0.unk_08.x = FX32_ONE;
    v0.unk_08.y = FX32_ONE;

    param0->unk_E20 = sub_02021AA0(&v0);

    sub_02021CC8(param0->unk_E20, 1);
    sub_02021D6C(param0->unk_E20, 0);
    sub_02021E80(param0->unk_E20, 1);
    sub_02039734();
}

static void ov94_0223E7C4 (UnkStruct_ov94_0223FD4C * param0)
{
    sub_02021BD4(param0->unk_E20);
}

static const u16 Unk_ov94_02245D94[6][2] = {
    {0x3, 0x5},
    {0x9, 0x5},
    {0x3, 0x8},
    {0x9, 0x8},
    {0x3, 0xB},
    {0x9, 0xB}
};

static const u16 Unk_ov94_02245D84[][2] = {
    {0x16, 0x6},
    {0x16, 0xB}
};

static const u16 Unk_ov94_02245D8C[][2] = {
    {0x3, 0xE},
    {0x2, 0x10}
};

static void ov94_0223E7D4 (UnkStruct_ov94_0223FD4C * param0)
{
    sub_0201A7E8(param0->unk_04, &param0->unk_F7C, 0, 1, 1, 28, 2, 13, ((1 + (18 + 12)) + 9));
    sub_0201ADA4(&param0->unk_F7C, 0x0);

    ov94_022458CC(&param0->unk_F7C, param0->unk_BB0, 0, 1, 0, (u32)(((15 & 0xff) << 16) | ((13 & 0xff) << 8) | ((0 & 0xff) << 0)));

    sub_0201A7E8(param0->unk_04, &param0->unk_F5C, 0, 2, 21, 27, 2, 13, (((1 + (18 + 12)) + 9) + 28 * 2));
    sub_0201ADA4(&param0->unk_F5C, 0x0);

    {
        int v0, v1;

        for (v0 = 0; v0 < 6; v0++) {
            sub_0201A7E8(param0->unk_04, &param0->unk_FCC[v0], 3, Unk_ov94_02245D94[v0][0], Unk_ov94_02245D94[v0][1], 11, 2, 13, 1 + (11 * 2) * v0);
            sub_0201ADA4(&param0->unk_FCC[v0], 0x0);
        }

        for (v0 = 0; v0 < 2; v0++) {
            sub_0201A7E8(param0->unk_04, &param0->unk_FCC[6 + v0], 2, Unk_ov94_02245D84[v0][0], Unk_ov94_02245D84[v0][1], 8, 2, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + (8 * 2) * v0);
            sub_0201ADA4(&param0->unk_FCC[6 + v0], 0x0);
        }

        for (v0 = 0; v0 < 2; v0++) {
            sub_0201A7E8(param0->unk_04, &param0->unk_10AC[v0], 3, Unk_ov94_02245D8C[v0][0], Unk_ov94_02245D8C[v0][1], 28, 2, 13, (1 + 11 * 2 * 6) + (28 * 2) * v0);
            sub_0201ADA4(&param0->unk_10AC[v0], 0x0);
        }
    }
}

static void ov94_0223E968 (UnkStruct_ov94_0223FD4C * param0)
{
    sub_0201A8FC(&param0->unk_F5C);
    sub_0201A8FC(&param0->unk_F7C);

    {
        int v0;

        for (v0 = 0; v0 < 8; v0++) {
            sub_0201A8FC(&param0->unk_FCC[v0]);
        }

        for (v0 = 0; v0 < 2; v0++) {
            sub_0201A8FC(&param0->unk_10AC[v0]);
        }
    }
}

static void ov94_0223E9B8 (UnkStruct_ov94_0223FD4C * param0)
{
    int v0;

    param0->unk_BAC = PLString_Init((90 * 2), 62);
    param0->unk_BB0 = sub_0200B1EC(param0->unk_B90, 41);
    param0->unk_10E4 = Heap_AllocFromHeap(62, sizeof(UnkStruct_ov94_0223FD4C_sub3));

    MI_CpuClearFast(param0->unk_10E4, sizeof(UnkStruct_ov94_0223FD4C_sub3));

    param0->unk_10E4->unk_18 = ov94_02242524(62, 0, &param0->unk_10E4->unk_1C);
    param0->unk_10E4->unk_14 = ov94_02242548(62);

    ov94_02242AAC(&param0->unk_111C);
}

static void ov94_0223EA20 (UnkStruct_ov94_0223FD4C * param0)
{
    Heap_FreeToHeap(param0->unk_10E4->unk_14);
    Heap_FreeToHeap(param0->unk_10E4->unk_18);
    Heap_FreeToHeap(param0->unk_10E4);
    PLString_Free(param0->unk_BAC);
    PLString_Free(param0->unk_BB0);
}

static int ov94_0223EA5C (UnkStruct_ov94_0223FD4C * param0)
{
    ov94_0223F9A4(param0, 8, 1, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 1);

    return 3;
}

static int ov94_0223EA84 (UnkStruct_ov94_0223FD4C * param0)
{
    ov94_0223EFAC(param0);

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
        int v0 = ov94_0223EF94(param0);

        switch (v0) {
        case 0:
            param0->unk_2C = 3;
            sub_02005748(1500);
            break;
        case 1:
            if (param0->unk_B7A.unk_00 != 0) {
                param0->unk_10E4->unk_20 = sub_020759F0(param0->unk_B7A.unk_00, 18);

                if (ov94_02241B80(&param0->unk_B7A, param0->unk_10E4->unk_20)) {
                    sub_02005748(1500);
                    return 3;
                }
            }
            param0->unk_2C = 8;
            sub_02005748(1500);
            break;
        case 2:
            param0->unk_2C = 11;
            sub_02005748(1500);
            break;
        case 3:
            param0->unk_2C = 14;
            sub_02005748(1500);
            break;
        case 4:
            param0->unk_2C = 17;
            break;
        case 5:
            ov94_0223F9A4(param0, 15, 1, 0, 0xf0f);
            ov94_0223C3F4(param0, 23, 25);
            sub_02005748(1500);
            break;
        }
    } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
        ov94_0223F9A4(param0, 15, 1, 0, 0xf0f);
        ov94_0223C3F4(param0, 23, 25);
        sub_02005748(1500);
    } else {
        int v1 = ov94_02244214(param0->unk_118);

        if (param0->unk_10F2) {
            if (v1 >= 0) {
                sub_02021D6C(param0->unk_F34[v1 + 1], 16 + v1 * 4);
                param0->unk_2C = 2;
                ov94_0223C4C0(param0, 3, 0);
                param0->unk_11C = v1;
                sub_02005748(1500);
            }
        }
    }

    return 3;
}

static int ov94_0223EBCC (UnkStruct_ov94_0223FD4C * param0)
{
    if (param0->unk_B7A.unk_00 == 0) {
        ov94_0223F9A4(param0, 12, 1, 0, 0xf0f);
        ov94_0223C3F4(param0, 23, 1);
        sub_02005748(1523);
    } else {
        if (ov94_0223FB0C(&param0->unk_B7A, &param0->unk_B80, param0->unk_11B0, param0->unk_B88)) {
            ov94_0223F9A4(param0, 33, 1, 0, 0xf0f);
            ov94_0223C3F4(param0, 23, 1);
            sub_02005748(1523);
        } else {
            sub_02005748(1535);

            ov94_0223F9A4(param0, 13, 1, 0, 0xf0f);
            ov94_0223C3F4(param0, 23, 18);
            ov94_022442E4(param0);
        }
    }

    return 3;
}

static int ov94_0223EC74 (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    u32 v0;
    RTCDate v1, v2;
    RTCTime v3;
    int v4;

    if (param1 == 1) {
        v0 = sub_0202DA9C(param0->unk_00->unk_00);
    } else {
        v0 = sub_0202DA8C(param0->unk_00->unk_00);
    }

    inline_0202D558(v0, &v1);
    DWC_GetDateTime(&v2, &v3);

    v4 = RTC_ConvertDateToDay(&v2) - RTC_ConvertDateToDay(&v1);

    if ((v4 >= 0) && (v4 < 3)) {
        return 1;
    }

    return 0;
}

static int ov94_0223ECD4 (UnkStruct_ov94_0223FD4C * param0)
{
    UnkStruct_ov94_0223BA88_sub3 v0;
    int v1 = 3;

    if (ov94_0223EC74(param0, 1)) {
        v1 += 2;
    }

    if (ov94_0223EC74(param0, 0)) {
        v1 += 2;
    }

    if (param0->unk_11B0 == 0) {
        ov94_0223B9B0(&param0->unk_B7A, v1, param0->unk_250);
    } else {
        UnkStruct_ov94_0223BA24 v2;

        MI_CpuClear8(&v2, sizeof(UnkStruct_ov94_0223BA24));

        v2.unk_00 = param0->unk_B7A.unk_00;
        v2.unk_02 = param0->unk_B7A.unk_02;
        v2.unk_03 = param0->unk_B7A.unk_03;
        v2.unk_04 = param0->unk_B7A.unk_04;
        v2.unk_05 = param0->unk_B7A.unk_05;
        v2.unk_06 = v1;
        v2.unk_07 = param0->unk_11B0;

        ov94_0223BA24(&v2, param0->unk_250);
    }

    param0->unk_B80 = param0->unk_B7A;
    param0->unk_B88 = param0->unk_11B0;
    param0->unk_14E4 = 0;
    param0->unk_2C = 19;
    param0->unk_10F2 = 0;

    return 3;
}

static int ov94_0223ED94 (UnkStruct_ov94_0223FD4C * param0)
{
    int v0;

    v0 = ov94_0223B7B8();

    if (v0) {
        s32 v1 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v1) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            param0->unk_118 = v1;
            sub_020057A4(1535, 0);
            ov94_02244234(param0, v1, 1);
            param0->unk_2C = 20;
            break;
        case -2:
        case -14:
            param0->unk_2C = 29;
            break;
        case -13:
            sub_02038A0C();
            break;
        case -15:
        case -12:
            param0->unk_2C = 22;
            break;
        default:
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_0223EE40 (UnkStruct_ov94_0223FD4C * param0)
{
    if (param0->unk_118 == 0) {
        ov94_0223F9A4(param0, 14, 1, 0, 0xf0f);
        ov94_0223C3F4(param0, 23, 1);
        sub_02005748(1523);
    } else {
        ov94_0223F9A4(param0, 30, 1, 0, 0xf0f);
        ov94_0223C3F4(param0, 23, 21);
        param0->unk_10E0 = 0;
    }

    return 3;
}

static int ov94_0223EE9C (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_10E0++;

    if (param0->unk_10E0 > 45) {
        ov94_0223F9A4(param0, 32, 1, 0, 0xf0f);
        ov94_0223C3F4(param0, 23, 1);
        param0->unk_10F2 = 1;
    }

    return 3;
}

static int ov94_0223EEE0 (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_B80.unk_00 = 0;

    ov94_0223F9A4(param0, 38, 1, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 1);
    sub_02005748(1523);

    return 3;
}

static int ov94_0223EF1C (UnkStruct_ov94_0223FD4C * param0)
{
    ov94_0223F9A4(param0, 147, 4, 0, 0xf0f);
    ov94_0223C3F4(param0, 24, 30);
    param0->unk_10E0 = 0;
    sub_02005748(1523);

    return 3;
}

static int ov94_0223EF58 (UnkStruct_ov94_0223FD4C * param0)
{
    ov94_0223F9A4(param0, 152, 4, 0, 0xf0f);
    ov94_0223C3F4(param0, 24, 2);
    ov94_0223C4C0(param0, 0, 0);
    sub_02005748(1523);

    return 3;
}

static int ov94_0223EF94 (UnkStruct_ov94_0223FD4C * param0)
{
    int v0;

    if (param0->unk_10E4->unk_24 == 0) {
        v0 = param0->unk_10E4->unk_28;
    } else {
        v0 = param0->unk_10E4->unk_2C + 4;
    }

    return v0;
}

static void ov94_0223EFAC (UnkStruct_ov94_0223FD4C * param0)
{
    int v0;

    if (Unk_021BF67C.unk_48 & PAD_KEY_UP) {
        if (param0->unk_10E4->unk_24 == 0) {
            if (param0->unk_10E4->unk_28 > 0) {
                param0->unk_10E4->unk_28--;
                sub_02005748(1500);
            }
        } else {
            if (param0->unk_10E4->unk_2C != 0) {
                sub_02005748(1500);
            }

            param0->unk_10E4->unk_2C = 0;
        }
    } else if (Unk_021BF67C.unk_48 & PAD_KEY_DOWN) {
        if (param0->unk_10E4->unk_24 == 0) {
            if (param0->unk_10E4->unk_28 < 3) {
                param0->unk_10E4->unk_28++;
                sub_02005748(1500);
            }
        } else {
            if (param0->unk_10E4->unk_2C != 1) {
                sub_02005748(1500);
            }

            param0->unk_10E4->unk_2C = 1;
        }
    } else if (Unk_021BF67C.unk_48 & PAD_KEY_RIGHT) {
        if (param0->unk_10E4->unk_24 != 1) {
            sub_02005748(1500);
        }

        param0->unk_10E4->unk_24 = 1;
    } else if (Unk_021BF67C.unk_48 & PAD_KEY_LEFT) {
        if (param0->unk_10E4->unk_24 != 0) {
            sub_02005748(1500);
        }

        param0->unk_10E4->unk_24 = 0;
    }

    {
        VecFx32 v1;

        v1.x = FX32_ONE * Unk_ov94_02246848[ov94_0223EF94(param0)][0];
        v1.y = FX32_ONE * Unk_ov94_02246848[ov94_0223EF94(param0)][1];

        sub_02021C50(param0->unk_E20, &v1);
    }
}

static int ov94_0223F0A8 (UnkStruct_ov94_0223FD4C * param0)
{
    sub_0200F174(3, 0, 0, 0x0, 6, 1, 62);

    param0->unk_2C = 0;

    return 4;
}

static int  ov94_0223F0D0 (UnkStruct_ov94_0223FD4C * param0)
{
    ov94_0223F9A4(param0, 9, 1, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 4);

    sub_0201A7E8(param0->unk_04, &param0->unk_F9C[0], 0, 15, 5, 4, 13, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2));
    sub_0201ADA4(&param0->unk_F9C[0], 0x0);

    sub_0201A7E8(param0->unk_04, &param0->unk_F9C[1], 0, 21, 5, 10, 13, 13, ((((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2) + 4 * 13));
    sub_0201ADA4(&param0->unk_F9C[1], 0x0);

    return 3;
}

static int  ov94_0223F154 (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_10D8 = ov94_022426A8(param0, &param0->unk_10CC, &param0->unk_F9C[0], param0->unk_B90);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 5;

    return 3;
}

static int ov94_0223F190 (UnkStruct_ov94_0223FD4C * param0)
{
    switch (ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        sub_02001384(param0->unk_10D8, &param0->unk_10E4->unk_06, &param0->unk_10E4->unk_04);
        sub_02013A3C(param0->unk_10CC);
        sub_02005748(1500);
        param0->unk_2C = 6;
        break;
    case 0xfffffffe:
        sub_02001384(param0->unk_10D8, &param0->unk_10E4->unk_06, &param0->unk_10E4->unk_04);
        sub_02013A3C(param0->unk_10CC);
        sub_0200DC9C(&param0->unk_F9C[0], 0);
        sub_0200E084(&param0->unk_F5C, 0);
        sub_0201A8FC(&param0->unk_F9C[0]);
        sub_0201A8FC(&param0->unk_F9C[1]);
        sub_02005748(1500);
        param0->unk_2C = 0;
        break;
    }

    return 3;
}

static int ov94_0223F25C (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_10D8 = ov94_022427C0(param0, &param0->unk_10CC, &param0->unk_F9C[1], param0->unk_B90, param0->unk_B94, param0->unk_10E4, param0->unk_00->unk_10);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 7;

    return 3;
}

static int ov94_0223F2B0 (UnkStruct_ov94_0223FD4C * param0)
{
    u32 v0;

    switch ((v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108))) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        sub_02001384(param0->unk_10D8, &param0->unk_10E4->unk_0A, &param0->unk_10E4->unk_08);
        sub_02013A3C(param0->unk_10CC);
        sub_0200DC9C(&param0->unk_F9C[1], 0);
        sub_02005748(1500);
        param0->unk_2C = 4;
        ov94_02242AC4(&param0->unk_111C, param0->unk_10E4->unk_06 + param0->unk_10E4->unk_04, param0->unk_10E4->unk_0A, param0->unk_10E4->unk_08);
        break;
    default:
        sub_02001384(param0->unk_10D8, &param0->unk_10E4->unk_0A, &param0->unk_10E4->unk_08);
        sub_02013A3C(param0->unk_10CC);
        sub_0200DC9C(&param0->unk_F9C[0], 0);
        sub_0200DC9C(&param0->unk_F9C[1], 0);
        sub_0201A8FC(&param0->unk_F9C[0]);
        sub_0201A8FC(&param0->unk_F9C[1]);

        param0->unk_B7A.unk_00 = v0;
        param0->unk_2C = 0;

        sub_02005748(1500);
        sub_0201ADA4(&param0->unk_FCC[1], 0x0);

        ov94_02242158(&param0->unk_FCC[1], param0->unk_B94, v0, 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
        param0->unk_10E4->unk_20 = sub_020759F0(v0, 18);
        ov94_02242AC4(&param0->unk_111C, param0->unk_10E4->unk_06 + param0->unk_10E4->unk_04, param0->unk_10E4->unk_0A, param0->unk_10E4->unk_08);

        if (ov94_02241B80(&param0->unk_B7A, param0->unk_10E4->unk_20)) {
            sub_0201ADA4(&param0->unk_FCC[3], 0x0);
            ov94_02242204(&param0->unk_FCC[3], param0->unk_B90, param0->unk_B7A.unk_02, 1, 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
        }
        break;
    }

    return 3;
}

static int ov94_0223F41C (UnkStruct_ov94_0223FD4C * param0)
{
    ov94_0223F9A4(param0, 10, 1, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 9);

    sub_0201A7E8(param0->unk_04, &param0->unk_F9C[0], 0, 21, 10, 10, 8, 13, ((((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2)));
    sub_0201ADA4(&param0->unk_F9C[0], 0x0);

    return 3;
}

static int ov94_0223F474 (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_10D8 = ov94_02242840(&param0->unk_10CC, &param0->unk_F9C[0], param0->unk_B90);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 10;

    return 3;
}

static int ov94_0223F4B0 (UnkStruct_ov94_0223FD4C * param0)
{
    u32 v0;

    switch ((v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108))) {
    case 0xfffffffe:
        sub_02001384(param0->unk_10D8, NULL, NULL);
        sub_02013A3C(param0->unk_10CC);
        sub_0200DC9C(&param0->unk_F9C[0], 0);
        sub_0200E084(&param0->unk_F5C, 0);
        sub_0201A8FC(&param0->unk_F9C[0]);
        sub_02005748(1500);
        param0->unk_2C = 0;
        break;
    case 0:
    case 1:
    case 2:
        sub_02001384(param0->unk_10D8, NULL, NULL);
        sub_02013A3C(param0->unk_10CC);
        sub_0200DC9C(&param0->unk_F9C[0], 0);
        sub_0201A8FC(&param0->unk_F9C[0]);
        sub_02005748(1500);

        param0->unk_B7A.unk_02 = v0 + 1;
        param0->unk_2C = 0;

        sub_0201ADA4(&param0->unk_FCC[3], 0x0);
        ov94_02242204(&param0->unk_FCC[3], param0->unk_B90, param0->unk_B7A.unk_02, 1, 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
        break;
    }

    return 3;
}

static int ov94_0223F5A0 (UnkStruct_ov94_0223FD4C * param0)
{
    ov94_0223F9A4(param0, 11, 1, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 12);

    sub_0201A7E8(param0->unk_04, &param0->unk_F9C[0], 0, 15, 5, 16, 13, 13, ((((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2)));
    sub_0201ADA4(&param0->unk_F9C[0], 0x0);

    return 3;
}

static int ov94_0223F5F8 (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_10D8 = ov94_022428B0(&param0->unk_10CC, &param0->unk_F9C[0], param0->unk_B90, 1);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 13;

    return 3;
}

static int ov94_0223F638 (UnkStruct_ov94_0223FD4C * param0)
{
    u32 v0;

    switch ((v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108))) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
    case 11:
        sub_02001384(param0->unk_10D8, NULL, NULL);
        sub_02013A3C(param0->unk_10CC);
        sub_0200DC9C(&param0->unk_F9C[0], 0);
        sub_0200E084(&param0->unk_F5C, 0);
        sub_0201A8FC(&param0->unk_F9C[0]);
        sub_02005748(1500);
        param0->unk_2C = 0;
        break;
    default:
        sub_02001384(param0->unk_10D8, NULL, NULL);
        sub_02013A3C(param0->unk_10CC);
        sub_0200DC9C(&param0->unk_F9C[0], 0);
        sub_0201A8FC(&param0->unk_F9C[0]);
        sub_02005748(1500);
        ov94_02242934(&param0->unk_B7A, v0, 1);

        param0->unk_2C = 0;

        sub_0201ADA4(&param0->unk_FCC[5], 0x0);
        ov94_022422B8(&param0->unk_FCC[5], param0->unk_B90, v0, 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), 1);
        break;
    }

    return 3;
}

static int ov94_0223F728 (UnkStruct_ov94_0223FD4C * param0)
{
    ov94_0223F9A4(param0, 169, 1, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 15);

    sub_0201A7E8(param0->unk_04, &param0->unk_F9C[0], 0, 2, 5, 28, 13, 13, ((((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2)));
    sub_0201ADA4(&param0->unk_F9C[0], 0x0);

    return 3;
}

static int ov94_0223F780 (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_10D8 = ov94_022429B4(&param0->unk_10CC, &param0->unk_F9C[0], param0->unk_BA0, param0->unk_B90);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 16;

    return 3;
}

static int ov94_0223F7C0 (UnkStruct_ov94_0223FD4C * param0)
{
    u32 v0;

    v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108);

    if (v0 == 0xffffffff) {
        (void)0;
    } else if ((v0 == 0xfffffffe) || (v0 == (Unk_ov94_02245FD4 + 1))) {
        sub_02001384(param0->unk_10D8, NULL, NULL);
        sub_02013A3C(param0->unk_10CC);
        sub_0200DC9C(&param0->unk_F9C[0], 0);
        sub_0200E084(&param0->unk_F5C, 0);
        sub_0201A8FC(&param0->unk_F9C[0]);
        sub_02005748(1500);
        param0->unk_2C = 0;
    } else {
        sub_02001384(param0->unk_10D8, NULL, NULL);
        sub_02013A3C(param0->unk_10CC);
        sub_0200DC9C(&param0->unk_F9C[0], 0);
        sub_0201A8FC(&param0->unk_F9C[0]);
        sub_02005748(1500);

        ov94_02242A44(param0, v0);
        param0->unk_2C = 0;
        sub_0201ADA4(&param0->unk_10AC[1], 0x0);
        ov94_0224218C(&param0->unk_10AC[1], param0->unk_BA0, param0->unk_B90, param0->unk_11B0, 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
    }

    return 3;
}

static int ov94_0223F8B4 (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_10D0 = ov94_0223C3C0(param0->unk_04, 15, (((((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2)) + 16 * 13));
    param0->unk_2C = 26;

    return 3;
}

static int ov94_0223F8D8 (UnkStruct_ov94_0223FD4C * param0)
{
    int v0 = sub_02002114(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->unk_2C = 0;
        } else {
            param0->unk_2C = 2;
            ov94_0223C4C0(param0, 1, 0);
            ov94_022442E4(param0);
            param0->unk_118 = 0;
        }
    }

    return 3;
}

static int ov94_0223F920 (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_2C = 1;
    return 3;
}

static int ov94_0223F928 (UnkStruct_ov94_0223FD4C * param0)
{
    ov94_0223F9A4(param0, 146, 1, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 1);

    return 3;
}

static int ov94_0223F950 (UnkStruct_ov94_0223FD4C * param0)
{
    if (sub_0201D724(param0->unk_BE0) == 0) {
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

static int ov94_0223F970 (UnkStruct_ov94_0223FD4C * param0)
{
    if (sub_0201D724(param0->unk_BE0) == 0) {
        param0->unk_10E0++;

        if (param0->unk_10E0 > 45) {
            param0->unk_10E0 = 0;
            param0->unk_2C = param0->unk_30;
        }
    }

    return 3;
}

static void ov94_0223F9A4 (UnkStruct_ov94_0223FD4C * param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf * v0;

    sub_0200B1B8(param0->unk_B90, param1, param0->unk_BAC);
    sub_0201ADA4(&param0->unk_F5C, 0xf0f);
    sub_0200E060(&param0->unk_F5C, 0, 1, 10);

    param0->unk_BE0 = sub_0201D738(&param0->unk_F5C, 1, param0->unk_BAC, 0, 0, param2, NULL);
}

static void ov94_0223F9FC (UnkStruct_0205AA50 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0200B144 * param2)
{
    Strbuf * v0, * v1, * v2;

    v0 = sub_0200B1EC(param2, 59);
    ov94_02245900(&param0[0], v0, 0, 0, 0, (u32)(((15 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
    PLString_Free(v0);

    v2 = sub_0200B1EC(param2, 61);
    ov94_02245900(&param0[2], v2, 0, 0, 0, (u32)(((15 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
    PLString_Free(v2);

    v1 = sub_0200B1EC(param2, 63);
    ov94_02245900(&param0[4], v1, 0, 0, 0, (u32)(((15 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
    PLString_Free(v1);

    v1 = sub_0200B1EC(param2, 165);
    ov94_02245900(&param1[0], v1, 0, 0, 0, (u32)(((15 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
    PLString_Free(v1);

    v0 = sub_0200B1EC(param2, 65);

    {
        int v3 = sub_02002EEC(0, v0, 0, param0[6].unk_07 * 8);
        ov94_02245900(&param0[6], v0, v3, 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
    }

    PLString_Free(v0);

    v0 = sub_0200B1EC(param2, 66);

    {
        int v4 = sub_02002EEC(0, v0, 0, param0[7].unk_07 * 8);
        ov94_02245900(&param0[7], v0, v4, 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));
    }

    PLString_Free(v0);
}

static int ov94_0223FB0C (const UnkStruct_ov94_0223BA88_sub3 * param0, const UnkStruct_ov94_0223BA88_sub3 * param1, int param2, int param3)
{
    if ((param0->unk_00 == param1->unk_00) && (param0->unk_02 == param1->unk_02) && (param0->unk_03 == param1->unk_03) && (param0->unk_04 == param1->unk_04) && (param2 == param3)) {
        return 1;
    }

    return 0;
}
