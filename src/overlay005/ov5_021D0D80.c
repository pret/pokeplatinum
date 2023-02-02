#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "data_021BF67C.h"
#include "data_02100844.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02020C44_decl.h"
#include "struct_decls/struct_02027860_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_0203CDB0_sub2_decl.h"
#include "overlay005/struct_ov5_021D1A68_decl.h"

#include "overlay005/const_ov5_021F89B0.h"
#include "overlay005/const_ov5_021FF6B8.h"
#include "overlay005/const_ov5_021FF744.h"
#include "overlay005/const_ov5_021FF7D0.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203CDB0_sub2_t.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_020619DC.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay005/struct_ov5_021D5894.h"
#include "overlay005/struct_ov5_021ED0A4.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "game_overlay.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_0200A784.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201C970.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "unk_02020AEC.h"
#include "unk_0202419C.h"
#include "unk_020277A4.h"
#include "unk_02027F50.h"
#include "unk_02039C80.h"
#include "map_header.h"
#include "unk_0203A378.h"
#include "unk_0203A6DC.h"
#include "unk_0203CC84.h"
#include "unk_0203E880.h"
#include "unk_020508D4.h"
#include "unk_020530C8.h"
#include "unk_020553DC.h"
#include "unk_020556C4.h"
#include "unk_020559DC.h"
#include "unk_02055C50.h"
#include "unk_02057518.h"
#include "unk_0205D8CC.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_02068344.h"
#include "unk_0206940C.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay005/ov5_021D1A94.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021D521C.h"
#include "overlay005/ov5_021D57BC.h"
#include "overlay005/ov5_021D5878.h"
#include "overlay005/ov5_021D5B40.h"
#include "overlay005/ov5_021D5BC0.h"
#include "overlay005/ov5_021D5CB0.h"
#include "overlay005/ov5_021D5EB8.h"
#include "overlay005/ov5_021DD6FC.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021E15F4.h"
#include "overlay005/ov5_021E1B08.h"
#include "overlay005/ov5_021E779C.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021EE75C.h"
#include "overlay005/ov5_021EF250.h"
#include "overlay005/ov5_021EF3A8.h"
#include "overlay005/ov5_021EF4BC.h"
#include "overlay005/ov5_021EF75C.h"
#include "overlay005/ov5_021EFB0C.h"
#include "overlay005/ov5_021F0824.h"
#include "overlay005/ov5_021F10E8.h"
#include "overlay009/ov9_02249960.h"

FS_EXTERN_OVERLAY(overlay6);
FS_EXTERN_OVERLAY(overlay7);
FS_EXTERN_OVERLAY(overlay8);
FS_EXTERN_OVERLAY(overlay9);

struct UnkStruct_ov5_021D1A68_t {
    u16 unk_00;
    int unk_02[24];
};

static void ov5_021D1444(UnkStruct_02018340 * param0);
static void ov5_021D1524(UnkStruct_02018340 * param0);
static void ov5_021D154C(void);
static void ov5_021D1570(void);
static void ov5_021D1578(UnkStruct_ov5_021D5894 * param0);
static void ov5_021D15F4(UnkStruct_0203CDB0 * param0);
static void ov5_021D173C(UnkStruct_0203CDB0 * param0);
static void ov5_021D1414(void);
static void ov5_021D15B4(void);
static void ov5_021D15E8(void);
static void ov5_021D1790(UnkStruct_0203CDB0 * param0);
static void ov5_021D17EC(UnkStruct_0203CDB0 * param0);
static void ov5_021D1878(UnkStruct_0203CDB0 * param0);
static void ov5_021D1968(UnkStruct_0203CDB0 * param0);
static int ov5_021D0DA4(UnkStruct_020067E8 * param0, int * param1);
static int ov5_021D0F68(UnkStruct_020067E8 * param0, int * param1);
static int ov5_021D0FB4(UnkStruct_020067E8 * param0, int * param1);
static BOOL ov5_021D11CC(UnkStruct_0203CDB0 * param0);
static void ov5_021D134C(UnkStruct_0203CDB0 * param0, u8 param1);
static BOOL ov5_021D119C(UnkStruct_0203CDB0 * param0);
static void ov5_021D0D80(void * param0);
static void ov5_021D13B4(UnkStruct_0203CDB0 * param0);
static int ov5_021D1178(UnkStruct_0203CDB0 * param0);
static BOOL ov5_021D1A78(UnkStruct_0203CDB0 * param0);
static UnkStruct_ov5_021D1A68 * ov5_021D1A14(int param0, int param1);
static const int * ov5_021D1A68(const UnkStruct_ov5_021D1A68 * param0);
static const int ov5_021D1A6C(const UnkStruct_ov5_021D1A68 * param0);
static void ov5_021D1A70(UnkStruct_ov5_021D1A68 * param0);


static inline void inline_ov5_021D0D80 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_ov5_021ED0A4 * v0 = sub_0206285C(param0->unk_38);
    UnkStruct_02020C44 * v1 = ov5_021EDC8C(v0);

    sub_02020D68(v1);
}

static void ov5_021D0D80 (void * param0)
{
    UnkStruct_0203CDB0 * v0 = param0;

    sub_0201C2B8(v0->unk_08);
    sub_0201DCAC();
    sub_0200A858();

    inline_ov5_021D0D80(v0);
}

static int ov5_021D0DA4 (UnkStruct_020067E8 * param0, int * param1)
{
    u16 v0;
    UnkStruct_0203CDB0 * v1;
    int v2 = 0;

    v1 = sub_02006840(param0);

    switch (*param1) {
    case 0:
        sub_02017798(NULL, NULL);
        sub_020177A4();

        G2_BlendNone();
        G2S_BlendNone();

        sub_0200F32C(0);
        sub_0200F32C(1);
        ov5_021D173C(v1);
        sub_020531A0(v1);

        if (v1->unk_74->unk_00_20) {
            Overlay_LoadByID(FS_OVERLAY_ID(overlay6), 2);

            switch (ov5_021D1178(v1)) {
            case 0:
                Overlay_LoadByID(FS_OVERLAY_ID(overlay8), 2);
                break;
            case 1:
                Overlay_LoadByID(FS_OVERLAY_ID(overlay7), 2);
                break;
            case 2:
                Overlay_LoadByID(FS_OVERLAY_ID(overlay9), 2);
                break;
            }
        }

        Heap_Create(3, 4, v1->unk_74->unk_04);
        GF_ASSERT(v1->unk_04 == NULL);

        v1->unk_04 = Heap_AllocFromHeap(4, sizeof(UnkStruct_0203CDB0_sub2));
        MI_CpuClear8(v1->unk_04, sizeof(UnkStruct_0203CDB0_sub2));
        v1->unk_04->unk_04 = ov5_021D1A94(v1, 4, 8);

        ov5_021D1414();

        sub_0201DBEC(128, 4);
        sub_02020B90(4, 4);
        sub_0201CAF4(4);

        ov5_021D15B4();
        ov5_021D154C();

        GXLayers_SwapDisplay();
        v1->unk_08 = sub_02018340(4);
        ov5_021D1444(v1->unk_08);
        sub_0205D8CC(0, 1);
        sub_0203F5C0(v1, 4);
        break;
    case 1:
        ov5_021D1790(v1);
        ov5_021EF7A0(v1->unk_30);

        v1->unk_A4 = ov5_021E15F4(4);

        ov5_021F0824(v1);
        ov5_021D17EC(v1);
        ov5_021D1878(v1);
        ov5_021D1968(v1);

        if (v1->unk_04->unk_0C != NULL) {
            u16 v3 = sub_0203A74C(sub_0203A790(v1->unk_0C));
            ov5_021D5F24(v1->unk_04->unk_0C, v3);
        }

        sub_020556A0(v1, v1->unk_1C->unk_00);
        sub_0203F5C0(v1, 3);

        v1->unk_04->unk_1C = ov5_021EF3A8(4);
        ov5_021EF3DC(v1->unk_04->unk_1C);
        v1->unk_04->unk_20 = ov5_021EF4BC(4, v1->unk_04->unk_1C);
        break;
    case 2:
        ov5_021D5BD8(v1);
        break;
    case 3:
        if (ov5_021D5BF4(v1)) {
            v1->unk_68 = 1;
            v2 = 1;
        }
        break;
    }

    (*param1)++;
    return v2;
}

static int ov5_021D0F68 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0203CDB0 * v0;

    v0 = sub_02006840(param0);

    if (ov5_021D119C(v0)) {
        sub_02055D94(v0);
        ov5_021D13B4(v0);
        ov5_021EA714(v0, 1, 1);

        if (ov5_021D11CC(v0)) {
            (void)0;
        }
    }

    ov5_021D134C(v0, v0->unk_C0);

    if (v0->unk_68) {
        return 0;
    } else {
        return 1;
    }
}

static int ov5_021D0FB4 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0203CDB0 * v0;

    v0 = sub_02006840(param0);
    ov5_021E8188(v0, v0->unk_28);

    switch (*param1) {
    case 0:
        sub_02068368(v0);
        ov5_021E9338(v0->unk_28);

        v0->unk_1C->unk_08 = sub_0205EABC(v0->unk_3C);
        v0->unk_1C->unk_0C = sub_0205EAC8(v0->unk_3C);
        v0->unk_1C->unk_10 = sub_0205EA78(v0->unk_3C);

        ov5_021EF300(v0->unk_A0);

        {
            GF_ASSERT(v0->unk_50 != 0);
            ov5_021E924C(v0->unk_28);
        }

        ov5_021D3CAC(v0->unk_50);
        ov5_021D3D7C(v0->unk_50);
        ov5_021D41B4(&v0->unk_54);
        ov5_021D5E8C(v0->unk_04->unk_10);
        ov5_021D5EAC(v0->unk_04->unk_10);

        v0->unk_04->unk_10 = NULL;

        sub_02061BF0(v0->unk_38);
        ov5_021ECC78(v0->unk_38);

        sub_02062C30(v0->unk_38);
        ov5_021DF500(v0->unk_40);

        ov5_021D1A70(v0->unk_34);
        v0->unk_34 = NULL;
        ov5_021E1608(v0->unk_A4);

        (*param1)++;
        break;
    case 1:
        if (ov5_021E9300(v0->unk_28) == 1) {
            ov5_021EFA10(&v0->unk_30);
            ov5_021E92E4(v0->unk_28);
            ov5_021EFB30(&v0->unk_A8);
            ov5_021D5BA8(v0);
            ov5_021D5278(&v0->unk_4C);
            ov5_021E1B20(v0->unk_64);
            ov5_021DD9C8(v0->unk_04->unk_08);

            if (v0->unk_04->unk_0C != NULL) {
                ov5_021D5EF8(v0->unk_04->unk_0C);
            }

            ov5_021EF4F8(v0->unk_04->unk_20);
            ov5_021EF3BC(v0->unk_04->unk_1C);
            sub_02055CBC(v0->unk_04->unk_18);
            ov5_021D57D8(&v0->unk_48);
            ov5_021D5894(&v0->unk_44);
            ov5_021D1570();
            ov5_021D1524(v0->unk_08);
            ov5_021D5C14(v0);
            (*param1)++;
        }
        break;
    case 2:
        if (ov5_021D5C30(v0)) {
            ov5_021D15E8();
            sub_02020BD0();
            sub_0201DC3C();
            sub_0201CBA0();
            ov5_021D1AE4(v0->unk_04->unk_04);
            sub_02017798(NULL, NULL);
            Heap_FreeToHeap(v0->unk_08);
            Heap_FreeToHeap(v0->unk_04);

            v0->unk_04 = NULL;

            Heap_Destroy(4);

            if (v0->unk_74->unk_00_20) {
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay6));
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay8));
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay7));
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay9));
            }

            return 1;
        }
        break;
    }

    return 0;
}

const UnkStruct_0208BE5C Unk_ov5_021F89B0 = {
    ov5_021D0DA4,
    ov5_021D0F68,
    ov5_021D0FB4,
    0xffffffff
};

static int ov5_021D1178 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02027860 * v0 = sub_02027860(sub_0203D174(param0));
    int v1 = sub_02027F80(v0);

    if (v1 == 0) {
        return 1;
    }

    if (v1 == 9) {
        return 2;
    }

    return 0;
}

static BOOL ov5_021D119C (UnkStruct_0203CDB0 * param0)
{
    int v0, v1;

    v0 = sub_0205EABC(param0->unk_3C);
    v1 = sub_0205EAC8(param0->unk_3C);

    if ((v0 != param0->unk_1C->unk_08) || (v1 != param0->unk_1C->unk_0C)) {
        param0->unk_1C->unk_08 = v0;
        param0->unk_1C->unk_0C = v1;
        return 1;
    } else {
        return 0;
    }
}

static BOOL ov5_021D11CC (UnkStruct_0203CDB0 * param0)
{
    u32 v0;
    u32 v1;
    int v2, v3;
    UnkStruct_0203A790 * v4;

    if (ov5_021D1A78(param0) == 1) {
        return 0;
    }

    v2 = (sub_0205EABC(param0->unk_3C) - ov5_021EA6AC(param0->unk_28)) / 32;
    v3 = (sub_0205EAC8(param0->unk_3C) - ov5_021EA6B4(param0->unk_28)) / 32;
    v0 = sub_02039E30(param0->unk_2C, v2, v3);
    v1 = param0->unk_1C->unk_00;

    if (v0 == v1) {
        return 0;
    }

    v4 = sub_0203A790(param0->unk_0C);
    {
        param0->unk_1C->unk_00 = v0;

        sub_0203A3B0(param0, v0);
        sub_020531C0(param0, 1);
    }

    {
        int v5 = sub_0203A4B4(param0);
        const UnkStruct_020619DC * v6 = sub_0203A4BC(param0);

        sub_0206184C(param0->unk_38, v1, v0, v5, v6);
    }

    {
        sub_02069434(param0->unk_94);
        sub_02055554(param0, sub_02055428(param0, param0->unk_1C->unk_00), 1);
        sub_0203A418(param0);

        if (param0->unk_04->unk_0C != NULL) {
            ov5_021D5F7C(
                param0->unk_04->unk_0C, sub_0203A74C(v4));
        }
    }

    {
        int v7, v8;
        int v9;

        v7 = sub_0203A138(v1);
        v8 = sub_0203A138(v0);
        v9 = sub_0203A154(v0);

        if (v7 != v8) {
            if (v9 != 0) {
                v9--;
            }

            ov5_021DD9E8(param0->unk_04->unk_08, v8, v9);
        }
    }

    return 1;
}

void ov5_021D12D0 (UnkStruct_0203CDB0 * param0, u32 param1)
{
    u32 v0;
    UnkStruct_0203A790 * v1;

    v0 = param0->unk_1C->unk_00;
    v1 = sub_0203A790(param0->unk_0C);

    {
        param0->unk_1C->unk_00 = param1;

        sub_0203A3B0(param0, param1);
        sub_020532A8(param0, 1);
    }

    {
        int v2 = sub_0203A4B4(param0);
        const UnkStruct_020619DC * v3 = sub_0203A4BC(param0);

        sub_0206184C(param0->unk_38, v0, param1, v2, v3);
    }

    {
        sub_02055554(param0, sub_02055428(param0, param0->unk_1C->unk_00), 1);
        sub_0203A418(param0);

        if (param0->unk_04->unk_0C != NULL) {
            ov5_021D5F7C(param0->unk_04->unk_0C, sub_0203A74C(v1));
        }
    }
}

static void ov5_021D134C (UnkStruct_0203CDB0 * param0, u8 param1)
{
    if (sub_020509A4(param0) == 0) {
        sub_020559DC(param0);
    }

    ov5_021D5298(param0->unk_4C);
    ov5_021E1B68(param0);

    if ((param1 & 1) != 0) {
        ov5_021D5DEC(param0->unk_04->unk_10);
    }

    if ((param1 & 8) != 0) {
        ov5_021D3F10(param0->unk_50);
    }

    if ((param1 & 2) != 0) {
        ov5_021E8188(param0, param0->unk_28);

        if (ov5_021D1A78(param0) == 1) {
            ov9_0224CA5C(param0);
        }
    }

    if ((param1 & 4) != 0) {
        ov5_021D15F4(param0);
    }

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_X) {
        (void)0;
    }
}

static void ov5_021D13B4 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020556C4 * v0;
    int v1, v2, v3;

    if (MapHeader_IsOnMainMatrix(param0->unk_1C->unk_00) == 0) {
        return;
    }

    v0 = sub_0203A76C(sub_0203A790(param0->unk_0C));
    v1 = (sub_0205EABC(param0->unk_3C) - ov5_021EA6AC(param0->unk_28)) / 32;
    v2 = (sub_0205EAC8(param0->unk_3C) - ov5_021EA6B4(param0->unk_28)) / 32;
    v3 = sub_0205EA78(param0->unk_3C);

    sub_02055740(v0, v1, v2, v3);
}

static void ov5_021D1414 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_32_FG,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0123_E
    };

    GXLayers_SetBanks(&v0);
}

void ov5_021D1434 (UnkStruct_02018340 * param0)
{
    ov5_021D1444(param0);
}

void ov5_021D143C (UnkStruct_02018340 * param0)
{
    ov5_021D1524(param0);
}

static void ov5_021D1444 (UnkStruct_02018340 * param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
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
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v1, 0);
        sub_02019690(1, 32, 0, 4);
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
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v2, 0);
        sub_02019690(2, 32, 0, 4);
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
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v3, 0);
        sub_02019690(3, 32, 0, 4);
        sub_02019EBC(param0, 3);
    }

    {
        u16 v4 = 0x0;

        DC_FlushRange((void *)v4, 2);
        GX_LoadBGPltt(&v4, 0, 2);
    }
}

static void ov5_021D1524 (UnkStruct_02018340 * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 0);
    sub_02019044(param0, 1);
    sub_02019044(param0, 2);
    sub_02019044(param0, 3);
}

static void ov5_021D154C (void)
{
    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 124, 0, 31, 0, 124, 0, 31, 4);
}

static void ov5_021D1570 (void)
{
    sub_0200A878();
}

static void ov5_021D1578 (UnkStruct_ov5_021D5894 * param0)
{
    ov5_021D5ADC(param0, GX_POLYGONMODE_MODULATE, 0);
    ov5_021D5AF0(param0, GX_CULL_BACK, 0);
    ov5_021D5B04(param0, 31, 0);
    ov5_021D5B18(param0, GX_POLYGON_ATTR_MISC_FOG, 1, 0);
    ov5_021D58A8(param0, 1 << 22);
}

void ov5_021D15B4 (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20, 0x8000, 0x4000, 4
        };

        sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834(20, 4);
    sub_0201E994();
    sub_0201F8E4();
}

void ov5_021D15E8 (void)
{
    sub_0201E958();
    sub_0201F8B4();
}

static void ov5_021D15F4 (UnkStruct_0203CDB0 * param0)
{
    MtxFx44 v0, v1;

    sub_020241B4();

    if (param0->unk_20 == 1) {
        if (ov5_021D1A78(param0) == 1) {
            ov9_02249F9C(param0);
        }

        sub_0202049C();
    } else {
        sub_020203EC();
    }

    sub_0206979C(param0);
    ov5_021E91FC(param0->unk_28, param0->unk_44);

    if (ov5_021D1A78(param0) == 1) {
        ov9_0224CA50(param0);
    }

    ov5_021E1A6C(param0->unk_A4, param0->unk_30);

    {
        const MtxFx44 * v2;

        v2 = NNS_G3dGlbGetProjectionMtx();
        v0 = *v2;
        v1 = v0;
        v1._32 += FX_Mul(v1._22, 4 * FX32_ONE);

        NNS_G3dGlbSetProjectionMtx(&v1);
        NNS_G3dGlbFlush();
    }

    ov5_021DF4F8(param0->unk_40);
    sub_02020C08();

    if (ov5_021D1A78(param0) == 1) {
        ov9_02250780(param0);
    }

    {
        NNS_G3dGlbSetProjectionMtx(&v0);
        NNS_G3dGlbFlush();
    }

    ov5_021D1B18(param0->unk_04->unk_04);
    sub_020241BC(GX_SORTMODE_AUTO, Unk_02100844);
}

void ov5_021D16F4 (UnkStruct_0203CDB0 * param0, BOOL param1)
{
    if (param1 == 1) {
        param0->unk_C0 |= 4;
    } else {
        param0->unk_C0 &= ~4;
    }
}

void ov5_021D1718 (UnkStruct_0203CDB0 * param0, BOOL param1)
{
    if (param1 == 1) {
        param0->unk_C0 |= 1;
    } else {
        param0->unk_C0 &= ~1;
    }
}

static void ov5_021D173C (UnkStruct_0203CDB0 * param0)
{
    param0->unk_C0 = (8 | 1 | 2 | 4);
}

void ov5_021D1744 (const u8 param0)
{
    if (param0 == 1) {
        sub_0200F174(
            0, 1, 1, 0x0, 6, 1, 4);
    } else if (param0 == 0) {
        sub_0200F174(
            0, 0, 0, 0x0, 6, 1, 4);
    } else {
        GF_ASSERT(FALSE);
    }
}

static void ov5_021D1790 (UnkStruct_0203CDB0 * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, Unk_02100844);

    param0->unk_50 = ov5_021D38B8();
    param0->unk_54 = ov5_021D4194();

    {
        u16 v0, v1;

        v0 = sub_0203A038(param0->unk_1C->unk_00);
        param0->unk_30 = ov5_021EF76C(v0, param0->unk_50);

        v1 = sub_0203A04C(param0->unk_1C->unk_00);
        GF_ASSERT(param0->unk_34 == NULL);

        param0->unk_34 = ov5_021D1A14(4, v1);
    }
}

static void ov5_021D17EC (UnkStruct_0203CDB0 * param0)
{
    param0->unk_28 = ov5_021E9084(param0->unk_2C, param0->unk_30, param0->unk_50, param0->unk_60);

    if (ov5_021D1A78(param0) == 1) {
        int v0 = 0, v1 = 0, v2 = 0;

        ov9_02251094(param0->unk_1C->unk_00, &v0, &v1, &v2);
        ov5_021EA678(param0->unk_28, v0, v1, v2);
        ov5_021EA6A4(param0->unk_28, 1);
        ov5_021EA6D0(param0->unk_28, 1);
    }

    param0->unk_A0 = ov5_021EF28C(8, 4);
    param0->unk_A8 = ov5_021EFB0C();

    if (param0->unk_70 == 0) {
        ov5_021E9630(param0->unk_28, ov5_021F0030, param0);
    }

    ov5_021E9150(param0->unk_28, param0->unk_1C->unk_08, param0->unk_1C->unk_0C);
}

static void ov5_021D1878 (UnkStruct_0203CDB0 * param0)
{
    param0->unk_40 = ov5_021DF440(param0, 34, 4);

    {
        int v0 = 80;

        if (ov5_021D1A78(param0) == 1) {
            v0 = 112;
        }

        ov5_021DF47C(param0->unk_40, v0);
    }

    ov5_021DF488(param0->unk_40, 4, 32, 32, 32, 32, (0x500 * (32 / 2)), (0x80 * (32 / 2)), (0x800 * 32));

    if ((param0->unk_70 == 1) || (param0->unk_70 == 2)) {
        sub_02062CCC(param0->unk_38, 0);
    }

    {
        const u32 * v1;

        if (param0->unk_70 == 1) {
            v1 = Unk_ov5_021FF7D0;
        } else {
            if (ov5_021D1A78(param0) == 1) {
                v1 = Unk_ov5_021FF6B8;
            } else {
                v1 = Unk_ov5_021FF744;
            }
        }

        ov5_021DF4C8(param0->unk_40, v1);
    }

    {
        int v2 = 10;

        if (param0->unk_70 == 2) {
            v2 = 5;
        }

        ov5_021ECC20(param0->unk_38, 32, ov5_021D1A6C(param0->unk_34) + 3, ov5_021D1A68(param0->unk_34), v2);
    }

    ov5_021F1328(param0->unk_40);

    {
        UnkStruct_02027860 * v3 = sub_02027860(sub_0203D174(param0));
        int v4 = sub_02027F80(v3);

        sub_0205E884(param0->unk_3C, v4);
    }

    sub_02061C48(param0->unk_38);
    sub_020595A4();
    sub_02062C3C(param0->unk_38);
    ov5_021E931C(sub_0205EAFC(param0->unk_3C), param0->unk_28);

    param0->unk_04->unk_18 = sub_02055C8C(param0, 4);
}

static void ov5_021D1968 (UnkStruct_0203CDB0 * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_TurnBothDispOn();
    param0->unk_44 = ov5_021D5878();
    ov5_021D1578(param0->unk_44);
    param0->unk_48 = ov5_021D57BC();

    {
        int v0 = sub_0203A770(sub_0203A790(param0->unk_0C));
        ov5_021D5B40(sub_0205EAFC(param0->unk_3C), param0, v0, 1);
    }

    param0->unk_4C = ov5_021D521C(param0->unk_44, ov5_021EFAD8(param0->unk_30));

    if (ov5_021D1A78(param0) == 1) {
        param0->unk_04->unk_0C = NULL;
    } else {
        param0->unk_04->unk_0C = ov5_021D5EB8(param0);
    }

    param0->unk_04->unk_08 = ov5_021DD98C(param0->unk_08);
    param0->unk_64 = ov5_021E1B08(4);
    param0->unk_04->unk_10 = ov5_021D5CB0();

    ov5_021D5CE4(param0->unk_04->unk_10, ov5_021EFA8C(param0->unk_30));
    sub_02068344(param0);
    ov5_021EE7C0(param0);
    sub_02017798(ov5_021D0D80, param0);
}

static UnkStruct_ov5_021D1A68 * ov5_021D1A14 (int param0, int param1)
{
    int v0;
    u16 * v1;
    UnkStruct_ov5_021D1A68 * v2;

    v2 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov5_021D1A68));
    v1 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(96, param1, param0);

    for (v0 = 0; v0 < 24; v0++) {
        v2->unk_02[v0] = 0xffff;
    }

    for (v0 = 0; v0 < 24; v0++) {
        v2->unk_02[v0] = v1[v0];

        if (v1[v0] == 0xffff) {
            break;
        }
    }

    v2->unk_00 = v0;
    Heap_FreeToHeap(v1);
    return v2;
}

static const int * ov5_021D1A68 (const UnkStruct_ov5_021D1A68 * param0)
{
    return param0->unk_02;
}

static const int ov5_021D1A6C (const UnkStruct_ov5_021D1A68 * param0)
{
    return param0->unk_00;
}

static void ov5_021D1A70 (UnkStruct_ov5_021D1A68 * param0)
{
    Heap_FreeToHeap(param0);
}

static BOOL ov5_021D1A78 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02027860 * v0 = sub_02027860(sub_0203D174(param0));
    int v1 = sub_02027F80(v0);

    if (v1 == 9) {
        return 1;
    }

    return 0;
}
