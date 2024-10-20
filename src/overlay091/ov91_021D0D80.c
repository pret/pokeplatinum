#include "overlay091/ov91_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/pokemon_summary.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_020997B8.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "move_table.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "pokemon_summary_app.h"
#include "render_text.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0207C908.h"
#include "unk_0208C098.h"
#include "unk_02094EDC.h"

#include "constdata/const_020F410C.h"

typedef struct {
    UnkStruct_020997B8 *unk_00;
    BGL *unk_04;
    Window unk_08[15];
    MessageLoader *unk_F8;
    StringTemplate *unk_FC;
    Strbuf *unk_100;
    BmpList *unk_104;
    ResourceMetadata *unk_108;
    UIControlData *unk_10C;
    SpriteRenderer *unk_110;
    SpriteGfxHandler *unk_114;
    CellActorData *unk_118[13];
    PokemonSummary unk_14C;
    OverlayManager *unk_17C;
    int unk_180;
    u8 unk_184;
    u8 unk_185;
    u8 unk_186;
} UnkStruct_ov91_021D0ED8;

typedef int (*GenericFunctionPtr_1)(UnkStruct_ov91_021D0ED8 *);

typedef struct {
    GenericFunctionPtr_1 unk_00;
    GenericFunctionPtr_1 unk_04;
} GameWindowLayout_1;

static void ov91_021D0ED8(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D0F6C(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D0F9C(void *param0);
static void ov91_021D0FC4(void);
static void ov91_021D0FE4(BGL *param0);
static void ov91_021D1098(BGL *param0);
static void ov91_021D10C8(UnkStruct_ov91_021D0ED8 *param0, NARC *param1);
static void ov91_021D1154(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D11A0(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D11B8(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D11F0(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1214(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D122C(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1480(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D134C(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D136C(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1394(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D13E4(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1438(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1450(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D2604(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D261C(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D26AC(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D1580(UnkStruct_ov91_021D0ED8 *param0, u32 param1, u32 param2, TextColor param3, u32 param4);
static void ov91_021D1498(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D1664(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D1784(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D1868(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D188C(BmpList *param0, u32 param1, u8 param2);
static void ov91_021D18C4(BmpList *param0, u32 param1, u8 param2);
static void ov91_021D18C8(UnkStruct_ov91_021D0ED8 *param0, u32 param1);
static void ov91_021D1A68(UnkStruct_ov91_021D0ED8 *param0, u32 param1);
static void ov91_021D1BBC(UnkStruct_ov91_021D0ED8 *param0, u16 param1);
static void ov91_021D1C10(UnkStruct_ov91_021D0ED8 *param0, u32 param1);
static void ov91_021D1DF8(UnkStruct_ov91_021D0ED8 *param0, u32 param1);
static BOOL ov91_021D1E50(TextPrinterTemplate *param0, u16 param1);
static u16 ov91_021D1DD0(UnkStruct_ov91_021D0ED8 *param0);
static u16 ov91_021D1DE0(UnkStruct_ov91_021D0ED8 *param0);
static u8 ov91_021D1EA0(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1EC8(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1EE8(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1F38(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1F44(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1F94(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1FA0(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1FBC(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1FD8(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D1FF4(UnkStruct_ov91_021D0ED8 *param0);
static int ov91_021D2008(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D2508(UnkStruct_ov91_021D0ED8 *param0, NARC *param1);
static void ov91_021D20B4(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D20E8(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D2314(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D237C(UnkStruct_ov91_021D0ED8 *param0, u16 param1, u16 param2);
static void ov91_021D24B4(UnkStruct_ov91_021D0ED8 *param0, u16 param1);
static void ov91_021D2548(UnkStruct_ov91_021D0ED8 *param0, u8 param1, u8 param2);
static void ov91_021D2574(UnkStruct_ov91_021D0ED8 *param0, u8 param1);
static void ov91_021D2594(UnkStruct_ov91_021D0ED8 *param0);
static void ov91_021D25E4(UnkStruct_ov91_021D0ED8 *param0);

static const UnkStruct_ov61_0222C884 Unk_ov91_021D2884[] = {
    { 0x1, 0x13, 0x0, 0xB, 0x2, 0xF, 0x28 },
    { 0x1, 0x13, 0x0, 0xB, 0x2, 0xF, 0x3E },
    { 0x1, 0x1, 0x0, 0x6, 0x2, 0xF, 0x54 },
    { 0x1, 0x1, 0x2, 0x6, 0x2, 0xF, 0x60 },
    { 0x1, 0x1, 0x4, 0x8, 0x2, 0xF, 0x6C },
    { 0x1, 0x1, 0x6, 0x3, 0x2, 0xF, 0x7C },
    { 0x1, 0x2, 0x2, 0xC, 0x2, 0xF, 0x82 },
    { 0x1, 0xD, 0x2, 0x3, 0x2, 0xF, 0x9A },
    { 0x1, 0xD, 0x4, 0x3, 0x2, 0xF, 0xA0 },
    { 0x1, 0xB, 0x6, 0x5, 0x2, 0xF, 0xA6 },
    { 0x1, 0x1, 0x8, 0xF, 0xA, 0xF, 0xB0 },
    { 0x1, 0x1, 0x9, 0xF, 0x6, 0xF, 0x146 },
    { 0x0, 0x2, 0x13, 0x1B, 0x4, 0xE, 0x1A0 },
    { 0x1, 0x15, 0x3, 0xB, 0xE, 0xF, 0x20C },
    { 0x0, 0x17, 0xD, 0x7, 0x4, 0xE, 0x2A6 }
};

static const UnkStruct_ov84_02240FA8 Unk_ov91_021D27BC = {
    NULL,
    ov91_021D188C,
    ov91_021D18C4,
    NULL,
    0x0,
    0x7,
    0x0,
    0x2,
    0x0,
    0x0,
    0x1,
    0x0,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x1,
    NULL
};

static const u32 Unk_ov91_021D282C[2][11] = {
    { 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA },
    { 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15 }
};

static const GameWindowLayout_1 Unk_ov91_021D27DC[] = {
    { ov91_021D1EC8, ov91_021D1EE8 },
    { ov91_021D1F38, ov91_021D1F44 },
    { ov91_021D1F94, ov91_021D1FA0 },
    { ov91_021D1FBC, ov91_021D1FD8 },
    { ov91_021D1FF4, ov91_021D2008 }
};

static const SpriteTemplate Unk_ov91_021D28FC[] = {
    {
        0x92,
        0x8,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8A8, 0xB8A8, 0xB8A8, 0xB8A8, 0x0, 0x0 },
        0x2,
        0x0,
    },
    {
        0xF6,
        0x8,
        0x0,
        0x1,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8A8, 0xB8A8, 0xB8A8, 0xB8A8, 0x0, 0x0 },
        0x2,
        0x0,
    },
    {
        0xC4,
        0x14,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8A9, 0xB8A8, 0xB8A9, 0xB8A9, 0x0, 0x0 },
        0x2,
        0x0,
    },
    {
        0xC4,
        0x8C,
        0x0,
        0x1,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8A9, 0xB8A8, 0xB8A9, 0xB8A9, 0x0, 0x0 },
        0x2,
        0x0,
    },
    {
        0xC4,
        0x20,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8AA, 0xB8A8, 0xB8AA, 0xB8AA, 0x0, 0x0 },
        0x1,
        0x0,
    },
    {
        0x74,
        0x8,
        0x0,
        0x0,
        0x0,
        0x2,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8AB, 0xB8A8, 0xB8AB, 0xB8AB, 0x0, 0x0 },
        0x2,
        0x0,
    },
    {
        0x98,
        0x20,
        0x0,
        0x0,
        0x1,
        0x2,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8AC, 0xB8A8, 0xB8AB, 0xB8AB, 0x0, 0x0 },
        0x2,
        0x0,
    },
    {
        0x98,
        0x30,
        0x0,
        0x0,
        0x1,
        0x2,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8AD, 0xB8A8, 0xB8AB, 0xB8AB, 0x0, 0x0 },
        0x2,
        0x0,
    },
    {
        0x98,
        0x40,
        0x0,
        0x0,
        0x1,
        0x2,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8AE, 0xB8A8, 0xB8AB, 0xB8AB, 0x0, 0x0 },
        0x2,
        0x0,
    },
    {
        0x98,
        0x50,
        0x0,
        0x0,
        0x1,
        0x2,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8AF, 0xB8A8, 0xB8AB, 0xB8AB, 0x0, 0x0 },
        0x2,
        0x0,
    },
    {
        0x98,
        0x60,
        0x0,
        0x0,
        0x1,
        0x2,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8B0, 0xB8A8, 0xB8AB, 0xB8AB, 0x0, 0x0 },
        0x2,
        0x0,
    },
    {
        0x98,
        0x70,
        0x0,
        0x0,
        0x1,
        0x2,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8B1, 0xB8A8, 0xB8AB, 0xB8AB, 0x0, 0x0 },
        0x2,
        0x0,
    },
    {
        0x98,
        0x80,
        0x0,
        0x0,
        0x1,
        0x2,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0xB8B2, 0xB8A8, 0xB8AB, 0xB8AB, 0x0, 0x0 },
        0x2,
        0x0,
    },
};

int ov91_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov91_021D0ED8 *v0;

    Heap_Create(3, 67, 0x20000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov91_021D0ED8), 67);
    memset(v0, 0, sizeof(UnkStruct_ov91_021D0ED8));
    v0->unk_00 = OverlayManager_Args(param0);

    ov91_021D0ED8(v0);
    ov91_021D2548(v0, v0->unk_00->unk_10, 0);
    ov91_021D1C10(v0, 0);
    ov91_021D1580(v0, 12, FONT_MESSAGE, TEXT_COLOR(1, 2, 15), 0);

    v0->unk_180 = 1;

    sub_0201A9A4(&v0->unk_08[12]);
    ov91_021D2594(v0);
    SetMainCallback(ov91_021D0F9C, v0);

    return 1;
}

int ov91_021D0E08(OverlayManager *param0, int *param1)
{
    UnkStruct_ov91_021D0ED8 *v0 = OverlayManager_Data(param0);

    switch (*param1) {
    case 0:
        *param1 = ov91_021D1214(v0);
        break;
    case 1:
        *param1 = ov91_021D122C(v0);
        break;
    case 2:
        *param1 = ov91_021D134C(v0);
        break;
    case 3:
        *param1 = ov91_021D136C(v0);
        break;
    case 4:
        *param1 = ov91_021D1394(v0);
        break;
    case 5:
        *param1 = ov91_021D13E4(v0);
        break;
    case 6:
        *param1 = ov91_021D1438(v0);
        break;
    case 7:
        *param1 = ov91_021D1450(v0);
        break;
    case 8:
        *param1 = ov91_021D1480(v0);
        break;
    case 9:
        return 1;
    case 10:
        *param1 = ov91_021D2604(v0);
        break;
    case 11:
        *param1 = ov91_021D261C(v0);
        return 0;
    case 12:
        *param1 = ov91_021D26AC(v0);
        return 0;
    }

    ov91_021D20E8(v0);
    sub_0200C7EC(v0->unk_114);

    return 0;
}

int ov91_021D0EBC(OverlayManager *param0, int *param1)
{
    UnkStruct_ov91_021D0ED8 *v0 = OverlayManager_Data(param0);

    ov91_021D0F6C(v0);

    OverlayManager_FreeData(param0);
    Heap_Destroy(67);

    return 1;
}

static void ov91_021D0ED8(UnkStruct_ov91_021D0ED8 *param0)
{
    NARC *v0;

    SetMainCallback(NULL, NULL);
    DisableHBlank();

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    param0->unk_04 = sub_02018340(67);

    sub_0208C120(0, 67);

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__WAZA_OSHIE_GRA, 67);

    ov91_021D0FC4();
    ov91_021D0FE4(param0->unk_04);
    ov91_021D10C8(param0, v0);
    ov91_021D2508(param0, v0);
    ov91_021D11B8(param0);
    ov91_021D1154(param0);
    ov91_021D1784(param0);
    ov91_021D1498(param0);

    SetMainCallback(ov91_021D0F9C, param0);
    NARC_dtor(v0);
}

static void ov91_021D0F6C(UnkStruct_ov91_021D0ED8 *param0)
{
    ov91_021D1868(param0);
    ov91_021D11A0(param0);
    ov91_021D1098(param0->unk_04);
    ov91_021D11F0(param0);
    ov91_021D20B4(param0);

    sub_0201DC3C();
    SetMainCallback(NULL, NULL);
}

static void ov91_021D0F9C(void *param0)
{
    UnkStruct_ov91_021D0ED8 *v0 = param0;

    sub_0201C2B8(v0->unk_04);
    sub_0201DCAC();
    sub_0200C800();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov91_021D0FC4(void)
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

static void ov91_021D0FE4(BGL *param0)
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
            GX_BG_SCRBASE_0xf800,
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
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x00000,
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
            0x1000,
            0,
            3,
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

    sub_02019690(0, 32, 0, 67);
}

static void ov91_021D1098(BGL *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ, 0);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
    Heap_FreeToHeapExplicit(67, param0);
}

static void ov91_021D10C8(UnkStruct_ov91_021D0ED8 *param0, NARC *param1)
{
    sub_020070E8(param1, 10, param0->unk_04, 2, 0, 0, 0, 67);
    sub_0200710C(param1, 11, param0->unk_04, 2, 0, 0, 0, 67);
    sub_02007130(param1, 12, 0, 0, 0, 67);
    Font_LoadScreenIndicatorsPalette(0, 14 * 32, 67);
    sub_0200DAA4(param0->unk_04, 0, 1, 12, 0, 67);
    sub_0200DD0C(param0->unk_04, 0, (1 + 9), 13, Options_Frame(param0->unk_00->unk_08), 67);
}

static void ov91_021D1154(UnkStruct_ov91_021D0ED8 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 15; v0++) {
        sub_0201A8D4(param0->unk_04, &param0->unk_08[v0], &Unk_ov91_021D2884[v0]);
        BGL_FillWindow(&param0->unk_08[v0], 0);
    }

    ov91_021D1664(param0);

    BGL_FillWindow(&param0->unk_08[12], 15);
    sub_0200E060(&param0->unk_08[12], 0, (1 + 9), 13);
}

static void ov91_021D11A0(UnkStruct_ov91_021D0ED8 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 15; v0++) {
        BGL_DeleteWindow(&param0->unk_08[v0]);
    }
}

static void ov91_021D11B8(UnkStruct_ov91_021D0ED8 *param0)
{
    param0->unk_F8 = MessageLoader_Init(0, 26, 645, 67);
    param0->unk_FC = StringTemplate_Default(67);
    param0->unk_100 = Strbuf_Init(256, 67);
}

static void ov91_021D11F0(UnkStruct_ov91_021D0ED8 *param0)
{
    MessageLoader_Free(param0->unk_F8);
    StringTemplate_Free(param0->unk_FC);
    Strbuf_Free(param0->unk_100);
}

static int ov91_021D1214(UnkStruct_ov91_021D0ED8 *param0)
{
    if (ScreenWipe_Done() == 1) {
        return param0->unk_180;
    }

    return 0;
}

static int ov91_021D122C(UnkStruct_ov91_021D0ED8 *param0)
{
    u32 v0;
    u16 v1, v2;

    if (gCoreSys.pressedKeys & (PAD_KEY_LEFT | PAD_KEY_RIGHT)) {
        Sound_PlayEffect(1501);
        param0->unk_00->unk_14 ^= 1;
        ov91_021D1498(param0);
        return 1;
    }

    sub_020014DC(param0->unk_104, &v1, &v2);
    v0 = sub_02001288(param0->unk_104);
    sub_020014DC(param0->unk_104, &param0->unk_00->unk_12, &param0->unk_00->unk_10);
    ov91_021D237C(param0, v1, param0->unk_00->unk_12);

    if (param0->unk_00->unk_10 != v2) {
        ov91_021D2548(param0, param0->unk_00->unk_10, 0);
    }

    ov91_021D2594(param0);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        Sound_PlayEffect(1501);
        ov91_021D2548(param0, param0->unk_00->unk_10, 1);
        ov91_021D25E4(param0);
        ov91_021D1DF8(param0, 2);
        param0->unk_186 = 1;
        param0->unk_180 = 3;
        return 2;
    default:
        Sound_PlayEffect(1501);
        ov91_021D2548(param0, param0->unk_00->unk_10, 1);
        ov91_021D25E4(param0);

        if (ov91_021D1EA0(param0) < 4) {
            ov91_021D1DF8(param0, 1);
            param0->unk_186 = 0;
            param0->unk_180 = 3;
        } else {
            ov91_021D1DF8(param0, 4);
            param0->unk_186 = 2;
            param0->unk_180 = 3;
        }

        return 2;
    }

    return 1;
}

static int ov91_021D134C(UnkStruct_ov91_021D0ED8 *param0)
{
    if (Text_IsPrinterActive(param0->unk_185) == 0) {
        return param0->unk_180;
    }

    return 2;
}

static int ov91_021D136C(UnkStruct_ov91_021D0ED8 *param0)
{
    param0->unk_10C = sub_02002100(param0->unk_04, &Unk_ov91_021D2884[14], 1, 12, 67);
    return 4;
}

static int ov91_021D1394(UnkStruct_ov91_021D0ED8 *param0)
{
    switch (sub_02002114(param0->unk_10C, 67)) {
    case 0:
        return Unk_ov91_021D27DC[param0->unk_186].unk_00(param0);
    case 0xfffffffe:
        return Unk_ov91_021D27DC[param0->unk_186].unk_04(param0);
    }

    return 4;
}

static int ov91_021D13E4(UnkStruct_ov91_021D0ED8 *param0)
{
    u32 v0;

    v0 = ov91_021D1DD0(param0);
    Pokemon_SetValue(param0->unk_00->unk_00, 54 + param0->unk_00->unk_17, &v0);

    v0 = 0;
    Pokemon_SetValue(param0->unk_00->unk_00, 62 + param0->unk_00->unk_17, &v0);

    v0 = MoveTable_CalcMaxPP(ov91_021D1DD0(param0), 0);
    Pokemon_SetValue(param0->unk_00->unk_00, 58 + param0->unk_00->unk_17, &v0);

    param0->unk_00->unk_16 = 0;

    return 8;
}

static int ov91_021D1438(UnkStruct_ov91_021D0ED8 *param0)
{
    ov91_021D1DF8(param0, 6);
    param0->unk_180 = 5;
    return 2;
}

static int ov91_021D1450(UnkStruct_ov91_021D0ED8 *param0)
{
    if (param0->unk_00->unk_17 < 4) {
        ov91_021D1DF8(param0, 10);
        param0->unk_186 = 4;
    } else {
        ov91_021D1DF8(param0, 7);
        param0->unk_186 = 3;
    }

    param0->unk_180 = 3;

    return 2;
}

static int ov91_021D1480(UnkStruct_ov91_021D0ED8 *param0)
{
    sub_0208C120(1, 67);
    param0->unk_180 = 9;
    return 0;
}

static void ov91_021D1498(UnkStruct_ov91_021D0ED8 *param0)
{
    u16 v0;

    v0 = ov91_021D1DD0(param0);

    if (param0->unk_00->unk_14 == 0) {
        sub_0201C63C(param0->unk_04, 2, 0, 0);
        sub_0201AD10(&param0->unk_08[1]);
        sub_0201AD10(&param0->unk_08[6]);
        sub_0201AD10(&param0->unk_08[11]);
        sub_0201A9A4(&param0->unk_08[0]);

        if (v0 != 0xffff) {
            ov91_021D18C8(param0, v0);
        } else {
            ov91_021D18C8(param0, 0xfffffffe);
        }
    } else {
        sub_0201C63C(param0->unk_04, 2, 0, 256);
        sub_0201AD10(&param0->unk_08[0]);
        sub_0201AD10(&param0->unk_08[2]);
        sub_0201AD10(&param0->unk_08[3]);
        sub_0201AD10(&param0->unk_08[4]);
        sub_0201AD10(&param0->unk_08[5]);
        sub_0201AD10(&param0->unk_08[10]);
        sub_0201AD10(&param0->unk_08[7]);
        sub_0201AD10(&param0->unk_08[8]);
        sub_0201AD10(&param0->unk_08[9]);
        sub_0201A9A4(&param0->unk_08[1]);

        if (v0 != 0xffff) {
            ov91_021D1A68(param0, v0);
        } else {
            ov91_021D1A68(param0, 0xfffffffe);
        }

        SpriteActor_EnableObject(param0->unk_118[5], 0);
    }

    ov91_021D2314(param0);
}

static void ov91_021D1580(UnkStruct_ov91_021D0ED8 *param0, u32 param1, u32 param2, TextColor param3, u32 param4)
{
    u8 v0;
    u8 v1;
    u8 v2;

    switch (param4) {
    case 0:
        v2 = 0;
        break;
    case 1:
        v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_100, 0);
        v1 = sub_0201C294(&param0->unk_08[param1]) * 8;
        v2 = v1 - v0;
        break;
    case 2:
        v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_100, 0);
        v1 = sub_0201C294(&param0->unk_08[param1]) * 8;
        v2 = (v1 - v0) / 2;
        break;
    }

    Text_AddPrinterWithParamsAndColor(&param0->unk_08[param1], param2, param0->unk_100, v2, 0, TEXT_SPEED_NO_TRANSFER, param3, NULL);
}

static void ov91_021D1618(UnkStruct_ov91_021D0ED8 *param0, u32 param1, u32 param2, u8 param3, u8 param4)
{
    Strbuf *v0;

    v0 = MessageLoader_GetNewStrbuf(param0->unk_F8, param1);
    StringTemplate_SetNumber(param0->unk_FC, 0, param2, param3, param4, 1);
    StringTemplate_Format(param0->unk_FC, param0->unk_100, v0);
    Strbuf_Free(v0);
}

static void ov91_021D1664(UnkStruct_ov91_021D0ED8 *param0)
{
    u32 v0;

    MessageLoader_GetStrbuf(param0->unk_F8, 26, param0->unk_100);
    ov91_021D1580(param0, 0, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), 2);

    MessageLoader_GetStrbuf(param0->unk_F8, 28, param0->unk_100);
    ov91_021D1580(param0, 1, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), 2);

    MessageLoader_GetStrbuf(param0->unk_F8, 22, param0->unk_100);
    ov91_021D1580(param0, 2, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), 0);

    MessageLoader_GetStrbuf(param0->unk_F8, 23, param0->unk_100);
    ov91_021D1580(param0, 3, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), 0);

    MessageLoader_GetStrbuf(param0->unk_F8, 24, param0->unk_100);
    ov91_021D1580(param0, 4, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), 0);

    MessageLoader_GetStrbuf(param0->unk_F8, 25, param0->unk_100);
    ov91_021D1580(param0, 5, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 0);

    MessageLoader_GetStrbuf(param0->unk_F8, 27, param0->unk_100);
    ov91_021D1580(param0, 6, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), 2);
}

static u32 ov91_021D175C(UnkStruct_ov91_021D0ED8 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 256; v0++) {
        if (param0->unk_00->unk_0C[v0] == 0xffff) {
            break;
        }
    }

    return v0;
}

static void ov91_021D1784(UnkStruct_ov91_021D0ED8 *param0)
{
    MessageLoader *v0;
    UnkStruct_ov84_02240FA8 v1;
    u32 v2;

    param0->unk_184 = (u8)ov91_021D175C(param0) + 1;
    param0->unk_108 = sub_02013A04(param0->unk_184, 67);

    v0 = MessageLoader_Init(
        0, 26, 647, 67);

    for (v2 = 0; v2 < param0->unk_184; v2++) {
        if (param0->unk_00->unk_0C[v2] != 0xffff) {
            sub_02013A4C(
                param0->unk_108, v0, param0->unk_00->unk_0C[v2], param0->unk_00->unk_0C[v2]);
        } else {
            sub_02013A4C(
                param0->unk_108, param0->unk_F8, 32, 0xfffffffe);
            break;
        }
    }

    MessageLoader_Free(v0);

    v1 = Unk_ov91_021D27BC;
    v1.unk_00 = param0->unk_108;
    v1.unk_0C = &param0->unk_08[13];
    v1.unk_10 = param0->unk_184;
    v1.unk_1C = (void *)param0;

    param0->unk_104 = sub_0200112C(&v1, param0->unk_00->unk_12, param0->unk_00->unk_10, 67);

    sub_0201A9A4(&param0->unk_08[13]);
}

static void ov91_021D1868(UnkStruct_ov91_021D0ED8 *param0)
{
    sub_02001384(param0->unk_104, &param0->unk_00->unk_12, &param0->unk_00->unk_10);
    sub_02013A3C(param0->unk_108);
}

static void ov91_021D188C(BmpList *param0, u32 param1, u8 param2)
{
    UnkStruct_ov91_021D0ED8 *v0 = (UnkStruct_ov91_021D0ED8 *)sub_02001504(param0, 19);

    if (param2 != 1) {
        Sound_PlayEffect(1501);
    }

    if (v0->unk_00->unk_14 == 0) {
        ov91_021D18C8(v0, param1);
    } else {
        ov91_021D1A68(v0, param1);
    }
}

static void ov91_021D18C4(BmpList *param0, u32 param1, u8 param2)
{
    return;
}

static void ov91_021D18C8(UnkStruct_ov91_021D0ED8 *param0, u32 param1)
{
    BGL_FillWindow(&param0->unk_08[10], 0);
    BGL_FillWindow(&param0->unk_08[7], 0);
    BGL_FillWindow(&param0->unk_08[8], 0);
    BGL_FillWindow(&param0->unk_08[9], 0);
    SpriteActor_EnableObject(param0->unk_118[5], 0);

    if (param1 != 0xfffffffe) {
        MessageLoader *v0;
        u32 v1;

        v1 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_POWER);

        if (v1 <= 1) {
            MessageLoader_GetStrbuf(param0->unk_F8, 33, param0->unk_100);
        } else {
            ov91_021D1618(param0, 29, v1, 3, 1);
        }

        ov91_021D1580(param0, 7, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 2);

        v1 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_ACCURACY);

        if (v1 == 0) {
            MessageLoader_GetStrbuf(param0->unk_F8, 33, param0->unk_100);
        } else {
            ov91_021D1618(param0, 30, v1, 3, 1);
        }

        ov91_021D1580(param0, 8, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 2);

        v1 = MoveTable_CalcMaxPP(param1, 0);
        ov91_021D1618(param0, 31, v1, 2, 0);
        ov91_021D1580(param0, 9, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 2);

        v0 = MessageLoader_Init(1, 26, 646, 67);
        MessageLoader_GetStrbuf(v0, param1, param0->unk_100);
        ov91_021D1580(param0, 10, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 0);
        MessageLoader_Free(v0);
        ov91_021D24B4(param0, param1);
        SpriteActor_EnableObject(param0->unk_118[5], 1);
        sub_0201A9A4(&param0->unk_08[2]);
        sub_0201A9A4(&param0->unk_08[3]);
        sub_0201A9A4(&param0->unk_08[4]);
        sub_0201A9A4(&param0->unk_08[5]);
    } else {
        sub_0201AD10(&param0->unk_08[2]);
        sub_0201AD10(&param0->unk_08[3]);
        sub_0201AD10(&param0->unk_08[4]);
        sub_0201AD10(&param0->unk_08[5]);
    }

    sub_0201A9A4(&param0->unk_08[10]);
    sub_0201A9A4(&param0->unk_08[7]);
    sub_0201A9A4(&param0->unk_08[8]);
    sub_0201A9A4(&param0->unk_08[9]);
}

static void ov91_021D1A68(UnkStruct_ov91_021D0ED8 *param0, u32 param1)
{
    BGL_FillWindow(&param0->unk_08[11], 0);

    if (param1 != 0xfffffffe) {
        MessageLoader *v0;
        u32 v1;
        u32 v2;

        v1 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_CONTEST_EFFECT);
        v2 = sub_0209577C(v1);
        v0 = MessageLoader_Init(0, 26, 210, 67);

        MessageLoader_GetStrbuf(v0, v2, param0->unk_100);
        Text_AddPrinterWithParamsAndColor(&param0->unk_08[11], FONT_SYSTEM, param0->unk_100, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        MessageLoader_Free(v0);
        ov91_021D1BBC(param0, (u16)param1);
        sub_0201A9A4(&param0->unk_08[6]);
    } else {
        ov91_021D1BBC(param0, 0xffff);
        sub_0201AD10(&param0->unk_08[6]);
    }

    sub_0201A9A4(&param0->unk_08[11]);
}

static void ov91_021D1B00(UnkStruct_ov91_021D0ED8 *param0, u16 param1, u8 param2)
{
    sub_02019CB8(param0->unk_04, 2, param1, 34 + param2 * 2, 5, 1, 1, 16);
    sub_02019CB8(param0->unk_04, 2, param1 + 1, 34 + param2 * 2 + 1, 5, 1, 1, 16);
    sub_02019CB8(param0->unk_04, 2, param1 + 32, 34 + param2 * 2, 5 + 1, 1, 1, 16);
    sub_02019CB8(param0->unk_04, 2, param1 + 33, 34 + param2 * 2 + 1, 5 + 1, 1, 1, 16);
}

static void ov91_021D1B94(UnkStruct_ov91_021D0ED8 *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 6; v0++) {
        ov91_021D1B00(param0, 0x12, v0);
    }

    sub_0201C3C0(param0->unk_04, 2);
}

static void ov91_021D1BBC(UnkStruct_ov91_021D0ED8 *param0, u16 param1)
{
    u32 v0;
    u16 v1;
    s8 v2;

    ov91_021D1B94(param0);

    if (param1 != 0xffff) {
        v0 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_CONTEST_EFFECT);
        v2 = sub_02095734(v0) / 10;

        for (v1 = 0; v1 < v2; v1++) {
            ov91_021D1B00(param0, 0xe, v1);
        }
    }

    sub_0201C3C0(param0->unk_04, 2);
}

static void ov91_021D1C10(UnkStruct_ov91_021D0ED8 *param0, u32 param1)
{
    Strbuf *v0;

    switch (param1) {
    case 0:
        StringTemplate_SetNickname(param0->unk_FC, 0, Pokemon_GetBoxPokemon(param0->unk_00->unk_00));
        break;
    case 1:
        StringTemplate_SetMoveName(param0->unk_FC, 1, ov91_021D1DD0(param0));
        break;
    case 2:
        StringTemplate_SetNickname(param0->unk_FC, 0, Pokemon_GetBoxPokemon(param0->unk_00->unk_00));
        break;
    case 3:
        StringTemplate_SetNickname(param0->unk_FC, 0, Pokemon_GetBoxPokemon(param0->unk_00->unk_00));
        StringTemplate_SetMoveName(param0->unk_FC, 1, ov91_021D1DD0(param0));
        break;
    case 4:
        StringTemplate_SetNickname(param0->unk_FC, 0, Pokemon_GetBoxPokemon(param0->unk_00->unk_00));
        StringTemplate_SetMoveName(param0->unk_FC, 1, ov91_021D1DD0(param0));
        break;
    case 5:
        StringTemplate_SetNickname(param0->unk_FC, 0, Pokemon_GetBoxPokemon(param0->unk_00->unk_00));
        StringTemplate_SetMoveName(param0->unk_FC, 1, ov91_021D1DE0(param0));
        break;
    case 6:
        StringTemplate_SetNickname(param0->unk_FC, 0, Pokemon_GetBoxPokemon(param0->unk_00->unk_00));
        StringTemplate_SetMoveName(param0->unk_FC, 1, ov91_021D1DD0(param0));
        break;
    case 7:
        StringTemplate_SetMoveName(param0->unk_FC, 1, ov91_021D1DD0(param0));
        break;
    case 8:
        StringTemplate_SetNickname(param0->unk_FC, 0, Pokemon_GetBoxPokemon(param0->unk_00->unk_00));
        StringTemplate_SetMoveName(param0->unk_FC, 1, ov91_021D1DD0(param0));
        break;
    case 9:
        StringTemplate_SetPlayerName(param0->unk_FC, 2, param0->unk_00->unk_04);
        break;
    case 10:
        StringTemplate_SetMoveName(param0->unk_FC, 0, ov91_021D1DE0(param0));
        break;
    }

    v0 = MessageLoader_GetNewStrbuf(param0->unk_F8, Unk_ov91_021D282C[param0->unk_00->unk_15][param1]);
    StringTemplate_Format(param0->unk_FC, param0->unk_100, v0);
    Strbuf_Free(v0);
}

static u16 ov91_021D1DD0(UnkStruct_ov91_021D0ED8 *param0)
{
    return param0->unk_00->unk_0C[param0->unk_00->unk_12 + param0->unk_00->unk_10];
}

static u16 ov91_021D1DE0(UnkStruct_ov91_021D0ED8 *param0)
{
    return (u16)Pokemon_GetValue(param0->unk_00->unk_00, 54 + param0->unk_00->unk_17, NULL);
}

static void ov91_021D1DF8(UnkStruct_ov91_021D0ED8 *param0, u32 param1)
{
    BGL_FillWindow(&param0->unk_08[12], 15);
    ov91_021D1C10(param0, param1);
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);

    param0->unk_185 = Text_AddPrinterWithParams(&param0->unk_08[12], FONT_MESSAGE, param0->unk_100, 0, 0, Options_TextFrameDelay(param0->unk_00->unk_08), ov91_021D1E50);
}

static BOOL ov91_021D1E50(TextPrinterTemplate *param0, u16 param1)
{
    switch (param1) {
    case 1:
        return sub_020057E0();
    case 2:
        return sub_020061E4();
    case 3:
        Sound_PlayEffect(1510);
        break;
    case 4:
        sub_02006150(1155);
        break;
    case 5:
        return Sound_IsEffectPlaying(1510);
    }

    return 0;
}

static u8 ov91_021D1EA0(UnkStruct_ov91_021D0ED8 *param0)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (Pokemon_GetValue(param0->unk_00->unk_00, MON_DATA_MOVE1 + v0, NULL) == 0) {
            break;
        }
    }

    return v0;
}

static int ov91_021D1EC8(UnkStruct_ov91_021D0ED8 *param0)
{
    ov91_021D1DF8(param0, 3);

    param0->unk_00->unk_17 = ov91_021D1EA0(param0);
    param0->unk_180 = 5;

    return 2;
}

static int ov91_021D1EE8(UnkStruct_ov91_021D0ED8 *param0)
{
    BGL_FillWindow(&param0->unk_08[12], 15);

    ov91_021D1C10(param0, 0);
    ov91_021D1580(param0, 12, FONT_MESSAGE, TEXT_COLOR(1, 2, 15), 0);

    sub_0201A9A4(&param0->unk_08[12]);

    ov91_021D2548(param0, param0->unk_00->unk_10, 0);
    ov91_021D2574(param0, 1);

    return 1;
}

static int ov91_021D1F38(UnkStruct_ov91_021D0ED8 *param0)
{
    param0->unk_00->unk_16 = 1;
    return 8;
}

static int ov91_021D1F44(UnkStruct_ov91_021D0ED8 *param0)
{
    BGL_FillWindow(&param0->unk_08[12], 15);

    ov91_021D1C10(param0, 0);
    ov91_021D1580(param0, 12, FONT_MESSAGE, TEXT_COLOR(1, 2, 15), 0);

    sub_0201A9A4(&param0->unk_08[12]);

    ov91_021D2548(param0, param0->unk_00->unk_10, 0);
    ov91_021D2574(param0, 1);

    return 1;
}

static int ov91_021D1F94(UnkStruct_ov91_021D0ED8 *param0)
{
    param0->unk_180 = 10;
    return 0;
}

static int ov91_021D1FA0(UnkStruct_ov91_021D0ED8 *param0)
{
    ov91_021D1DF8(param0, 7);
    param0->unk_186 = 3;
    param0->unk_180 = 3;
    return 2;
}

static int ov91_021D1FBC(UnkStruct_ov91_021D0ED8 *param0)
{
    ov91_021D1DF8(param0, 8);
    param0->unk_180 = 8;
    param0->unk_00->unk_16 = 1;
    return 2;
}

static int ov91_021D1FD8(UnkStruct_ov91_021D0ED8 *param0)
{
    ov91_021D1DF8(param0, 4);
    param0->unk_186 = 2;
    param0->unk_180 = 3;
    return 2;
}

static int ov91_021D1FF4(UnkStruct_ov91_021D0ED8 *param0)
{
    ov91_021D1DF8(param0, 5);
    param0->unk_180 = 6;
    return 2;
}

static int ov91_021D2008(UnkStruct_ov91_021D0ED8 *param0)
{
    param0->unk_180 = 10;
    return 0;
}

static void ov91_021D2014(UnkStruct_ov91_021D0ED8 *param0)
{
    UnkStruct_ov104_02241308 v0 = {
        11, 2, 4, 4, 0, 0
    };

    sub_0201DBEC(64, 67);

    param0->unk_110 = sub_0200C6E4(67);
    param0->unk_114 = sub_0200C704(param0->unk_110);

    {
        UnkStruct_ov104_0224133C v1 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        UnkStruct_ov104_022412F4 v2 = {
            13, 1024 * 128, 1024 * 16, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K
        };

        sub_0200C73C(param0->unk_110, &v1, &v2, 32);
    }

    sub_0200C7C0(param0->unk_110, param0->unk_114, 13);
    sub_0200CB30(param0->unk_110, param0->unk_114, &v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov91_021D20B4(UnkStruct_ov91_021D0ED8 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 13; v0++) {
        sub_0200D0F4(param0->unk_118[v0]);
    }

    sub_0200D0B0(param0->unk_110, param0->unk_114);
    sub_0200C8D4(param0->unk_110);
}

static void ov91_021D20E8(UnkStruct_ov91_021D0ED8 *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 13; v0++) {
        CellActor_UpdateAnim(param0->unk_118[v0]->unk_00, FX32_ONE);
    }
}

static void ov91_021D2110(UnkStruct_ov91_021D0ED8 *param0, NARC *param1)
{
    u32 v0;

    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_110, param0->unk_114, param1, 5, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 47272);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_110, param0->unk_114, param1, 8, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 47273);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_110, param0->unk_114, param1, 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 47274);

    for (v0 = 47276; v0 <= 47282; v0++) {
        sub_0207C948(param0->unk_110, param0->unk_114, NNS_G2D_VRAM_TYPE_2DMAIN, 0, v0);
    }

    sub_0207CAC4(param0->unk_110, param0->unk_114, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 47275);
    sub_0200CD0C(param0->unk_110, param0->unk_114, param1, 9, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 47272);
    sub_0207C97C(param0->unk_110, param0->unk_114, NNS_G2D_VRAM_TYPE_2DMAIN, 47273);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_110, param0->unk_114, param1, 4, 0, 47272);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_110, param0->unk_114, param1, 7, 0, 47273);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_110, param0->unk_114, param1, 1, 0, 47274);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_110, param0->unk_114, param1, 3, 0, 47272);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_110, param0->unk_114, param1, 6, 0, 47273);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_110, param0->unk_114, param1, 0, 0, 47274);
    sub_0207C9EC(param0->unk_110, param0->unk_114, 47275, 47275);
}

static void ov91_021D22A0(UnkStruct_ov91_021D0ED8 *param0, u16 param1, u16 param2)
{
    u32 v0;

    if (param0->unk_00->unk_14 == 0) {
        v0 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_TYPE);
    } else {
        v0 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_CONTEST_TYPE) + 18;
    }

    sub_0200D948(param0->unk_110, param0->unk_114, sub_0207C944(), sub_0207C908(v0), 1, 47276 + param2);
    sub_0200D41C(param0->unk_118[6 + param2], sub_0207C92C(v0) + 2);
}

static void ov91_021D2314(UnkStruct_ov91_021D0ED8 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 7; v0++) {
        SpriteActor_SetSpritePositionXY(
            param0->unk_118[6 + v0], 152, 32 + 16 * v0);

        if (param0->unk_00->unk_12 + v0 >= param0->unk_184 - 1) {
            SpriteActor_EnableObject(param0->unk_118[6 + v0], 0);
        } else {
            SpriteActor_EnableObject(param0->unk_118[6 + v0], 1);
            ov91_021D22A0(param0, param0->unk_00->unk_0C[param0->unk_00->unk_12 + v0], v0);
        }
    }
}

static void ov91_021D237C(UnkStruct_ov91_021D0ED8 *param0, u16 param1, u16 param2)
{
    u32 v0;
    s16 v1, v2;

    if (param1 < param2) {
        for (v0 = 0; v0 < 7; v0++) {
            SpriteActor_GetSpritePositionXY(param0->unk_118[6 + v0], &v1, &v2);

            if (v2 == 32) {
                v2 = ((((((32 + 16) + 16) + 16) + 16) + 16) + 16);

                if (param0->unk_00->unk_0C[param2 + 6] != 0xffff) {
                    ov91_021D22A0(param0, param0->unk_00->unk_0C[param2 + 6], v0);
                }
            } else {
                v2 -= 16;
            }

            SpriteActor_SetSpritePositionXY(param0->unk_118[6 + v0], v1, v2);
        }
    } else if (param1 > param2) {
        for (v0 = 0; v0 < 7; v0++) {
            SpriteActor_GetSpritePositionXY(param0->unk_118[6 + v0], &v1, &v2);

            if (v2 == ((((((32 + 16) + 16) + 16) + 16) + 16) + 16)) {
                v2 = 32;

                if (param0->unk_00->unk_0C[param2] != 0xffff) {
                    ov91_021D22A0(param0, param0->unk_00->unk_0C[param2], v0);
                }
            } else {
                v2 += 16;
            }

            SpriteActor_SetSpritePositionXY(param0->unk_118[6 + v0], v1, v2);
        }
    } else {
        return;
    }

    for (v0 = 0; v0 < 7; v0++) {
        SpriteActor_GetSpritePositionXY(param0->unk_118[6 + v0], &v1, &v2);
        v2 = (v2 - 32) / 16;

        if (param2 + v2 >= param0->unk_184 - 1) {
            SpriteActor_EnableObject(param0->unk_118[6 + v0], 0);
        } else {
            SpriteActor_EnableObject(param0->unk_118[6 + v0], 1);
        }
    }
}

static void ov91_021D24B4(UnkStruct_ov91_021D0ED8 *param0, u16 param1)
{
    u32 v0 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_CLASS);

    sub_0200D948(param0->unk_110, param0->unk_114, sub_0207CAC0(), sub_0207CA90(v0), 1, 47275);
    sub_0200D41C(param0->unk_118[5], sub_0207CAA8(v0) + 2);
}

static void ov91_021D2508(UnkStruct_ov91_021D0ED8 *param0, NARC *param1)
{
    u32 v0;

    ov91_021D2014(param0);
    ov91_021D2110(param0, param1);

    for (v0 = 0; v0 < 13; v0++) {
        param0->unk_118[v0] = SpriteActor_LoadResources(param0->unk_110, param0->unk_114, &Unk_ov91_021D28FC[v0]);
    }
}

static void ov91_021D2548(UnkStruct_ov91_021D0ED8 *param0, u8 param1, u8 param2)
{
    SpriteActor_SetSpritePositionXY(param0->unk_118[4], 196, 32 + 16 * param1);
    sub_0200D41C(param0->unk_118[4], param2);
}

static void ov91_021D2574(UnkStruct_ov91_021D0ED8 *param0, u8 param1)
{
    SpriteActor_EnableObject(param0->unk_118[0], param1);
    SpriteActor_EnableObject(param0->unk_118[1], param1);
}

static void ov91_021D2594(UnkStruct_ov91_021D0ED8 *param0)
{
    if (param0->unk_00->unk_12 != 0) {
        SpriteActor_EnableObject(param0->unk_118[2], 1);
    } else {
        SpriteActor_EnableObject(param0->unk_118[2], 0);
    }

    if (param0->unk_00->unk_12 + 7 < param0->unk_184) {
        SpriteActor_EnableObject(param0->unk_118[3], 1);
    } else {
        SpriteActor_EnableObject(param0->unk_118[3], 0);
    }
}

static void ov91_021D25E4(UnkStruct_ov91_021D0ED8 *param0)
{
    SpriteActor_EnableObject(param0->unk_118[2], 0);
    SpriteActor_EnableObject(param0->unk_118[3], 0);
}

static int ov91_021D2604(UnkStruct_ov91_021D0ED8 *param0)
{
    sub_0208C120(1, 67);
    param0->unk_180 = 11;
    return 0;
}

static int ov91_021D261C(UnkStruct_ov91_021D0ED8 *param0)
{
    u8 v0[] = {
        3, 5, 8
    };

    ov91_021D0F6C(param0);

    param0->unk_14C.monData = param0->unk_00->unk_00;
    param0->unk_14C.options = param0->unk_00->unk_08;
    param0->unk_14C.dataType = 0;
    param0->unk_14C.pos = 0;
    param0->unk_14C.max = 1;
    param0->unk_14C.move = ov91_021D1DD0(param0);
    param0->unk_14C.mode = 2;
    param0->unk_14C.contest = 1;
    param0->unk_14C.chatotCry = NULL;

    PokemonSummary_FlagVisiblePages(&param0->unk_14C, v0);

    param0->unk_17C = OverlayManager_New(&Unk_020F410C, &param0->unk_14C, 67);
    return 12;
}

static int ov91_021D26AC(UnkStruct_ov91_021D0ED8 *param0)
{
    if (OverlayManager_Exec(param0->unk_17C)) {
        OverlayManager_Free(param0->unk_17C);
        ov91_021D0ED8(param0);
        ov91_021D2548(param0, param0->unk_00->unk_10, 1);
        ov91_021D2574(param0, 0);
        ov91_021D25E4(param0);
        param0->unk_00->unk_17 = param0->unk_14C.selectedSlot;
        param0->unk_180 = 7;
        return 0;
    }

    return 12;
}
