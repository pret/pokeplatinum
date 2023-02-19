#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"
#include "struct_defs/struct_0209BF64.h"
#include "struct_defs/struct_0209C194.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay109/struct_ov109_021D5140.h"
#include "overlay109/struct_ov109_021D5140_sub1.h"
#include "overlay109/struct_ov109_021D5140_sub2.h"
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
#include "unk_0205C980.h"
#include "unk_0209BDF8.h"
#include "overlay109/ov109_021D3D50.h"

static void ov109_021D40A8(void * param0);
static void ov109_021D40D0(void);
static void ov109_021D40F0(UnkStruct_02018340 * param0);
static void ov109_021D41F8(UnkStruct_ov109_021D5140 * param0, NARC * param1);
static void ov109_021D4294(UnkStruct_ov109_021D5140 * param0);
static void ov109_021D42CC(UnkStruct_02018340 * param0);
static void ov109_021D4300(UnkStruct_ov109_021D5140 * param0, NARC * param1);
static void ov109_021D43EC(void);
static void ov109_021D441C(UnkStruct_ov109_021D5140 * param0, NARC * param1);
static void ov109_021D4518(UnkStruct_ov109_021D5140 * param0);
static void ov109_021D45F4(UnkStruct_ov109_021D5140 * param0);
static void ov109_021D471C(UnkStruct_ov109_021D5140 * param0);
static void ov109_021D48D0(UnkStruct_ov109_021D5140 * param0);
static void ov109_021D5314(u16 * param0);
static BOOL ov109_021D537C(UnkStruct_0205AA50 * param0, int param1, u32 param2, UnkStruct_ov109_021D5140 * param3);
static BOOL ov109_021D54CC(UnkStruct_ov109_021D5140 * param0);
static void ov109_021D55A8(UnkStruct_ov109_021D5140 * param0, int param1, int param2);
static int ov109_021D5638(int param0);
static void ov109_021D5658(UnkStruct_ov109_021D5140 * param0);
static int ov109_021D5360(void);
static int ov109_021D548C(void);
static u32 ov109_021D54A8(void);
static void ov109_021D5488(UnkStruct_ov109_021D5140 * param0);
static void ov109_021D46D8(UnkStruct_0205AA50 * param0, UnkStruct_02023790 * param1, int param2);
static void ov109_021D48EC(UnkStruct_ov109_021D5140 * param0, int param1);
static void ov109_021D5668(UnkStruct_ov109_021D5140 * param0);
static void ov109_021D577C(UnkStruct_ov109_021D5140 * param0, NARC * param1);
static void ov109_021D5824(UnkStruct_ov109_021D5140 * param0);
static void ov109_021D57E0(NNSG2dCharacterData * param0[2], NNSG2dPaletteData * param1[2], int param2, int param3, int param4);
static void ov109_021D4044(UnkStruct_0201CD38 * param0, void * param1);
static int ov109_021D5854(UnkStruct_ov109_021D5140 * param0);
static void ov109_021D5858(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D58AC(UnkStruct_ov109_021D5140 * param0, int param1);
static void ov109_021D47B8(UnkStruct_ov109_021D5140 * param0);
static int ov109_021D474C(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D478C(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4C4C(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4C7C(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4CA8(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4B94(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4B64(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4950(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4980(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4AA8(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4AC0(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4B44(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4D9C(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4DBC(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4DF8(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4E28(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4ED8(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4F4C(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4F6C(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4FAC(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4FD8(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D48FC(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4FFC(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D5098(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D505C(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D48D4(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4920(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4CC8(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4D20(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4D80(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D4F28(UnkStruct_ov109_021D5140 * param0, int param1);
static int ov109_021D510C(UnkStruct_ov109_021D5140 * param0, int param1);
static void ov109_021D59A8(UnkStruct_021C0794 * param0, const UnkStruct_ov109_021D5140_sub2 * param1);

static int(*const Unk_ov109_021D5E9C[])(UnkStruct_ov109_021D5140 *, int) = {
    ov109_021D474C,
    ov109_021D48D4,
    ov109_021D4920,
    ov109_021D478C,
    ov109_021D4950,
    ov109_021D4980,
    ov109_021D4AA8,
    ov109_021D4AC0,
    ov109_021D4B44,
    ov109_021D4D9C,
    ov109_021D4DBC,
    ov109_021D4DF8,
    ov109_021D4E28,
    ov109_021D4ED8,
    ov109_021D4F28,
    ov109_021D4F4C,
    ov109_021D4F6C,
    ov109_021D4FAC,
    ov109_021D4FD8,
    ov109_021D4FFC,
    ov109_021D505C,
    ov109_021D5098,
    ov109_021D4B64,
    ov109_021D4B94,
    ov109_021D4C4C,
    ov109_021D4C7C,
    ov109_021D4CA8,
    ov109_021D4CC8,
    ov109_021D4D20,
    ov109_021D4D80,
    ov109_021D48FC,
    ov109_021D510C,
};

int ov109_021D3D50 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov109_021D5140 * v0;
    NARC * v1;
    UnkStruct_0209C194 * v2 = sub_02006840(param0);

    switch (*param1) {
    case 0:
        sub_02017798(NULL, NULL);
        sub_020177A4();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(3, 95, 0x80000);

        v1 = NARC_ctor(86, 95);
        GF_ASSERT(v1);

        v0 = sub_0200681C(param0, sizeof(UnkStruct_ov109_021D5140), 95);
        memset(v0, 0, sizeof(UnkStruct_ov109_021D5140));

        v2->unk_3C = v0;
        v0->unk_0C = v2;
        v0->unk_10 = v2->unk_34;
        v0->unk_14 = sub_02018340(95);
        v0->unk_34 = sub_0200B358(95);
        v0->unk_38 = sub_0200B144(0, 26, 377, 95);

        sub_02017DD4(4, 8);
        ov109_021D40D0();
        ov109_021D40F0(v0->unk_14);
        sub_0200F174(0, 17, 17, 0x0, 16, 1, 95);
        ov109_021D4300(v0, v1);
        sub_02017798(ov109_021D40A8, v0);
        ov109_021D41F8(v0, v1);
        ov109_021D43EC();
        ov109_021D441C(v0, v1);
        ov109_021D4518(v0);
        ov109_021D45F4(v0);
        sub_02004550(52, 0, 0);
        sub_0209BE50(v2->unk_34);
        sub_020378B8();
        sub_02037B58(3);

        if (sub_0203608C() == 0) {
            sub_0205BEA8(13);
        }

        sub_02039734();
        v0->unk_30 = sub_0200DA04(ov109_021D4044, v0, 5);
        NARC_dtor(v1);
        (*param1)++;
        break;
    case 1:
        (*param1) = 0;
        return 1;
    }

    return 0;
}

int ov109_021D3EB0 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov109_021D5140 * v0 = sub_0200682C(param0);

    if ((sub_0203608C() == 0) && (v0->unk_10->unk_30 != 0)) {
        v0->unk_10->unk_30 &= sub_020318EC();
    }

    switch (v0->unk_00) {
    case 0:
        if (sub_0200F2AC()) {
            v0->unk_00 = 1;

            if (sub_0203608C() != 0) {
                if (ov109_021D548C() > 2) {
                    sub_0209BEBC(v0->unk_10, 4, NULL, 0);
                }
            }
        }

        break;
    case 1:

        if (Unk_ov109_021D5E9C[v0->unk_3B8] != NULL) {
            v0->unk_00 = (*Unk_ov109_021D5E9C[v0->unk_3B8])(v0, v0->unk_00);
        }

        if (v0->unk_10->unk_24 == 0) {
            ov109_021D537C(
                v0->unk_30C, 0, (u32)(((1 & 0xff) << 16) | ((3 & 0xff) << 8) | ((0 & 0xff) << 0)), v0);
        }

        ov109_021D5668(v0);

        if (sub_0203608C() == 0) {
            int v1 = ov109_021D58AC(v0, 1);

            if (v0->unk_00 == 1) {
                v0->unk_00 = v1;
            }
        }

        break;
    case 2:
        if (Unk_ov109_021D5E9C[v0->unk_3B8] != NULL) {
            v0->unk_00 = (*Unk_ov109_021D5E9C[v0->unk_3B8])(v0, v0->unk_00);
        }

        break;
    case 3:
        if (sub_0200F2AC()) {
            return 1;
        }

        break;
    }

    sub_020219F8(v0->unk_60);
    return 0;
}

int ov109_021D3F9C (UnkStruct_020067E8 * param0, int * param1)
{
    int v0;
    UnkStruct_ov109_021D5140 * v1 = sub_0200682C(param0);

    sub_0200DA58(v1->unk_30);
    sub_0200A4E4(v1->unk_200[2][0]);
    sub_0200A6DC(v1->unk_200[2][1]);

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(v1->unk_1F0[v0]);
    }

    sub_02021964(v1->unk_60);
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();

    ov109_021D471C(v1);
    ov109_021D42CC(v1->unk_14);

    sub_0200B190(v1->unk_38);
    sub_0200B3F0(v1->unk_34);

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    sub_02017798(NULL, NULL);

    v1->unk_0C->unk_10 = v1->unk_08;
    v1->unk_0C->unk_08 = ov109_021D548C();
    v1->unk_0C->unk_0C = ov109_021D54A8();

    ov109_021D4294(v1);
    sub_02006830(param0);
    Heap_Destroy(95);

    return 1;
}

static const u8 Unk_ov109_021D5DA6[][2] = {
    {0x8, 0x2},
    {0x8, 0x3},
    {0x8, 0x4},
    {0x18, 0x0},
    {0x0, 0xFF}
};

static void ov109_021D4044 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov109_021D5140 * v0 = (UnkStruct_ov109_021D5140 *)param1;
    UnkStruct_ov109_021D5140_sub1 * v1 = &v0->unk_1C;

    if (v1->unk_00) {
        if (v1->unk_08 > Unk_ov109_021D5DA6[v1->unk_04][0]) {
            u16 * v2;

            v1->unk_08 = 0;
            v1->unk_04++;

            if (Unk_ov109_021D5DA6[v1->unk_04][1] == 0xff) {
                v1->unk_04 = 0;
            }

            v2 = (u16 *)v1->unk_10->pRawData;
            GX_LoadOBJPltt(&v2[16 * Unk_ov109_021D5DA6[v1->unk_04][1]], 0, 32);
        } else {
            v0->unk_1C.unk_08++;
        }

        ov109_021D5314(&v0->unk_418);
    }
}

static void ov109_021D40A8 (void * param0)
{
    sub_0201DCAC();
    sub_0200A858();
    sub_0201C2B8((UnkStruct_02018340 *)param0);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov109_021D40D0 (void)
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

static void ov109_021D40F0 (UnkStruct_02018340 * param0)
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

    sub_02019690(0, 32, 0, 95);
    sub_02019690(4, 32, 0, 95);
}

static void ov109_021D41F8 (UnkStruct_ov109_021D5140 * param0, NARC * param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_3C[v0] = sub_02023790(7 + 1, 95);
        param0->unk_3D8[v0][0] = NULL;
        param0->unk_3D8[v0][1] = NULL;
        param0->unk_400[v0] = 0;
    }

    param0->unk_54 = sub_02023790((90 * 2), 95);
    param0->unk_58 = sub_02023790((20 * 2), 95);
    param0->unk_3B8 = 0;

    sub_0200B1B8(param0->unk_38, 17, param0->unk_58);
    ov109_021D577C(param0, param1);

    param0->unk_41C = sub_0205CA4C(95);
    param0->unk_1C.unk_00 = 0;
    param0->unk_1C.unk_08 = 0;
    param0->unk_1C.unk_04 = 0;
    param0->unk_1C.unk_0C = sub_020071EC(param1, 1, &param0->unk_1C.unk_10, 95);
    param0->unk_4AA8 = 0;
    param0->unk_394 = NULL;
    param0->unk_10->unk_2C = 2;
}

static void ov109_021D4294 (UnkStruct_ov109_021D5140 * param0)
{
    int v0;

    ov109_021D5824(param0);
    Heap_FreeToHeap(param0->unk_1C.unk_0C);
    Heap_FreeToHeap(param0->unk_41C);

    for (v0 = 0; v0 < 5; v0++) {
        sub_020237BC(param0->unk_3C[v0]);
    }

    sub_020237BC(param0->unk_58);
    sub_020237BC(param0->unk_54);
}

static void ov109_021D42CC (UnkStruct_02018340 * param0)
{
    sub_02019044(param0, 6);
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
    Heap_FreeToHeap(param0);
}

static void ov109_021D4300 (UnkStruct_ov109_021D5140 * param0, NARC * param1)
{
    UnkStruct_02018340 * v0 = param0->unk_14;

    sub_02007130(param1, 0, 0, 0, 16 * 16 * 2, 95);
    sub_02006E84(12, 12, 4, 0, 16 * 2, 95);
    sub_02002E98(0, 13 * 0x20, 95);
    sub_02002E98(4, 13 * 0x20, 95);
    sub_02006E3C(12, 10, v0, 6, 0, 0, 1, 95);
    sub_02006E60(12, 11, v0, 6, 0, 0, 1, 95);
    sub_020070E8(param1, 2, v0, 1, 0, 32 * 8 * 0x20, 1, 95);
    sub_0200710C(param1, 3, v0, 1, 0, 32 * 24 * 2, 1, 95);
    sub_0200DD0C(v0, 0, 1, 10,
                 GameOptions_GetFrameStyle(param0->unk_0C->unk_14.unk_10), 95);
    sub_0200DAA4(v0, 0, 1 + (18 + 12), 11, 0, 95);
}

static void ov109_021D43EC (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20, 2048, 2048, 95
        };

        sub_0201E86C(&v0);
    }

    sub_0201F834(20, 95);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov109_021D441C (UnkStruct_ov109_021D5140 * param0, NARC * param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 126, 0, 32, 0, 126, 0, 32, 95);

    param0->unk_60 = sub_020095C4(30, &param0->unk_64, 95);
    GF_ASSERT(param0->unk_60);

    sub_0200964C(&param0->unk_64, 0, (256 * FX32_ONE));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_1F0[v0] = sub_02009714(3, v0, 95);
    }

    param0->unk_200[2][0] = sub_02009A4C(param0->unk_1F0[0], param1, 12, 1, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 95);
    param0->unk_200[2][1] = sub_02009B04(param0->unk_1F0[1], param1, 1, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 15, 95);
    param0->unk_200[2][2] = sub_02009BC4(param0->unk_1F0[2], param1, 13, 1, 2, 2, 95);
    param0->unk_200[2][3] = sub_02009BC4(param0->unk_1F0[3], param1, 14, 1, 2, 3, 95);

    sub_0200A328(param0->unk_200[2][0]);
    sub_0200A5C8(param0->unk_200[2][1]);
}

static const u16 Unk_ov109_021D5DD0[][2] = {
    {0xCC, 0x54},
    {0xCC, 0x35},
    {0xE9, 0x48},
    {0xDF, 0x67},
    {0xB8, 0x67},
    {0xAE, 0x48}
};

static void ov109_021D4518 (UnkStruct_ov109_021D5140 * param0)
{
    int v0;

    sub_020093B4(&param0->unk_278, 2, 2, 2, 2, 0xffffffff, 0xffffffff, 0, 1, param0->unk_1F0[0], param0->unk_1F0[1], param0->unk_1F0[2], param0->unk_1F0[3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v1;

        v1.unk_00 = param0->unk_60;
        v1.unk_04 = &param0->unk_278;
        v1.unk_08.z = 0;
        v1.unk_14.x = FX32_ONE;
        v1.unk_14.y = FX32_ONE;
        v1.unk_14.z = FX32_ONE;
        v1.unk_20 = 0;
        v1.unk_24 = 1;
        v1.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v1.unk_2C = 95;

        for (v0 = 0; v0 < 5; v0++) {
            v1.unk_08.x = FX32_ONE * Unk_ov109_021D5DD0[v0 + 1][0];
            v1.unk_08.y = FX32_ONE * Unk_ov109_021D5DD0[v0 + 1][1];

            param0->unk_29C[v0 + 1] = sub_02021AA0(&v1);

            sub_02021CC8(param0->unk_29C[v0 + 1], 1);
            sub_02021D6C(param0->unk_29C[v0 + 1], 27 + (v0 - 1) * 2);
            sub_02021CAC(param0->unk_29C[v0 + 1], 0);
        }

        for (v0 = 0; v0 < 5; v0++) {
            v1.unk_08.x = FX32_ONE * 24;
            v1.unk_08.y = FX32_ONE * (32 + 32 * v0) + (256 * FX32_ONE);
        }
    }
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov109_021D45F4 (UnkStruct_ov109_021D5140 * param0)
{
    sub_0201A7E8(param0->unk_14, &param0->unk_36C, 5, 26, 20, 6, 2, 13, 1 + 30 * 15);
    sub_0201ADA4(&param0->unk_36C, 0x0);
    sub_0201A7E8(param0->unk_14, &param0->unk_35C, 0, 2, 19, 27, 4, 13, (1 + (18 + 12) + 9));
    sub_0201ADA4(&param0->unk_35C, 0xf0f);
    sub_0201A7E8(param0->unk_14, &param0->unk_37C, 0, 3, 1, 26, 2, 15, ((1 + (18 + 12) + 9) + 27 * 4));
    ov109_021D46D8(&param0->unk_37C, param0->unk_58, 0);

    {
        int v0;

        sub_0201A7E8(param0->unk_14, &param0->unk_30C[0], 0, 2, 6, 16, 11, 15, (((1 + (18 + 12) + 9) + 27 * 4) + 26 * 2));
        sub_0201ADA4(&param0->unk_30C[0], 0);
        ov109_021D537C(param0->unk_30C, 0, (u32)(((1 & 0xff) << 16) | ((3 & 0xff) << 8) | ((0 & 0xff) << 0)), param0);
    }
}

static void ov109_021D46D8 (UnkStruct_0205AA50 * param0, UnkStruct_02023790 * param1, int param2)
{
    int v0 = sub_02002D7C(1, param1, 0);
    int v1 = (26 * 8 - v0) / 2;

    sub_0201ADA4(param0, 0x0);
    sub_0201D78C(param0, 1, param1, v1, 1, param2, (u32)(((1 & 0xff) << 16) | ((4 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
}

static void ov109_021D471C (UnkStruct_ov109_021D5140 * param0)
{
    int v0;

    sub_0201A8FC(&param0->unk_30C[0]);
    sub_0201A8FC(&param0->unk_37C);
    sub_0201A8FC(&param0->unk_36C);
    sub_0201A8FC(&param0->unk_35C);
}

static int ov109_021D474C (UnkStruct_ov109_021D5140 * param0, int param1)
{
    sub_020388F4(0, 1);

    if (sub_0203608C() == 0) {
        if (sub_02035E18() >= 2) {
            ov109_021D55A8(param0, 2, 0);
        }
    } else {
        ov109_021D55A8(param0, 8, 0);
    }

    ov109_021D48EC(param0, 3);

    return param1;
}

static int ov109_021D478C (UnkStruct_ov109_021D5140 * param0, int param1)
{
    ov109_021D47B8(param0);

    if (sub_0203608C() == 0) {
        if (ov109_021D5360() != 1) {
            ov109_021D5488(param0);
        }
    } else {
        ov109_021D5488(param0);
    }

    return param1;
}

static void ov109_021D47B8 (UnkStruct_ov109_021D5140 * param0)
{
    if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
        if (sub_0203608C() == 0) {
            if ((ov109_021D548C() == param0->unk_10->unk_2C) && (param0->unk_10->unk_30 == 0)) {
                u8 v0 = 1;

                ov109_021D55A8(param0, 3, 0);
                ov109_021D48EC(param0, 22);
                sub_0209BEBC(param0->unk_10, 7, &v0, 1);
                ov109_021D5858(param0, 0);
            } else {
                sub_02005748(1522);
            }
        }
    } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
        if (sub_0203608C()) {
            if (param0->unk_10->unk_28 == 0) {
                ov109_021D55A8(param0, 4, 0);
                ov109_021D48EC(param0, 4);
            } else {
                sub_02005748(1522);
            }
        } else {
            if ((sub_02035E18() == param0->unk_10->unk_2C) && (param0->unk_10->unk_30 == 0)) {
                u8 v1 = 1;

                ov109_021D55A8(param0, 4, 0);
                ov109_021D48EC(param0, 4);
                sub_0209BEBC(param0->unk_10, 7, &v1, 1);
                ov109_021D5858(param0, 0);
            } else {
                sub_02005748(1522);
            }
        }
    } else {
        if (param0->unk_4AAC == 0) {
            if ((sub_0203608C() == 0) && (sub_02035E18() == param0->unk_10->unk_2C)) {
                u8 v2 = 0;

                sub_0209BEBC(param0->unk_10, 7, &v2, 1);
            }
        }
    }
}

static void ov109_021D48D0 (UnkStruct_ov109_021D5140 * param0)
{
    return;
}

static int ov109_021D48D4 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    ov109_021D48EC(param0, 2);
    ov109_021D48D0(param0);

    return param1;
}

static void ov109_021D48EC (UnkStruct_ov109_021D5140 * param0, int param1)
{
    param0->unk_3B8 = 30;
    param0->unk_3BC = param1;
}

static int ov109_021D48FC (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if (ov109_021D5638(param0->unk_5C)) {
        param0->unk_3B8 = param0->unk_3BC;
    }

    ov109_021D48D0(param0);

    return param1;
}

static int ov109_021D4920 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if (sub_0203608C() == 0) {
        int v0 = 0;

        sub_0209BEBC(param0->unk_10, 7, &v0, 1);
    }

    param0->unk_3B8 = 3;
    ov109_021D48D0(param0);

    return param1;
}

static const UnkStruct_ov61_0222C884 Unk_ov109_021D5D94 = {
    0x0,
    0x17,
    0xD,
    0x7,
    0x4,
    0xD,
    0x178
};

static int ov109_021D4950 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    param0->unk_394 = sub_02002100(param0->unk_14, &Unk_ov109_021D5D94, (1 + (18 + 12)), 11, 95);
    param0->unk_3B8 = 5;

    ov109_021D48D0(param0);
    return param1;
}

static int ov109_021D4980 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    int v0;
    u32 v1;

    if (sub_0203608C()) {
        if (param0->unk_10->unk_28) {
            if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_KEY_UP | PAD_KEY_DOWN)) {
                sub_02005748(1522);
            }

            ov109_021D48D0(param0);
            return param1;
        }
    } else {
        if (param0->unk_10->unk_30 != 0) {
            if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_KEY_UP | PAD_KEY_DOWN)) {
                sub_02005748(1522);
            }

            ov109_021D48D0(param0);
            return param1;
        }
    }

    if (ov109_021D548C() != sub_02035E18()) {
        ov109_021D48D0(param0);
        return param1;
    }

    v1 = sub_02002114(param0->unk_394, 95);

    if (v1 != 0xffffffff) {
        if (v1 == 0xfffffffe) {
            if (sub_0203608C() == 0) {
                int v2 = 0;

                sub_0209BEBC(param0->unk_10, 7, &v2, 1);
                ov109_021D5858(param0, 1);
            }

            ov109_021D48EC(param0, 0);
        } else {
            if (sub_0203608C() == 0) {
                ov109_021D48EC(param0, 11);
                ov109_021D55A8(param0, 14, 0);
            } else {
                UnkStruct_0209BF64 v3;

                MI_CpuClear8(&v3, sizeof(UnkStruct_0209BF64));
                v3.unk_02 = 0;
                v3.unk_00 = sub_0203608C();

                param0->unk_4AB4 = 1;
                param0->unk_4AC0 = 0;
                param0->unk_3B8 = 6;

                sub_0209BEBC(param0->unk_10, 2, &v3, sizeof(UnkStruct_0209BF64));
            }
        }

        param0->unk_394 = NULL;
    }

    ov109_021D48D0(param0);

    return param1;
}

static int ov109_021D4AA8 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    param0->unk_4AC0 = 0;
    ov109_021D48D0(param0);

    return param1;
}

static int ov109_021D4AC0 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if ((param0->unk_10->unk_38 != sub_02035E18()) || (param0->unk_10->unk_38 != ov109_021D548C())) {
        param0->unk_4AC0 = 0;
        param0->unk_3B8 = 8;
        ov109_021D48D0(param0);
        return param1;
    }

    param0->unk_4AC0++;

    if (param0->unk_4AC0 > 30) {
        UnkStruct_0209BF64 v0;

        MI_CpuClear8(&v0, sizeof(UnkStruct_0209BF64));
        v0.unk_02 = 1;
        v0.unk_00 = sub_0203608C();

        sub_0209BEBC(param0->unk_10, 2, &v0, sizeof(UnkStruct_0209BF64));

        param0->unk_4AC0 = 0;
        param0->unk_3B8 = 9;
    }

    ov109_021D48D0(param0);
    return param1;
}

static int ov109_021D4B44 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    param0->unk_4AB4 = 0;

    ov109_021D48EC(param0, 0);
    ov109_021D48D0(param0);

    return param1;
}

static int ov109_021D4B64 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    param0->unk_394 = sub_02002100(param0->unk_14, &Unk_ov109_021D5D94, (1 + (18 + 12)), 11, 95);
    param0->unk_3B8 = 23;

    ov109_021D48D0(param0);

    return param1;
}

static int ov109_021D4B94 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    int v0;
    u32 v1;

    if ((ov109_021D548C() != param0->unk_10->unk_2C) || (param0->unk_10->unk_30 != 0)) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_KEY_UP | PAD_KEY_DOWN)) {
            sub_02005748(1522);
        }

        ov109_021D48D0(param0);
        return param1;
    }

    v1 = sub_02002114(param0->unk_394, 95);

    if (v1 != 0xffffffff) {
        if (v1 == 0xfffffffe) {
            int v2 = 0;

            sub_0209BEBC(param0->unk_10, 7, &v2, 1);
            ov109_021D5858(param0, 1);
            ov109_021D48EC(param0, 0);
        } else {
            if (sub_0203608C() == 0) {
                param0->unk_3B8 = 24;
                param0->unk_4AB6 = ov109_021D548C();
                sub_0205BEA8(12);
            } else {
                GF_ASSERT(0);
            }
        }

        param0->unk_394 = NULL;
    }

    ov109_021D48D0(param0);

    return param1;
}

static int ov109_021D4C4C (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if (param0->unk_4AB7 == 0) {
        if (sub_0209BEBC(param0->unk_10, 5, NULL, 0) == 1) {
            param0->unk_3B8 = 31;
        }
    }

    return param1;
}

static int ov109_021D4C7C (UnkStruct_ov109_021D5140 * param0, int param1)
{
    int v0, v1;

    v1 = 0;

    if ((sub_0203608C() == 0) && (sub_02035E18() != param0->unk_4AB6)) {
        (void)0;
    }

    if (sub_02035E18() == param0->unk_10->unk_20) {
        param0->unk_3B8 = 31;
    }

    return param1;
}

static int ov109_021D4CA8 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    ov109_021D59A8(param0->unk_0C->unk_14.unk_08, param0->unk_FE4);

    param0->unk_3B8 = 27;

    return param1;
}

static int ov109_021D4CC8 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    void * v0;

    Unk_021BF67C.unk_68 = 1;

    v0 = sub_0202C1B4(95);
    sub_0202B758(param0->unk_0C->unk_14.unk_18, v0, 4);

    v0 = sub_0202C244(95, 17);
    sub_0202B758(param0->unk_0C->unk_14.unk_18, v0, 4);
    sub_0202CFEC(param0->unk_0C->unk_14.unk_14, 20);
    sub_02038ED4(&param0->unk_414);
    param0->unk_3B8 = 28;

    return param1;
}

static int ov109_021D4D20 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if ((sub_0203608C() == 0) && (sub_02035E18() != param0->unk_4AB6)) {
        (void)0;
    }

    if (sub_02038EDC(param0->unk_0C->unk_14.unk_08, 2, &param0->unk_414)) {
        sub_020057A4(1624, 8);
        ov109_021D55A8(param0, 13, 0);
        ov109_021D48EC(param0, 29);

        param0->unk_1C.unk_00 = 0;
        param0->unk_3C4 = 0;
        Unk_021BF67C.unk_68 = 0;
        param0->unk_10->unk_24 = 0;
    }

    return param1;
}

static int ov109_021D4D80 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if (param0->unk_3C4++ > 60) {
        param0->unk_3B8 = 15;
    }

    return param1;
}

static int  ov109_021D4D9C (UnkStruct_ov109_021D5140 * param0, int param1)
{
    u8 v0;

    ov109_021D55A8(param0, 5, 0);

    v0 = 0;

    ov109_021D48EC(param0, 10);
    ov109_021D48D0(param0);

    return param1;
}

static int  ov109_021D4DBC (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if (++param0->unk_3C4 > 60) {
        sub_0200F174(0, 16, 16, 0x0, 16, 1, 95);
        param1 = 3;
    }

    ov109_021D48D0(param0);
    return param1;
}

static int ov109_021D4DF8 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    param0->unk_394 = sub_02002100(param0->unk_14, &Unk_ov109_021D5D94, (1 + (18 + 12)), 11, 95);
    param0->unk_3B8 = 12;

    ov109_021D48D0(param0);
    return param1;
}

static int ov109_021D4E28 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    int v0;

    if ((param0->unk_10->unk_2C != ov109_021D548C()) || (param0->unk_10->unk_30 != 0)) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_KEY_UP | PAD_KEY_DOWN)) {
            sub_02005748(1522);
        }

        ov109_021D48D0(param0);
        return param1;
    }

    v0 = sub_02002114(param0->unk_394, 95);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            int v1 = 0;

            param0->unk_3B8 = 0;

            sub_0209BEBC(param0->unk_10, 7, &v1, 1);
            ov109_021D5858(param0, 1);
        } else {
            param0->unk_3B8 = 13;
            sub_0209BEBC(param0->unk_10, 3, NULL, 0);
            sub_0200B498(param0->unk_34, 0, sub_02032EE8(0));
        }

        param0->unk_394 = NULL;
    }

    ov109_021D48D0(param0);
    return param1;
}

static int ov109_021D4ED8 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if (sub_0203608C() == 0) {
        ov109_021D55A8(param0, 5, 0);
    } else {
        sub_0200B498(param0->unk_34, 0, sub_02032EE8(0));
        ov109_021D55A8(param0, 16, 0);
    }

    ov109_021D48EC(param0, 14);
    param0->unk_3C4 = 0;
    ov109_021D48D0(param0);

    return param1;
}

static int ov109_021D4F28 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    param0->unk_3C4++;

    if (param0->unk_3C4 > 45) {
        param0->unk_3B8 = 15;
    }

    ov109_021D48D0(param0);
    return param1;
}

static int ov109_021D4F4C (UnkStruct_ov109_021D5140 * param0, int param1)
{
    sub_020364F0(202);
    param0->unk_3B8 = 16;

    ov109_021D48D0(param0);
    return param1;
}

static int ov109_021D4F6C (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if (sub_02036540(202)) {
        sub_020388F4(0, 0);
        sub_0200F174(0, 16, 16, 0x0, 16, 1, 95);
        param1 = 3;
    }

    ov109_021D48D0(param0);
    return param1;
}

static int ov109_021D4FAC (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if (ov109_021D5638(param0->unk_5C)) {
        ov109_021D55A8(param0, 9, 0);
    }

    param0->unk_3B8 = 18;
    ov109_021D48D0(param0);

    return param1;
}

static int ov109_021D4FD8 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if (ov109_021D5638(param0->unk_5C)) {
        param0->unk_3B8 = 10;
    }

    ov109_021D48D0(param0);
    return param1;
}

static int ov109_021D4FFC (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if ((param0->unk_5C != 0xff) && (ov109_021D5638(param0->unk_5C) == 0)) {
        sub_0201D730(param0->unk_5C);
    }

    ov109_021D55A8(param0, 15, 1);
    param0->unk_3B8 = 20;

    if (sub_0203608C() == 0) {
        ov109_021D5858(param0, 0);
    }

    param0->unk_4ABC = sub_02035E18();
    param0->unk_4AB8 = (10 * 30);

    ov109_021D48D0(param0);

    return param1;
}

static int ov109_021D505C (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if ((param0->unk_4ABC != 0) && (sub_02035E18() != param0->unk_4ABC)) {
        param0->unk_4ABC = 0;
    }

    param0->unk_3B8 = 21;
    param0->unk_3C4 = 0;

    ov109_021D48D0(param0);
    return param1;
}

static int  ov109_021D5098 (UnkStruct_ov109_021D5140 * param0, int param1)
{
    if ((param0->unk_4ABC != 0) && (sub_02035E18() != param0->unk_4ABC)) {
        param0->unk_4ABC = 0;
    }

    param0->unk_4AB8--;

    if (param0->unk_4AB8 < 0) {
        param0->unk_4ABC = 0;
    }

    if ((++param0->unk_3C4 > 60) && (param0->unk_4ABC == 0)) {
        param0->unk_3B8 = 0;

        if (sub_0203608C() == 0) {
            ov109_021D5858(param0, 1);
        }
    }

    ov109_021D48D0(param0);
    return param1;
}

static int  ov109_021D510C (UnkStruct_ov109_021D5140 * param0, int param1)
{
    sub_0205BEA8(12);
    sub_0200F174(0, 16, 16, 0x0, 16, 1, 95);

    param0->unk_08 = 1;
    param1 = 3;

    ov109_021D48D0(param0);
    return param1;
}

void ov109_021D5140 (UnkStruct_ov109_021D5140 * param0, int param1, u8 param2)
{
    switch (param1) {
    case 2:
        ov109_021D5658(param0);
        break;
    case 13:
        if (param0->unk_394 != NULL) {
            sub_02002154(param0->unk_394, 95);
            param0->unk_394 = NULL;
        }

        break;
    case 25:
        if (ov109_021D5638(param0->unk_5C) == 0) {
            sub_0201D730(param0->unk_5C);
        }

        ov109_021D55A8(param0, 12, 0);

        if (param0->unk_394 != NULL) {
            sub_02002154(param0->unk_394, 95);
            param0->unk_394 = NULL;
        }

        break;
    case 19:
        if (param0->unk_4AB4 == 1) {
            return;
        }

        sub_0200B498(param0->unk_34, 0, sub_02032EE8(param2));

        if (param2 == sub_0203608C()) {
            return;
        }

        if (param0->unk_394 != NULL) {
            sub_02002154(param0->unk_394, 95);
            param0->unk_394 = NULL;
        }

        if (sub_0203608C() == 0) {
            param0->unk_10->unk_30 &= 0xffff ^ param2;
        }
        break;
    case 7:
        break;
    case 8:
        break;
    case 31:
        if (ov109_021D5638(param0->unk_5C) == 0) {
            sub_0201D730(param0->unk_5C);
        }

        if (param0->unk_394 != NULL) {
            sub_02002154(param0->unk_394, 95);
            param0->unk_394 = NULL;
        }

        break;
    default:
        GF_ASSERT("FALSE");
        return;
    }

    param0->unk_3B8 = param1;
}

void ov109_021D5258 (UnkStruct_ov109_021D5140 * param0, int param1, u8 param2)
{
    if (param0->unk_3B8 == 3) {
        switch (param1) {
        case 1:
            sub_0200B498(param0->unk_34, 0, sub_02032EE8(param2));
            ov109_021D5858(param0, 1);

            param0->unk_3B8 = param1;
            param0->unk_10->unk_2C = sub_02035E18();
            param0->unk_10->unk_30 = 0;

            if (sub_0203608C() == 0) {
                int v0 = 1;
                sub_0209BEBC(param0->unk_10, 7, &v0, 1);
            }
            break;
        case 19:
            sub_0200B498(param0->unk_34, 0, sub_02032EE8(param2));

            if (param2 == sub_0203608C()) {
                return;
            }

            if (sub_0203608C() == 0) {
                param0->unk_10->unk_30 &= 0xffff ^ param2;
            }

            param0->unk_3B8 = param1;
            break;
        default:
            GF_ASSERT(FALSE);
            return;
        }
    } else if (param1 == 1) {
        param0->unk_10->unk_30 = 0;
        param0->unk_10->unk_2C = sub_02035E18();
    }
}

static void ov109_021D5314 (u16 * param0)
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

static int ov109_021D5360 (void)
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

static BOOL ov109_021D537C (UnkStruct_0205AA50 * param0, int param1, u32 param2, UnkStruct_ov109_021D5140 * param3)
{
    int v0, v1 = sub_0203608C();
    UnkStruct_02023790 * v2 = NULL;

    if (!ov109_021D54CC(param3)) {
        return 0;
    }

    sub_0201ADA4(&param0[0], 0x0);

    for (v0 = 0; v0 < 5; v0++) {
        if (param3->unk_3D8[v0][0] != NULL) {
            u16 v3 = sub_02025F24(param3->unk_3D8[v0][0]);

            sub_02025EF4(param3->unk_3D8[v0][0], param3->unk_3C[v0]);
            sub_0200B60C(param3->unk_34, 0, v3, 5, 2, 1);
            v2 = sub_0200B29C(param3->unk_34, param3->unk_38, 1, 95);

            if (v1 == v0) {
                sub_0201D78C(&param0[0], 0, param3->unk_3C[v0], 5, 1 + v0 * 18, 0xff, (u32)(((2 & 0xff) << 16) | ((3 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
                sub_0201D78C(&param0[0], 0, v2, 5 + 13 * 5, 1 + v0 * 18, 0xff, (u32)(((2 & 0xff) << 16) | ((3 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
            } else {
                sub_0201D78C(&param0[0], 0, param3->unk_3C[v0], 5, 1 + v0 * 18, 0xff, param2, NULL);
                sub_0201D78C(&param0[0], 0, v2, 5 + 13 * 5, 1 + v0 * 18, 0xff, param2, NULL);
            }

            sub_020237BC(v2);
        }
    }

    sub_0201A954(&param0[0]);

    return 1;
}

static void ov109_021D5488 (UnkStruct_ov109_021D5140 * param0)
{
    return;
}

static int ov109_021D548C (void)
{
    int v0, v1;

    for (v1 = 0, v0 = 0; v0 < 5; v0++) {
        if (sub_02032EE8(v0) != NULL) {
            v1++;
        }
    }

    return v1;
}

static u32 ov109_021D54A8 (void)
{
    int v0;
    u32 v1;

    for (v1 = 0, v0 = 0; v0 < 5; v0++) {
        if (sub_02032EE8(v0) != NULL) {
            v1 |= 1 << v0;
        }
    }

    return v1;
}

static BOOL ov109_021D54CC (UnkStruct_ov109_021D5140 * param0)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_3D8[v0][1] = param0->unk_3D8[v0][0];
        param0->unk_3D8[v0][0] = sub_02032EE8(v0);
        param0->unk_4AC4[v0][1] = param0->unk_4AC4[v0][0];

        if (param0->unk_3D8[v0][0] != NULL) {
            param0->unk_4AC4[v0][0].val2.unk_00 = sub_02025F20(param0->unk_3D8[v0][0]);
            param0->unk_4AC4[v0][0].val2.unk_04 = 1;
        } else {
            param0->unk_4AC4[v0][0].val1 = 0;
        }
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_3D8[v0][1] != param0->unk_3D8[v0][0]) {
            v1 = 1;

            if (param0->unk_3D8[v0][0] == NULL) {
                param0->unk_400[v0] = 3;
            } else {
                param0->unk_400[v0] = 1;
            }
        } else {
            if (param0->unk_4AC4[v0][0].val1 != param0->unk_4AC4[v0][1].val1) {
                v1 = 1;

                if (param0->unk_4AC4[v0][0].val2.unk_04 == 0) {
                    param0->unk_400[v0] = 3;
                } else {
                    param0->unk_400[v0] = 1;
                }
            }
        }
    }

    return v1;
}

static void ov109_021D55A8 (UnkStruct_ov109_021D5140 * param0, int param1, int param2)
{
    UnkStruct_02023790 * v0;

    v0 = sub_02023790((90 * 2), 95);

    sub_0200B1B8(param0->unk_38, param1, v0);
    sub_0200C388(param0->unk_34, param0->unk_54, v0);
    sub_020237BC(v0);
    sub_0201ADA4(&param0->unk_35C, 0xf0f);
    sub_0200E060(&param0->unk_35C, 0, 1, 10);

    if (param2 == 0) {
        param0->unk_5C = sub_0201D738(&param0->unk_35C, 1, param0->unk_54, 0, 0, ov109_021D5854(param0), NULL);
    } else {
        sub_0201D738(&param0->unk_35C, 1, param0->unk_54, 0, 0, 0, NULL);
        param0->unk_5C = 0xff;
    }
}

static int ov109_021D5638 (int param0)
{
    if (param0 == 0xff) {
        return 1;
    }

    if (sub_0201D724(param0) == 0) {
        return 1;
    }

    return 0;
}

static void ov109_021D5658 (UnkStruct_ov109_021D5140 * param0)
{
    sub_0200E084(&param0->unk_35C, 0);
}

static void ov109_021D5668 (UnkStruct_ov109_021D5140 * param0)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        switch (param0->unk_400[v0]) {
        case 0:
            break;
        case 1:
        {
            int v2, v3;

            GF_ASSERT(param0->unk_3D8[v0][0] != NULL);

            v3 = sub_02025F30(param0->unk_3D8[v0][0]);
            v2 = sub_02025F8C(param0->unk_3D8[v0][0]);

            if (sub_0203608C() == v0) {
                sub_02021D6C(param0->unk_29C[v0 + 1], 38 + v3 * 2);
            } else {
                ov109_021D57E0(param0->unk_3A0, param0->unk_3B0, v0, v2, v3);
                sub_02021D6C(param0->unk_29C[v0 + 1], 27 + v0 * 2);
            }
        }
            sub_02021CAC(param0->unk_29C[v0 + 1], 1);
            param0->unk_400[v0] = 2;
            v1 = 1;
            break;
        case 2:
            break;
        case 3:
            if (sub_0203608C() == v0) {
                int v4 = sub_02025F30(param0->unk_3D8[v0][0]);

                sub_02021D6C(param0->unk_29C[v0 + 1], 38 + v4 * 2 + 1);
            } else {
                sub_02021D6C(param0->unk_29C[v0 + 1], 27 + v0 * 2 + 1);
            }

            param0->unk_400[v0] = 0;
            break;
        }
    }

    if (v1) {
        sub_02005748(1615);
    }
}

static void ov109_021D577C (UnkStruct_ov109_021D5140 * param0, NARC * param1)
{
    param0->unk_3A8[0] = sub_02006F88(104, 8, &(param0->unk_3B0[0]), 95);
    param0->unk_3A8[1] = sub_020071EC(param1, 7, &(param0->unk_3B0[1]), 95);
    param0->unk_398[0] = sub_02006F50(104, 32, 1, &(param0->unk_3A0[0]), 95);
    param0->unk_398[1] = sub_020071B4(param1, 9, 1, &(param0->unk_3A0[1]), 95);
}

static const u16 Unk_ov109_021D5D9C[] = {
    0x1A0,
    0x7A0,
    0xDA0,
    0x13A0,
    0x19A0
};

static void ov109_021D57E0 (NNSG2dCharacterData * param0[2], NNSG2dPaletteData * param1[2], int param2, int param3, int param4)
{
    int v0;
    u8 * v1, * v2;

    v0 = sub_0205CA0C(param4, param3);
    v1 = (u8 *)param0[1]->pRawData;
    v2 = (u8 *)param1[1]->pRawData;

    GX_LoadOBJ(&v1[(3 * 4 * 4) * v0 * 0x20], Unk_ov109_021D5D9C[param2], (3 * 4 * 4) * 0x20);
    GX_LoadOBJPltt(&v2[v0 * 32], (param2 + 7) * 32, 32);
}

static void ov109_021D5824 (UnkStruct_ov109_021D5140 * param0)
{
    Heap_FreeToHeap(param0->unk_3A8[0]);
    Heap_FreeToHeap(param0->unk_3A8[1]);
    Heap_FreeToHeap(param0->unk_398[0]);
    Heap_FreeToHeap(param0->unk_398[1]);
}

static int ov109_021D5854 (UnkStruct_ov109_021D5140 * param0)
{
    return 1;
}

static void ov109_021D5858 (UnkStruct_ov109_021D5140 * param0, int param1)
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
            param0->unk_4AB5 = 2;
        } else if (param1 == 0) {
            param0->unk_4AB5 = 1;
        } else {
            param0->unk_4AB5 = 0;
        }
    }
}

static int ov109_021D58AC (UnkStruct_ov109_021D5140 * param0, int param1)
{
    int v0;

    v0 = ov109_021D548C();

    if (v0 > param0->unk_10->unk_2C) {
        u8 v1 = 1;

        sub_0209BEBC(param0->unk_10, 7, &v1, 1);
        param0->unk_4AAC = 1;
    } else {
        param0->unk_4AAC = 0;
    }

    if (v0 == param0->unk_4AA8) {
        return 1;
    }

    switch (v0) {
    case 1:
        if ((sub_02035E18() > 1) || (sub_020318EC() > 1)) {
            return 1;
        }

        param0->unk_3B8 = 17;
        ov109_021D5858(param0, -1);

        if (param0->unk_394 != NULL) {
            sub_02002154(param0->unk_394, 95);
            param0->unk_394 = NULL;
        }
        return 2;
        break;
    case 2:
    case 3:
    case 4:
        sub_0205BEA8(13);

        if (v0 < param0->unk_4AA8) {
            switch (param0->unk_4AB5) {
            case 0:
                ov109_021D5858(param0, param1);
                break;
            case 1:
                ov109_021D5858(param0, 0);
                break;
            }

            param0->unk_10->unk_2C = sub_02035E18();
        }
        break;
    case 5:
        sub_0205BEA8(12);
        ov109_021D5858(param0, param1);
        break;
    }

    param0->unk_4AA8 = ov109_021D548C();

    return 1;
}

void ov109_021D59A8 (UnkStruct_021C0794 * param0, const UnkStruct_ov109_021D5140_sub2 * param1)
{
    return;
}
