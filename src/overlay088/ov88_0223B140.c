#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_decls/struct_0202B628_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_02095E80_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "constdata/const_020F410C.h"

#include "struct_defs/struct_02008A90.h"
#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_02027F8C.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02081CF4.h"
#include "struct_defs/struct_02095E80_t.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay088/struct_ov88_0223C370.h"
#include "overlay088/struct_ov88_0223C8AC.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_020021B0.h"
#include "unk_02002B7C.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200A9DC.h"
#include "unk_0200AC5C.h"
#include "unk_0200B29C.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "unk_0201378C.h"
#include "unk_02013A04.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02022594.h"
#include "unk_02023790.h"
#include "unk_02025E68.h"
#include "game_options.h"
#include "unk_0202ACE0.h"
#include "unk_0202B604.h"
#include "unk_0202CC64.h"
#include "unk_0202CD50.h"
#include "unk_0202D778.h"
#include "unk_0202F180.h"
#include "unk_0203061C.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_02038ED4.h"
#include "unk_02038F8C.h"
#include "unk_0203909C.h"
#include "unk_020393C8.h"
#include "unk_020507CC.h"
#include "unk_0206AFE0.h"
#include "unk_02073C2C.h"
#include "unk_02079D40.h"
#include "party.h"
#include "item.h"
#include "unk_0207D3B8.h"
#include "unk_0208C324.h"
#include "unk_02092494.h"
#include "unk_02095CD4.h"
#include "overlay088/ov88_0223B140.h"
#include "overlay088/ov88_0223E9C4.h"

static void ov88_0223B2F0(NNSG2dCharacterData * param0, int param1, int param2, int param3, int param4, UnkStruct_02022550 * param5);
static void ov88_0223B320(UnkStruct_02095E80 * param0);
static void ov88_0223C0E0(void * param0);
static void ov88_0223C15C(void);
static void ov88_0223C17C(UnkStruct_02018340 * param0);
static void ov88_0223C63C(void);
static void ov88_0223C370(UnkStruct_02095E80 * param0, UnkStruct_020067E8 * param1);
static void ov88_0223C44C(UnkStruct_02018340 * param0);
static void ov88_0223C4E0(UnkStruct_02018340 * param0, int param1, int param2);
static void ov88_0223C504(UnkStruct_02095E80 * param0, NARC * param1);
static void ov88_0223C66C(UnkStruct_02095E80 * param0, NARC * param1);
static void ov88_0223CBA0(UnkStruct_02095E80 * param0);
static void ov88_0223CE34(u32 * param0);
static void ov88_0223CE74(UnkStruct_02095E80 * param0);
static void ov88_0223CEF0(u16 * param0);
static int ov88_0223CF30(int param0, int param1, UnkStruct_ov88_0223C8AC * param2);
static void ov88_0223CF68(int param0, UnkStruct_02022550 * param1, int param2);
static int ov88_0223CFF4(u32 * param0, int * param1, UnkStruct_02022550 * param2, UnkStruct_ov88_0223C8AC * param3, int param4);
static int ov88_0223C800(int param0, UnkStruct_02073C74 * param1, u8 * param2, UnkStruct_02008A90 * param3);
static void ov88_0223E7F0(UnkStruct_0202B628 * param0, UnkStruct_02073C74 * param1);
static void ov88_0223D140(UnkStruct_0202CC84 * param0);
static void ov88_0223E894(UnkStruct_02095E80 * param0);
static void ov88_0223E8B4(UnkStruct_02095E80 * param0);
static int ov88_0223E8D0(UnkStruct_02095E80 * param0);
static int ov88_0223E914(UnkStruct_02095E80 * param0);
static void ov88_0223E984(UnkStruct_02095E80 * param0);
static void ov88_0223E998(UnkStruct_02095E80 * param0);
static void ov88_0223B710(UnkStruct_0200B358 * param0, Party * param1, int param2);
static void ov88_0223B748(UnkStruct_0205AA50 * param0, UnkStruct_0200B358 * param1, UnkStruct_0200B144 * param2, Party * param3, int param4);
static void ov88_0223C8D8(UnkStruct_0205AA50 * param0, int param1, Party * param2, int param3, UnkStruct_02095E80 * param4);
static void ov88_0223E694(Party * param0, Party * param1, int param2, int param3, UnkStruct_ov88_0223C370 * param4);
static void ov88_0223BF7C(UnkStruct_02095E80 * param0);
static void ov88_0223B4F0(UnkStruct_02095E80 * param0);
static void ov88_0223BFD8(UnkStruct_02095E80 * param0);
static void ov88_0223BE28(UnkStruct_02095E80 * param0);
static void ov88_0223CB34(UnkStruct_0205AA50 * param0, int param1, UnkStruct_02095E80 * param2);
static void ov88_0223BD18(UnkStruct_02073C74 * param0, UnkStruct_ov88_0223C8AC * param1);
static void ov88_0223E87C(UnkStruct_02022550 * param0, int param1, int param2);
static int ov88_0223C8AC(UnkStruct_ov88_0223C8AC * param0, Party * param1, int param2, int param3);
static void ov88_0223D0C0(UnkStruct_021C0794 * param0);
static int ov88_0223B914(UnkStruct_02095E80 * param0);
static int ov88_0223BED8(UnkStruct_02095E80 * param0);
static void ov88_0223B7A0(Party * param0, int param1, UnkStruct_02095E80 * param2);
static int ov88_0223D150(UnkStruct_02095E80 * param0);
static int ov88_0223DA00(UnkStruct_02095E80 * param0);
static int ov88_0223DA3C(UnkStruct_02095E80 * param0);
static int ov88_0223E4BC(UnkStruct_02095E80 * param0);
static int ov88_0223D318(UnkStruct_02095E80 * param0);
static int ov88_0223D2C4(UnkStruct_02095E80 * param0);
static int ov88_0223DB48(UnkStruct_02095E80 * param0);
static int ov88_0223DC84(UnkStruct_02095E80 * param0);
static int ov88_0223DCE0(UnkStruct_02095E80 * param0);
static int ov88_0223E5B8(UnkStruct_02095E80 * param0);
static int ov88_0223D434(UnkStruct_02095E80 * param0);
static int ov88_0223D3E0(UnkStruct_02095E80 * param0);
static int ov88_0223E110(UnkStruct_02095E80 * param0);
static int ov88_0223E20C(UnkStruct_02095E80 * param0);
static int ov88_0223E41C(UnkStruct_02095E80 * param0);
static int ov88_0223E478(UnkStruct_02095E80 * param0);
static int ov88_0223DD1C(UnkStruct_02095E80 * param0);
static int ov88_0223DF00(UnkStruct_02095E80 * param0);
static int ov88_0223E384(UnkStruct_02095E80 * param0);
static int ov88_0223E330(UnkStruct_02095E80 * param0);
static void ov88_0223DFF4(UnkStruct_02095E80 * param0);
static void ov88_0223E1AC(UnkStruct_02095E80 * param0);
static void ov88_0223E1C0(UnkStruct_02095E80 * param0, int param1, int param2);
static void ov88_0223DE68(VecFx32 param0[], int param1, int param2, int param3, int param4);
static void ov88_0223DE7C(UnkStruct_02022550 * param0, UnkStruct_02022550 * param1, UnkStruct_02022550 * param2, int param3, VecFx32 param4[], UnkStruct_ov88_0223C8AC * param5);
static void ov88_0223BDA4(UnkStruct_02095E80 * param0, int param1);
static void ov88_0223E848(UnkStruct_02095E80 * param0);
static void ov88_0223C860(UnkStruct_0205AA50 * param0, Party * param1, int param2, int param3, int param4);
static int ov88_0223D740(UnkStruct_02095E80 * param0);
static int ov88_0223D7AC(UnkStruct_02095E80 * param0);
static int ov88_0223D854(UnkStruct_02095E80 * param0);
static int ov88_0223D69C(UnkStruct_02095E80 * param0);
static void ov88_0223D1EC(UnkStruct_02095E80 * param0, int param1);
static void ov88_0223D0D4(UnkStruct_02025E6C * param0, UnkStruct_02027F8C * param1, UnkStruct_02027F8C * param2);
static void ov88_0223C488(NARC * param0, u32 param1, UnkStruct_02018340 * param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7);

static const int Unk_ov88_0223EF9C[][2] = {
    {0x0, 0x20},
    {0x40, 0x20},
    {0x0, 0x48},
    {0x40, 0x48},
    {0x0, 0x70},
    {0x40, 0x70},
    {0x80, 0x20},
    {0xC0, 0x20},
    {0x80, 0x48},
    {0xC0, 0x48},
    {0x80, 0x70},
    {0xC0, 0x70},
    {0xC0, 0xA0}
};

static const int Unk_ov88_0223EF54[][3] = {
    {0x3F, 0x58, 0x0},
    {0xC0, 0x58, 0x1},
    {0x10, 0x8, 0x6},
    {0x90, 0x8, 0x6},
    {0x63, 0x8, 0x16},
    {0xE3, 0x8, 0x16}
};

static const u8 Unk_ov88_0223F004[][4][6] = {
    {
        {0x4, 0x2, 0xC, 0xC},
        {0x2, 0x4, 0xC, 0xC},
        {0x7, 0x6, 0x1, 0x0},
        {0x1, 0x6, 0x7, 0x0}
    },
    {
        {0x5, 0x3, 0xC, 0xC},
        {0x3, 0x5, 0xC, 0xC},
        {0x0, 0x7, 0x6, 0x1},
        {0x6, 0x7, 0x0, 0x1}
    },
    {
        {0x0, 0x0, 0x0, 0x0},
        {0x4, 0x0, 0x0, 0x0},
        {0x9, 0x8, 0x7, 0x6},
        {0x3, 0x1}
    },
    {
        {0x1, 0x1, 0x1, 0x1},
        {0x5, 0x1, 0x1, 0x1},
        {0x2, 0x9, 0x8, 0x7},
        {0x8, 0x9, 0x6, 0x6}
    },
    {
        {0x2, 0x2, 0x2, 0x2},
        {0x0, 0x0, 0x0, 0x0},
        {0xB, 0xA, 0x9, 0x8, 0x7, 0x6},
        {0x5, 0x3, 0x1}
    },
    {
        {0x3, 0x3, 0x3, 0x3},
        {0x1, 0x1, 0x1, 0x1},
        {0x4, 0x4, 0x4, 0x4},
        {0xA, 0x8, 0x6}
    },
    {
        {0xA, 0x8, 0xC},
        {0x8, 0xA, 0xC},
        {0x1, 0x0},
        {0x7, 0x0, 0x1}
    },
    {
        {0xC},
        {0x9, 0xC},
        {0x6},
        {0x0}
    },
    {
        {0x6},
        {0xA, 0x6},
        {0x3, 0x2, 0x1, 0x0},
        {0x9, 0x7}
    },
    {
        {0x7},
        {0xB, 0xC},
        {0x8},
        {0x2, 0x0, 0x1}
    },
    {
        {0x8},
        {0x6},
        {0x5, 0x4, 0x3, 0x2, 0x1, 0x0},
        {0xB, 0x9, 0x7}
    },
    {
        {0x9},
        {0xC},
        {0xA},
        {0x4, 0x2, 0x0}
    },
    {
        {0xB, 0x9, 0x7, 0x6},
        {0x7, 0x6},
        {0xC},
        {0xC}
    }
};

int ov88_0223B140 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02095E80 * v0;
    NARC * v1;

    sub_02017798(NULL, NULL);
    sub_020177A4();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    Heap_Create(3, 26, 0x50000 + 0x20000 + 2000);

    v1 = NARC_ctor(54, 26);
    v0 = sub_0200681C(param0, sizeof(UnkStruct_02095E80), 26);

    MI_CpuClearFast(v0, sizeof(UnkStruct_02095E80));

    v0->unk_174 = sub_02018340(26);
    v0->unk_178 = sub_0200B368(12, (10 + 1) * 2, 26);
    v0->unk_17C = sub_0200B358(26);
    v0->unk_180 = sub_0200B358(26);
    v0->unk_184 = sub_0200B144(0, 26, 354, 26);
    v0->unk_40 = NULL;

    ov88_0223C370(v0, param0);
    sub_02017DD4(4, 8);
    ov88_0223C15C();
    ov88_0223C17C(v0->unk_174);
    sub_0200F174(0, 1, 1, 0x0, 16, 1, 26);
    ov88_0223C504(v0, v1);
    sub_02017798(ov88_0223C0E0, v0);
    ov88_0223C63C();
    ov88_0223C66C(v0, v1);
    ov88_0223CBA0(v0);
    ov88_0223E9C4(v0->unk_174, v0->unk_49C, v0->unk_08->unk_18);

    v0->unk_00 = v0->unk_08->unk_00;

    sub_02095E60(v0->unk_00, v0);
    ov88_0223ECBC(&v0->unk_49C[23], 20, 1, v0->unk_184, v0->unk_178);
    sub_02095CD4(v0->unk_00);
    sub_02019120(0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_02038A1C(26, v0->unk_174);
    sub_02039734();

    if (sub_02013948() == 0) {
        sub_02004550(4, 1085, 1);
        sub_02004A84(1085);
    } else {
        sub_02004550(4, 1086, 1);
        sub_02004A84(1086);
    }

    NARC_dtor(v1);

    return 1;
}

static void ov88_0223B2F0 (NNSG2dCharacterData * param0, int param1, int param2, int param3, int param4, UnkStruct_02022550 * param5)
{
    u8 * v0;

    GX_LoadOBJ(param0->pRawData, ((4 * 32 + 18) + param4 * (4 * 4)) * 0x20, ((4 * 4) * 0x20));
    sub_02021EF0(param5, sub_02079EDC(param1, param2, param3) + 10);
}

static void ov88_0223B320 (UnkStruct_02095E80 * param0)
{
    UnkStruct_02023790 * v0, * v1, * v2;
    UnkStruct_02025E6C * v3, * v4;

    v3 = sub_02032EE8(sub_0203608C());
    v4 = sub_02032EE8(sub_0203608C() ^ 1);
    v0 = sub_02025F04(v3, 26);
    v1 = sub_02025F04(v4, 26);
    v2 = sub_0200B1EC(param0->unk_184, 50);

    ov88_0223EC78(&param0->unk_49C[0], v0, 10, 0, 1, 1);
    ov88_0223EC78(&param0->unk_49C[1], v1, 10, 0, 1, 1);
    ov88_0223EC78(&param0->unk_49C[6], v2, 5, 0, 1, 1);

    sub_020237BC(v2);
    sub_020237BC(v1);
    sub_020237BC(v0);
}

static void ov88_0223B3C0 (UnkStruct_02095E80 * param0)
{
    NARC * v0;

    v0 = NARC_ctor(54, 26);

    ov88_0223C15C();
    ov88_0223C17C(param0->unk_174);
    ov88_0223C504(param0, v0);
    ov88_0223B4F0(param0);
    ov88_0223B320(param0);

    sub_0200DD0C(param0->unk_174, 0, (512 - (9 + (18 + 12))), 10, GameOptions_GetFrameStyle(param0->unk_08->unk_18), 26);
    sub_0200DAA4(param0->unk_174, 0, (512 - 9), 11, 0, 26);

    ov88_0223ECBC(&param0->unk_49C[21], 15, 1, param0->unk_184, param0->unk_178);

    sub_02019120(4, 1);
    sub_02019120(5, 1);
    sub_02019120(6, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    sub_02019120(0, 1);
    sub_02019120(1, 1);
    sub_02019120(2, 1);
    sub_02019120(3, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    ov88_0223C63C();
    ov88_0223C66C(param0, v0);
    ov88_0223CBA0(param0);
    ov88_0223B7A0(param0->unk_2270, 0, param0);
    ov88_0223B7A0(param0->unk_2274, 6, param0);

    sub_02021CAC(param0->unk_39C[0], 1);
    sub_02021CAC(param0->unk_39C[1], 1);
    sub_02017798(ov88_0223C0E0, param0);
    NARC_dtor(v0);
}

static void ov88_0223B4F0 (UnkStruct_02095E80 * param0)
{
    ov88_0223B710(param0->unk_178, param0->unk_2270, 0);
    ov88_0223B710(param0->unk_178, param0->unk_2274, 6);
    ov88_0223B748(&param0->unk_49C[7], param0->unk_178, param0->unk_184, param0->unk_2270, 0);
    ov88_0223B748(&param0->unk_49C[13], param0->unk_178, param0->unk_184, param0->unk_2274, 6);
    ov88_0223C4E0(param0->unk_174, Party_GetCurrentCount(param0->unk_2270), Party_GetCurrentCount(param0->unk_2274));
}

int ov88_0223B57C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02095E80 * v0 = sub_0200682C(param0);
    int v1 = 0;

    switch (*param1) {
    case 0:
        if (sub_0200F2AC()) {
            *param1 = 1;

            ov88_0223B320(v0);
        }
        break;
    case 1:
        switch (v0->unk_48) {
        case 0:
            v0->unk_48 = ov88_0223B914(v0);
            break;
        case 1:
            v0->unk_48 = ov88_0223BED8(v0);
            ov88_0223CE74(v0);
            break;
        case 2:
            sub_0200F174(0, 0, 0, 0x0, 8, 1, 26);
            *param1 = 2;
            break;
        case 3:
            sub_0200F174(0, 0, 0, 0x0, 8, 1, 26);
            v0->unk_48 = 4;
            break;
        case 4:
            if (sub_0200F2AC()) {
                ov88_0223BFD8(v0);
                ov88_0223BF7C(v0);
                ov88_0223C44C(v0->unk_174);

                v0->unk_44 = 1;
                v0->unk_48 = 5;

                ov88_0223D1EC(v0, v0->unk_88[0] / 6);
            }
            break;
        case 5:
            if (sub_02006844(v0->unk_40)) {
                sub_02006814(v0->unk_40);
                ov88_0223B3C0(v0);

                v0->unk_44 = 0;
                v0->unk_88[0] = v0->unk_0C.unk_14 + v0->unk_3C * 6;

                ov88_0223BE28(v0);
                ov88_0223CF68(v0->unk_88[0], v0->unk_39C[0], 0);
                sub_02039734();

                v0->unk_48 = 6;
            }
            break;
        case 6:
            sub_0200F174(0, 1, 1, 0x0, 8, 1, 26);
            v0->unk_48 = 7;
            break;
        case 7:
            if (sub_0200F2AC()) {
                v0->unk_48 = 1;
            }
            break;
        }
        break;
    case 2:
        if (sub_0200F2AC()) {
            v1 = 1;
        }
        break;
    }

    if (!v0->unk_44) {
        ov88_0223E848(v0);
        sub_020219F8(v0->unk_194);
    }

    sub_02038A1C(26, v0->unk_174);

    return v1;
}

static void ov88_0223B710 (UnkStruct_0200B358 * param0, Party * param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < Party_GetCurrentCount(param1); v0++) {
        sub_0200B5CC(param0, v0 + param2, sub_02076B10(Party_GetPokemonBySlotIndex(param1, v0)));
    }
}

static void ov88_0223B748 (UnkStruct_0205AA50 * param0, UnkStruct_0200B358 * param1, UnkStruct_0200B144 * param2, Party * param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < Party_GetCurrentCount(param3); v0++) {
        UnkStruct_02023790 * v1 = sub_0200B29C(param1, param2, 1 + param4 + v0, 26);

        ov88_0223EC78(&param0[v0], v1, 8, 0, 1, 0);
        sub_020237BC(v1);
    }
}

static void ov88_0223B7A0 (Party * param0, int param1, UnkStruct_02095E80 * param2)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < Party_GetCurrentCount(param0); v0++) {
        v1 = v0 + param1;

        param2->unk_7E8[v1] = sub_02006F50(19, sub_02079D8C(param2->unk_6F4[v1].unk_00, param2->unk_6F4[v1].unk_05, param2->unk_6F4[v1].unk_06), 0, &param2->unk_818[v1], 26);

        DC_FlushRange(param2->unk_818[v1]->pRawData, 0x20 * 4 * 4);

        ov88_0223B2F0(param2->unk_818[v1], param2->unk_6F4[v1].unk_00, param2->unk_6F4[v1].unk_06, param2->unk_6F4[v1].unk_05, v1, param2->unk_3D4[v1]);
        sub_02021CAC(param2->unk_3D4[v1], 1);

        if (param2->unk_6F4[v1].unk_02 == 0) {
            sub_02021CAC(param2->unk_404[v1], 0);
        } else {
            sub_02021CAC(param2->unk_404[v1], 1);
            sub_02021D6C(param2->unk_404[v1], 3 + param2->unk_6F4[v1].unk_02 - 1);
        }

        if (param2->unk_6F4[v1].unk_0C == 0) {
            sub_02021CAC(param2->unk_434[v1], 0);
        } else {
            sub_02021CAC(param2->unk_434[v1], 1);
            sub_02021D6C(param2->unk_434[v1], 21);
        }
    }

    for (; v0 < 6; v0++) {
        sub_02021CAC(param2->unk_3D4[v0 + param1], 0);
        sub_02021CAC(param2->unk_404[v0 + param1], 0);
        sub_02021CAC(param2->unk_434[v0 + param1], 0);
    }
}

static int ov88_0223B914 (UnkStruct_02095E80 * param0)
{
    ov88_0223E998(param0);

    switch (param0->unk_4C) {
    case 0:
        sub_020364F0(80);
        sub_02017DE0(2);
        ov88_0223E894(param0);

        {
            int v0, v1, v2;
            UnkStruct_02073C74 * v3;

            for (v0 = 0; v0 < Party_GetCurrentCount(param0->unk_08->unk_08); v0++) {
                UnkStruct_02073C74 * v4 = Party_GetPokemonBySlotIndex(param0->unk_08->unk_08, v0);

                v2 = sub_02074470(v4, 174, NULL);

                if (v2 == 492) {
                    v1 = sub_02074470(v4, 112, NULL);

                    if (v1 != 0) {
                        sub_02077ACC(v4, 0);
                    }
                }
            }
        }

        param0->unk_4C++;
        break;
    case 1:
        if (sub_02036540(80)) {
            if (param0->unk_08->unk_34 == 0) {
                param0->unk_4C = 6;
            } else {
                param0->unk_4C = 2;
            }

            if (sub_0203608C() == 0) {
                ov88_0223D044(sub_0203608C(), 31, inline_020564D0(60) + 3);
            }

            ov88_0223D0C0(param0->unk_04);
            ov88_0223E984(param0);
        }
        break;
    case 2:
        if (param0->unk_2318 != 0) {
            param0->unk_4C++;
        }
        break;
    case 3:
        param0->unk_2318--;

        if (param0->unk_2318 == 0) {
            param0->unk_4C = 4;
        }
        break;
    case 4:
        sub_02038ED4(&param0->unk_36F4);
        param0->unk_4C++;
        break;
    case 5:
        if (sub_02038EDC(param0->unk_04, 2, &param0->unk_36F4)) {
            param0->unk_4C++;
        }
        break;
    case 6:
        sub_0203632C(1);
        sub_020364F0(81);
        param0->unk_4C++;
        break;
    case 7:
        if (sub_02036540(81)) {
            param0->unk_4C++;
        }
        break;
    case 8:
        param0->unk_50 = 0;
        param0->unk_54 = 0;
        param0->unk_58 = 0;

        if (sub_0203608C() == 1) {
            ov88_0223D098(sub_0203608C(), param0->unk_2270, param0->unk_50);
            param0->unk_50++;
        }

        param0->unk_4C++;
        break;
    case 9:
        if (param0->unk_54 != 0) {
            param0->unk_4C = 10;
        }
        break;
    case 10:
        param0->unk_4C++;
        ov88_0223B4F0(param0);
        break;
    case 11:
    {
        int v5, v6;

        for (v5 = 0; v5 < 13; v5++) {
            param0->unk_6F4[v5].unk_00 = 0;
        }

        for (v5 = 0; v5 < Party_GetCurrentCount(param0->unk_2270); v5++) {
            UnkStruct_02073C74 * v7 = Party_GetPokemonBySlotIndex(param0->unk_2270, v5);
            ov88_0223BD18(v7, &param0->unk_6F4[v5]);
        }

        for (v5 = 0; v5 < Party_GetCurrentCount(param0->unk_2274); v5++) {
            UnkStruct_02073C74 * v8 = Party_GetPokemonBySlotIndex(param0->unk_2274, v5);
            ov88_0223BD18(v8, &param0->unk_6F4[v5 + 6]);
        }

        param0->unk_6F4[12].unk_00 = 1;
    }
        param0->unk_4C++;
        break;
    case 12:
        ov88_0223D0D4(sub_02032EE8(sub_0203608C()), param0->unk_227C, &param0->unk_2280);
        param0->unk_4C++;
        break;
    case 13:
        if (param0->unk_54 == 3) {
            param0->unk_4C++;
        }
        break;
    case 14:
        ov88_0223D140(sub_0202CC98(param0->unk_04));
        param0->unk_4C++;
        break;
    case 15:
        if (param0->unk_54 == 4) {
            param0->unk_4C++;

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
            ov88_0223B7A0(param0->unk_2270, 0, param0);
            ov88_0223B7A0(param0->unk_2274, 6, param0);

            {
                int v9;

                for (v9 = 0; v9 < 2; v9++) {
                    sub_02021CAC(param0->unk_39C[v9], 1);
                }
            }
        }
        break;
    case 16:
        sub_0200AAE0(8, 0, -16, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 1);
        sub_02019120(1, 1);
        sub_02019120(2, 1);
        sub_02019120(3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        param0->unk_4C++;
        break;
    case 17:
        if (sub_0200AC1C(1)) {
            UnkStruct_02073C74 * v10 = Party_GetPokemonBySlotIndex(param0->unk_2270, 0);

            param0->unk_2168 = ov88_0223C800(0, v10, param0->unk_848[0], &param0->unk_2148[0]);
            ov88_0223C8D8(param0->unk_49C, 0, param0->unk_2270, 0, param0);
            param0->unk_4C++;
        }
        break;
    case 18:
        sub_0200AAE0(8, 0, -16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_OBJ, 2);
        sub_02019120(4, 1);
        sub_02019120(5, 1);
        sub_02019120(6, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

        param0->unk_4C++;
        ov88_0223E8B4(param0);
        break;
    case 19:
        if (sub_0200AC1C(2)) {
            sub_0200E084(&param0->unk_49C[23], 0);
            sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
            ov88_0223ECBC(&param0->unk_49C[21], 15, 1, param0->unk_184, param0->unk_178);
            sub_02017DF0(2);

            return 1;
        }

        break;
    }

    return 0;
}

static void ov88_0223BD18 (UnkStruct_02073C74 * param0, UnkStruct_ov88_0223C8AC * param1)
{
    int v0, v1;

    v0 = sub_02073C88(param0);

    param1->unk_04 = sub_02074470(param0, 155, NULL);
    param1->unk_00 = sub_02074470(param0, 5, NULL);
    param1->unk_06 = sub_02074470(param0, 112, NULL);
    param1->unk_05 = sub_02074470(param0, 76, NULL);
    param1->unk_08 = sub_02074470(param0, 111, NULL);
    param1->unk_0C = sub_02074470(param0, 162, NULL);

    v1 = sub_02074470(param0, 6, NULL);

    sub_02073CD4(param0, v0);

    if (param1->unk_00 != 0) {
        param1->unk_0A = sub_020759CC(param1->unk_00, param1->unk_06, 28);
    }

    if (v1 != 0) {
        param1->unk_02 = Item_IsMail(v1) + 1;
    }
}

static void ov88_0223BDA4 (UnkStruct_02095E80 * param0, int param1)
{
    UnkStruct_02073C74 * v0 = Party_GetPokemonBySlotIndex(param0->unk_2274, param1 % 6);

    param0->unk_2168 = ov88_0223C800(1, v0, param0->unk_848[param1 / 6], &param0->unk_2148[param1 / 6]);

    ov88_0223C8D8(param0->unk_49C, 1, param0->unk_2274, param1 % 6, param0);
    sub_02021D6C(param0->unk_464[3], param0->unk_6F4[param1].unk_04 + 6 - 1);
}

static void ov88_0223BE28 (UnkStruct_02095E80 * param0)
{
    if (param0->unk_88[0] != 12) {
        if (param0->unk_88[0] < 6) {
            UnkStruct_02073C74 * v0 = Party_GetPokemonBySlotIndex(param0->unk_2270, param0->unk_88[0]);

            param0->unk_2168 = ov88_0223C800(0, v0, param0->unk_848[param0->unk_88[0] / 6], &param0->unk_2148[param0->unk_88[0] / 6]);

            ov88_0223C8D8(param0->unk_49C, 0, param0->unk_2270, param0->unk_88[0], param0);
            ov88_0223CB34(param0->unk_49C, 1, param0);
            sub_02021CAC(param0->unk_464[3], 0);
        } else {
            ov88_0223BDA4(param0, param0->unk_88[0]);
            ov88_0223CB34(param0->unk_49C, 0, param0);
            sub_02021CAC(param0->unk_464[2], 0);
        }
    }
}

static int ov88_0223BED8 (UnkStruct_02095E80 * param0)
{
    if (param0->unk_226C != NULL) {
        param0->unk_140 = param0->unk_226C(param0);
    }

    switch (param0->unk_140) {
    case 0:
        break;
    case 2:
        return 2;
        break;
    case 1:
        break;
    case 3:
        return 3;
        break;
    }

    if (ov88_0223CFF4(&param0->unk_14C[0], &param0->unk_88[0], param0->unk_39C[0], param0->unk_6F4, 0)) {
        ov88_0223BE28(param0);
    }

    ov88_0223CFF4(&param0->unk_14C[1], &param0->unk_88[1], param0->unk_39C[1], param0->unk_6F4, 1);
    ov88_0223CEF0(&param0->unk_90);
    ov88_0223D058(param0, 23, param0->unk_88[0]);

    return 1;
}

static void ov88_0223BF7C (UnkStruct_02095E80 * param0)
{
    int v0;

    sub_0200A4E4(param0->unk_334[0][0]);
    sub_0200A4E4(param0->unk_334[1][0]);

    sub_0200A6DC(param0->unk_334[0][1]);
    sub_0200A6DC(param0->unk_334[1][1]);

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_324[v0]);
    }

    sub_02021964(param0->unk_194);
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();
}

static void ov88_0223BFD8 (UnkStruct_02095E80 * param0)
{
    int v0;

    for (v0 = 0; v0 < Party_GetCurrentCount(param0->unk_2270); v0++) {
        Heap_FreeToHeap(param0->unk_7E8[v0]);
    }

    for (v0 = 0; v0 < Party_GetCurrentCount(param0->unk_2274); v0++) {
        Heap_FreeToHeap(param0->unk_7E8[v0 + 6]);
    }
}

int ov88_0223C03C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02095E80 * v0 = sub_0200682C(param0);
    UnkStruct_ov88_0223C370 * v1 = sub_02006840(param0);
    int v2;

    v1->unk_28 = v0->unk_5C;

    ov88_0223BFD8(v0);

    sub_020237BC(v0->unk_190);
    Heap_FreeToHeap(v0->unk_2274);

    ov88_0223BF7C(v0);
    ov88_0223EC04(v0->unk_49C);
    ov88_0223C44C(v0->unk_174);

    Heap_FreeToHeapExplicit(26, v0->unk_174);
    sub_0200B190(v0->unk_184);
    sub_0200B3F0(v0->unk_180);
    sub_0200B3F0(v0->unk_17C);
    sub_0200B3F0(v0->unk_178);
    sub_020237BC(v0->unk_18C);
    sub_02006830(param0);
    sub_02017798(NULL, NULL);
    Heap_Destroy(26);

    return 1;
}

static void ov88_0223C0E0 (void * param0)
{
    UnkStruct_02095E80 * v0 = (UnkStruct_02095E80 *)param0;

    sub_0201C2B8(v0->unk_174);

    if (v0->unk_2168) {
        int v1 = v0->unk_2168 - 1;

        GXS_LoadOBJ(v0->unk_848[v1], 0 + v1 * (0x20 * 10 * 10), (0x20 * 10 * 10));
        sub_02006E84(v0->unk_2148[v1].unk_00, v0->unk_2148[v1].unk_04, 5, 0x20 * (2 + v1), 32, 26);

        v0->unk_2168 = 0;
    }

    sub_0201DCAC();
    sub_0200A858();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov88_0223C15C (void)
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

static void ov88_0223C17C (UnkStruct_02018340 * param0)
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
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v1, 0);
        sub_02019EBC(param0, 0);
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
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v2, 0);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v3, 0);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v4, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v5, 0);
        sub_02019EBC(param0, 4);
    }

    {
        UnkStruct_ov97_0222DB78 v6 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v6, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v7 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 6, &v7, 0);
    }

    sub_02019690(0, 32, 0, 26);
    sub_02019690(1, 32, 0, 26);
    sub_02019690(4, 32, 0, 26);

    {
        int v8;

        for (v8 = 0; v8 < 4; v8++) {
            sub_02019184(param0, 0 + v8, 0, 0);
            sub_02019184(param0, 0 + v8, 3, 0);
            sub_02019184(param0, 4 + v8, 0, 0);
            sub_02019184(param0, 4 + v8, 3, 0);
        }
    }

    sub_02019120(0, 0);
    sub_02019120(1, 0);
    sub_02019120(2, 0);
    sub_02019120(3, 0);
    sub_02019120(4, 0);
    sub_02019120(5, 0);
    sub_02019120(6, 0);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
}

static void ov88_0223C370 (UnkStruct_02095E80 * param0, UnkStruct_020067E8 * param1)
{
    UnkStruct_ov88_0223C370 * v0 = sub_02006840(param1);

    param0->unk_08 = v0;
    param0->unk_6CC = 4;
    param0->unk_44 = 0;
    param0->unk_6C8 = 0;
    param0->unk_16C = 6;
    param0->unk_170 = 6;
    param0->unk_88[0] = 0;
    param0->unk_88[1] = 6;
    param0->unk_140 = 0;
    param0->unk_48 = 0;
    param0->unk_4C = 0;
    param0->unk_226C = ov88_0223D150;
    param0->unk_60[0] = 0;
    param0->unk_60[1] = 0;
    param0->unk_5C = 0;
    param0->unk_2168 = 0;
    param0->unk_36F8 = -1;
    param0->unk_36FC = -1;
    param0->unk_2318 = 0;
    param0->unk_3704 = 0;
    param0->unk_3708 = 0;
    param0->unk_2270 = v0->unk_08;
    param0->unk_227C = v0->unk_0C;
    param0->unk_04 = v0->unk_10;
    param0->unk_2274 = Heap_AllocFromHeap(26, Party_sizeof());

    Party_InitWithCapacity(param0->unk_2274, 6);
    memset(param0->unk_2274, 0xff, Party_sizeof());

    param0->unk_18C = sub_02025F04(v0->unk_04, 26);
    param0->unk_190 = sub_0200B1EC(param0->unk_184, 42);

    sub_02038F8C(v0->unk_14);
}

static void ov88_0223C44C (UnkStruct_02018340 * param0)
{
    sub_02019044(param0, 6);
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);

    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
}

static void ov88_0223C488 (NARC * param0, u32 param1, UnkStruct_02018340 * param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7)
{
    void * v0 = sub_0200723C(param0, param1, param6, param7, 1);

    if (v0 != NULL) {
        NNSG2dScreenData * v1;

        if (NNS_G2dGetUnpackedScreenData(v0, &v1)) {
            if (param5 == 0) {
                param5 = v1->szByte;
            }

            if (sub_02019FE4(param2, param3) != NULL) {
                sub_02019574(param2, param3, v1->rawData, param5);
            }
        }

        Heap_FreeToHeap(v0);
    }
}

static void ov88_0223C4E0 (UnkStruct_02018340 * param0, int param1, int param2)
{
    int v0;
    sub_02019460(param0, 2, sub_02019FE4(param0, 2), 32 * 24 * 2, 0);
}

static void ov88_0223C504 (UnkStruct_02095E80 * param0, NARC * param1)
{
    UnkStruct_02018340 * v0 = param0->unk_174;

    sub_02007130(param1, 0, 4, 0, 16 * 9 * 2, 26);
    sub_02007130(param1, 0, 0, 0, 16 * 9 * 2, 26);
    sub_0201975C(0, 0);
    sub_0201975C(4, 0);
    sub_02002E98(0, 13 * 32, 26);
    sub_020070E8(param1, 1, v0, 2, 0, 16 * 18 * 0x20, 1, 26);

    ov88_0223C488(param1, 3, v0, 2, 0, 32 * 24 * 2, 1, 26);

    sub_0200710C(param1, 4, v0, 3, 0, 32 * 24 * 2, 1, 26);
    sub_02002E98(0, 2 * 32, 26);
    sub_02002E7C(0, 3 * 32, 26);
    sub_020070E8(param1, 2, v0, 5, 0, 16 * 4 * 0x20, 1, 26);
    sub_0200710C(param1, 5, v0, 5, 0, 32 * 24 * 2, 1, 26);
    sub_0200710C(param1, 6, v0, 6, 0, 32 * 24 * 2, 1, 26);
    sub_02002E98(4, 2 * 32, 26);
    sub_02002E7C(4, 3 * 32, 26);
    sub_02019EBC(v0, 4);
}

static void ov88_0223C63C (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20, 2048, 2048, 26
        };

        sub_0201E86C(&v0);
    }

    sub_0201F834(20, 26);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov88_0223C66C (UnkStruct_02095E80 * param0, NARC * param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 127, 0, 32, 0, 127, 0, 32, 26);

    param0->unk_194 = sub_020095C4((2 + 12 + 12 + 12 + 2 + 2 + 2 + 1), &param0->unk_198, 26);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_324[v0] = sub_02009714(2, v0, 26);
    }

    param0->unk_334[0][0] = sub_02009A4C(param0->unk_324[0], param1, 7, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 26);
    param0->unk_334[0][1] = sub_02009B04(param0->unk_324[1], param1, 0, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 9, 26);
    param0->unk_334[0][2] = sub_02009BC4(param0->unk_324[2], param1, 8, 1, 0, 2, 26);
    param0->unk_334[0][3] = sub_02009BC4(param0->unk_324[3], param1, 9, 1, 0, 3, 26);
    param0->unk_334[1][0] = sub_02009A4C(param0->unk_324[0], param1, 10, 1, 1, NNS_G2D_VRAM_TYPE_2DSUB, 26);
    param0->unk_334[1][1] = sub_02009B04(param0->unk_324[1], param1, 0, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 10, 26);
    param0->unk_334[1][2] = sub_02009BC4(param0->unk_324[2], param1, 11, 1, 1, 2, 26);
    param0->unk_334[1][3] = sub_02009BC4(param0->unk_324[3], param1, 12, 1, 1, 3, 26);

    sub_0200A328(param0->unk_334[0][0]);
    sub_0200A328(param0->unk_334[1][0]);
    sub_0200A5C8(param0->unk_334[0][1]);
    sub_0200A5C8(param0->unk_334[1][1]);
    sub_02006E84(19, sub_02079FD0(), 1, 10 * 0x20, 0x20 * 4, 26);
}

static int ov88_0223C800 (int param0, UnkStruct_02073C74 * param1, u8 * param2, UnkStruct_02008A90 * param3)
{
    sub_02075EF4(param3, param1, 2);

    {
        int v0 = sub_02074470(param1, 0, NULL);
        int v1 = sub_02074470(param1, 5, NULL);

        sub_020136A4(param3->unk_00, param3->unk_02, 26, 0, 0, 10, 10, param2, v0, 0, 2, v1);
    }

    DC_FlushRange(param2, 0x20 * 10 * 10);

    return param0 + 1;
}

static void ov88_0223C860 (UnkStruct_0205AA50 * param0, Party * param1, int param2, int param3, int param4)
{
    UnkStruct_02023790 * v0;

    v0 = sub_02023790(20, 26);

    sub_02074470(Party_GetPokemonBySlotIndex(param1, param2), 119, v0);
    sub_0201ADA4(param0, 0);
    ov88_0223EC78(param0, v0, param3, 0, param4, 1);
    sub_020237BC(v0);
}

static int ov88_0223C8AC (UnkStruct_ov88_0223C8AC * param0, Party * param1, int param2, int param3)
{
    if ((param0->unk_00 == 29) || (param0->unk_00 == 32)) {
        UnkStruct_02073C74 * v0 = Party_GetPokemonBySlotIndex(param1, param2);
        int v1 = sub_02074470(v0, 77, NULL);

        if (v1 == 0) {
            return 2;
        }
    }

    return param3;
}

static void ov88_0223C8D8 (UnkStruct_0205AA50 * param0, int param1, Party * param2, int param3, UnkStruct_02095E80 * param4)
{
    UnkStruct_02023790 * v0, * v1;
    u16 v2, v3;
    int v4;
    UnkStruct_02073C74 * v5;

    v5 = Party_GetPokemonBySlotIndex(param2, param3);
    v4 = sub_020765AC(v5, 2);

    sub_02021CAC(param4->unk_464[param1], 1);
    ov88_0223E87C(param4->unk_464[param1], Unk_ov88_0223EF54[param1][0], Unk_ov88_0223EF54[param1][1] + v4 + 192);

    if (param1 == 0) {
        sub_02021D0C(param4->unk_464[param1], param4->unk_6F4[param3].unk_0A);
    }

    sub_02021D6C(param4->unk_464[2 + param1], param4->unk_6F4[param3].unk_04 + 6 - 1);
    sub_02021CAC(param4->unk_464[2 + param1], 1);
    ov88_0223C860(&param0[26 + param1], param2, param3, 9, 6);

    {
        int v6 = param4->unk_6F4[param1 * 6 + param3].unk_08;

        v6 = ov88_0223C8AC(&param4->unk_6F4[param1 * 6 + param3], param2, param3, v6);

        if (param4->unk_6F4[param1 * 6 + param3].unk_05) {
            v6 = 2;
        }

        switch (v6) {
        case 2:
            sub_02021CAC(param4->unk_464[4 + param1], 0);
            break;
        case 0:
            sub_02021CAC(param4->unk_464[4 + param1], 1);
            sub_02021D6C(param4->unk_464[4 + param1], 22 + 1);
            break;
        case 1:
            sub_02021CAC(param4->unk_464[4 + param1], 1);
            sub_02021D6C(param4->unk_464[4 + param1], 22);
            break;
        }
    }

    if (!param4->unk_6F4[param1 * 6 + param3].unk_05) {
        v0 = sub_02023790(10, 26);
        sub_0201ADA4(&param0[28 + param1], 0);
        sub_0200B1B8(param4->unk_184, 41, v0);
        ov88_0223EC78(&param0[28 + param1], v0, 9, 0xff, 6, 0);

        v3 = sub_02074470(Party_GetPokemonBySlotIndex(param2, param3), 161, NULL);
        sub_020238A0(v0, v3, 3, 0, 1);
        ov88_0223EC78(&param0[28 + param1], v0, 9, 0, 24 + 6, 0);
        sub_020237BC(v0);
    } else {
        sub_0201ACF4(&param0[28 + param1]);
    }

    ov88_0223EC78(&param0[30 + param1], param4->unk_190, 7, 0, 3, 0);

    v2 = sub_02074470(Party_GetPokemonBySlotIndex(param2, param3), 6, NULL);
    sub_0201ADA4(&param0[32 + param1], 0);

    v1 = sub_02023790(20, 26);
    Item_GetNameIntoString(v1, v2, 26);
    ov88_0223EC78(&param0[32 + param1], v1, 9, 0, 3, 0);
    sub_020237BC(v1);
}

static void ov88_0223CB34 (UnkStruct_0205AA50 * param0, int param1, UnkStruct_02095E80 * param2)
{
    sub_02021CAC(param2->unk_464[param1], 0);
    sub_02021CAC(param2->unk_464[2 + param1], 0);
    sub_02021CAC(param2->unk_464[4 + param1], 0);
    sub_0201ACF4(&param0[26 + param1]);
    sub_0201ACF4(&param0[28 + param1]);
    sub_0201ACF4(&param0[30 + param1]);
    sub_0201ACF4(&param0[32 + param1]);
}

static void ov88_0223CBA0 (UnkStruct_02095E80 * param0)
{
    sub_020093B4(&param0->unk_354, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 2, param0->unk_324[0], param0->unk_324[1], param0->unk_324[2], param0->unk_324[3], NULL, NULL);
    sub_020093B4(&param0->unk_378, 1, 1, 1, 1, 0xffffffff, 0xffffffff, 0, 0, param0->unk_324[0], param0->unk_324[1], param0->unk_324[2], param0->unk_324[3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v0;
        int v1;

        v0.unk_00 = param0->unk_194;
        v0.unk_04 = &param0->unk_354;
        v0.unk_08.x = FX32_CONST(32);
        v0.unk_08.y = FX32_CONST(96);
        v0.unk_08.z = 0;
        v0.unk_14.x = FX32_ONE;
        v0.unk_14.y = FX32_ONE;
        v0.unk_14.z = FX32_ONE;
        v0.unk_20 = 0;
        v0.unk_24 = 0;
        v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v0.unk_2C = 26;

        for (v1 = 0; v1 < 2; v1++) {
            v0.unk_08.x = FX32_ONE * Unk_ov88_0223EF9C[v1][0];
            v0.unk_08.y = FX32_ONE * Unk_ov88_0223EF9C[v1][1];
            param0->unk_39C[v1] = sub_02021AA0(&v0);
            sub_02021CC8(param0->unk_39C[v1], 1);
            ov88_0223CF68(param0->unk_88[v1], param0->unk_39C[v1], v1);
            sub_02021F58(param0->unk_39C[v1], 100);
            sub_02021CAC(param0->unk_39C[v1], 0);
        }

        for (v1 = 0; v1 < 12; v1++) {
            v0.unk_08.x = FX32_ONE * (Unk_ov88_0223EF9C[v1][0] + 16);
            v0.unk_08.y = FX32_ONE * (Unk_ov88_0223EF9C[v1][1] - 6);
            param0->unk_3D4[v1] = sub_02021AA0(&v0);
            sub_02021CC8(param0->unk_3D4[v1], 1);
            sub_02021D6C(param0->unk_3D4[v1], 5 + v1);
            sub_02021F58(param0->unk_3D4[v1], 5);
            sub_02021CAC(param0->unk_3D4[v1], 0);
        }

        for (v1 = 0; v1 < 12; v1++) {
            v0.unk_08.x = FX32_ONE * (Unk_ov88_0223EF9C[v1][0] + 16 + 20);
            v0.unk_08.y = FX32_ONE * (Unk_ov88_0223EF9C[v1][1] + 16);
            v0.unk_24 = 0;
            param0->unk_404[v1] = sub_02021AA0(&v0);
            sub_02021F58(param0->unk_404[v1], 3);
            sub_02021CAC(param0->unk_404[v1], 0);
        }

        for (v1 = 0; v1 < 12; v1++) {
            v0.unk_08.x = FX32_ONE * (Unk_ov88_0223EF9C[v1][0] + 16 + 20 + 9);
            v0.unk_08.y = FX32_ONE * (Unk_ov88_0223EF9C[v1][1] + 16);
            v0.unk_24 = 0;
            param0->unk_434[v1] = sub_02021AA0(&v0);
            sub_02021F58(param0->unk_434[v1], 3);
            sub_02021CAC(param0->unk_434[v1], 0);
        }

        v0.unk_08.x = FX32_ONE * (128 - 4 * 8);
        v0.unk_08.y = FX32_ONE * (8 * 8 + 2);
        param0->unk_47C = sub_02021AA0(&v0);
        sub_02021CC8(param0->unk_47C, 1);
        sub_02021D6C(param0->unk_47C, 20);
        sub_02021CAC(param0->unk_47C, 0);

        for (v1 = 0; v1 < 6; v1++) {
            v0.unk_04 = &param0->unk_378;
            v0.unk_08.x = FX32_ONE * Unk_ov88_0223EF54[v1][0];
            v0.unk_08.y = FX32_ONE * (Unk_ov88_0223EF54[v1][1]) + (192 << FX32_SHIFT);
            v0.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
            param0->unk_464[v1] = sub_02021AA0(&v0);
            sub_02021CAC(param0->unk_464[v1], 0);
            sub_02021CC8(param0->unk_464[v1], 0);
            sub_02021D6C(param0->unk_464[v1], Unk_ov88_0223EF54[v1][2]);
        }
    }
}

static void ov88_0223CE34 (u32 * param0)
{
    int v0 = 0;
    int v1 = 0;

    if (Unk_021BF67C.unk_4C & PAD_KEY_UP) {
        v1 = 1;
        v0++;
    }

    if (Unk_021BF67C.unk_4C & PAD_KEY_DOWN) {
        v1 = 2;
        v0++;
    }

    if (Unk_021BF67C.unk_4C & PAD_KEY_LEFT) {
        v1 = 3;
        v0++;
    }

    if (Unk_021BF67C.unk_4C & PAD_KEY_RIGHT) {
        v1 = 4;
        v0++;
    }

    if (v0) {
        *param0 = v1;
    }
}

static const UnkUnion_02022594 Unk_ov88_0223EE28[] = {
    {0x38, 0x88, 0x18, 0x68},
    {0xFF, 0x0, 0x0, 0x0}
};

static void ov88_0223CE74 (UnkStruct_02095E80 * param0)
{
    u16 v0, v1;
    int v2 = -1, v3;

    if (param0->unk_88[0] >= 6) {
        return;
    }

    v2 = sub_02022664(Unk_ov88_0223EE28);

    if (v2 != 0xffffffff) {
        if (param0->unk_6F4[param0->unk_88[0]].unk_05) {
            return;
        }

        v0 = param0->unk_6F4[param0->unk_88[0]].unk_00;
        v1 = param0->unk_6F4[param0->unk_88[0]].unk_06;

        if (v0 == 441) {
            sub_020063E4(sub_0202CC98(param0->unk_04), 0, 100, 0);
        } else {
            sub_02005844(v0, v1);
        }

        sub_02021CC8(param0->unk_464[v2], 1);
        sub_02021D6C(param0->unk_464[v2], 4 + v2);
    }
}

static void ov88_0223CEF0 (u16 * param0)
{
    fx32 v0;
    GXRgb v1;
    int v2, v3, v4;

    *param0 += 20;

    if (*param0 > 360) {
        *param0 = 0;
    }

    v0 = sub_0201D250(*param0);
    v3 = 15 + (v0 * 10) / FX32_ONE;
    v1 = GX_RGB(29, v3, 0);

    GX_LoadOBJPltt((u16 *)&v1, (16 + 13) * 2, 2);
}

static int ov88_0223CF30 (int param0, int param1, UnkStruct_ov88_0223C8AC * param2)
{
    int v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param2[Unk_ov88_0223F004[param0][param1][v0]].unk_00 != 0) {
            v1 = Unk_ov88_0223F004[param0][param1][v0];
            break;
        }
    }

    return v1;
}

static const int Unk_ov88_0223EE50[][3] = {
    {0x0, 0x1, 0x2},
    {0x11, 0x12, 0x13}
};

static void ov88_0223CF68 (int param0, UnkStruct_02022550 * param1, int param2)
{
    VecFx32 v0;

    GF_ASSERT(param0 < 13);

    v0.x = FX32_ONE * Unk_ov88_0223EF9C[param0][0];
    v0.y = FX32_ONE * Unk_ov88_0223EF9C[param0][1];

    if (param0 == 12) {
        sub_02021C50(param1, &v0);
        sub_02021D6C(param1, Unk_ov88_0223EE50[param2][2]);
    } else {
        sub_02021C50(param1, &v0);

        if (param0 < 6) {
            sub_02021D6C(param1, Unk_ov88_0223EE50[param2][0]);
        } else {
            sub_02021D6C(param1, Unk_ov88_0223EE50[param2][1]);
        }
    }
}

static int ov88_0223CFF4 (u32 * param0, int * param1, UnkStruct_02022550 * param2, UnkStruct_ov88_0223C8AC * param3, int param4)
{
    int v0 = *param0 - 1;
    int v1 = 0;
    int v2 = 0;

    if (param4 == 0) {
        if (*param0) {
            v1 = ov88_0223CF30(*param1, v0, param3);
            ov88_0223CF68(v1, param2, param4);

            if (*param1 != v1) {
                sub_02005748(1500);
                *param1 = v1;
                v2 = 1;
            }
        }

        *param0 = 0;
    } else {
        ov88_0223CF68(*param1, param2, param4);
    }

    return v2;
}

void ov88_0223D044 (int param0, int param1, int param2)
{
    u8 v0 = param2;
    sub_020359DC(param1, &v0, 1);
}

void ov88_0223D058 (UnkStruct_02095E80 * param0, int param1, int param2)
{
    if ((param2 != param0->unk_36F8) || (param1 != param0->unk_36FC)) {
        ov88_0223D044(sub_0203608C(), param1, param2);
        param0->unk_36F8 = param2;
        param0->unk_36FC = param1;
    }
}

static void * ov88_0223D08C (Party * param0, int param1)
{
    u32 v0 = (u32)param0;

    return (void *)(v0 + param1 * (236 * 6 + 4 * 2));
}

void ov88_0223D098 (int param0, Party * param1, int param2)
{
    if (sub_02035D78(param0)) {
        u8 v0 = param2;

        sub_0203597C(22, ov88_0223D08C(param1, param2), (236 * 6 + 4 * 2));
    }
}

static void ov88_0223D0C0 (UnkStruct_021C0794 * param0)
{
    u8 * v0 = sub_0202D79C(param0);
    int v1;

    sub_020359DC(32, v0, 14);
}

static void ov88_0223D0D4 (UnkStruct_02025E6C * param0, UnkStruct_02027F8C * param1, UnkStruct_02027F8C * param2)
{
    int v0;

    sub_020021B0(param2->unk_00, sub_02025EF0(param0));

    param2->unk_10 = sub_02025F20(param0);
    param2->unk_14 = sub_02025FD8(param0);
    param2->unk_15 = sub_02025FCC(param0);
    param2->unk_16 = sub_02025F30(param0);

    for (v0 = 0; v0 < 16; v0++) {
        param2->unk_18[v0] = param1[v0].unk_10;
        param2->unk_58[v0] = param1[v0].unk_15;
        param2->unk_68[v0] = param1[v0].unk_14;
        param2->unk_78[v0] = param1[v0].unk_16;
    }

    sub_0203597C(28, param2, sizeof(UnkStruct_02027F8C));
}

static void ov88_0223D140 (UnkStruct_0202CC84 * param0)
{
    sub_0203597C(29, param0, 1000);
}

static int ov88_0223D150 (UnkStruct_02095E80 * param0)
{
    if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
        sub_02005748(1500);
        param0->unk_88[0] = 12;
        ov88_0223BE28(param0);
        ov88_0223CF68(param0->unk_88[0], param0->unk_39C[0], 0);
    } else {
        ov88_0223CE34(&param0->unk_14C[0]);

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            if (param0->unk_14C[0] == 0) {
                if (param0->unk_88[0] == 12) {
                    param0->unk_226C = ov88_0223D2C4;
                } else if (param0->unk_88[0] < 6) {
                    param0->unk_226C = ov88_0223DA3C;
                } else if ((param0->unk_88[0] >= 6) && (param0->unk_88[0] < 12)) {
                    param0->unk_226C = ov88_0223E4BC;
                }
            }
        }
    }

    return 0;
}

static const u8 Unk_ov88_0223F13C[] = {
    0x0,
    0x1,
    0x2,
    0x4,
    0x3,
    0x5,
    0x6,
    0x7,
    0x8
};

static void ov88_0223D1EC (UnkStruct_02095E80 * param0, int param1)
{
    if (param1 == 0) {
        param0->unk_0C.unk_00 = param0->unk_2270;
        param0->unk_0C.unk_13 = Party_GetCurrentCount(param0->unk_08->unk_08);

        param0->unk_0C.unk_28 = NULL;
        sub_0208E9C0(&param0->unk_0C, sub_02032EE8(sub_0203608C()));
    } else {
        param0->unk_0C.unk_00 = param0->unk_2274;
        param0->unk_0C.unk_13 = Party_GetCurrentCount(param0->unk_2274);
        param0->unk_0C.unk_28 = (UnkStruct_0202CC84 *)param0->unk_2E6C[sub_0203608C() ^ 1];
        sub_0208E9C0(&param0->unk_0C, sub_02032EE8(sub_0203608C() ^ 1));
    }

    param0->unk_0C.unk_11 = 1;
    param0->unk_0C.unk_14 = param0->unk_88[0] % 6;
    param0->unk_0C.unk_12 = 1;
    param0->unk_0C.unk_18 = 0;
    param0->unk_0C.unk_2C = sub_0208C324(param0->unk_08->unk_10);
    param0->unk_0C.unk_1C = param0->unk_08->unk_30;
    param0->unk_0C.unk_04 = param0->unk_08->unk_18;
    param0->unk_0C.unk_20 = sub_0202D79C(param0->unk_08->unk_10);

    sub_0208D720(&param0->unk_0C, Unk_ov88_0223F13C);

    param0->unk_40 = sub_020067E8(&Unk_020F410C, &param0->unk_0C, 26);
    param0->unk_3C = param1;
}

static int ov88_0223D2C4 (UnkStruct_02095E80 * param0)
{
    sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
    ov88_0223ECBC(&param0->unk_49C[23], 25, 1, param0->unk_184, param0->unk_178);

    param0->unk_226C = ov88_0223D318;

    return 0;
}

static int ov88_0223D318 (UnkStruct_02095E80 * param0)
{
    switch (ov88_0223ED2C(param0->unk_174, &param0->unk_6BC, &param0->unk_6C8)) {
    case 0:
        sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
        ov88_0223ECBC(&param0->unk_49C[23], 28, 1, param0->unk_184, param0->unk_178);
        ov88_0223D058(param0, 24, 1);
        param0->unk_226C = ov88_0223DA00;
        param0->unk_5C = 0;
        break;
    case 0xfffffffe:
        sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
        ov88_0223ECBC(&param0->unk_49C[21], 15, 1, param0->unk_184, param0->unk_178);
        param0->unk_226C = ov88_0223D150;
        break;
    default:
        break;
    }

    return 0;
}

static int ov88_0223D3E0 (UnkStruct_02095E80 * param0)
{
    sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
    ov88_0223ECBC(&param0->unk_49C[23], param0->unk_68, 1, param0->unk_184, param0->unk_178);
    param0->unk_226C = ov88_0223D434;

    return 0;
}

static int ov88_0223D434 (UnkStruct_02095E80 * param0)
{
    if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
        sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
        ov88_0223ECBC(&param0->unk_49C[21], 15, 1, param0->unk_184, param0->unk_178);
        param0->unk_226C = ov88_0223D150;
        ov88_0223DFF4(param0);
    }

    return 0;
}

static void ov88_0223D49C (UnkStruct_02095E80 * param0, int param1)
{
    ov88_0223ECBC(&param0->unk_49C[23], param1, 1, param0->unk_36D0, param0->unk_36CC);
}

static int ov88_0223D4C4 (UnkStruct_02095E80 * param0)
{
    int v0;

    switch (ov88_0223ED2C(param0->unk_174, &param0->unk_6BC, &param0->unk_6C8)) {
    case 0:
        param0->unk_226C = ov88_0223D854;
        break;
    case 0xfffffffe:
        ov88_0223D49C(param0, 58);
        param0->unk_226C = ov88_0223D740;
        break;
    default:
        break;
    }

    return 0;
}

static int ov88_0223D514 (UnkStruct_02095E80 * param0)
{
    UnkStruct_02025E6C * v0;
    int v1;

    switch (ov88_0223ED2C(param0->unk_174, &param0->unk_6BC, &param0->unk_6C8)) {
    case 0:
        sub_02030788(sub_0203068C(param0->unk_04), param0->unk_36C8);
        sub_0202AFD4(param0->unk_36EC, param0->unk_36C8);
        sub_02039298(param0->unk_04, param0->unk_36C4, 32 - 1, 26, 0);
        param0->unk_226C = ov88_0223D854;
        break;
    case 0xfffffffe:
        v0 = sub_02032EE8(param0->unk_36C4);
        sub_0200B498(param0->unk_36CC, 0, v0);
        ov88_0223D49C(param0, 59);
        param0->unk_226C = ov88_0223D4C4;
        break;
    default:
        break;
    }

    return 0;
}

static int ov88_0223D5B8 (UnkStruct_02095E80 * param0)
{
    int v0;
    UnkStruct_02025E6C * v1;

    v0 = sub_02001288(param0->unk_36D8);

    switch (v0) {
    case 0xffffffff:
        return 0;
    case 0xfffffffe:
        sub_02005748(1500);
        v1 = sub_02032EE8(param0->unk_36C4);
        sub_0200B498(param0->unk_36CC, 0, v1);
        ov88_0223D49C(param0, 59);
        param0->unk_226C = ov88_0223D4C4;
        break;
    default:
        sub_02005748(1500);
        param0->unk_36C8 = v0;

        {
            UnkStruct_02025E6C * v2 = sub_02025E6C(26);

            sub_02025EC0(v2, sub_0202AEF0(param0->unk_36EC, v0));
            sub_0200B498(param0->unk_36CC, 0, v2);
            Heap_FreeToHeap(v2);
        }

        ov88_0223D49C(param0, 60);
        param0->unk_226C = ov88_0223D514;
        break;
    }

    sub_0200DC9C(&param0->unk_36DC, 0);
    sub_0201A8FC(&param0->unk_36DC);
    sub_02001384(param0->unk_36D8, NULL, NULL);
    sub_02013A3C(param0->unk_36D4);

    return 0;
}

static int ov88_0223D69C (UnkStruct_02095E80 * param0)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1 = sub_0202AF94(param0->unk_36EC);
    int v2 = 5;

    param0->unk_36D4 = sub_02013A04(v1 + 1, 26);

    {
        UnkStruct_0200B144 * v3;
        UnkStruct_02023790 * v4 = sub_02023790(100, 26);
        int v5 = 0;

        for (v5 = 0; v5 < 32; v5++) {
            if (sub_0202AF78(param0->unk_36EC, v5)) {
                sub_02023D28(v4, sub_0202AEF0(param0->unk_36EC, v5));
                sub_02013A6C(param0->unk_36D4, v4, v5);
            }
        }

        sub_02013A4C(param0->unk_36D4, param0->unk_36D0, 11, 0xfffffffe);
        sub_020237BC(v4);
    }

    param0->unk_36D8 = ov88_0223ED94(param0->unk_36D4, v1, &param0->unk_36DC, param0->unk_174);
    param0->unk_226C = ov88_0223D5B8;

    return 0;
}

static int ov88_0223D740 (UnkStruct_02095E80 * param0)
{
    UnkStruct_02025E6C * v0;
    int v1;

    switch (ov88_0223ED2C(param0->unk_174, &param0->unk_6BC, &param0->unk_6C8)) {
    case 0:
        param0->unk_226C = ov88_0223D69C;
        break;
    case 0xfffffffe:
        v0 = sub_02032EE8(param0->unk_36C4);
        sub_0200B498(param0->unk_36CC, 0, v0);
        ov88_0223D49C(param0, 59);
        param0->unk_226C = ov88_0223D4C4;
        break;
    default:
        break;
    }

    return 0;
}

static int ov88_0223D7AC (UnkStruct_02095E80 * param0)
{
    int v0;

    switch (ov88_0223ED2C(param0->unk_174, &param0->unk_6BC, &param0->unk_6C8)) {
    case 0:
        param0->unk_226C = ov88_0223D854;

        for (v0 = 0; v0 < 32; v0++) {
            if (!sub_0202AF78(param0->unk_36EC, v0)) {
                sub_02039298(param0->unk_04, param0->unk_36C4, v0, 26, 0);
                break;
            }
        }

        if (v0 == 32) {
            ov88_0223D49C(param0, 58);
            param0->unk_226C = ov88_0223D740;
            return 0;
        }

        break;
    case 0xfffffffe:
        param0->unk_226C = ov88_0223D854;
        break;
    default:
        break;
    }

    return 0;
}

static int ov88_0223D840 (UnkStruct_02095E80 * param0)
{
    if (sub_02036540(19)) {
        return 2;
    }

    return 0;
}

static int ov88_0223D854 (UnkStruct_02095E80 * param0)
{
    int v0;
    UnkStruct_02025E6C * v1;

    param0->unk_36C4 = -1;

    for (v0 = 0; v0 < sub_02035E18(); v0++) {
        if (param0->unk_3644[v0] == 2) {
            param0->unk_36C4 = v0;
            param0->unk_3644[v0] = 0;
            break;
        }
    }

    if (param0->unk_36C4 == -1) {
        sub_0200B190(param0->unk_36D0);
        sub_0200B3F0(param0->unk_36CC);
        sub_020364F0(19);
        ov88_0223ECBC(&param0->unk_49C[23], 28, 1, param0->unk_184, param0->unk_178);
        param0->unk_226C = ov88_0223D840;
        return 0;
    }

    if (sub_0207D688(sub_0207D990(param0->unk_04), 437, 1, 26) == 1) {
        v1 = sub_02032EE8(param0->unk_36C4);
        sub_0200B498(param0->unk_36CC, 0, v1);
        ov88_0223D49C(param0, 57);
        param0->unk_226C = ov88_0223D7AC;
        return 0;
    }

    {
        UnkStruct_0202B370 * v2 = sub_0202B370(param0->unk_04);

        for (v0 = 0; v0 < 32; v0++) {
            if (!sub_0202AF78(v2, v0)) {
                sub_02039298(param0->unk_04, param0->unk_36C4, v0, 26, 0);
                break;
            }
        }
    }

    param0->unk_226C = ov88_0223D854;
    return 0;
}

static int ov88_0223D96C (UnkStruct_02095E80 * param0)
{
    if (0 == sub_020391DC(param0->unk_04, param0->unk_3644, 26)) {
        sub_020364F0(19);
        ov88_0223ECBC(&param0->unk_49C[23], 28, 1, param0->unk_184, param0->unk_178);
        param0->unk_226C = ov88_0223D840;
        return 0;
    }

    param0->unk_36CC = sub_0200B358(26);
    param0->unk_36D0 = sub_0200B144(0, 26, 675, 26);
    param0->unk_36EC = sub_0202B370(param0->unk_04);
    param0->unk_226C = ov88_0223D854;

    return 0;
}

static int ov88_0223DA00 (UnkStruct_02095E80 * param0)
{
    if ((param0->unk_60[0] != 0) && (param0->unk_60[1] != 0)) {
        if ((param0->unk_60[0] == 1) && (param0->unk_60[1] == 1)) {
            param0->unk_226C = ov88_0223D96C;
        } else {
            param0->unk_226C = ov88_0223D3E0;
        }

        param0->unk_60[0] = 0;
        param0->unk_60[1] = 0;
        param0->unk_68 = 29;
    }

    return 0;
}

static int ov88_0223DA3C (UnkStruct_02095E80 * param0)
{
    UnkStruct_02081CF4 v0;

    v0.unk_08 = 0;
    v0.unk_09 = 1;
    v0.unk_0A = 3;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;
    v0.unk_0B_6 = 0;

    sub_0200B5CC(param0->unk_17C, 0, sub_02076B10(Party_GetPokemonBySlotIndex(param0->unk_2270, param0->unk_88[0])));
    sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
    ov88_0223ECBC(&param0->unk_49C[22], 16, 1, param0->unk_184, param0->unk_17C);

    param0->unk_6C0 = sub_02013A04(3, 26);

    sub_02013A4C(param0->unk_6C0, param0->unk_184, 17, 0);
    sub_02013A4C(param0->unk_6C0, param0->unk_184, 18, 1);
    sub_02013A4C(param0->unk_6C0, param0->unk_184, 19, 2);

    v0.unk_00 = param0->unk_6C0;
    v0.unk_04 = &param0->unk_49C[24];

    ov88_0223ED80(&param0->unk_49C[24]);

    param0->unk_6C4 = sub_02001B7C(&v0, 8, 0, 0, 26, PAD_BUTTON_B);
    param0->unk_226C = ov88_0223DB48;

    return 0;
}

static int ov88_0223DB48 (UnkStruct_02095E80 * param0)
{
    switch (sub_02001BE0(param0->unk_6C4)) {
    case 0:
        sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
        ov88_0223ECBC(&param0->unk_49C[21], 15, 1, param0->unk_184, param0->unk_178);
        sub_02001BC4(param0->unk_6C4, NULL);
        sub_02013A3C(param0->unk_6C0);
        param0->unk_226C = ov88_0223D150;
        return 3;
        break;
    case 1:
        sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
        ov88_0223ECBC(&param0->unk_49C[23], 20, 1, param0->unk_184, param0->unk_178);
        sub_02001BC4(param0->unk_6C4, NULL);
        sub_02013A3C(param0->unk_6C0);
        param0->unk_226C = ov88_0223DC84;
        break;
    case 2: case 0xfffffffe:
        sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
        ov88_0223ECBC(&param0->unk_49C[21], 15, 1, param0->unk_184, param0->unk_178);
        sub_02001BC4(param0->unk_6C4, NULL);
        sub_02013A3C(param0->unk_6C0);
        param0->unk_226C = ov88_0223D150;
        break;
    }

    return 0;
}

static int ov88_0223DC84 (UnkStruct_02095E80 * param0)
{
    sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
    ov88_0223ECBC(&param0->unk_49C[23], 20, 1, param0->unk_184, param0->unk_178);
    ov88_0223D058(param0, 24, 2);

    param0->unk_226C = ov88_0223DCE0;

    return 0;
}

static int ov88_0223DCE0 (UnkStruct_02095E80 * param0)
{
    if ((param0->unk_60[0] != 0) && (param0->unk_60[1] != 0)) {
        if ((param0->unk_60[0] == 2) && (param0->unk_60[1] == 2)) {
            param0->unk_226C = ov88_0223DD1C;
        } else {
            param0->unk_226C = ov88_0223D3E0;
        }

        param0->unk_68 = 24;
        param0->unk_60[0] = 0;
        param0->unk_60[1] = 0;
    }

    return 0;
}

static int ov88_0223DD1C (UnkStruct_02095E80 * param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (v0 != param0->unk_88[0]) {
            sub_02021CAC(param0->unk_3D4[v0], 0);

            if (param0->unk_6F4[v0].unk_02) {
                sub_02021CAC(param0->unk_404[v0], 0);
            }

            if (param0->unk_6F4[v0].unk_0C) {
                sub_02021CAC(param0->unk_434[v0], 0);
            }
        }

        sub_0201AD10(&param0->unk_49C[7 + v0]);

        if (v0 != (param0->unk_88[1] - 6)) {
            sub_02021CAC(param0->unk_3D4[v0 + 6], 0);

            if (param0->unk_6F4[v0 + 6].unk_02) {
                sub_02021CAC(param0->unk_404[v0 + 6], 0);
            }

            if (param0->unk_6F4[v0 + 6].unk_0C) {
                sub_02021CAC(param0->unk_434[v0 + 6], 0);
            }
        }

        sub_0201AD10(&param0->unk_49C[13 + v0]);
    }

    sub_02021CAC(param0->unk_39C[0], 0);
    sub_02021CAC(param0->unk_39C[1], 0);

    ov88_0223DE68(param0->unk_231C, Unk_ov88_0223EF9C[param0->unk_88[0]][0] + 16, Unk_ov88_0223EF9C[param0->unk_88[0]][1] + -6, 6 * 8, 6 * 8);
    ov88_0223DE68(param0->unk_2334, Unk_ov88_0223EF9C[param0->unk_88[1]][0] + 16, Unk_ov88_0223EF9C[param0->unk_88[1]][1] + -6, 22 * 8, 6 * 8);

    param0->unk_2314 = 0;
    param0->unk_226C = ov88_0223DF00;

    return 0;
}

static void ov88_0223DE68 (VecFx32 param0[], int param1, int param2, int param3, int param4)
{
    param0[0].x = FX32_ONE * param1;
    param0[0].y = FX32_ONE * param2;
    param0[1].x = FX32_ONE * param3;
    param0[1].y = FX32_ONE * param4;
}

static void ov88_0223DE7C (UnkStruct_02022550 * param0, UnkStruct_02022550 * param1, UnkStruct_02022550 * param2, int param3, VecFx32 param4[], UnkStruct_ov88_0223C8AC * param5)
{
    VecFx32 v0, v1, v2;

    v0.x = param4[0].x + ((param4[1].x - param4[0].x) / 20) * param3;
    v0.y = param4[0].y + ((param4[1].y - param4[0].y) / 20) * param3;

    sub_02021C50(param0, &v0);

    if (param5->unk_02) {
        v1.x = v0.x + 20 * FX32_ONE;
        v1.y = v0.y + (16 + 6) * FX32_ONE;
        sub_02021C50(param1, &v1);
    }

    if (param5->unk_0C) {
        v2.x = v0.x + (20 + 8) * FX32_ONE;
        v2.y = v0.y + (16 + 6) * FX32_ONE;
        sub_02021C50(param2, &v2);
    }
}

static int ov88_0223DF00 (UnkStruct_02095E80 * param0)
{
    param0->unk_2314++;

    ov88_0223DE7C(param0->unk_3D4[param0->unk_88[0]], param0->unk_404[param0->unk_88[0]], param0->unk_434[param0->unk_88[0]], param0->unk_2314, param0->unk_231C, &param0->unk_6F4[param0->unk_88[0]]);
    ov88_0223DE7C(param0->unk_3D4[param0->unk_88[1]], param0->unk_404[param0->unk_88[1]], param0->unk_434[param0->unk_88[1]], param0->unk_2314, param0->unk_2334, &param0->unk_6F4[param0->unk_88[1]]);

    if (param0->unk_2314 == 20 + 1) {
        ov88_0223C860(&param0->unk_49C[19], param0->unk_2270, param0->unk_88[0], 8, 1);
        ov88_0223C860(&param0->unk_49C[20], param0->unk_2274, param0->unk_88[1] - 6, 8, 1);
        ov88_0223BDA4(param0, param0->unk_88[1]);
        param0->unk_226C = ov88_0223E110;
        sub_02021CAC(param0->unk_47C, 1);
    }

    return 0;
}

static void ov88_0223DFF4 (UnkStruct_02095E80 * param0)
{
    int v0;
    VecFx32 v1;

    sub_0201AD10(&param0->unk_49C[19]);
    sub_0201AD10(&param0->unk_49C[20]);

    for (v0 = 0; v0 < 12; v0++) {
        if (param0->unk_6F4[v0].unk_00 != 0) {
            ov88_0223E87C(param0->unk_3D4[v0], Unk_ov88_0223EF9C[v0][0] + 16, Unk_ov88_0223EF9C[v0][1] + -6);
            sub_02021CAC(param0->unk_3D4[v0], 1);

            if (param0->unk_6F4[v0].unk_02) {
                ov88_0223E87C(param0->unk_404[v0], Unk_ov88_0223EF9C[v0][0] + (16 + 20), Unk_ov88_0223EF9C[v0][1] + 16);
                sub_02021CAC(param0->unk_404[v0], 1);
            }

            if (param0->unk_6F4[v0].unk_0C) {
                ov88_0223E87C(param0->unk_434[v0], Unk_ov88_0223EF9C[v0][0] + (16 + 20 + 8), Unk_ov88_0223EF9C[v0][1] + 16);
                sub_02021CAC(param0->unk_434[v0], 1);
            }

            sub_0201A9A4(&param0->unk_49C[7 + v0]);
        }
    }

    sub_02021CAC(param0->unk_39C[0], 1);
    sub_02021CAC(param0->unk_39C[1], 1);
    ov88_0223CB34(param0->unk_49C, 1, param0);
    sub_02021CAC(param0->unk_464[3], 0);
    sub_02021CAC(param0->unk_47C, 0);
}

static int ov88_0223E110 (UnkStruct_02095E80 * param0)
{
    sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
    sub_0200B5CC(param0->unk_17C, 0, sub_02076B10(Party_GetPokemonBySlotIndex(param0->unk_2270, param0->unk_88[0])));
    sub_0200B5CC(param0->unk_17C, 1, sub_02076B10(Party_GetPokemonBySlotIndex(param0->unk_2274, param0->unk_88[1] - 6)));

    ov88_0223ECBC(&param0->unk_49C[23], 21, 1, param0->unk_184, param0->unk_17C);
    param0->unk_226C = ov88_0223E20C;

    return 0;
}

static void ov88_0223E1AC (UnkStruct_02095E80 * param0)
{
    ov88_0223D058(param0, 24, 3);
    param0->unk_5C = 1;
}

static void ov88_0223E1C0 (UnkStruct_02095E80 * param0, int param1, int param2)
{
    sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
    ov88_0223ECBC(&param0->unk_49C[param1], param2, 1, param0->unk_184, param0->unk_178);
}

static int ov88_0223E20C (UnkStruct_02095E80 * param0)
{
    switch (ov88_0223ED2C(param0->unk_174, &param0->unk_6BC, &param0->unk_6C8)) {
    case 0:
        if (ov88_0223E8D0(param0)) {
            switch (ov88_0223E914(param0)) {
            case 0:
                if (param0->unk_6F4[param0->unk_88[0]].unk_0C == 0) {
                    ov88_0223E1AC(param0);
                    ov88_0223E1C0(param0, 23, 20);
                    param0->unk_226C = ov88_0223E41C;
                } else {
                    param0->unk_226C = ov88_0223E330;
                }

                break;
            case 1:
                ov88_0223E1C0(param0, 23, 37);
                param0->unk_226C = ov88_0223E41C;
                ov88_0223D058(param0, 24, 4);
                break;
            case 2:
                ov88_0223E1C0(param0, 23, 38);
                param0->unk_226C = ov88_0223E41C;
                ov88_0223D058(param0, 24, 4);
                break;
            }
        } else {
            param0->unk_226C = ov88_0223E41C;
            ov88_0223D058(param0, 24, 4);
        }

        break;
    case 0xfffffffe:
        sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
        ov88_0223ECBC(&param0->unk_49C[23], 20, 1, param0->unk_184, param0->unk_178);
        param0->unk_226C = ov88_0223E41C;
        ov88_0223D058(param0, 24, 4);
        break;
    default:
        break;
    }

    return 0;
}

static int ov88_0223E330 (UnkStruct_02095E80 * param0)
{
    sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
    ov88_0223ECBC(&param0->unk_49C[23], 36, 1, param0->unk_184, param0->unk_17C);
    param0->unk_226C = ov88_0223E384;
    return 0;
}

static int ov88_0223E384 (UnkStruct_02095E80 * param0)
{
    switch (ov88_0223ED2C(param0->unk_174, &param0->unk_6BC, &param0->unk_6C8)) {
    case 0:
        ov88_0223E1AC(param0);
        ov88_0223E1C0(param0, 23, 20);
        param0->unk_226C = ov88_0223E41C;
        break;
    case 0xfffffffe:
        sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
        ov88_0223ECBC(&param0->unk_49C[23], 20, 1, param0->unk_184, param0->unk_178);
        param0->unk_226C = ov88_0223E41C;
        ov88_0223D058(param0, 24, 4);
        break;
    default:
        break;
    }

    return 0;
}

static int ov88_0223E41C (UnkStruct_02095E80 * param0)
{
    if ((param0->unk_60[0] != 0) && (param0->unk_60[1] != 0)) {
        if ((param0->unk_60[0] == 3) && (param0->unk_60[1] == 3)) {
            param0->unk_36F0++;
            param0->unk_226C = ov88_0223E478;
        } else {
            param0->unk_226C = ov88_0223D3E0;
        }

        param0->unk_60[0] = 0;
        param0->unk_60[1] = 0;

        if (ov88_0223E8D0(param0)) {
            param0->unk_68 = 24;
        } else {
            param0->unk_68 = 34;
        }
    }

    return 0;
}

static int ov88_0223E478 (UnkStruct_02095E80 * param0)
{
    sub_020331E0(param0->unk_04, 1);
    ov88_0223E694(param0->unk_2270, param0->unk_2274, param0->unk_88[0], param0->unk_88[1] - 6, param0->unk_08);
    param0->unk_226C = ov88_0223D3E0;
    return 2;
}

static int ov88_0223E4BC (UnkStruct_02095E80 * param0)
{
    UnkStruct_02081CF4 v0;

    v0.unk_08 = 0;
    v0.unk_09 = 1;
    v0.unk_0A = 2;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;
    v0.unk_0B_6 = 0;

    sub_0200B5CC(param0->unk_17C, 0, sub_02076B10(Party_GetPokemonBySlotIndex(param0->unk_2274, param0->unk_88[0] - 6)));
    sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
    ov88_0223ECBC(&param0->unk_49C[22], 16, 1, param0->unk_184, param0->unk_17C);

    param0->unk_6C0 = sub_02013A04(2, 26);

    sub_02013A4C(param0->unk_6C0, param0->unk_184, 17, 0);
    sub_02013A4C(param0->unk_6C0, param0->unk_184, 19, 1);

    v0.unk_00 = param0->unk_6C0;
    v0.unk_04 = &param0->unk_49C[25];

    ov88_0223ED80(&param0->unk_49C[25]);

    param0->unk_6C4 = sub_02001B7C(&v0, 8, 0, 0, 26, PAD_BUTTON_B);
    param0->unk_226C = ov88_0223E5B8;

    return 0;
}

static int ov88_0223E5B8 (UnkStruct_02095E80 * param0)
{
    switch (sub_02001BE0(param0->unk_6C4)) {
    case 0:
        sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
        ov88_0223ECBC(&param0->unk_49C[21], 15, 1, param0->unk_184, param0->unk_178);
        param0->unk_226C = ov88_0223D150;
        sub_02001BC4(param0->unk_6C4, NULL);
        sub_02013A3C(param0->unk_6C0);
        return 3;
        break;

    case 1:
    case 0xfffffffe:
        sub_02019CB8(param0->unk_174, 0, 0, 0, 0, 32, 24, 0);
        ov88_0223ECBC(&param0->unk_49C[21], 15, 1, param0->unk_184, param0->unk_178);
        sub_02001BC4(param0->unk_6C4, NULL);
        sub_02013A3C(param0->unk_6C0);
        param0->unk_226C = ov88_0223D150;
        break;
    }

    return 0;
}

static void ov88_0223E694 (Party * param0, Party * param1, int param2, int param3, UnkStruct_ov88_0223C370 * param4)
{
    UnkStruct_02073C74 * v0, * v1;

    v0 = sub_02073C74(26);
    v1 = sub_02073C74(26);

    sub_020775EC(Party_GetPokemonBySlotIndex(param0, param2), v0);
    sub_020775EC(Party_GetPokemonBySlotIndex(param1, param3), v1);

    if (sub_02074470(v1, 5, NULL) == 493) {
        if (sub_02074470(v1, 110, NULL) || ((sub_02074470(v1, 153, NULL) == 86) && (sub_02074470(v1, 110, NULL) == 0))) {
            UnkStruct_020507E4 * v2 = sub_020507E4(param4->unk_10);

            if (sub_0206B5F8(v2) == 0) {
                sub_0206B608(v2, 1);
            }
        }
    }

    sub_02074B30(v1, 111, NULL);

    if (sub_02074470(v1, 76, NULL) == 0) {
        u8 v3 = 70;
        sub_02074B30(v1, 9, &v3);
    }

    sub_0209304C(v1, sub_02032EE8(sub_0203608C()), 5, 0, 11);
    sub_0207893C(v1);
    sub_020775EC(v0, param4->unk_3C);
    sub_020775EC(v1, param4->unk_40);
    sub_02025E80(sub_02032EE8(sub_0203608C() ^ 1), param4->unk_38);

    param4->unk_2C = param2;

    if (Party_HasSpecies(param0, 441) == 0) {
        UnkStruct_0202CC84 * v4 = sub_0202CC98(param4->unk_10);
        sub_0202CCA8(v4);
    }

    sub_0202F180(param4->unk_10, v1);
    sub_020775EC(v1, Party_GetPokemonBySlotIndex(param0, param2));
    sub_020775EC(v0, Party_GetPokemonBySlotIndex(param1, param3));
    ov88_0223E7F0(param4->unk_1C, v1);
    sub_0202CF28(param4->unk_20, (1 + 18));
    Heap_FreeToHeap(v0);
    Heap_FreeToHeap(v1);
}

static void ov88_0223E7F0 (UnkStruct_0202B628 * param0, UnkStruct_02073C74 * param1)
{
    void * v0;
    UnkStruct_02025E6C * v1 = sub_02032EE8(sub_0203608C() ^ 1);
    u16 v2[10 + 1];

    sub_02074470(param1, 117, v2);
    v0 = sub_0202C11C((u16 *)sub_02025EF0(v1), sub_02025F30(v1), v2, sub_02075D6C(param1), 26);
    sub_0202B758(param0, v0, 4);
}

static void ov88_0223E848 (UnkStruct_02095E80 * param0)
{
    param0->unk_2310 += 2;
    sub_02019184(param0->unk_174, 6, 0, param0->unk_2310);
    sub_02019184(param0->unk_174, 3, 0, param0->unk_2310);
}

static void ov88_0223E87C (UnkStruct_02022550 * param0, int param1, int param2)
{
    VecFx32 v0;

    v0.x = FX32_ONE * param1;
    v0.y = FX32_ONE * param2;

    sub_02021C50(param0, &v0);
}

static void ov88_0223E894 (UnkStruct_02095E80 * param0)
{
    param0->unk_3700 = sub_0200E7FC(&param0->unk_49C[23], (512 - (9 + (18 + 12))));
}

static void ov88_0223E8B4 (UnkStruct_02095E80 * param0)
{
    if (param0->unk_3700 != NULL) {
        sub_0200EBA0(param0->unk_3700);
        param0->unk_3700 = NULL;
    }
}

static int ov88_0223E8D0 (UnkStruct_02095E80 * param0)
{
    int v0;
    int v1 = 0;
    int v2 = Party_GetCurrentCount(param0->unk_2270);

    for (v0 = 0; v0 < v2; v0++) {
        if (v0 != param0->unk_88[0]) {
            v1 += param0->unk_6F4[v0].unk_05;
        }
    }

    if (v1 == (v2 - 1)) {
        return 0;
    }

    return 1;
}

static int ov88_0223E914 (UnkStruct_02095E80 * param0)
{
    int v0, v1;
    UnkStruct_02073C74 * v2;

    v1 = Party_GetCurrentCount(param0->unk_2270);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0->unk_2270, v0);

        if (sub_02074470(v2, 3, NULL)) {
            return 1;
        }
    }

    v1 = Party_GetCurrentCount(param0->unk_2274);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0->unk_2274, v0);

        if (sub_02074470(v2, 3, NULL)) {
            return 2;
        }
    }

    return 0;
}

static void ov88_0223E984 (UnkStruct_02095E80 * param0)
{
    param0->unk_3704 = 1;
    param0->unk_3708 = 0;
}

static void ov88_0223E998 (UnkStruct_02095E80 * param0)
{
    if (param0->unk_3704) {
        param0->unk_3708++;

        if (param0->unk_3708 > (30 * 60)) {
            sub_02038AE0(4);
        }
    }
}
