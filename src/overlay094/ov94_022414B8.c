#include "overlay094/ov94_022414B8.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay094/const_ov94_02245FD4.h"
#include "overlay094/const_ov94_02245FD8.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_0223FB48.h"
#include "overlay094/ov94_02244950.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223BA88_sub2.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay094/struct_ov94_0223FD4C.h"
#include "overlay094/struct_ov94_0223FD4C_sub3.h"
#include "overlay094/struct_ov94_02242AAC.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "pokemon.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_020021B0.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"
#include "unk_0202631C.h"
#include "unk_0202C858.h"
#include "unk_020393C8.h"

typedef struct {
    int unk_00;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_ov94_022460AC;

static void ov94_0224158C(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4);
static void ov94_022415F8(BGL *param0);
static void ov94_022416E0(BGL *param0);
static void ov94_0224170C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_022417A0(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02241880(UnkStruct_ov94_0223FD4C *param0);
static void ov94_022418B8(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02241920(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224195C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02241990(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02241A1C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02241A58(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02241B2C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02241BAC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022420E4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02242138(UnkStruct_ov94_0223FD4C *param0);
static void ov94_022423FC(MessageLoader *param0, StringTemplate *param1, Window param2[], BoxPokemon *param3, UnkStruct_ov94_0223BA88_sub2 *param4);
static int ov94_02241DA0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02241D64(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02241D08(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02241E8C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02241F28(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02241EE8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02242040(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02242068(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224208C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02242668(UnkStruct_ov94_0223BA88 *param0, UnkStruct_ov94_0223FD4C *param1);
static int ov94_02242718(ResourceMetadata **param0, MessageLoader *param1, MessageLoader *param2, u16 *param3, u8 *param4, int param5, int param6, PokedexData *param7);
static TextColor ov94_022421E8(int param0, u32 param1);

static int (*Unk_ov94_0224695C[])(UnkStruct_ov94_0223FD4C *) = {
    ov94_0224195C,
    ov94_02241990,
    ov94_022420E4,
    ov94_02241A1C,
    ov94_02241A58,
    ov94_02241B2C,
    ov94_02241BAC,
    ov94_02241D08,
    ov94_02241D64,
    ov94_02241DA0,
    ov94_02241E8C,
    ov94_02241EE8,
    ov94_02241F28,
    ov94_02242040,
    ov94_02242068,
    ov94_0224208C,
    ov94_02242138
};

static const u16 Unk_ov94_02245FE8[6][2] = {
    { 0x1, 0x4 },
    { 0x3, 0x6 },
    { 0x1, 0x8 },
    { 0x1, 0xD },
    { 0x3, 0xF },
    { 0x1, 0x11 }
};

static const UnkStruct_ov94_022460AC Unk_ov94_0224610C[] = {
    { 0x7A, 0x0, 0x0 },
    { 0x7B, 0x0, 0x9 },
    { 0x7C, 0xA, 0x0 },
    { 0x7D, 0x14, 0x0 },
    { 0x7E, 0x1E, 0x0 },
    { 0x7F, 0x28, 0x0 },
    { 0x80, 0x32, 0x0 },
    { 0x81, 0x3C, 0x0 },
    { 0x82, 0x46, 0x0 },
    { 0x83, 0x50, 0x0 },
    { 0x84, 0x5A, 0x0 },
    { 0x85, 0x64, 0x64 },
    { 0x86, 0x0, 0x0 }
};

static const UnkStruct_ov94_022460AC Unk_ov94_022460AC[] = {
    { 0x99, 0x0, 0x0 },
    { 0x9A, 0x1, 0xA },
    { 0x9B, 0xB, 0x14 },
    { 0x9C, 0x15, 0x1E },
    { 0x9D, 0x1F, 0x28 },
    { 0x9E, 0x29, 0x32 },
    { 0x9F, 0x33, 0x3C },
    { 0xA0, 0x3D, 0x46 },
    { 0xA1, 0x47, 0x50 },
    { 0xA2, 0x51, 0x5A },
    { 0xA3, 0x5B, 0x64 },
    { 0xA4, 0x0, 0x0 }
};

__attribute__((aligned(4))) static const u16 Unk_ov94_02246174[] = {
    0x1,
    0x2,
    0x3,
    0x6,
    0x8,
    0x9,
    0xC,
    0xD,
    0xF,
    0x10,
    0x11,
    0x12,
    0x14,
    0x15,
    0x16,
    0x17,
    0x19,
    0x1B,
    0x1C,
    0x1D,
    0x1F,
    0x21,
    0x22,
    0x23,
    0x24,
    0x28,
    0x2A,
    0x2B,
    0x2D,
    0x30,
    0x31,
    0x32,
    0x34,
    0x36,
    0x37,
    0x38,
    0x3A,
    0x3B,
    0x3C,
    0x3D,
    0x3E,
    0x45,
    0x46,
    0x47,
    0x48,
    0x4A,
    0x4D,
    0x4E,
    0x4F,
    0x50,
    0x51,
    0x52,
    0x53,
    0x55,
    0x56,
    0x58,
    0x59,
    0x5A,
    0x5B,
    0x5C,
    0x5D,
    0x5E,
    0x5F,
    0x61,
    0x62,
    0x64,
    0x65,
    0x66,
    0x67,
    0x68,
    0x6B,
    0x6F,
    0x73,
    0x75,
    0x76,
    0x79,
    0x7A,
    0x7E,
    0x81,
    0x83,
    0x85,
    0x87,
    0x8C,
    0x8E,
    0x92,
    0x94,
    0x95,
    0x96,
    0x97,
    0x98,
    0x9C,
    0x9D,
    0x9E,
    0xA0,
    0xA1,
    0xA3,
    0xA4,
    0xA6,
    0xA7,
    0x6E,
    0xAB,
    0xAC,
    0xB3,
    0xB7,
    0xBA,
    0xBB,
    0xBC,
    0xBD,
    0xC0,
    0xC1,
    0xC2,
    0xC4,
    0xC6,
    0xC7,
    0xC8,
    0xCA,
    0xCD,
    0xCF,
    0xD3,
    0xD4,
    0xD8,
    0xDA,
    0xDB,
    0xCC,
    0xDD,
    0xDC,
    0xDE,
    0xE0,
    0xE2,
    0xE3
};

const u32 Unk_ov94_02245FD4 = NELEMS(Unk_ov94_02246174);

int ov94_022414B8(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_022418B8(param0);
    ov94_022415F8(param0->unk_04);
    ov94_0224170C(param0);
    ov94_022417A0(param0);

    sub_0200F174(3, 1, 1, 0x0, 6, 1, 62);

    ov94_02245934(param0);
    ov94_022422D4(param0->unk_B90, param0->unk_B94, param0->unk_B8C, &param0->unk_FCC[0], 0, 3, -1);
    ov94_022423FC(param0->unk_B90, param0->unk_B8C, &param0->unk_FCC[3], param0->unk_114, &param0->unk_B70);

    param0->unk_2C = 0;

    return 2;
}

int ov94_02241548(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0;

    sub_020397B0(ov94_0223C4B4());

    v0 = (*Unk_ov94_0224695C[param0->unk_2C])(param0);
    return v0;
}

int ov94_02241568(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    sub_02039794();

    ov94_02241920(param0);
    ov94_02241880(param0);
    ov94_022416E0(param0->unk_04);
    ov94_0223C4C8(param0);

    return 1;
}

static void ov94_0224158C(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    v0 = MessageLoader_GetNewStrbuf(param0->unk_B90, param1);

    StringTemplate_Format(param0->unk_B8C, param0->unk_BAC, v0);
    BGL_FillWindow(&param0->unk_F5C, 0xf0f);
    sub_0200E060(&param0->unk_F5C, 0, 1, 10);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->unk_F5C, FONT_MESSAGE, param0->unk_BAC, 0, 0, param2, NULL);

    Strbuf_Free(v0);
}

static void ov94_022415F8(BGL *param0)
{
    {
        UnkStruct_ov97_0222DB78 v0 = {
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
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v1, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v2, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
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

        sub_020183C4(param0, 4, &v3, 0);
        sub_02019EBC(param0, 4);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v4, 0);
    }

    sub_02019690(0, 32, 0, 62);
    sub_02019690(4, 32, 0, 62);
}

static void ov94_022416E0(BGL *param0)
{
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
}

static void ov94_0224170C(UnkStruct_ov94_0223FD4C *param0)
{
    BGL *v0 = param0->unk_04;

    sub_02006E84(104, 1, 0, 0, 16 * 3 * 2, 62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, 62);
    sub_0200DD0C(v0, 0, 1, 10, Options_Frame(param0->unk_00->unk_24), 62);
    sub_0200DAA4(v0, 0, (1 + (18 + 12)), 11, 0, 62);
    sub_02006E3C(104, 11, v0, 1, 0, 16 * 5 * 0x20, 1, 62);
    sub_02006E60(104, 23, v0, 1, 0, 32 * 24 * 2, 1, 62);
}

static void ov94_022417A0(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    BGL_AddWindow(param0->unk_04, &param0->unk_F7C, 0, 1, 1, 28, 2, 13, ((1 + (18 + 12)) + 9));
    BGL_FillWindow(&param0->unk_F7C, 0x0);

    ov94_022458CC(&param0->unk_F7C, param0->unk_BB0, 0, 1, 0, TEXT_COLOR(15, 14, 0));

    BGL_AddWindow(param0->unk_04, &param0->unk_F5C, 0, 2, 21, 27, 2, 13, (((1 + (18 + 12)) + 9) + 28 * 2));
    BGL_FillWindow(&param0->unk_F5C, 0x0);

    for (v0 = 0; v0 < 6; v0++) {
        BGL_AddWindow(param0->unk_04, &param0->unk_FCC[v0], 0, Unk_ov94_02245FE8[v0][0], Unk_ov94_02245FE8[v0][1], 11, 2, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + (11 * 2) * v0);
        BGL_FillWindow(&param0->unk_FCC[v0], 0x0);
        sub_0201A954(&param0->unk_FCC[v0]);
    }
}

static void ov94_02241880(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        BGL_DeleteWindow(&param0->unk_FCC[v0]);
    }

    BGL_DeleteWindow(&param0->unk_F5C);
    BGL_DeleteWindow(&param0->unk_F7C);
}

static void ov94_022418B8(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_BAC = Strbuf_Init((90 * 2), 62);
    param0->unk_BB0 = MessageLoader_GetNewStrbuf(param0->unk_B90, 90);
    param0->unk_10E4 = Heap_AllocFromHeap(62, sizeof(UnkStruct_ov94_0223FD4C_sub3));

    MI_CpuClearFast(param0->unk_10E4, sizeof(UnkStruct_ov94_0223FD4C_sub3));

    param0->unk_10E4->unk_18 = ov94_Pokedex_Alphabetical(62, 0, &param0->unk_10E4->unk_1C);
    param0->unk_10E4->unk_14 = ov94_02242548(62);

    ov94_02242AAC(&param0->unk_111C);
}

static void ov94_02241920(UnkStruct_ov94_0223FD4C *param0)
{
    Heap_FreeToHeap(param0->unk_10E4->unk_14);
    Heap_FreeToHeap(param0->unk_10E4->unk_18);
    Heap_FreeToHeap(param0->unk_10E4);
    Strbuf_Free(param0->unk_BAC);
    Strbuf_Free(param0->unk_BB0);
}

static int ov94_0224195C(UnkStruct_ov94_0223FD4C *param0)
{
    if (ScreenWipe_Done()) {
        ov94_0224158C(param0, 9, TEXT_SPEED_FAST, 0, 0xf0f);
        ov94_0223C3F4(param0, 16, 1);
    }

    return 3;
}

static int ov94_02241990(UnkStruct_ov94_0223FD4C *param0)
{
    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        ov94_0223C4C0(param0, 5, 5);
        param0->unk_2C = 2;
    }

    BGL_AddWindow(param0->unk_04, &param0->unk_F9C[0], 0, 15, 5, 4, 13, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 11 * 2 * 6));
    BGL_FillWindow(&param0->unk_F9C[0], 0x0);

    BGL_AddWindow(param0->unk_04, &param0->unk_F9C[1], 0, 21, 5, 10, 13, 13, ((((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 11 * 2 * 6) + 4 * 13));
    BGL_FillWindow(&param0->unk_F9C[1], 0x0);

    param0->unk_2C = 3;

    return 3;
}

static int ov94_02241A1C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D8 = ov94_022426A8(param0, &param0->unk_10CC, &param0->unk_F9C[0], param0->unk_B90);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 4;

    return 3;
}

static int ov94_02241A58(UnkStruct_ov94_0223FD4C *param0)
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
        param0->unk_2C = 5;
        Sound_PlayEffect(1500);
        break;
    case 0xfffffffe:
        sub_02001384(param0->unk_10D8, &param0->unk_10E4->unk_06, &param0->unk_10E4->unk_04);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);
        sub_0200E084(&param0->unk_F5C, 0);
        BGL_DeleteWindow(&param0->unk_F9C[0]);
        BGL_DeleteWindow(&param0->unk_F9C[1]);
        ov94_0223C4C0(param0, 5, 5);
        param0->unk_2C = 2;
        Sound_PlayEffect(1500);
        break;
    }

    return 3;
}

static int ov94_02241B2C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D8 = ov94_022427C0(param0, &param0->unk_10CC, &param0->unk_F9C[1], param0->unk_B90, param0->unk_B94, param0->unk_10E4, param0->unk_00->unk_10);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 6;

    return 3;
}

int ov94_02241B80(UnkStruct_ov94_0223BA88_sub3 *param0, int param1)
{
    switch (param1) {
    case 0:
        param0->unk_02 = 0 + 1;
        return 1;
        break;
    case 254:
        param0->unk_02 = 1 + 1;
        return 1;
        break;
    case 255:
        param0->unk_02 = 2 + 1;
        return 1;
        break;
    }

    return 0;
}

static int ov94_02241BAC(UnkStruct_ov94_0223FD4C *param0)
{
    u32 v0;
    int v1;

    switch (v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        sub_02001384(param0->unk_10D8, &param0->unk_10E4->unk_0A, &param0->unk_10E4->unk_08);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[1], 0);
        BGL_DeleteWindow(&param0->unk_F9C[0]);
        BGL_DeleteWindow(&param0->unk_F9C[1]);
        param0->unk_2C = 0;
        Sound_PlayEffect(1500);
        ov94_02242AC4(&param0->unk_111C, param0->unk_10E4->unk_06 + param0->unk_10E4->unk_04, param0->unk_10E4->unk_0A, param0->unk_10E4->unk_08);
        break;
    default:
        sub_02001384(param0->unk_10D8, &param0->unk_10E4->unk_0A, &param0->unk_10E4->unk_08);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);
        Window_Clear(&param0->unk_F9C[1], 0);
        BGL_DeleteWindow(&param0->unk_F9C[0]);
        BGL_DeleteWindow(&param0->unk_F9C[1]);
        param0->unk_B74.unk_00 = v0;
        Sound_PlayEffect(1500);
        param0->unk_10E4->unk_20 = PokemonPersonalData_GetSpeciesValue(v0, 18);

        if (ov94_02241B80(&param0->unk_B74, param0->unk_10E4->unk_20)) {
            param0->unk_2C = 10;
            v1 = param0->unk_B74.unk_02;
        } else {
            param0->unk_2C = 7;
            v1 = 3;
        }

        ov94_022422D4(param0->unk_B90, param0->unk_B94, param0->unk_B8C, &param0->unk_FCC[0], param0->unk_B74.unk_00, v1, -1);
        ov94_02242AC4(&param0->unk_111C, param0->unk_10E4->unk_06 + param0->unk_10E4->unk_04, param0->unk_10E4->unk_0A, param0->unk_10E4->unk_08);
        break;
    }

    return 3;
}

static int ov94_02241D08(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0224158C(param0, 10, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 16, 8);

    BGL_AddWindow(param0->unk_04, &param0->unk_F9C[0], 0, 21, 10, 10, 8, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 11 * 2 * 6));
    BGL_FillWindow(&param0->unk_F9C[0], 0x0);

    return 3;
}

static int ov94_02241D64(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D8 = ov94_02242840(&param0->unk_10CC, &param0->unk_F9C[0], param0->unk_B90);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 9;

    return 3;
}

static int ov94_02241DA0(UnkStruct_ov94_0223FD4C *param0)
{
    u32 v0;

    switch (v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 0xfffffffe:
        sub_02001384(param0->unk_10D8, NULL, NULL);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);
        sub_0200E084(&param0->unk_F5C, 0);
        BGL_DeleteWindow(&param0->unk_F9C[0]);
        Sound_PlayEffect(1500);
        param0->unk_2C = 0;
        break;

    case 0:
    case 1:
    case 2:
        sub_02001384(param0->unk_10D8, NULL, NULL);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);
        BGL_DeleteWindow(&param0->unk_F9C[0]);
        Sound_PlayEffect(1500);
        param0->unk_B74.unk_02 = v0 + 1;
        param0->unk_2C = 10;
        ov94_022422D4(param0->unk_B90, param0->unk_B94, param0->unk_B8C, &param0->unk_FCC[0], param0->unk_B74.unk_00, param0->unk_B74.unk_02, -1);
        break;
    }

    return 3;
}

static int ov94_02241E8C(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0224158C(param0, 11, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 16, 11);

    BGL_AddWindow(param0->unk_04, &param0->unk_F9C[0], 0, 15, 5, 16, 13, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 11 * 2 * 6));
    BGL_FillWindow(&param0->unk_F9C[0], 0x0);

    return 3;
}

static int ov94_02241EE8(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D8 = ov94_022428B0(&param0->unk_10CC, &param0->unk_F9C[0], param0->unk_B90, 0);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 12;

    return 3;
}

static int ov94_02241F28(UnkStruct_ov94_0223FD4C *param0)
{
    u32 v0;

    switch (v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
    case 12:
        sub_02001384(param0->unk_10D8, NULL, NULL);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);
        sub_0200E084(&param0->unk_F5C, 0);
        BGL_DeleteWindow(&param0->unk_F9C[0]);
        Sound_PlayEffect(1500);

        if (ov94_02241B80(&param0->unk_B74, param0->unk_10E4->unk_20)) {
            param0->unk_2C = 0;
        } else {
            param0->unk_2C = 7;
        }
        break;
    default:
        Sound_PlayEffect(1500);
        sub_02001384(param0->unk_10D8, NULL, NULL);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);
        BGL_DeleteWindow(&param0->unk_F9C[0]);
        ov94_02242934(&param0->unk_B74, v0, 0);
        param0->unk_2C = 13;
        ov94_022422D4(param0->unk_B90, param0->unk_B94, param0->unk_B8C, &param0->unk_FCC[0], param0->unk_B74.unk_00, param0->unk_B74.unk_02, ov94_02242970(param0->unk_B74.unk_03, param0->unk_B74.unk_04, 0));
        break;
    }

    return 3;
}

static int ov94_02242040(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0224158C(param0, 23, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 16, 14);

    return 3;
}

static int ov94_02242068(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D0 = ov94_0223C3C0(param0->unk_04, 15, ((((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 11 * 2 * 6) + 16 * 13));
    param0->unk_2C = 15;

    return 3;
}

static int ov94_0224208C(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = sub_02002114(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            ov94_0223C4C0(param0, 5, 5);
            param0->unk_2C = 2;
        } else {
            ov94_0223C4C0(param0, 7, 7);
            param0->unk_2C = 2;
            param0->unk_1110 = 1;
            ov94_02242668(&param0->unk_12C, param0);
        }
    }

    return 3;
}

static int ov94_022420E4(UnkStruct_ov94_0223FD4C *param0)
{
    if (param0->unk_18 == 0) {
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 62);
        param0->unk_1110 = 1;
    } else {
        sub_0200F174(3, 0, 0, 0x0, 6, 1, 62);
    }

    param0->unk_2C = 0;

    return 4;
}

static int ov94_02242138(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

static TextColor Unk_ov94_02246920[] = {
    TEXT_COLOR(5, 6, 0),
    TEXT_COLOR(3, 4, 0)
};

void ov94_02242158(Window *param0, MessageLoader *param1, int param2, int param3, int param4, TextColor param5)
{
    Strbuf *v0;

    if (param2 != 0) {
        v0 = MessageLoader_GetNewStrbuf(param1, param2);
        ov94_02245900(param0, v0, 0, param4, param3, param5);
        Strbuf_Free(v0);
    }
}

void ov94_0224218C(Window *param0, MessageLoader *param1, MessageLoader *param2, int param3, int param4, int param5, TextColor param6)
{
    Strbuf *v0;

    if (param3 != 0) {
        v0 = MessageLoader_GetNewStrbuf(param1, param3);
        ov94_02245900(param0, v0, 0, param5, param4, param6);
        Strbuf_Free(v0);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param2, 167);
        ov94_02245900(param0, v0, 0, param5, param4, param6);
        Strbuf_Free(v0);
    }
}

static TextColor ov94_022421E8(int param0, u32 param1)
{
    if (param0 == 1) {
        return Unk_ov94_02246920[0];
    } else if (param0 == 2) {
        return Unk_ov94_02246920[1];
    }

    return param1;
}

const int Unk_ov94_02245FD8[] = {
    0x76,
    0x77,
    0x78,
    0x76
};

void ov94_02242204(Window *param0, MessageLoader *param1, int param2, int param3, int param4, int param5, u32 param6)
{
    Strbuf *v0;

    if ((param3 == 0) && (param2 == 3)) {
        return;
    }

    v0 = MessageLoader_GetNewStrbuf(param1, Unk_ov94_02245FD8[param2]);

    if (param5 > 3) {
        ov94_02245900(param0, v0, param5, param4, 0, ov94_022421E8(param2, param6));
    } else {
        ov94_02245900(param0, v0, 0, param4, param5, ov94_022421E8(param2, param6));
    }

    Strbuf_Free(v0);
}

void ov94_0224226C(Window *param0, MessageLoader *param1, int param2, int param3, int param4, u32 param5, int param6, int param7)
{
    Strbuf *v0;
    if (param2 != -1) {
        const UnkStruct_ov94_022460AC *v1;
        if (param6 == 0) {
            v1 = Unk_ov94_0224610C;
        } else {
            v1 = Unk_ov94_022460AC;
        }
        v0 = MessageLoader_GetNewStrbuf(param1, v1[param2].unk_00);
        ov94_02245900(param0, v0, param7, param4, param3, param5);
        Strbuf_Free(v0);
    }
}

void ov94_022422B8(Window *param0, MessageLoader *param1, int param2, int param3, int param4, u32 param5, int param6)
{
    ov94_0224226C(param0, param1, param2, param3, param4, param5, param6, 0);
}

void ov94_022422D4(MessageLoader *param0, MessageLoader *param1, StringTemplate *param2, Window param3[], int param4, int param5, int param6)
{
    Strbuf *v0;
    int v1;

    v0 = MessageLoader_GetNewStrbuf(param0, 97);
    ov94_02245900(&param3[0], v0, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    for (v1 = 1; v1 < 3; v1++) {
        BGL_FillWindow(&param3[v1], 0x0);
    }

    ov94_02242158(&param3[1], param1, param4, 0, 0, TEXT_COLOR(15, 2, 0));

    if ((param5 == 1) || (param5 == 2)) {
        ov94_02242204(&param3[1], param0, param5, 0, 0, 70, TEXT_COLOR(15, 2, 0));
    } else {
        (void)0;
    }

    ov94_022422B8(&param3[2], param0, param6, 2, 0, TEXT_COLOR(15, 2, 0), 0);
    Strbuf_Free(v0);
}

void ov94_02242368(MessageLoader *param0, MessageLoader *param1, StringTemplate *param2, Window param3[], int param4, int param5, int param6)
{
    Strbuf *v0;
    int v1;

    v0 = MessageLoader_GetNewStrbuf(param0, 97);
    ov94_02245900(&param3[0], v0, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    for (v1 = 1; v1 < 3; v1++) {
        BGL_FillWindow(&param3[v1], 0x0);
    }

    ov94_02242158(&param3[1], param1, param4, 0, 0, TEXT_COLOR(15, 2, 0));

    if ((param5 == 1) || (param5 == 2)) {
        ov94_02242204(&param3[1], param0, param5, 0, 0, 70, TEXT_COLOR(15, 2, 0));
    } else {
        (void)0;
    }

    ov94_022422B8(&param3[2], param0, param6, 2, 0, TEXT_COLOR(15, 2, 0), 0);
    Strbuf_Free(v0);
}

static void ov94_022423FC(MessageLoader *param0, StringTemplate *param1, Window param2[], BoxPokemon *param3, UnkStruct_ov94_0223BA88_sub2 *param4)
{
    Strbuf *v0, *v1;
    Strbuf *v2 = Strbuf_Init(10 + 1, 62);
    Strbuf *v3 = Strbuf_Init(10 + 1, 62);
    int v4, v5, v6;

    BoxPokemon_GetValue(param3, MON_DATA_NICKNAME_STRBUF, v2);

    v4 = BoxPokemon_GetValue(param3, MON_DATA_GENDER, NULL) + 1;
    v5 = BoxPokemon_GetLevel(param3);
    v0 = MessageLoader_GetNewStrbuf(param0, 100);

    StringTemplate_SetNumber(param1, 3, v5, 3, 0, 1);
    v1 = MessageUtil_ExpandedStrbuf(param1, param0, 102, 62);

    if (v4 != 3) {
        MessageLoader_GetStrbuf(param0, Unk_ov94_02245FD8[v4], v3);
    }

    for (v6 = 0; v6 < 3; v6++) {
        BGL_FillWindow(&param2[v6], 0x0);
    }

    ov94_02245900(&param2[0], v0, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param2[1], v2, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param2[2], v1, 0, 0, 2, TEXT_COLOR(15, 2, 0));

    if (v4 != 3) {
        ov94_02245900(&param2[1], v3, 70, 0, 0, Unk_ov94_02246920[v4 - 1]);
    }

    param4->unk_00 = BoxPokemon_GetValue(param3, MON_DATA_SPECIES, NULL);
    param4->unk_02 = v4;
    param4->unk_03 = v5;

    Strbuf_Free(v1);
    Strbuf_Free(v3);
    Strbuf_Free(v2);
    Strbuf_Free(v0);
}

u16 *ov94_Pokedex_Alphabetical(int heapID, int unused, int *pokedexLength)
{
    u32 pokedexSize;
    u16 *pokedexAlphabetical;

    pokedexAlphabetical = sub_02007068(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA, 13, 0, heapID, 0, &pokedexSize);
    *pokedexLength = pokedexSize / (sizeof(u16));

    return pokedexAlphabetical;
}

u8 *ov94_02242548(int param0)
{
    u32 v0, v1, v2;
    u16 *v3;
    u8 *v4 = Heap_AllocFromHeap(62, NATIONAL_DEX_COUNT + 1);

    MI_CpuClearFast(v4, NATIONAL_DEX_COUNT + 1);

    v3 = sub_02007068(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA, 12, 0, param0, 0, &v0);
    v1 = v0 / (sizeof(u16));

    for (v2 = 0; v2 < v1; v2++) {
        if (v3[v2] < NATIONAL_DEX_COUNT + 1) {
            v4[v3[v2]] = 1;
        }
    }

    Heap_FreeToHeap(v3);

    return v4;
}

void ov94_022425A8(UnkStruct_ov94_0223BA88 *param0, UnkStruct_ov94_0223FD4C *param1)
{
    u16 *v0;

    if (ov94_022411D0(param1->unk_110)) {
        Pokemon_SetShayminForm((Pokemon *)(param1->unk_114), 0);

        MI_CpuCopyFast(param1->unk_114, param0->unk_00.unk_00, Pokemon_StructSize());
    } else {
        BoxPokemon_SetShayminForm(param1->unk_114, 0);
        Pokemon_FromBoxPokemon(param1->unk_114, (Pokemon *)param0->unk_00.unk_00);
    }

    sub_020021D0(param0->unk_10C, TrainerInfo_Name(param1->unk_00->unk_1C), 8);

    param0->unk_11C = TrainerInfo_ID_LowHalf(param1->unk_00->unk_1C);
    param0->unk_11E = sub_0202C8C0(param1->unk_00->unk_18);
    param0->unk_11F = sub_0202C8C4(param1->unk_00->unk_18);
    param0->unk_120 = TrainerInfo_Appearance(param1->unk_00->unk_1C);
    param0->unk_F6 = TrainerInfo_Gender(param1->unk_00->unk_1C);
    param0->unk_122 = GAME_VERSION;
    param0->unk_123 = GAME_LANGUAGE;
}

static void ov94_02242668(UnkStruct_ov94_0223BA88 *param0, UnkStruct_ov94_0223FD4C *param1)
{
    ov94_022425A8(param0, param1);

    param0->unk_EC = param1->unk_B70;
    param0->unk_F0 = param1->unk_B74;
}

static const UnkStruct_ov84_02240FA8 Unk_ov94_0224608C = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x9,
    0x6,
    0x4,
    0x8,
    0x0,
    0x2,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x0,
    NULL
};

BmpList *ov94_022426A8(UnkStruct_ov94_0223FD4C *param0, ResourceMetadata **param1, Window *param2, MessageLoader *param3)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1;

    *param1 = sub_02013A04(9, 62);

    for (v1 = 0; v1 < 9; v1++) {
        sub_02013A4C(*param1, param3, 104 + v1, v1 + 1);
    }

    v0 = Unk_ov94_0224608C;
    v0.unk_00 = *param1;
    v0.unk_0C = param2;

    Window_Show(param2, 0, (1 + (18 + 12)), 11);

    return sub_0200112C(&v0, param0->unk_10E4->unk_06, param0->unk_10E4->unk_04, 62);
}

static u16 Unk_ov94_02246928[] = {
    0x0,
    0x57,
    0x88,
    0xBF,
    0xEB,
    0x12F,
    0x168,
    0x1C9,
    0x1E7,
    0x1ED
};

static int ov94_02242718(ResourceMetadata **param0, MessageLoader *param1, MessageLoader *param2, u16 *param3, u8 *param4, int param5, int param6, PokedexData *param7)
{
    int v0, v1, v2 = 0;
    int v3 = Unk_ov94_02246928[param6 + 1] - Unk_ov94_02246928[param6];
    int v4 = 1;

    v1 = Unk_ov94_02246928[param6];

    for (v0 = 0; v0 < v3; v0++) {
        if (v4) {
            if (sub_02026FE8(param7, param3[v1 + v0])) {
                v2++;
            }
        } else {
            if (param4[param3[v1 + v0]]) {
                if (sub_02026FE8(param7, param3[v1 + v0])) {
                    v2++;
                }
            }
        }
    }

    *param0 = sub_02013A04(v2 + 1, 62);

    for (v0 = 0; v0 < v3; v0++) {
        if (v4) {
            if (sub_02026FE8(param7, param3[v1 + v0])) {
                sub_02013A4C(*param0, param1, param3[v1 + v0], param3[v1 + v0]);
            }
        } else {
            if (param4[param3[v1 + v0]]) {
                if (sub_02026FE8(param7, param3[v1 + v0])) {
                    sub_02013A4C(*param0, param1, param3[v1 + v0], param3[v1 + v0]);
                }
            }
        }
    }

    sub_02013A4C(*param0, param2, 121, 0xfffffffe);

    return v2 + 1;
}

BmpList *ov94_022427C0(UnkStruct_ov94_0223FD4C *param0, ResourceMetadata **param1, Window *param2, MessageLoader *param3, MessageLoader *param4, UnkStruct_ov94_0223FD4C_sub3 *param5, PokedexData *param6)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1, v2, v3;

    BGL_FillWindow(param2, 0xf0f);

    v3 = param5->unk_06 + param5->unk_04;
    v2 = ov94_02242718(param1, param4, param3, param5->unk_18, param5->unk_14, param5->unk_1C, v3, param6);

    v0 = Unk_ov94_0224608C;
    v0.unk_10 = v2;
    v0.unk_00 = *param1;
    v0.unk_0C = param2;

    Window_Show(param2, 0, (1 + (18 + 12)), 11);

    return sub_0200112C(&v0, param0->unk_111C.unk_04[v3], param0->unk_111C.unk_16[v3], 62);
}

static Unk_ov94_0224693C[][2] = {
    { 0x76, 0x2 },
    { 0x77, 0x0 },
    { 0x78, 0x1 },
    { 0x79, 0xFFFFFFFE }
};

BmpList *ov94_02242840(ResourceMetadata **param0, Window *param1, MessageLoader *param2)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1;

    *param0 = sub_02013A04(4, 62);

    for (v1 = 0; v1 < 4; v1++) {
        sub_02013A4C(*param0, param2, Unk_ov94_0224693C[v1][0], Unk_ov94_0224693C[v1][1]);
    }

    v0 = Unk_ov94_0224608C;
    v0.unk_10 = 4;
    v0.unk_00 = *param0;
    v0.unk_0C = param1;

    Window_Show(param1, 0, (1 + (18 + 12)), 11);

    return sub_0200112C(&v0, 0, 0, 62);
}

BmpList *ov94_022428B0(ResourceMetadata **param0, Window *param1, MessageLoader *param2, int param3)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1;
    const UnkStruct_ov94_022460AC *v2;
    int v3;

    if (param3 == 0) {
        v2 = Unk_ov94_0224610C;
        v3 = 13;
    } else {
        v2 = Unk_ov94_022460AC;
        v3 = (NELEMS(Unk_ov94_022460AC));
    }

    *param0 = sub_02013A04(v3, 62);

    for (v1 = 0; v1 < v3; v1++) {
        sub_02013A4C(*param0, param2, v2[v1].unk_00, v1);
    }

    v0 = Unk_ov94_0224608C;
    v0.unk_10 = v3;
    v0.unk_00 = *param0;
    v0.unk_0C = param1;

    Window_Show(param1, 0, (1 + (18 + 12)), 11);

    return sub_0200112C(&v0, 0, 0, 62);
}

void ov94_02242934(UnkStruct_ov94_0223BA88_sub3 *param0, int param1, int param2)
{
    const UnkStruct_ov94_022460AC *v0;

    if (param2 == 0) {
        v0 = Unk_ov94_0224610C;
        GF_ASSERT(param1 < (13 - 1));
    } else {
        v0 = Unk_ov94_022460AC;
        GF_ASSERT(param1 < ((NELEMS(Unk_ov94_022460AC)) - 1));
    }

    param0->unk_03 = v0[param1].unk_04;
    param0->unk_04 = v0[param1].unk_06;
}

int ov94_02242970(int param0, int param1, int param2)
{
    int v0;
    int v1;
    const UnkStruct_ov94_022460AC *v2;

    if (param2 == 0) {
        v2 = Unk_ov94_0224610C;
        v1 = 13;
    } else {
        v2 = Unk_ov94_022460AC;
        v1 = (NELEMS(Unk_ov94_022460AC));
    }

    for (v0 = 0; v0 < v1; v0++) {
        if ((v2[v0].unk_04 == param0) && (v2[v0].unk_06 == param1)) {
            return v0;
        }
    }

    return 0;
}

BmpList *ov94_022429B4(ResourceMetadata **param0, Window *param1, MessageLoader *param2, MessageLoader *param3)
{
    UnkStruct_ov84_02240FA8 v0;
    int v1;
    int v2 = NELEMS(Unk_ov94_02246174) + 2;

    *param0 = sub_02013A04(v2, 62);

    sub_02013A4C(*param0, param3, 167, 0);

    for (v1 = 1; v1 < v2 - 1; v1++) {
        sub_02013A4C(*param0, param2, Unk_ov94_02246174[v1 - 1], v1);
    }

    sub_02013A4C(*param0, param3, 168, v2 - 1);

    v0 = Unk_ov94_0224608C;
    v0.unk_10 = v2;
    v0.unk_00 = *param0;
    v0.unk_0C = param1;

    Window_Show(param1, 1, (1 + (18 + 12)), 11);

    return sub_0200112C(&v0, 0, 0, 62);
}

void ov94_02242A44(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    if (param1 == 0) {
        param0->unk_11B0 = 0;
    } else if (param1 - 1 < NELEMS(Unk_ov94_02246174)) {
        param0->unk_11B0 = Unk_ov94_02246174[param1 - 1];
    }
}

u32 ov94_02242A6C(BmpList *param0, u16 *param1)
{
    u16 v0;
    u32 v1 = sub_02001288(param0);

    sub_020014D0(param0, &v0);

    if (*param1 != v0) {
        if (*param1 != 0xffff) {
            Sound_PlayEffect(1500);
        }

        *param1 = v0;
    }

    return v1;
}

void ov94_02242AAC(UnkStruct_ov94_02242AAC *param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        param0->unk_04[v0] = 0;
        param0->unk_16[v0] = 0;
    }

    param0->unk_00 = 0;
    param0->unk_02 = 0;
}

void ov94_02242AC4(UnkStruct_ov94_02242AAC *param0, int param1, int param2, int param3)
{
    param0->unk_04[param1] = param2;
    param0->unk_16[param1] = param3;
}
