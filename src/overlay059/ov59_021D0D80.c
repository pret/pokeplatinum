#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_020961E8_decl.h"

#include "struct_defs/struct_0203DE34.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_020961E8_t.h"
#include "struct_defs/struct_02096274.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay059/struct_ov59_021D109C.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_02001AF4.h"
#include "unk_02002B7C.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200AC5C.h"
#include "unk_0200B29C.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201D670.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02023790.h"
#include "unk_02025E68.h"
#include "game_options.h"
#include "unk_0202B604.h"
#include "unk_0202CD50.h"
#include "unk_02030EE0.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_02038ED4.h"
#include "unk_020393C8.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_0205C980.h"
#include "unk_020961E8.h"
#include "overlay059/ov59_021D0D80.h"
#include "overlay059/ov59_021D2F88.h"

static void ov59_021D1100(void * param0);
static void ov59_021D1128(void);
static void ov59_021D1148(UnkStruct_02018340 * param0);
static void ov59_021D1250(UnkStruct_020961E8 * param0, NARC * param1);
static void ov59_021D131C(UnkStruct_020961E8 * param0);
static void ov59_021D1354(UnkStruct_02018340 * param0);
static void ov59_021D1388(UnkStruct_020961E8 * param0, NARC * param1);
static void ov59_021D1474(void);
static void ov59_021D14A4(UnkStruct_020961E8 * param0, NARC * param1);
static void ov59_021D1598(UnkStruct_020961E8 * param0);
static void ov59_021D16A0(UnkStruct_020961E8 * param0, UnkStruct_020067E8 * param1);
static void ov59_021D17C8(UnkStruct_020961E8 * param0);
static void ov59_021D1994(UnkStruct_020961E8 * param0);
static void ov59_021D23B0(u16 * param0);
static BOOL ov59_021D2418(UnkStruct_0205AA50 * param0, int param1, u32 param2, UnkStruct_020961E8 * param3);
static BOOL ov59_021D254C(UnkStruct_020961E8 * param0);
static void ov59_021D2628(UnkStruct_020961E8 * param0, int param1, int param2);
static int ov59_021D26B8(int param0);
static void ov59_021D26D8(UnkStruct_020961E8 * param0);
static int ov59_021D23FC(void);
static int ov59_021D2528(void);
static void ov59_021D2524(UnkStruct_020961E8 * param0);
static void ov59_021D1784(UnkStruct_0205AA50 * param0, UnkStruct_02023790 * param1, int param2);
static void ov59_021D19B0(UnkStruct_020961E8 * param0, int param1);
static void ov59_021D26E8(UnkStruct_020961E8 * param0);
static void ov59_021D27FC(UnkStruct_020961E8 * param0, NARC * param1);
static void ov59_021D28A4(UnkStruct_020961E8 * param0);
static void ov59_021D2860(NNSG2dCharacterData * param0[2], NNSG2dPaletteData * param1[2], int param2, int param3, int param4);
static void ov59_021D109C(UnkStruct_0201CD38 * param0, void * param1);
static int ov59_021D28D4(UnkStruct_020961E8 * param0);
static void ov59_021D28D8(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D292C(UnkStruct_020961E8 * param0, int param1);
static void ov59_021D1864(UnkStruct_020961E8 * param0);
static int ov59_021D17F8(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1838(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1D14(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1D70(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1DA0(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1C64(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1C34(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1A14(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1A44(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1B74(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1B8C(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1C14(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1E98(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1EB8(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1EF4(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1F24(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1FD0(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D2044(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D2064(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D20A4(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D20D0(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D19C0(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D20F4(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D2190(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D2154(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1998(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D19E4(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1DC8(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1E0C(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D1E7C(UnkStruct_020961E8 * param0, int param1);
static int ov59_021D2020(UnkStruct_020961E8 * param0, int param1);

static int (* Unk_ov59_021D3480[])(UnkStruct_020961E8 *, int) = {
    ov59_021D17F8,
    ov59_021D1998,
    ov59_021D19E4,
    ov59_021D1838,
    ov59_021D1A14,
    ov59_021D1A44,
    ov59_021D1B74,
    ov59_021D1B8C,
    ov59_021D1C14,
    ov59_021D1E98,
    ov59_021D1EB8,
    ov59_021D1EF4,
    ov59_021D1F24,
    ov59_021D1FD0,
    ov59_021D2020,
    ov59_021D2044,
    ov59_021D2064,
    ov59_021D20A4,
    ov59_021D20D0,
    ov59_021D20F4,
    ov59_021D2154,
    ov59_021D2190,
    ov59_021D1C34,
    ov59_021D1C64,
    ov59_021D1D14,
    ov59_021D1D70,
    ov59_021D1DA0,
    ov59_021D1DC8,
    ov59_021D1E0C,
    ov59_021D1E7C,
    ov59_021D19C0,
};

int ov59_021D0D80 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_020961E8 * v0;
    NARC * v1;

    switch (*param1) {
    case 0:
        sub_02017798(NULL, NULL);
        sub_020177A4();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(3, 51, 0x41000);

        v1 = NARC_ctor(86, 51);
        v0 = sub_0200681C(param0, sizeof(UnkStruct_020961E8), 51);

        memset(v0, 0, sizeof(UnkStruct_020961E8));

        v0->unk_00 = sub_02018340(51);
        v0->unk_08 = (UnkStruct_0203DE34 *)sub_02006840(param0);
        v0->unk_4A9C = v0->unk_08->unk_00;
        v0->unk_24 = sub_0200B358(51);
        v0->unk_28 = sub_0200B144(0, 26, 533, 51);

        sub_02017DD4(4, 8);

        ov59_021D1128();
        ov59_021D1148(v0->unk_00);

        sub_0200F338(0);
        sub_0200F338(1);
        sub_0200F174(0, 17, 17, 0x0, 16, 1, 51);

        ov59_021D1388(v0, v1);
        sub_02017798(ov59_021D1100, v0);

        ov59_021D1250(v0, v1);
        ov59_021D1474();
        ov59_021D14A4(v0, v1);
        ov59_021D1598(v0);
        ov59_021D16A0(v0, param0);

        sub_02004550(52, 0, 0);
        sub_020961E8(v0);
        sub_02037878();
        sub_02037B58(3);

        if (sub_0203608C() == 0) {
            sub_0205BEA8(2);
        }

        sub_02039734();
        ov59_021D30E0(v0->unk_4A9C, &v0->unk_418);

        v0->unk_20 = sub_0200DA04(ov59_021D109C, v0, 5);

        NARC_dtor(v1);
        (*param1)++;
        break;
    case 1:
        v0 = sub_0200682C(param0);
        (*param1) = 0;
        return 1;
        break;
    }

    return 0;
}

int ov59_021D0F00 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_020961E8 * v0 = sub_0200682C(param0);

    if ((sub_0203608C() == 0) && (v0->unk_4AB4 != 0)) {
        v0->unk_4AB4 &= sub_020318EC();
    }

    switch (*param1) {
    case 0:
        if (sub_0200F2AC()) {
            *param1 = 1;

            if (sub_0203608C() != 0) {
                if (ov59_021D2528() > 2) {
                    sub_020359DC(114, NULL, 0);
                }
            }
        }
        break;
    case 1:
        if (Unk_ov59_021D3480[v0->unk_3A8] != NULL) {
            *param1 = (*Unk_ov59_021D3480[v0->unk_3A8])(v0, *param1);
        }

        if (v0->unk_4AA4 == 0) {
            ov59_021D2418(v0->unk_2FC, 0, (u32)(((1 & 0xff) << 16) | ((3 & 0xff) << 8) | ((0 & 0xff) << 0)), v0);
        }

        ov59_021D26E8(v0);

        if (sub_0203608C() == 0) {
            int v1 = ov59_021D292C(v0, 1);

            if (*param1 == 1) {
                *param1 = v1;
            }
        }
        break;
    case 2:
        if (Unk_ov59_021D3480[v0->unk_3A8] != NULL) {
            *param1 = (*Unk_ov59_021D3480[v0->unk_3A8])(v0, *param1);
        }
        break;
    case 3:
        if (sub_0200F2AC()) {
            return 1;
        }
        break;
    }

    sub_020219F8(v0->unk_50);

    return 0;
}

int ov59_021D0FF4 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_020961E8 * v0 = sub_0200682C(param0);
    int v1;

    sub_0200DA58(v0->unk_20);
    sub_0200A4E4(v0->unk_1F0[2][0]);
    sub_0200A6DC(v0->unk_1F0[2][1]);

    for (v1 = 0; v1 < 4; v1++) {
        sub_02009754(v0->unk_1E0[v1]);
    }

    sub_02021964(v0->unk_50);
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();

    ov59_021D17C8(v0);
    ov59_021D1354(v0->unk_00);

    sub_02037B58(2);
    sub_02036AC4();
    sub_0205C2C8(v0->unk_08->unk_04);
    sub_0200B190(v0->unk_28);
    sub_0200B3F0(v0->unk_24);

    ov59_021D131C(v0);
    sub_02006830(param0);

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    sub_0205BEA8(0);
    sub_02017798(NULL, NULL);
    Heap_Destroy(51);

    return 1;
}

static const u8 Unk_ov59_021D329A[][2] = {
    {0x8, 0x2},
    {0x8, 0x3},
    {0x8, 0x4},
    {0x18, 0x0},
    {0x0, 0xFF}
};

static void ov59_021D109C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_020961E8 * v0 = (UnkStruct_020961E8 *)param1;
    UnkStruct_ov59_021D109C * v1 = &v0->unk_0C;

    if (v1->unk_00) {
        if (v1->unk_08 > Unk_ov59_021D329A[v1->unk_04][0]) {
            u16 * v2;

            v1->unk_08 = 0;
            v1->unk_04++;

            if (Unk_ov59_021D329A[v1->unk_04][1] == 0xff) {
                v1->unk_04 = 0;
            }

            v2 = (u16 *)v1->unk_10->pRawData;
            GX_LoadOBJPltt(&v2[16 * Unk_ov59_021D329A[v1->unk_04][1]], 0, 32);
        } else {
            v0->unk_0C.unk_08++;
        }

        ov59_021D23B0(&v0->unk_408);
    }
}

static void ov59_021D1100 (void * param0)
{
    sub_0201DCAC();
    sub_0200A858();
    sub_0201C2B8((UnkStruct_02018340 *)param0);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov59_021D1128 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov59_021D1148 (UnkStruct_02018340 * param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v1, 0);
        sub_02019EBC(param0, 4);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v2, 0);
        sub_02019EBC(param0, 5);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 6, &v3, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v4, 0);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v5, 0);
    }

    sub_02019690(0, 32, 0, 51);
    sub_02019690(4, 32, 0, 51);
}

static void ov59_021D1250 (UnkStruct_020961E8 * param0, NARC * param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_2C[v0] = sub_02023790(7 + 1, 51);
        param0->unk_3C8[v0][0] = NULL;
        param0->unk_3C8[v0][1] = NULL;
        param0->unk_4AC8[v0][0].val1 = 0;
        param0->unk_4AC8[v0][1].val1 = 0;
        param0->unk_3F0[v0] = 0;
    }

    param0->unk_44 = sub_02023790((90 * 2), 51);
    param0->unk_48 = sub_02023790((20 * 2), 51);
    param0->unk_3A8 = 0;

    sub_0200B1B8(param0->unk_28, 17, param0->unk_48);
    ov59_021D27FC(param0, param1);

    param0->unk_40C = sub_0205CA4C(51);
    param0->unk_0C.unk_00 = 0;
    param0->unk_0C.unk_08 = 0;
    param0->unk_0C.unk_04 = 0;
    param0->unk_0C.unk_0C = sub_020071EC(param1, 1, &param0->unk_0C.unk_10, 51);
    param0->unk_4AA8 = 0;
    param0->unk_384 = NULL;
    param0->unk_4AAC = 2;
}

static void ov59_021D131C (UnkStruct_020961E8 * param0)
{
    int v0;

    ov59_021D28A4(param0);

    Heap_FreeToHeap(param0->unk_0C.unk_0C);
    Heap_FreeToHeap(param0->unk_40C);

    for (v0 = 0; v0 < 5; v0++) {
        sub_020237BC(param0->unk_2C[v0]);
    }

    sub_020237BC(param0->unk_48);
    sub_020237BC(param0->unk_44);
}

static void ov59_021D1354 (UnkStruct_02018340 * param0)
{
    sub_02019044(param0, 6);
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
    Heap_FreeToHeap(param0);
}

static void ov59_021D1388 (UnkStruct_020961E8 * param0, NARC * param1)
{
    UnkStruct_02018340 * v0 = param0->unk_00;

    sub_02007130(param1, 0, 0, 0, 16 * 16 * 2, 51);
    sub_02006E84(12, 12, 4, 0, 16 * 2, 51);
    sub_02002E98(0, 13 * 0x20, 51);
    sub_02002E98(4, 13 * 0x20, 51);
    sub_02006E3C(12, 10, v0, 6, 0, 0, 1, 51);
    sub_02006E60(12, 11, v0, 6, 0, 0, 1, 51);
    sub_020070E8(param1, 2, v0, 1, 0, 32 * 8 * 0x20, 1, 51);
    sub_0200710C(param1, 3, v0, 1, 0, 32 * 24 * 2, 1, 51);
    sub_0200DD0C(v0, 0, 1, 10, GameOptions_GetFrameStyle(param0->unk_08->unk_08), 51);
    sub_0200DAA4(v0, 0, 1 + (18 + 12), 11, 0, 51);
}

static void ov59_021D1474 (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20, 2048, 2048, 51
        };

        sub_0201E86C(&v0);
    }

    sub_0201F834(20, 51);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov59_021D14A4 (UnkStruct_020961E8 * param0, NARC * param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 126, 0, 32, 0, 126, 0, 32, 51);

    param0->unk_50 = sub_020095C4(30, &param0->unk_54, 51);

    sub_0200964C(&param0->unk_54, 0, (256 * FX32_ONE));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_1E0[v0] = sub_02009714(3, v0, 51);
    }

    param0->unk_1F0[2][0] = sub_02009A4C(param0->unk_1E0[0], param1, 12, 1, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 51);
    param0->unk_1F0[2][1] = sub_02009B04(param0->unk_1E0[1], param1, 1, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 15, 51);
    param0->unk_1F0[2][2] = sub_02009BC4(param0->unk_1E0[2], param1, 13, 1, 2, 2, 51);
    param0->unk_1F0[2][3] = sub_02009BC4(param0->unk_1E0[3], param1, 14, 1, 2, 3, 51);

    sub_0200A328(param0->unk_1F0[2][0]);
    sub_0200A5C8(param0->unk_1F0[2][1]);
}

static const u16 Unk_ov59_021D32C4[][2] = {
    {0xCC, 0x54},
    {0xCC, 0x35},
    {0xE9, 0x48},
    {0xDF, 0x67},
    {0xB8, 0x67},
    {0xAE, 0x48}
};

static void ov59_021D1598 (UnkStruct_020961E8 * param0)
{
    int v0;

    sub_020093B4(&param0->unk_268, 2, 2, 2, 2, 0xffffffff, 0xffffffff, 0, 1, param0->unk_1E0[0], param0->unk_1E0[1], param0->unk_1E0[2], param0->unk_1E0[3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v1;

        v1.unk_00 = param0->unk_50;
        v1.unk_04 = &param0->unk_268;
        v1.unk_08.z = 0;
        v1.unk_14.x = FX32_ONE;
        v1.unk_14.y = FX32_ONE;
        v1.unk_14.z = FX32_ONE;
        v1.unk_20 = 0;
        v1.unk_24 = 1;
        v1.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v1.unk_2C = 51;
        v1.unk_08.x = FX32_ONE * Unk_ov59_021D32C4[0][0];
        v1.unk_08.y = FX32_ONE * Unk_ov59_021D32C4[0][1];

        param0->unk_28C[0] = sub_02021AA0(&v1);

        sub_02021CC8(param0->unk_28C[0], 1);
        sub_02021CAC(param0->unk_28C[0], 1);

        for (v0 = 0; v0 < 5; v0++) {
            v1.unk_08.x = FX32_ONE * Unk_ov59_021D32C4[v0 + 1][0];
            v1.unk_08.y = FX32_ONE * Unk_ov59_021D32C4[v0 + 1][1];

            param0->unk_28C[v0 + 1] = sub_02021AA0(&v1);

            sub_02021CC8(param0->unk_28C[v0 + 1], 1);
            sub_02021D6C(param0->unk_28C[v0 + 1], 27 + (v0 - 1) * 2);
            sub_02021CAC(param0->unk_28C[v0 + 1], 0);
        }

        for (v0 = 0; v0 < 5; v0++) {
            v1.unk_08.x = FX32_ONE * 24;
            v1.unk_08.y = FX32_ONE * (32 + 32 * v0) + (256 * FX32_ONE);
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov59_021D16A0 (UnkStruct_020961E8 * param0, UnkStruct_020067E8 * param1)
{
    sub_0201A7E8(param0->unk_00, &param0->unk_35C, 5, 26, 20, 6, 2, 13, 1 + 30 * 15);
    sub_0201ADA4(&param0->unk_35C, 0x0);
    sub_0201A7E8(param0->unk_00, &param0->unk_34C, 0, 2, 19, 27, 4, 13, (1 + (18 + 12) + 9));
    sub_0201ADA4(&param0->unk_34C, 0xf0f);
    sub_0201A7E8(param0->unk_00, &param0->unk_36C, 0, 3, 1, 26, 2, 15, ((1 + (18 + 12) + 9) + 27 * 4));

    ov59_021D1784(&param0->unk_36C, param0->unk_48, 0);

    {
        int v0;

        sub_0201A7E8(param0->unk_00, &param0->unk_2FC[0], 0, 2, 6, 16, 11, 15, (((1 + (18 + 12) + 9) + 27 * 4) + 26 * 2));
        sub_0201ADA4(&param0->unk_2FC[0], 0);

        ov59_021D2418(param0->unk_2FC, 0, (u32)(((1 & 0xff) << 16) | ((3 & 0xff) << 8) | ((0 & 0xff) << 0)), param0);
    }
}

static void ov59_021D1784 (UnkStruct_0205AA50 * param0, UnkStruct_02023790 * param1, int param2)
{
    int v0 = sub_02002D7C(1, param1, 0);
    int v1 = (26 * 8 - v0) / 2;

    sub_0201ADA4(param0, 0x0);
    sub_0201D78C(param0, 1, param1, v1, 1, param2, (u32)(((1 & 0xff) << 16) | ((4 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
}

static void ov59_021D17C8 (UnkStruct_020961E8 * param0)
{
    int v0;

    sub_0201A8FC(&param0->unk_2FC[0]);
    sub_0201A8FC(&param0->unk_36C);
    sub_0201A8FC(&param0->unk_35C);
    sub_0201A8FC(&param0->unk_34C);
}

static int ov59_021D17F8 (UnkStruct_020961E8 * param0, int param1)
{
    sub_020388F4(0, 1);

    if (sub_0203608C() == 0) {
        if (sub_02035E18() >= 2) {
            ov59_021D2628(param0, 2, 0);
        }
    } else {
        ov59_021D2628(param0, 8, 0);
    }

    ov59_021D19B0(param0, 3);

    return param1;
}

static int ov59_021D1838 (UnkStruct_020961E8 * param0, int param1)
{
    ov59_021D1864(param0);

    if (sub_0203608C() == 0) {
        if (ov59_021D23FC() != 1) {
            ov59_021D2524(param0);
        }
    } else {
        ov59_021D2524(param0);
    }

    return param1;
}

static void ov59_021D1864 (UnkStruct_020961E8 * param0)
{
    if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
        if (sub_0203608C() == 0) {
            if ((ov59_021D2528() == param0->unk_4AAC) && (param0->unk_4AB4 == 0)) {
                u8 v0 = 1;

                ov59_021D2628(param0, 3, 0);
                ov59_021D19B0(param0, 22);

                sub_020359DC(117, &v0, 1);

                ov59_021D28D8(param0, 0);
            } else {
                sub_02005748(1522);
            }
        }
    } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
        if (sub_0203608C()) {
            if (param0->unk_4AA0 == 0) {
                ov59_021D2628(param0, 4, 0);
                ov59_021D19B0(param0, 4);
            } else {
                sub_02005748(1522);
            }
        } else {
            if ((sub_02035E18() == param0->unk_4AAC) && (param0->unk_4AB4 == 0)) {
                u8 v1 = 1;

                ov59_021D2628(param0, 4, 0);
                ov59_021D19B0(param0, 4);
                sub_020359DC(117, &v1, 1);
                ov59_021D28D8(param0, 0);
            } else {
                sub_02005748(1522);
            }
        }
    } else {
        if (param0->unk_4AB0 == 0) {
            if ((sub_0203608C() == 0) && (sub_02035E18() == param0->unk_4AAC)) {
                u8 v2 = 0;

                sub_020359DC(117, &v2, 1);
            }
        }
    }
}

static void ov59_021D1994 (UnkStruct_020961E8 * param0)
{
    return;
}

static int ov59_021D1998 (UnkStruct_020961E8 * param0, int param1)
{
    ov59_021D19B0(param0, 2);
    ov59_021D1994(param0);

    return param1;
}

static void ov59_021D19B0 (UnkStruct_020961E8 * param0, int param1)
{
    param0->unk_3A8 = 30;
    param0->unk_3AC = param1;
}

static int ov59_021D19C0 (UnkStruct_020961E8 * param0, int param1)
{
    if (ov59_021D26B8(param0->unk_4C)) {
        param0->unk_3A8 = param0->unk_3AC;
    }

    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D19E4 (UnkStruct_020961E8 * param0, int param1)
{
    if (sub_0203608C() == 0) {
        int v0 = 0;

        sub_020359DC(117, &v0, 1);
    }

    param0->unk_3A8 = 3;
    ov59_021D1994(param0);

    return param1;
}

static const UnkStruct_ov61_0222C884 Unk_ov59_021D3288 = {
    0x0,
    0x17,
    0xD,
    0x7,
    0x4,
    0xD,
    0x178
};

static int ov59_021D1A14 (UnkStruct_020961E8 * param0, int param1)
{
    param0->unk_384 = sub_02002100(param0->unk_00, &Unk_ov59_021D3288, (1 + (18 + 12)), 11, 51);
    param0->unk_3A8 = 5;

    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D1A44 (UnkStruct_020961E8 * param0, int param1)
{
    int v0;
    u32 v1;

    if (sub_0203608C()) {
        if (param0->unk_4AA0) {
            if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_KEY_UP | PAD_KEY_DOWN)) {
                sub_02005748(1522);
            }

            ov59_021D1994(param0);
            return param1;
        }
    } else {
        if (param0->unk_4AB4 != 0) {
            if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_KEY_UP | PAD_KEY_DOWN)) {
                sub_02005748(1522);
            }

            ov59_021D1994(param0);
            return param1;
        }
    }

    if (ov59_021D2528() != sub_02035E18()) {
        ov59_021D1994(param0);
        return param1;
    }

    v1 = sub_02002114(param0->unk_384, 51);

    if (v1 != 0xffffffff) {
        if (v1 == 0xfffffffe) {
            if (sub_0203608C() == 0) {
                int v2 = 0;

                sub_020359DC(117, &v2, 1);
                ov59_021D28D8(param0, 1);
            }

            ov59_021D19B0(param0, 0);
        } else {
            if (sub_0203608C() == 0) {
                ov59_021D19B0(param0, 11);
                ov59_021D2628(param0, 14, 0);
            } else {
                UnkStruct_02096274 v3;

                MI_CpuClear8(&v3, sizeof(UnkStruct_02096274));

                v3.unk_02 = 0;
                v3.unk_00 = sub_0203608C();

                param0->unk_4AB8 = 1;
                param0->unk_4AC2 = 0;
                param0->unk_3A8 = 6;

                sub_020359DC(112, &v3, sizeof(UnkStruct_02096274));
            }
        }

        param0->unk_384 = NULL;
    }

    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D1B74 (UnkStruct_020961E8 * param0, int param1)
{
    param0->unk_4AC2 = 0;
    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D1B8C (UnkStruct_020961E8 * param0, int param1)
{
    if ((param0->unk_4AC0 != sub_02035E18()) || (param0->unk_4AC0 != ov59_021D2528())) {
        param0->unk_4AC2 = 0;
        param0->unk_3A8 = 8;
        ov59_021D1994(param0);
        return param1;
    }

    param0->unk_4AC2++;

    if (param0->unk_4AC2 > 30) {
        UnkStruct_02096274 v0;

        MI_CpuClear8(&v0, sizeof(UnkStruct_02096274));

        v0.unk_02 = 1;
        v0.unk_00 = sub_0203608C();

        sub_020359DC(112, &v0, sizeof(UnkStruct_02096274));

        param0->unk_4AC2 = 0;
        param0->unk_3A8 = 9;
    }

    ov59_021D1994(param0);
    return param1;
}

static int ov59_021D1C14 (UnkStruct_020961E8 * param0, int param1)
{
    param0->unk_4AB8 = 0;

    ov59_021D19B0(param0, 0);
    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D1C34 (UnkStruct_020961E8 * param0, int param1)
{
    param0->unk_384 = sub_02002100(param0->unk_00, &Unk_ov59_021D3288, (1 + (18 + 12)), 11, 51);
    param0->unk_3A8 = 23;

    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D1C64 (UnkStruct_020961E8 * param0, int param1)
{
    int v0;
    u32 v1;

    if ((ov59_021D2528() != param0->unk_4AAC) || (param0->unk_4AB4 != 0)) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_KEY_UP | PAD_KEY_DOWN)) {
            sub_02005748(1522);
        }

        ov59_021D1994(param0);
        return param1;
    }

    v1 = sub_02002114(param0->unk_384, 51);

    if (v1 != 0xffffffff) {
        if (v1 == 0xfffffffe) {
            int v2 = 0;

            sub_020359DC(117, &v2, 1);
            ov59_021D28D8(param0, 1);
            ov59_021D19B0(param0, 0);
        } else {
            if (sub_0203608C() == 0) {
                param0->unk_3A8 = 24;
                param0->unk_4ABA = ov59_021D2528();
            } else {
                GF_ASSERT(0);
            }
        }

        param0->unk_384 = NULL;
    }

    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D1D14 (UnkStruct_020961E8 * param0, int param1)
{
    if (param0->unk_4ABB == 0) {
        if (sub_020359DC(115, NULL, 0) == 1) {
            param0->unk_4ABB = 1;
        }
    }

    return param1;
}

void ov59_021D1D40 (UnkStruct_020961E8 * param0)
{
    sub_0200B1B8(param0->unk_28, 18, param0->unk_48);
    ov59_021D1784(&param0->unk_36C, param0->unk_48, 0);
    sub_02021D6C(param0->unk_28C[0], 37);

    param0->unk_0C.unk_00 = 1;
}

static int ov59_021D1D70 (UnkStruct_020961E8 * param0, int param1)
{
    int v0, v1;

    v1 = 0;

    if ((sub_0203608C() == 0) && (sub_02035E18() != param0->unk_4ABA)) {
        (void)0;
    }

    if (sub_02035E18() == param0->unk_4A98) {
        param0->unk_3A8 = 26;

        for (v0 = 0; v0 < 5; v0++) {
            (void)0;
        }
    }

    return param1;
}

static int ov59_021D1DA0 (UnkStruct_020961E8 * param0, int param1)
{
    ov59_021D313C(param0->unk_4A9C, param0->unk_FD8);

    param0->unk_3A8 = 27;

    return param1;
}

static int ov59_021D1DC8 (UnkStruct_020961E8 * param0, int param1)
{
    void * v0;

    Unk_021BF67C.unk_68 = 1;
    v0 = sub_0202C1B4(51);

    sub_0202B758(param0->unk_08->unk_10, v0, 4);
    sub_0202CFEC(param0->unk_08->unk_0C, 20);
    sub_02038ED4(&param0->unk_404);

    param0->unk_3A8 = 28;
    return param1;
}

static int ov59_021D1E0C (UnkStruct_020961E8 * param0, int param1)
{
    if ((sub_0203608C() == 0) && (sub_02035E18() != param0->unk_4ABA)) {
        (void)0;
    }

    if (sub_02038EDC(param0->unk_08->unk_00, 2, &param0->unk_404)) {
        sub_020057A4(1624, 8);
        ov59_021D2628(param0, 13, 0);
        ov59_021D19B0(param0, 29);
        sub_02021D6C(param0->unk_28C[0], 0);

        param0->unk_0C.unk_00 = 0;
        param0->unk_3B4 = 0;
        Unk_021BF67C.unk_68 = 0;
        param0->unk_4AA4 = 0;
    }

    return param1;
}

static int ov59_021D1E7C (UnkStruct_020961E8 * param0, int param1)
{
    if (param0->unk_3B4++ > 60) {
        param0->unk_3A8 = 15;
    }

    return param1;
}

static int  ov59_021D1E98 (UnkStruct_020961E8 * param0, int param1)
{
    u8 v0;

    ov59_021D2628(param0, 5, 0);

    v0 = 0;

    ov59_021D19B0(param0, 10);
    ov59_021D1994(param0);

    return param1;
}

static int  ov59_021D1EB8 (UnkStruct_020961E8 * param0, int param1)
{
    if (++param0->unk_3B4 > 60) {
        sub_0200F174(0, 16, 16, 0x0, 16, 1, 51);
        param1 = 3;
    }

    ov59_021D1994(param0);
    return param1;
}

static int ov59_021D1EF4 (UnkStruct_020961E8 * param0, int param1)
{
    param0->unk_384 = sub_02002100(param0->unk_00, &Unk_ov59_021D3288, (1 + (18 + 12)), 11, 51);
    param0->unk_3A8 = 12;

    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D1F24 (UnkStruct_020961E8 * param0, int param1)
{
    int v0;

    if ((param0->unk_4AAC != ov59_021D2528()) || (param0->unk_4AB4 != 0)) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_KEY_UP | PAD_KEY_DOWN)) {
            sub_02005748(1522);
        }

        ov59_021D1994(param0);
        return param1;
    }

    v0 = sub_02002114(param0->unk_384, 51);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            int v1 = 0;

            param0->unk_3A8 = 0;

            sub_020359DC(117, &v1, 1);
            ov59_021D28D8(param0, 1);
        } else {
            param0->unk_3A8 = 13;
            sub_020359DC(113, NULL, 0);
            sub_0200B498(param0->unk_24, 0, sub_02032EE8(0));
        }

        param0->unk_384 = NULL;
    }

    ov59_021D1994(param0);
    return param1;
}

static int ov59_021D1FD0 (UnkStruct_020961E8 * param0, int param1)
{
    if (sub_0203608C() == 0) {
        ov59_021D2628(param0, 5, 0);
    } else {
        sub_0200B498(param0->unk_24, 0, sub_02032EE8(0));
        ov59_021D2628(param0, 16, 0);
    }

    ov59_021D19B0(param0, 14);
    param0->unk_3B4 = 0;

    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D2020 (UnkStruct_020961E8 * param0, int param1)
{
    param0->unk_3B4++;

    if (param0->unk_3B4 > 45) {
        param0->unk_3A8 = 15;
    }

    ov59_021D1994(param0);
    return param1;
}

static int ov59_021D2044 (UnkStruct_020961E8 * param0, int param1)
{
    sub_020364F0(201);
    param0->unk_3A8 = 16;
    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D2064 (UnkStruct_020961E8 * param0, int param1)
{
    if (sub_02036540(201)) {
        sub_020388F4(0, 0);
        sub_0200F174(0, 16, 16, 0x0, 16, 1, 51);

        param1 = 3;
    }

    ov59_021D1994(param0);
    return param1;
}

static int ov59_021D20A4 (UnkStruct_020961E8 * param0, int param1)
{
    if (ov59_021D26B8(param0->unk_4C)) {
        ov59_021D2628(param0, 9, 0);
    }

    param0->unk_3A8 = 18;
    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D20D0 (UnkStruct_020961E8 * param0, int param1)
{
    if (ov59_021D26B8(param0->unk_4C)) {
        param0->unk_3A8 = 10;
    }

    ov59_021D1994(param0);
    return param1;
}

static int ov59_021D20F4 (UnkStruct_020961E8 * param0, int param1)
{
    if ((param0->unk_4C != 0xff) && (ov59_021D26B8(param0->unk_4C) == 0)) {
        sub_0201D730(param0->unk_4C);
    }

    ov59_021D2628(param0, 15, 1);
    param0->unk_3A8 = 20;

    if (sub_0203608C() == 0) {
        ov59_021D28D8(param0, 0);
    }

    param0->unk_4ABC = sub_02035E18();
    param0->unk_4AC4 = (10 * 30);

    ov59_021D1994(param0);

    return param1;
}

static int ov59_021D2154 (UnkStruct_020961E8 * param0, int param1)
{
    if ((param0->unk_4ABC != 0) && (sub_02035E18() != param0->unk_4ABC)) {
        param0->unk_4ABC = 0;
    }

    param0->unk_3A8 = 21;
    param0->unk_3B4 = 0;

    ov59_021D1994(param0);
    return param1;
}

static int  ov59_021D2190 (UnkStruct_020961E8 * param0, int param1)
{
    if ((param0->unk_4ABC != 0) && (sub_02035E18() != param0->unk_4ABC)) {
        param0->unk_4ABC = 0;
    }

    param0->unk_4AC4--;

    if (param0->unk_4AC4 < 0) {
        param0->unk_4ABC = 0;
    }

    if ((++param0->unk_3B4 > 60) && (param0->unk_4ABC == 0)) {
        param0->unk_3A8 = 0;

        if (sub_0203608C() == 0) {
            ov59_021D28D8(param0, 1);
        }
    }

    ov59_021D1994(param0);
    return param1;
}

void ov59_021D2204 (UnkStruct_020961E8 * param0, int param1, u8 param2)
{
    switch (param1) {
    case 2:
        ov59_021D26D8(param0);
        break;
    case 13:
        if (param0->unk_384 != NULL) {
            sub_02002154(param0->unk_384, 51);
            param0->unk_384 = NULL;
        }
        break;
    case 25:
        if (ov59_021D26B8(param0->unk_4C) == 0) {
            sub_0201D730(param0->unk_4C);
        }

        ov59_021D2628(param0, 12, 0);

        if (param0->unk_384 != NULL) {
            sub_02002154(param0->unk_384, 51);
            param0->unk_384 = NULL;
        }
        break;
    case 19:
        if (param0->unk_4AB8 == 1) {
            return;
        }

        sub_0200B498(param0->unk_24, 0, sub_02032EE8(param2));

        if (param2 == sub_0203608C()) {
            return;
        }

        if (param0->unk_384 != NULL) {
            sub_02002154(param0->unk_384, 51);
            param0->unk_384 = NULL;
        }

        if (sub_0203608C() == 0) {
            param0->unk_4AB4 &= 0xffff ^ param2;
        }

        break;
    case 7:
        break;
    case 8:
        break;
    default:
        GF_ASSERT("FALSE");
        return;
    }

    param0->unk_3A8 = param1;
}

void ov59_021D22EC (UnkStruct_020961E8 * param0, int param1, u8 param2)
{
    if (param0->unk_3A8 == 3) {
        switch (param1) {
        case 1:
            sub_0200B498(param0->unk_24, 0, sub_02032EE8(param2));
            ov59_021D28D8(param0, 1);

            param0->unk_3A8 = param1;
            param0->unk_4AAC = sub_02035E18();
            param0->unk_4AB4 = 0;

            if (sub_0203608C() == 0) {
                int v0 = 1;
                sub_020359DC(117, &v0, 1);
            }
            break;
        case 19:
            sub_0200B498(param0->unk_24, 0, sub_02032EE8(param2));

            if (param2 == sub_0203608C()) {
                return;
            }

            if (sub_0203608C() == 0) {
                param0->unk_4AB4 &= 0xffff ^ param2;
            }

            param0->unk_3A8 = param1;
            break;
        default:
            GF_ASSERT(FALSE);
            return;
        }
    } else if (param1 == 1) {
        param0->unk_4AB4 = 0;
        param0->unk_4AAC = sub_02035E18();
    }
}

static void ov59_021D23B0 (u16 * param0)
{
    fx32 v0;
    GXRgb v1;
    int v2, v3, v4;

    *param0 += 10;

    if (*param0 > 360) {
        *param0 = 0;
    }

    v0 = sub_0201D250(*param0);
    v3 = 15 + (v0 * 10) / FX32_ONE;
    v1 = GX_RGB(29, v3, 0);

    GX_LoadOBJPltt((u16 *)&v1, 5 * 2, 2);
    GX_LoadOBJPltt((u16 *)&v1, (5 + 16) * 2, 2);
}

static int ov59_021D23FC (void)
{
    int v0, v1;
    UnkStruct_02025E6C * v2;

    v1 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        v2 = sub_02032EE8(v0);

        if (v2 != NULL) {
            v1++;
        }
    }

    return v1;
}

static BOOL ov59_021D2418 (UnkStruct_0205AA50 * param0, int param1, u32 param2, UnkStruct_020961E8 * param3)
{
    int v0, v1 = sub_0203608C();
    UnkStruct_02023790 * v2 = NULL;

    if (!ov59_021D254C(param3)) {
        return 0;
    }

    sub_0201ADA4(&param0[0], 0x0);

    for (v0 = 0; v0 < 5; v0++) {
        if (param3->unk_3C8[v0][0] != NULL) {
            u16 v3 = sub_02025F24(param3->unk_3C8[v0][0]);

            sub_02025EF4(param3->unk_3C8[v0][0], param3->unk_2C[v0]);
            sub_0200B60C(param3->unk_24, 0, v3, 5, 2, 1);

            v2 = sub_0200B29C(param3->unk_24, param3->unk_28, 1, 51);

            if (v1 == v0) {
                sub_0201D78C(&param0[0], 0, param3->unk_2C[v0], 5, 1 + v0 * 18, 0xff, (u32)(((2 & 0xff) << 16) | ((3 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
                sub_0201D78C(&param0[0], 0, v2, 5 + 13 * 5, 1 + v0 * 18, 0xff, (u32)(((2 & 0xff) << 16) | ((3 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
            } else {
                sub_0201D78C(&param0[0], 0, param3->unk_2C[v0], 5, 1 + v0 * 18, 0xff, param2, NULL);
                sub_0201D78C(&param0[0], 0, v2, 5 + 13 * 5, 1 + v0 * 18, 0xff, param2, NULL);
            }

            sub_020237BC(v2);
        }
    }

    sub_0201A954(&param0[0]);

    return 1;
}

static void ov59_021D2524 (UnkStruct_020961E8 * param0)
{
    return;
}

static int ov59_021D2528 (void)
{
    int v0, v1;

    for (v1 = 0, v0 = 0; v0 < 5; v0++) {
        if (sub_02032EE8(v0) != NULL) {
            v1++;
        }
    }

    return v1;
}

int ov59_021D2544 (void)
{
    return ov59_021D2528();
}

static BOOL ov59_021D254C (UnkStruct_020961E8 * param0)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_3C8[v0][1] = param0->unk_3C8[v0][0];
        param0->unk_3C8[v0][0] = sub_02032EE8(v0);
        param0->unk_4AC8[v0][1] = param0->unk_4AC8[v0][0];

        if (param0->unk_3C8[v0][0] != NULL) {
            param0->unk_4AC8[v0][0].val2.unk_00 = sub_02025F20(param0->unk_3C8[v0][0]);
            param0->unk_4AC8[v0][0].val2.unk_04 = 1;
        } else {
            param0->unk_4AC8[v0][0].val1 = 0;
        }
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_3C8[v0][1] != param0->unk_3C8[v0][0]) {
            v1 = 1;

            if (param0->unk_3C8[v0][0] == NULL) {
                param0->unk_3F0[v0] = 3;
            } else {
                param0->unk_3F0[v0] = 1;
            }
        } else {
            if (param0->unk_4AC8[v0][0].val1 != param0->unk_4AC8[v0][1].val1) {
                v1 = 1;

                if (param0->unk_4AC8[v0][0].val2.unk_04 == 0) {
                    param0->unk_3F0[v0] = 3;
                } else {
                    param0->unk_3F0[v0] = 1;
                }
            }
        }
    }

    return v1;
}

static void ov59_021D2628 (UnkStruct_020961E8 * param0, int param1, int param2)
{
    UnkStruct_02023790 * v0;

    v0 = sub_02023790((90 * 2), 51);

    sub_0200B1B8(param0->unk_28, param1, v0);
    sub_0200C388(param0->unk_24, param0->unk_44, v0);
    sub_020237BC(v0);
    sub_0201ADA4(&param0->unk_34C, 0xf0f);
    sub_0200E060(&param0->unk_34C, 0, 1, 10);

    if (param2 == 0) {
        param0->unk_4C = sub_0201D738(&param0->unk_34C, 1, param0->unk_44, 0, 0, ov59_021D28D4(param0), NULL);
    } else {
        sub_0201D738(&param0->unk_34C, 1, param0->unk_44, 0, 0, 0, NULL);
        param0->unk_4C = 0xff;
    }
}

static int ov59_021D26B8 (int param0)
{
    if (param0 == 0xff) {
        return 1;
    }

    if (sub_0201D724(param0) == 0) {
        return 1;
    }

    return 0;
}

static void ov59_021D26D8 (UnkStruct_020961E8 * param0)
{
    sub_0200E084(&param0->unk_34C, 0);
}

static void ov59_021D26E8 (UnkStruct_020961E8 * param0)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        switch (param0->unk_3F0[v0]) {
        case 0:
            break;
        case 1:
        {
            int v2, v3;

            GF_ASSERT(param0->unk_3C8[v0][0] != NULL);

            v3 = sub_02025F30(param0->unk_3C8[v0][0]);
            v2 = sub_02025F8C(param0->unk_3C8[v0][0]);

            if (sub_0203608C() == v0) {
                sub_02021D6C(param0->unk_28C[v0 + 1], 38 + v3 * 2);
            } else {
                ov59_021D2860(param0->unk_390, param0->unk_3A0, v0, v2, v3);
                sub_02021D6C(param0->unk_28C[v0 + 1], 27 + v0 * 2);
            }
        }
            sub_02021CAC(param0->unk_28C[v0 + 1], 1);
            param0->unk_3F0[v0] = 2;
            v1 = 1;
            break;
        case 2:
            break;
        case 3:
            if (sub_0203608C() == v0) {
                int v4 = sub_02025F30(param0->unk_3C8[v0][0]);
                sub_02021D6C(param0->unk_28C[v0 + 1], 38 + v4 * 2 + 1);
            } else {
                sub_02021D6C(param0->unk_28C[v0 + 1], 27 + v0 * 2 + 1);
            }

            param0->unk_3F0[v0] = 0;
            break;
        }
    }

    if (v1) {
        sub_02005748(1615);
    }
}

static void ov59_021D27FC (UnkStruct_020961E8 * param0, NARC * param1)
{
    param0->unk_398[0] = sub_02006F88(104, 8, &(param0->unk_3A0[0]), 51);
    param0->unk_398[1] = sub_020071EC(param1, 7, &(param0->unk_3A0[1]), 51);
    param0->unk_388[0] = sub_02006F50(104, 32, 1, &(param0->unk_390[0]), 51);
    param0->unk_388[1] = sub_020071B4(param1, 9, 1, &(param0->unk_390[1]), 51);
}

static const u16 Unk_ov59_021D3290[] = {
    0x1A0,
    0x7A0,
    0xDA0,
    0x13A0,
    0x19A0
};

static void ov59_021D2860 (NNSG2dCharacterData * param0[2], NNSG2dPaletteData * param1[2], int param2, int param3, int param4)
{
    int v0;
    u8 * v1, * v2;

    v0 = sub_0205CA0C(param4, param3);

    v1 = (u8 *)param0[1]->pRawData;
    v2 = (u8 *)param1[1]->pRawData;

    GX_LoadOBJ(&v1[(3 * 4 * 4) * v0 * 0x20], Unk_ov59_021D3290[param2], (3 * 4 * 4) * 0x20);
    GX_LoadOBJPltt(&v2[v0 * 32], (param2 + 7) * 32, 32);
}

static void ov59_021D28A4 (UnkStruct_020961E8 * param0)
{
    Heap_FreeToHeap(param0->unk_398[0]);
    Heap_FreeToHeap(param0->unk_398[1]);

    Heap_FreeToHeap(param0->unk_388[0]);
    Heap_FreeToHeap(param0->unk_388[1]);
}

static int ov59_021D28D4 (UnkStruct_020961E8 * param0)
{
    return 1;
}

static void ov59_021D28D8 (UnkStruct_020961E8 * param0, int param1)
{
    if (sub_0203608C() == 0) {
        if (param1 == -1) {
            sub_02037B58(1);
        } else {
            int v0 = sub_02035E18() + param1;

            if (v0 > 5) {
                v0 = 5;
            }

            sub_02037B58(v0);
        }

        if (param1 == -1) {
            param0->unk_4AB9 = 2;
        } else if (param1 == 0) {
            param0->unk_4AB9 = 1;
        } else {
            param0->unk_4AB9 = 0;
        }
    }
}

static int ov59_021D292C (UnkStruct_020961E8 * param0, int param1)
{
    int v0;

    v0 = ov59_021D2528();

    if (v0 > param0->unk_4AAC) {
        u8 v1 = 1;

        sub_020359DC(117, &v1, 1);
        param0->unk_4AB0 = 1;
    } else {
        param0->unk_4AB0 = 0;
    }

    if (v0 == param0->unk_4AA8) {
        return 1;
    }

    switch (v0) {
    case 1:
        if ((sub_02035E18() > 1) || (sub_020318EC() > 1)) {
            return 1;
        }

        param0->unk_3A8 = 17;
        ov59_021D28D8(param0, -1);

        if (param0->unk_384 != NULL) {
            sub_02002154(param0->unk_384, 51);
            param0->unk_384 = NULL;
        }

        return 2;
        break;
    case 2:
    case 3:
    case 4:
        sub_0205BEA8(2);

        if (v0 < param0->unk_4AA8) {
            switch (param0->unk_4AB9) {
            case 0:
                ov59_021D28D8(param0, param1);
                break;
            case 1:
                ov59_021D28D8(param0, 0);
                break;
            }

            param0->unk_4AAC = sub_02035E18();
        }
        break;
    case 5:
        sub_0205BEA8(9);
        ov59_021D28D8(param0, param1);
        break;
    }

    param0->unk_4AA8 = ov59_021D2528();

    return 1;
}
