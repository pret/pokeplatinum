#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "constdata/const_020F410C.h"

#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_0208D1D4.h"
#include "struct_defs/struct_0208D7BC.h"
#include "struct_defs/struct_02098D38.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02002B7C.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200C440.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02015F84.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "unk_020279FC.h"
#include "unk_020393C8.h"
#include "unk_020507CC.h"
#include "unk_0206A8DC.h"
#include "pokemon.h"
#include "move_table.h"
#include "party.h"
#include "item.h"
#include "unk_0208C098.h"
#include "unk_0208C324.h"
#include "unk_0208EA44.h"
#include "unk_0208FCF8.h"
#include "unk_020916B4.h"
#include "unk_020920C0.h"
#include "unk_020923C0.h"
#include "unk_02094EDC.h"
#include "unk_020989DC.h"

static int sub_0208C330(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208C488(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208C5A0(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208C9C8(UnkStruct_0208D7BC * param0);
static int sub_0208CA00(UnkStruct_0208D7BC * param0);
static int sub_0208CB38(UnkStruct_0208D7BC * param0);
static int sub_0208CB4C(UnkStruct_0208D7BC * param0);
static int sub_0208CB60(UnkStruct_0208D7BC * param0);
static int sub_0208CB74(UnkStruct_0208D7BC * param0);
static int sub_0208CB88(UnkStruct_0208D7BC * param0);
static int sub_0208CC6C(UnkStruct_0208D7BC * param0);
static int sub_0208CD44(UnkStruct_0208D7BC * param0);
static int sub_0208CE54(UnkStruct_0208D7BC * param0);
static int sub_0208CE70(UnkStruct_0208D7BC * param0);
static int sub_0208CE84(UnkStruct_0208D7BC * param0);
static int sub_0208CE98(UnkStruct_0208D7BC * param0);
static int sub_0208CF0C(UnkStruct_0208D7BC * param0);
static int sub_0208CF78(UnkStruct_0208D7BC * param0);
static int sub_0208D114(UnkStruct_0208D7BC * param0);
static int sub_0208D164(UnkStruct_0208D7BC * param0);
static u8 sub_0208D17C(UnkStruct_0208D7BC * param0);
static u8 sub_0208D18C(UnkStruct_0208D7BC * param0);
static void sub_0208C638(void);
static void sub_0208C658(BGL * param0);
static void sub_0208C76C(BGL * param0);
static void sub_0208C7AC(UnkStruct_0208D7BC * param0, NARC * param1);
static void sub_0208C86C(void);
static void sub_0208C604(void * param0);
static void sub_0208C884(UnkStruct_0208D7BC * param0);
static void sub_0208C950(UnkStruct_0208D7BC * param0);
static void sub_0208D1A4(UnkStruct_0208D7BC * param0);
static void sub_0208D1D4(UnkStruct_0208D7BC * param0, BoxPokemon * param1, UnkStruct_0208D1D4 * param2);
static void sub_0208D200(UnkStruct_0208D7BC * param0, Pokemon * param1, UnkStruct_0208D1D4 * param2);
static void sub_0208D678(UnkStruct_0208D7BC * param0);
static void sub_0208D618(UnkStruct_0208D7BC * param0);
static void sub_0208D7EC(UnkStruct_0208D7BC * param0, u8 param1);
static void sub_0208D898(UnkStruct_0208D7BC * param0, s8 param1);
static u8 sub_0208D920(UnkStruct_0208D7BC * param0);
static void sub_0208D748(UnkStruct_0208D7BC * param0);
static void sub_0208D948(UnkStruct_0208D7BC * param0);
static void sub_0208D9D0(UnkStruct_0208D7BC * param0);
static void sub_0208DA84(UnkStruct_0208D7BC * param0);
static void sub_0208DB10(UnkStruct_0208D7BC * param0, s8 param1);
static s8 sub_0208DBC4(UnkStruct_0208D7BC * param0, s8 param1);
static s8 sub_0208DC1C(UnkStruct_0208D7BC * param0, s8 param1);
static s8 sub_0208DC84(UnkStruct_0208D7BC * param0, s8 param1);
static s8 sub_0208DCE0(UnkStruct_0208D7BC * param0, s8 param1);
static u8 sub_0208DD8C(UnkStruct_0208D7BC * param0);
static u8 sub_0208DEA4(UnkStruct_0208D7BC * param0);
static u8 sub_0208DF94(UnkStruct_0208D7BC * param0, s8 param1);
static void sub_0208DFF4(UnkStruct_0208D7BC * param0);
static void sub_0208E0DC(UnkStruct_0208D7BC * param0);
static void sub_0208E190(UnkStruct_0208D7BC * param0);
static void sub_0208E07C(UnkStruct_0208D7BC * param0, u32 param1);
static void sub_0208E0B8(UnkStruct_0208D7BC * param0, u32 param1);
static void sub_0208E4EC(UnkStruct_0208D7BC * param0);
static void sub_0208E508(UnkStruct_0208D7BC * param0);
static u8 sub_0208E208(UnkStruct_0208D7BC * param0);
static u8 sub_0208E308(UnkStruct_0208D7BC * param0);
static void sub_0208E498(UnkStruct_0208D7BC * param0, u32 param1);
static void sub_0208E46C(UnkStruct_0208D7BC * param0);
static u8 sub_0208E57C(UnkStruct_0208D7BC * param0);
static u8 sub_0208E6A8(UnkStruct_0208D7BC * param0);
static void sub_0208E794(UnkStruct_0208D7BC * param0, s8 param1);
u8 sub_0208E904(UnkStruct_0208D7BC * param0, u8 param1);
static int sub_0208E958(UnkStruct_0208D7BC * param0);

const UnkStruct_0208BE5C Unk_020F410C = {
    sub_0208C330,
    sub_0208C488,
    sub_0208C5A0,
    0xFFFFFFFF
};

BOOL sub_0208C324 (SaveData * param0)
{
    return sub_0206ADCC(sub_020507E4(param0));
}

static int sub_0208C330 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0208D7BC * v0;
    NARC * v1;

    sub_02017798(NULL, NULL);
    sub_020177A4();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    sub_02017DD4(4, 8);
    Heap_Create(3, 19, 0x40000);

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PST_GRA, 19);
    v0 = sub_0200681C(param0, sizeof(UnkStruct_0208D7BC), 19);

    memset(v0, 0, sizeof(UnkStruct_0208D7BC));

    v0->unk_24C = sub_02006840(param0);
    v0->unk_00 = sub_02018340(19);
    v0->unk_2B4.unk_30 = sub_02015F84(19, 1, 1);
    v0->unk_6A0 = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, 19);

    sub_02002BEC(0, 19);
    sub_0201E3D8();
    sub_0201E450(4);
    sub_0208D748(v0);
    sub_0208C638();
    sub_0208C658(v0->unk_00);
    sub_0208C7AC(v0, v1);
    sub_0208C86C();
    sub_020916B4(v0);
    sub_0208C884(v0);
    sub_0208D1A4(v0);
    sub_0208EA44(v0);
    sub_0208EB64(v0);
    sub_02091F8C(v0);
    sub_0208EE3C(v0);
    sub_0208EE9C(v0);
    sub_0208FCF8(v0);
    sub_0208D678(v0);
    sub_020920C0(v0);
    sub_020917E0(v0);
    sub_02017798(sub_0208C604, v0);
    GXLayers_TurnBothDispOn();
    sub_02004550(61, 0, 0);
    sub_020397E4();
    NARC_dtor(v1);

    return 1;
}

static int sub_0208C488 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0208D7BC * v0 = sub_0200682C(param0);

    switch (*param1) {
    case 0:
        sub_0208C120(0, 19);
        *param1 = 1;
        break;
    case 1:
        *param1 = sub_0208C9C8(v0);
        break;
    case 2:
        *param1 = sub_0208CA00(v0);
        break;
    case 3:
        *param1 = sub_0208CB38(v0);
        break;
    case 4:
        *param1 = sub_0208CB4C(v0);
        break;
    case 5:
        *param1 = sub_0208CB60(v0);
        break;
    case 6:
        *param1 = sub_0208CB74(v0);
        break;
    case 7:
        *param1 = sub_0208CB88(v0);
        break;
    case 8:
        *param1 = sub_0208CC6C(v0);
        break;
    case 9:
        *param1 = sub_0208CD44(v0);
        break;
    case 10:
        *param1 = sub_0208CE54(v0);
        break;
    case 11:
        *param1 = sub_0208CE70(v0);
        break;
    case 12:
        *param1 = sub_0208CE84(v0);
        break;
    case 13:
        *param1 = sub_0208CE98(v0);
        break;
    case 14:
        *param1 = sub_0208CF0C(v0);
        break;
    case 15:
        *param1 = sub_0208CF78(v0);
        break;
    case 16:
        *param1 = sub_0208D114(v0);
        break;
    case 17:
        *param1 = sub_0208D164(v0);
        break;
    case 18:
        *param1 = sub_0208D17C(v0);
        break;
    case 19:
        if (sub_0208D18C(v0) == 1) {
            return 1;
        }
        break;
    }

    sub_0208EB14(v0);
    sub_0208F3B0(v0);
    sub_0208FB30(v0);
    sub_0200C7EC(v0->unk_418);
    sub_02091750(v0);

    return 0;
}

static int sub_0208C5A0 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0208D7BC * v0 = sub_0200682C(param0);

    sub_02017798(NULL, NULL);
    sub_020917B0(v0);
    sub_0208EAF4(v0);
    sub_0208FE88(v0);
    sub_0208C76C(v0->unk_00);
    sub_0201E530();
    sub_0201DC3C();
    sub_0208C950(v0);
    NARC_dtor(v0->unk_6A0);
    sub_02002C28(0);

    G2_BlendNone();

    sub_02006830(param0);
    Heap_Destroy(19);

    return 1;
}

static void sub_0208C604 (void * param0)
{
    UnkStruct_0208D7BC * v0 = param0;

    sub_0201C2B8(v0->unk_00);
    sub_02008A94(v0->unk_2B4.unk_04);
    sub_0201DCAC();
    sub_0200C800();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void sub_0208C638 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_B,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&v0);
}

static void sub_0208C658 (BGL * param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
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
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
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
            0x2000,
            0,
            4,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v2, 0);
        sub_02019EBC(param0, 2);
        sub_0201C63C(param0, 2, 0, 136);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v3, 0);
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
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v4, 0);
        sub_02019EBC(param0, 4);
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
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v5, 0);
    }

    sub_02019690(1, 32, 0, 19);
    sub_02019690(4, 32, 0, 19);
}

static void sub_0208C76C (BGL * param0)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);

    Heap_FreeToHeapExplicit(19, param0);
}

static void sub_0208C7AC (UnkStruct_0208D7BC * param0, NARC * param1)
{
    sub_020070E8(param1, 0, param0->unk_00, 3, 0, 0, 0, 19);
    sub_0200710C(param1, 3, param0->unk_00, 3, 0, 0, 0, 19);
    sub_02007130(param1, 1, 0, 0, 0, 19);

    sub_0200710C(param1, 11, param0->unk_00, 2, 0, 0, 0, 19);

    sub_020070E8(param1, 2, param0->unk_00, 4, 0, 0, 0, 19);
    sub_020070E8(param1, 16, param0->unk_00, 5, 0, 0, 0, 19);
    sub_0200710C(param1, 15, param0->unk_00, 5, 0, 0, 0, 19);
    sub_02007130(param1, 14, 4, 0, 0, 19);
}

static void sub_0208C86C (void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 23, 8);
}

static void sub_0208C884 (UnkStruct_0208D7BC * param0)
{
    param0->unk_688 = MessageLoader_Init(0, 26, 455, 19);
    param0->unk_68C = MessageLoader_Init(1, 26, 535, 19);
    param0->unk_684 = sub_0200C440(1, 2, 0, 19);
    param0->unk_690 = sub_0200B358(19);
    param0->unk_250.unk_00 = Strbuf_Init(12, 19);
    param0->unk_250.unk_04 = Strbuf_Init(12, 19);
    param0->unk_250.unk_08 = Strbuf_Init(8, 19);
    param0->unk_694 = Strbuf_Init(128, 19);
    param0->unk_69C = MessageLoader_Init(0, 26, 647, 19);
    param0->unk_698 = Strbuf_Init(7 + 1, 19);

    if (param0->unk_24C->unk_08 != NULL) {
        Strbuf_CopyChars(param0->unk_698, param0->unk_24C->unk_08);
    }
}

static void sub_0208C950 (UnkStruct_0208D7BC * param0)
{
    MessageLoader_Free(param0->unk_69C);
    MessageLoader_Free(param0->unk_68C);
    MessageLoader_Free(param0->unk_688);
    sub_0200C560(param0->unk_684);
    sub_0200B3F0(param0->unk_690);
    Strbuf_Free(param0->unk_250.unk_00);
    Strbuf_Free(param0->unk_250.unk_04);
    Strbuf_Free(param0->unk_250.unk_08);
    Strbuf_Free(param0->unk_694);
    Strbuf_Free(param0->unk_698);
}

static int sub_0208C9C8 (UnkStruct_0208D7BC * param0)
{
    if (ScreenWipe_Done() == 1) {
        sub_02092028(param0);
        sub_0208D618(param0);

        if (param0->unk_24C->unk_12 == 2) {
            return 9;
        } else if (param0->unk_24C->unk_12 == 4) {
            return 15;
        } else {
            return 2;
        }
    }

    return 1;
}

static int sub_0208CA00 (UnkStruct_0208D7BC * param0)
{
    if (param0->unk_6A7_4 == 1) {
        param0->unk_24C->unk_17 = 1;
        return 18;
    }

    if (gCoreSys.unk_4C & PAD_KEY_LEFT) {
        sub_0208D898(param0, -1);
        return 2;
    }

    if (gCoreSys.unk_4C & PAD_KEY_RIGHT) {
        sub_0208D898(param0, 1);
        return 2;
    }

    if (gCoreSys.unk_4C & PAD_KEY_UP) {
        sub_0208DB10(param0, -1);
        return 2;
    }

    if (gCoreSys.unk_4C & PAD_KEY_DOWN) {
        sub_0208DB10(param0, 1);
        return 2;
    }

    if (gCoreSys.padInput & PAD_BUTTON_B) {
        Sound_PlayEffect(1501);
        param0->unk_24C->unk_17 = 1;
        return 18;
    }

    if (gCoreSys.padInput & PAD_BUTTON_A) {
        if ((param0->unk_24C->unk_12 == 3) && (param0->unk_6A4 == 4)) {
            Sound_PlayEffect(1501);
            return sub_0208E958(param0);
        }

        if (param0->unk_6A4 == 3) {
            Sound_PlayEffect(1692);
            param0->unk_6A6 = 0;
            return 3;
        } else if (param0->unk_6A4 == 5) {
            Sound_PlayEffect(1692);
            param0->unk_6A6 = 0;
            return 5;
        } else if (param0->unk_6A4 == 6) {
            if (param0->unk_6B1 != 0) {
                Sound_PlayEffect(1501);
                param0->unk_6A6 = 0;
                return 11;
            }
        } else if (param0->unk_6A4 == 7) {
            Sound_PlayEffect(1501);
            param0->unk_24C->unk_17 = 1;
            return 18;
        }
    }

    if (sub_0208D920(param0) == 1) {
        param0->unk_6A6 = 2;
        return 14;
    }

    return 2;
}

static int sub_0208CB38 (UnkStruct_0208D7BC * param0)
{
    if (sub_0208DD8C(param0) == 1) {
        return 7;
    }

    return 3;
}

static int sub_0208CB4C (UnkStruct_0208D7BC * param0)
{
    if (sub_0208DEA4(param0) == 1) {
        return 2;
    }

    return 4;
}

static int sub_0208CB60 (UnkStruct_0208D7BC * param0)
{
    if (sub_0208E208(param0) == 1) {
        return 7;
    }

    return 5;
}

static int sub_0208CB74 (UnkStruct_0208D7BC * param0)
{
    if (sub_0208E308(param0) == 1) {
        return 2;
    }

    return 6;
}

static int sub_0208CB88 (UnkStruct_0208D7BC * param0)
{
    if (gCoreSys.padInput & PAD_KEY_UP) {
        if (sub_0208DF94(param0, -1) == 1) {
            Sound_PlayEffect(1500);
            sub_0208DFF4(param0);
        }

        return 7;
    }

    if (gCoreSys.padInput & PAD_KEY_DOWN) {
        if (sub_0208DF94(param0, 1) == 1) {
            Sound_PlayEffect(1500);
            sub_0208DFF4(param0);
        }

        return 7;
    }

    if (gCoreSys.padInput & PAD_BUTTON_A) {
        if (param0->unk_6A5_0 == 4) {
            Sound_PlayEffect(1692);
            param0->unk_6A6 = 0;

            if (param0->unk_6A4 == 3) {
                return 4;
            } else {
                return 6;
            }
        } else if (param0->unk_24C->unk_12 != 1) {
            Sound_PlayEffect(1501);
            sub_0208F310(param0);
            param0->unk_6A5_4 = param0->unk_6A5_0;
            return 8;
        }
    }

    if (gCoreSys.padInput & PAD_BUTTON_B) {
        Sound_PlayEffect(1692);
        param0->unk_6A6 = 0;

        if (param0->unk_6A4 == 3) {
            return 4;
        } else {
            return 6;
        }
    }

    return 7;
}

static int sub_0208CC6C (UnkStruct_0208D7BC * param0)
{
    if (gCoreSys.padInput & PAD_KEY_UP) {
        if (sub_0208DF94(param0, -1) == 1) {
            Sound_PlayEffect(1500);
            sub_0208DFF4(param0);
        }

        return 8;
    }

    if (gCoreSys.padInput & PAD_KEY_DOWN) {
        if (sub_0208DF94(param0, 1) == 1) {
            Sound_PlayEffect(1500);
            sub_0208DFF4(param0);
        }

        return 8;
    }

    if (gCoreSys.padInput & PAD_BUTTON_A) {
        sub_02021CAC(param0->unk_41C[10], 0);

        if ((param0->unk_6A5_0 != 4) && (param0->unk_6A5_0 != param0->unk_6A5_4)) {
            Sound_PlayEffect(1501);
            sub_0208E0DC(param0);
            sub_0208F22C(param0, param0->unk_6A5_0, param0->unk_6A5_4);
            sub_02091474(param0);
            sub_0208DFF4(param0);
        } else {
            Sound_PlayEffect(1501);
        }

        return 7;
    }

    if (gCoreSys.padInput & PAD_BUTTON_B) {
        Sound_PlayEffect(1501);
        sub_02021CAC(param0->unk_41C[10], 0);
        return 7;
    }

    return 8;
}

static int sub_0208CD44 (UnkStruct_0208D7BC * param0)
{
    if (gCoreSys.padInput & PAD_KEY_LEFT) {
        sub_0208D898(param0, -1);
        return 9;
    }

    if (gCoreSys.padInput & PAD_KEY_RIGHT) {
        sub_0208D898(param0, 1);
        return 9;
    }

    if (gCoreSys.padInput & PAD_KEY_UP) {
        if (sub_0208DF94(param0, -1) == 1) {
            Sound_PlayEffect(1500);
            sub_0208DFF4(param0);
        }

        return 9;
    }

    if (gCoreSys.padInput & PAD_KEY_DOWN) {
        if (sub_0208DF94(param0, 1) == 1) {
            Sound_PlayEffect(1500);
            sub_0208DFF4(param0);
        }

        return 9;
    }

    if (gCoreSys.padInput & PAD_BUTTON_A) {
        Sound_PlayEffect(1501);

        if (param0->unk_6A5_0 != 4) {
            if ((Item_IsHMMove(param0->unk_250.unk_34[param0->unk_6A5_0]) == 1) && (param0->unk_24C->unk_18 != 0)) {
                sub_0200D3EC(param0->unk_41C[18], 0);
                sub_0208E46C(param0);
                sub_020914F8(param0);
                return 10;
            }
        }

        param0->unk_24C->unk_16 = param0->unk_6A5_0;
        param0->unk_24C->unk_17 = 0;
        return 18;
    }

    if (gCoreSys.padInput & PAD_BUTTON_B) {
        Sound_PlayEffect(1501);
        param0->unk_24C->unk_16 = 4;
        param0->unk_24C->unk_17 = 1;
        return 18;
    }

    return 9;
}

static int sub_0208CE54 (UnkStruct_0208D7BC * param0)
{
    if (gCoreSys.padInput & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        sub_0208DFF4(param0);
        return 9;
    }

    return 10;
}

static int sub_0208CE70 (UnkStruct_0208D7BC * param0)
{
    if (sub_0208E57C(param0) == 1) {
        return 13;
    }

    return 11;
}

static int sub_0208CE84 (UnkStruct_0208D7BC * param0)
{
    if (sub_0208E6A8(param0) == 1) {
        return 2;
    }

    return 12;
}

static int sub_0208CE98 (UnkStruct_0208D7BC * param0)
{
    if (gCoreSys.unk_4C & PAD_KEY_LEFT) {
        sub_0208E794(param0, -1);
        return 13;
    }

    if (gCoreSys.unk_4C & PAD_KEY_RIGHT) {
        sub_0208E794(param0, 1);
        return 13;
    }

    if (gCoreSys.unk_4C & PAD_KEY_UP) {
        sub_0208E794(param0, -4);
        return 13;
    }

    if (gCoreSys.unk_4C & PAD_KEY_DOWN) {
        sub_0208E794(param0, 4);
        return 13;
    }

    if (gCoreSys.padInput & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        Sound_PlayEffect(1501);
        param0->unk_6A6 = 0;
        return 12;
    }

    return 13;
}

static int sub_0208CF0C (UnkStruct_0208D7BC * param0)
{
    if (sub_0209228C(param0) == 1) {
        return param0->unk_6A6;
    }

    if (param0->unk_6AD == 1) {
        u8 v0 = sub_020923A4(param0, param0->unk_6AE);

        if (v0 == 7) {
            param0->unk_6A7_4 = 1;
        }

        if (param0->unk_250.unk_50_28 == 1) {
            if ((v0 == 1) || (v0 == 7)) {
                sub_0208D7EC(param0, v0);
            }
        } else {
            sub_0208D7EC(param0, v0);
        }
    }

    return 14;
}

static int sub_0208CF78 (UnkStruct_0208D7BC * param0)
{
    if (gCoreSys.padInput & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        BoxPokemon * v0;
        Pokemon * v1;
        u8 v2;

        if (param0->unk_24C->unk_11 == 2) {
            v0 = sub_0208DD48(param0);
            v1 = Pokemon_New(19);
            Pokemon_FromBoxPokemon(v0, v1);
        } else {
            v1 = sub_0208DD48(param0);
        }

        sub_02098EF8(param0->unk_24C->unk_24, v1);

        param0->unk_6A6 = 0;
        v2 = param0->unk_250.unk_45;
        param0->unk_250.unk_45 = (u8)Pokemon_GetValue(v1, MON_DATA_COOL, NULL);

        if (v2 != param0->unk_250.unk_45) {
            param0->unk_6A6 |= 1;
        }

        v2 = param0->unk_250.unk_46;
        param0->unk_250.unk_46 = (u8)Pokemon_GetValue(v1, MON_DATA_BEAUTY, NULL);

        if (v2 != param0->unk_250.unk_46) {
            param0->unk_6A6 |= 2;
        }

        v2 = param0->unk_250.unk_47;
        param0->unk_250.unk_47 = (u8)Pokemon_GetValue(v1, MON_DATA_CUTE, NULL);

        if (v2 != param0->unk_250.unk_47) {
            param0->unk_6A6 |= 4;
        }

        v2 = param0->unk_250.unk_48;
        param0->unk_250.unk_48 = (u8)Pokemon_GetValue(v1, MON_DATA_SMART, NULL);

        if (v2 != param0->unk_250.unk_48) {
            param0->unk_6A6 |= 8;
        }

        v2 = param0->unk_250.unk_49;
        param0->unk_250.unk_49 = (u8)Pokemon_GetValue(v1, MON_DATA_TOUGH, NULL);

        if (v2 != param0->unk_250.unk_49) {
            param0->unk_6A6 |= 16;
        }

        param0->unk_250.unk_4A = (u8)Pokemon_GetValue(v1, MON_DATA_SHEEN, NULL);

        if (param0->unk_24C->unk_11 == 2) {
            Heap_FreeToHeap(v1);
        }

        sub_02002E98(0, 14 * 32, 19);
        sub_0200DD0C(param0->unk_00, 1, (1024 - (18 + 12)), 13, sub_02027B50(param0->unk_24C->unk_04), 19);

        if (param0->unk_6A6 == 0) {
            sub_02091610(param0, 0xfe);
            return 17;
        } else {
            sub_02091D50(param0);
            sub_0208F34C(param0);
            sub_0208F6A4(param0);
            return 16;
        }
    }

    return 15;
}

static int sub_0208D114 (UnkStruct_0208D7BC * param0)
{
    u8 v0;

    if (gCoreSys.padInput & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        for (v0 = 0; v0 < 5; v0++) {
            if ((param0->unk_6A6 & (1 << v0))) {
                sub_02091610(param0, v0);
                param0->unk_6A6 ^= (1 << v0);

                if (param0->unk_6A6 == 0) {
                    return 17;
                }
                break;
            }
        }
    }

    return 16;
}

static int sub_0208D164 (UnkStruct_0208D7BC * param0)
{
    if (gCoreSys.padInput & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return 18;
    }

    return 17;
}

static u8 sub_0208D17C (UnkStruct_0208D7BC * param0)
{
    sub_0208C120(1, 19);
    return 19;
}

static u8 sub_0208D18C (UnkStruct_0208D7BC * param0)
{
    if (ScreenWipe_Done() == 1) {
        return 1;
    }

    return 0;
}

static void sub_0208D1A4 (UnkStruct_0208D7BC * param0)
{
    void * v0 = sub_0208DD48(param0);

    if (param0->unk_24C->unk_11 == 2) {
        sub_0208D1D4(param0, v0, &param0->unk_250);
    } else {
        sub_0208D200(param0, v0, &param0->unk_250);
    }
}

static void sub_0208D1D4 (UnkStruct_0208D7BC * param0, BoxPokemon * param1, UnkStruct_0208D1D4 * param2)
{
    Pokemon * v0 = Pokemon_New(19);

    Pokemon_FromBoxPokemon(param1, v0);
    sub_0208D200(param0, v0, param2);
    Heap_FreeToHeap(v0);
}

static void sub_0208D200 (UnkStruct_0208D7BC * param0, Pokemon * param1, UnkStruct_0208D1D4 * param2)
{
    BoxPokemon * v0;
    u16 v1;
    u8 v2;
    BOOL v3;

    v3 = Pokemon_EnterDecryptionContext(param1);

    param2->unk_0C = (u16)Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL);

    v0 = Pokemon_GetBoxPokemon(param1);

    MessageLoader_GetStrbuf(param0->unk_688, 11, param0->unk_694);
    sub_0200B538(param0->unk_690, 0, v0);
    sub_0200C388(param0->unk_690, param0->unk_250.unk_00, param0->unk_694);

    MessageLoader_GetStrbuf(param0->unk_688, 0, param0->unk_694);
    sub_0200B5CC(param0->unk_690, 0, v0);
    sub_0200C388(param0->unk_690, param0->unk_250.unk_04, param0->unk_694);

    MessageLoader_GetStrbuf(param0->unk_688, 14, param0->unk_694);
    sub_0200B5EC(param0->unk_690, 0, v0);
    sub_0200C388(param0->unk_690, param0->unk_250.unk_08, param0->unk_694);

    param2->unk_0E = (u16)Pokemon_GetValue(param1, MON_DATA_HELD_ITEM, NULL);
    param2->unk_12_0 = (u8)Pokemon_GetValue(param1, MON_DATA_LEVEL, NULL);
    param2->unk_50_28 = Pokemon_GetValue(param1, MON_DATA_IS_EGG, NULL);

    if ((Pokemon_GetValue(param1, MON_DATA_176, NULL) == 1) && (param2->unk_50_28 == 0)) {
        param2->unk_12_7 = 0;
    } else {
        param2->unk_12_7 = 1;
    }

    param2->unk_13_0 = Pokemon_GetGender(param1);
    param2->unk_13_2 = (u8)Pokemon_GetValue(param1, MON_DATA_POKEBALL, NULL);
    param2->unk_10 = (u8)Pokemon_GetValue(param1, MON_DATA_TYPE_1, NULL);
    param2->unk_11 = (u8)Pokemon_GetValue(param1, MON_DATA_TYPE_2, NULL);
    param2->unk_14 = Pokemon_GetValue(param1, MON_DATA_OT_ID, NULL);
    param2->unk_18 = Pokemon_GetValue(param1, MON_DATA_EXP, NULL);
    param2->unk_44 = (u8)Pokemon_GetValue(param1, MON_DATA_OT_GENDER, NULL);
    param2->unk_1C = Pokemon_GetSpeciesBaseExpAt(param2->unk_0C, param2->unk_12_0);

    if (param2->unk_12_0 == 100) {
        param2->unk_20 = param2->unk_1C;
    } else {
        param2->unk_20 = Pokemon_GetSpeciesBaseExpAt(param2->unk_0C, param2->unk_12_0 + 1);
    }

    param2->unk_24 = (u16)Pokemon_GetValue(param1, MON_DATA_CURRENT_HP, NULL);
    param2->unk_26 = (u16)Pokemon_GetValue(param1, MON_DATA_MAX_HP, NULL);
    param2->unk_28 = (u16)Pokemon_GetValue(param1, MON_DATA_ATK, NULL);
    param2->unk_2A = (u16)Pokemon_GetValue(param1, MON_DATA_DEF, NULL);
    param2->unk_2C = (u16)Pokemon_GetValue(param1, MON_DATA_SP_ATK, NULL);
    param2->unk_2E = (u16)Pokemon_GetValue(param1, MON_DATA_SP_DEF, NULL);
    param2->unk_30 = (u16)Pokemon_GetValue(param1, MON_DATA_SPEED, NULL);
    param2->unk_32 = (u8)Pokemon_GetValue(param1, MON_DATA_ABILITY, NULL);
    param2->unk_33 = Pokemon_GetNature(param1);

    for (v1 = 0; v1 < 4; v1++) {
        param2->unk_34[v1] = (u16)Pokemon_GetValue(param1, MON_DATA_MOVE1 + v1, NULL);
        param2->unk_3C[v1] = (u8)Pokemon_GetValue(param1, MON_DATA_MOVE1_CUR_PP + v1, NULL);
        v2 = (u8)Pokemon_GetValue(param1, MON_DATA_MOVE1_PP_UPS + v1, NULL);
        param2->unk_40[v1] = MoveTable_CalcMaxPP(param2->unk_34[v1], v2);
    }

    param2->unk_45 = (u8)Pokemon_GetValue(param1, MON_DATA_COOL, NULL);
    param2->unk_46 = (u8)Pokemon_GetValue(param1, MON_DATA_BEAUTY, NULL);
    param2->unk_47 = (u8)Pokemon_GetValue(param1, MON_DATA_CUTE, NULL);
    param2->unk_48 = (u8)Pokemon_GetValue(param1, MON_DATA_SMART, NULL);
    param2->unk_49 = (u8)Pokemon_GetValue(param1, MON_DATA_TOUGH, NULL);
    param2->unk_4A = (u8)Pokemon_GetValue(param1, MON_DATA_SHEEN, NULL);
    param2->unk_4B = 5;

    for (v1 = 0; v1 < 5; v1++) {
        if (Pokemon_GetFlavorAffinity(param1, v1) == 1) {
            param2->unk_4B = v1;
            break;
        }
    }

    param2->unk_4C = Pokemon_GetValue(param1, MON_DATA_11, NULL);
    param2->unk_4E = Pokemon_GetValue(param1, MON_DATA_FORM, NULL);
    param2->unk_50_0 = sub_0208E9F0(param1);

    if (Pokemon_CanSpreadPokerus(param1) == 1) {
        param2->unk_50_30 = 2;
    } else if (Pokemon_InfectedWithPokerus(param1) == 1) {
        param2->unk_50_30 = 1;

        if (param2->unk_50_0 == 7) {
            param2->unk_50_0 = 0;
        }
    } else {
        param2->unk_50_30 = 0;
    }

    if (Pokemon_IsShiny(param1) == 1) {
        param2->unk_50_29 = 1;
    } else {
        param2->unk_50_29 = 0;
    }

    param2->unk_54[0] = 0;
    param2->unk_54[1] = 0;
    param2->unk_54[2] = 0;
    param2->unk_54[3] = 0;
    param0->unk_6B1 = 0;

    for (v1 = 0; v1 < 80; v1++) {
        if (Pokemon_GetValue(param1, sub_020923C0(v1, 0), NULL) != 0) {
            param2->unk_54[v1 / 32] |= (1 << (v1 & 0x1f));
            param0->unk_6B1++;
        }
    }

    Pokemon_ExitDecryptionContext(param1, v3);
}

static void sub_0208D618 (UnkStruct_0208D7BC * param0)
{
    u8 v0;

    if (param0->unk_250.unk_50_28 != 0) {
        return;
    }

    sub_02078A4C(param0->unk_6A0, &v0, param0->unk_250.unk_0C, 1);

    if (param0->unk_250.unk_0C == 441) {
        ProcessChatotCryStructWithExtendedAudioParams(param0->unk_24C->unk_28, 0, 100, 0, v0);
    } else {
        sub_0200590C(param0->unk_250.unk_0C, v0, param0->unk_250.unk_4E);
    }
}

static void sub_0208D678 (UnkStruct_0208D7BC * param0)
{
    switch (param0->unk_24C->unk_12) {
    case 0:
    case 1:
        if (param0->unk_250.unk_50_28 == 0) {
            param0->unk_6A4 = 0;
        } else {
            param0->unk_6A4 = 1;
        }
        break;
    case 2:
        param0->unk_6A4 = 3;
        break;
    case 3:
    case 4:
        param0->unk_6A4 = 4;
        break;
    }

    sub_0208F6DC(param0, NULL);
    sub_0208ECF4(param0);
    sub_0208EF58(param0);
    sub_0208FA04(param0);
    sub_0208EDC4(param0);
    sub_0208F574(param0);
    sub_0208F34C(param0);
    sub_0208FD40(param0);
    sub_020904C4(param0);
    sub_0208D948(param0);
    sub_020919E8(param0);

    if (param0->unk_24C->unk_12 == 2) {
        sub_0208E190(param0);
    }
}

void sub_0208D720 (UnkStruct_02098D38 * param0, const u8 * param1)
{
    u8 v0;

    param0->unk_15 = 0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param1[v0] == 8) {
            break;
        }

        param0->unk_15 |= (1 << param1[v0]);
    }
}

static void sub_0208D748 (UnkStruct_0208D7BC * param0)
{
    if (param0->unk_24C->unk_2C == 1) {
        return;
    }

    if (param0->unk_24C->unk_15 & (1 << 4)) {
        param0->unk_24C->unk_15 ^= (1 << 4);
    }

    if (param0->unk_24C->unk_15 & (1 << 5)) {
        param0->unk_24C->unk_15 ^= (1 << 5);
    }

    if (param0->unk_24C->unk_15 & (1 << 6)) {
        param0->unk_24C->unk_15 ^= (1 << 6);
    }
}

u8 sub_0208D790 (UnkStruct_0208D7BC * param0, u32 param1)
{
    if ((param0->unk_250.unk_50_28 != 0) && (param1 != 1) && (param1 != 7)) {
        return 0;
    }

    return param0->unk_24C->unk_15 & (1 << param1);
}

u8 sub_0208D7BC (UnkStruct_0208D7BC * param0)
{
    u8 v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_24C->unk_15 & (1 << v0)) {
            v1++;
        }
    }

    return v1;
}

static void sub_0208D7EC (UnkStruct_0208D7BC * param0, u8 param1)
{
    if (param0->unk_6A4 == param1) {
        return;
    }

    if (param0->unk_24C->unk_12 == 2) {
        sub_0208E4EC(param0);
    }

    sub_0208FE34(param0);
    param0->unk_6A4 = param1;
    sub_0208F6DC(param0, NULL);

    sub_0208ECF4(param0);
    sub_0208EDC4(param0);
    sub_0208EF58(param0);
    sub_0208FA04(param0);
    sub_0208F34C(param0);
    sub_0208FD40(param0);
    sub_0208FB54(param0, 0);

    sub_02019CB8(param0->unk_00, 1, 0, 14, 4, 19, 20, 0);
    sub_02019448(param0->unk_00, 1);
    sub_020904C4(param0);
    sub_0208D948(param0);
    sub_020919E8(param0);

    if (param0->unk_24C->unk_12 == 2) {
        sub_0208E508(param0);
    }
}

static void sub_0208D898 (UnkStruct_0208D7BC * param0, s8 param1)
{
    s8 v0 = param0->unk_6A4;

    while (TRUE) {
        v0 += param1;

        if (v0 < 0) {
            v0 = 7;
        } else if (v0 > 7) {
            v0 = 0;
        }

        if (param0->unk_250.unk_50_28 == 0) {
            if ((param0->unk_24C->unk_15 & (1 << v0)) != 0) {
                break;
            }
        } else {
            if (((param0->unk_24C->unk_15 & (1 << v0)) != 0) && ((v0 == 1) || (v0 == 7))) {
                break;
            }
        }
    }

    if (v0 == param0->unk_6A4) {
        return;
    }

    Sound_PlayEffect(1505);
    sub_0209219C(param0);
    sub_0208FB54(param0, 0);
    sub_0208D7EC(param0, v0);
}

static u8 sub_0208D920 (UnkStruct_0208D7BC * param0)
{
    u8 v0 = sub_020921E4(param0);

    if (v0 == 0xff) {
        return 0;
    }

    param0->unk_6AC = 0;
    param0->unk_6AE = v0;
    param0->unk_6AD = 0;

    return 1;
}

static void sub_0208D948 (UnkStruct_0208D7BC * param0)
{
    {
        NNSG2dScreenData * v0;
        void * v1;
        u32 v2;

        if ((param0->unk_24C->unk_12 == 2) && (param0->unk_24C->unk_18 != 0)) {
            if (param0->unk_6A4 == 3) {
                v2 = 12;
            } else {
                v2 = 13;
            }
        } else {
            v2 = 3 + param0->unk_6A4;
        }

        v1 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_GRAPHIC__PL_PST_GRA, v2, 19);
        NNS_G2dGetUnpackedScreenData(v1, &v0);

        sub_020198C0(param0->unk_00, 3, v0->rawData, 0, 0, 32, 32);
        sub_0201C3C0(param0->unk_00, 3);
        Heap_FreeToHeap(v1);
    }

    if (param0->unk_6A4 == 0) {
        sub_0208DA84(param0);
    } else if (param0->unk_6A4 == 2) {
        sub_0208D9D0(param0);
    }
}

static void sub_0208D9D0 (UnkStruct_0208D7BC * param0)
{
    u16 v0;
    u16 v1;
    u8 v2;
    u8 v3;

    switch (sub_0208C104(param0->unk_250.unk_24, param0->unk_250.unk_26, 48)) {
    case 4:
    case 3:
    case 0:
        v0 = 0xc0 | 0xa000;
        break;
    case 2:
        v0 = 0xe0 | 0xa000;
        break;
    case 1:
        v0 = 0x100 | 0xa000;
        break;
    }

    v2 = App_PixelCount(param0->unk_250.unk_24, param0->unk_250.unk_26, 48);

    for (v3 = 0; v3 < 6; v3++) {
        if (v2 >= 8) {
            v1 = v0 + 8;
        } else {
            v1 = v0 + v2;
        }

        sub_02019CB8(param0->unk_00, 3, v1, 24 + v3, 6, 1, 1, 17);

        if (v2 < 8) {
            v2 = 0;
        } else {
            v2 -= 8;
        }
    }

    sub_0201C3C0(param0->unk_00, 3);
}

static void sub_0208DA84 (UnkStruct_0208D7BC * param0)
{
    u32 v0;
    u32 v1;
    u16 v2;
    u8 v3;
    u8 v4;

    if (param0->unk_250.unk_12_0 < 100) {
        v0 = param0->unk_250.unk_20 - param0->unk_250.unk_1C;
        v1 = param0->unk_250.unk_18 - param0->unk_250.unk_1C;
    } else {
        v0 = 0;
        v1 = 0;
    }

    v3 = App_PixelCount(v1, v0, 56);

    for (v4 = 0; v4 < 7; v4++) {
        if (v3 >= 8) {
            v2 = 0xac + 8;
        } else {
            v2 = 0xac + v3;
        }

        sub_02019CB8(param0->unk_00, 3, v2, 23 + v4, 23, 1, 1, 17);

        if (v3 < 8) {
            v3 = 0;
        } else {
            v3 -= 8;
        }
    }

    sub_0201C3C0(param0->unk_00, 3);
}

static void sub_0208DB10 (UnkStruct_0208D7BC * param0, s8 param1)
{
    s8 v0 = sub_0208DBC4(param0, param1);

    if (v0 == -1) {
        return;
    }

    param0->unk_24C->unk_14 = (u8)v0;

    sub_0208D1A4(param0);
    sub_0208D618(param0);
    sub_0208FEA4(param0);
    sub_0208FF3C(param0);
    sub_0208FFE0(param0);

    if (param0->unk_6A4 == 0) {
        sub_0208DA84(param0);
    } else if (param0->unk_6A4 == 2) {
        sub_0208D9D0(param0);
    } else if (param0->unk_6A4 == 4) {
        sub_02091D50(param0);
    }

    sub_02092098(param0);
    sub_0208F6DC(param0, NULL);
    sub_0208ECF4(param0);
    sub_0208EDC4(param0);
    sub_0208F16C(param0);
    sub_0208EF58(param0);
    sub_0208FA04(param0);
    sub_0208F71C(param0);
    sub_0208EE3C(param0);
    sub_0208EE9C(param0);
    sub_0208F34C(param0);
    sub_0208F574(param0);
    sub_020904C4(param0);
}

static s8 sub_0208DBC4 (UnkStruct_0208D7BC * param0, s8 param1)
{
    switch (param0->unk_24C->unk_11) {
    case 0:
        return sub_0208DC1C(param0, param1);
    case 1:
        return sub_0208DC84(param0, param1);
    case 2:
        return sub_0208DCE0(param0, param1);
    }

    return -1;
}

static BOOL sub_0208DBF4 (UnkStruct_0208D7BC * param0)
{
    if (param0->unk_24C->unk_12 == 3) {
        return 0;
    }

    if ((param0->unk_6A4 != 1) && (param0->unk_6A4 != 7)) {
        return 0;
    }

    return 1;
}

static s8 sub_0208DC1C (UnkStruct_0208D7BC * param0, s8 param1)
{
    Pokemon * v0;
    s8 v1;

    v1 = (s8)param0->unk_24C->unk_14;
    v0 = (Pokemon *)param0->unk_24C->unk_00;

    while (TRUE) {
        v1 += param1;

        if ((v1 < 0) || (v1 >= param0->unk_24C->unk_13)) {
            return -1;
        }

        v0 = (Pokemon *)((u32)param0->unk_24C->unk_00 + Pokemon_GetStructSize() * v1);

        if (Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL) != 0) {
            if (Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL) != 0) {
                if (sub_0208DBF4(param0) == 1) {
                    break;
                }
            } else {
                break;
            }
        }
    }

    return v1;
}

static s8 sub_0208DC84 (UnkStruct_0208D7BC * param0, s8 param1)
{
    Pokemon * v0;
    s8 v1;

    v1 = (s8)param0->unk_24C->unk_14;

    while (TRUE) {
        v1 += param1;

        if ((v1 < 0) || (v1 >= param0->unk_24C->unk_13)) {
            return -1;
        }

        v0 = Party_GetPokemonBySlotIndex(param0->unk_24C->unk_00, v1);

        if (Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL) != 0) {
            if (Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL) != 0) {
                if (sub_0208DBF4(param0) == 1) {
                    break;
                }
            } else {
                break;
            }
        }
    }

    return v1;
}

static s8 sub_0208DCE0 (UnkStruct_0208D7BC * param0, s8 param1)
{
    BoxPokemon * v0;
    s8 v1;

    v1 = (s8)param0->unk_24C->unk_14;
    v0 = (BoxPokemon *)param0->unk_24C->unk_00;

    while (TRUE) {
        v1 += param1;

        if ((v1 < 0) || (v1 >= param0->unk_24C->unk_13)) {
            return -1;
        }

        v0 = (BoxPokemon *)((u32)param0->unk_24C->unk_00 + BoxPokemon_GetStructSize() * v1);

        if (BoxPokemon_GetValue(v0, MON_DATA_SPECIES, NULL) != 0) {
            if (BoxPokemon_GetValue(v0, MON_DATA_IS_EGG, NULL) != 0) {
                if (sub_0208DBF4(param0) == 1) {
                    break;
                }
            } else {
                break;
            }
        }
    }

    return v1;
}

void * sub_0208DD48 (UnkStruct_0208D7BC * param0)
{
    switch (param0->unk_24C->unk_11) {
    case 0:
        return (void *)((u32)param0->unk_24C->unk_00 + (Pokemon_GetStructSize() * param0->unk_24C->unk_14));
    case 1:
        return (void *)Party_GetPokemonBySlotIndex(param0->unk_24C->unk_00, param0->unk_24C->unk_14);
    case 2:
        return (void *)((u32)param0->unk_24C->unk_00 + (BoxPokemon_GetStructSize() * param0->unk_24C->unk_14));
    }

    return NULL;
}

static u8 sub_0208DD8C (UnkStruct_0208D7BC * param0)
{
    switch (param0->unk_6A6) {
    case 0:
        sub_0201C63C(param0->unk_00, 2, 0, 136);
        sub_0201C63C(param0->unk_00, 2, 3, 0);
        sub_0208EE10(param0, 0);
        sub_0201AD10(&param0->unk_04[33]);
        sub_0201AD10(&param0->unk_04[6]);
        sub_0201AD10(&param0->unk_04[32]);
        sub_0201AD10(&param0->unk_04[35]);
        sub_0208F6DC(param0, NULL);

        param0->unk_6A5_0 = 0;
        param0->unk_6A6 = 1;
        break;
    case 1:
    {
        int v0 = sub_020192EC(param0->unk_00, 2);

        if (v0 <= 64) {
            sub_0201C63C(param0->unk_00, 2, 0, 0);
            param0->unk_6A6 = 2;
        } else {
            sub_0201C63C(param0->unk_00, 2, 2, 64);
        }
    }
    break;
    case 2:
        sub_02091420(param0);

        if (param0->unk_24C->unk_12 != 1) {
            sub_02090064(param0, 152);
            sub_0208F6DC(param0, &param0->unk_04[35]);
        }

        sub_0208DFF4(param0);
        sub_0200D3EC(param0->unk_41C[11], 1);
        sub_0208F7A4(param0);

        if (param0->unk_250.unk_10 != param0->unk_250.unk_11) {
            sub_0200D3EC(param0->unk_41C[12], 1);
        }

        sub_02021CAC(param0->unk_41C[9], 1);
        return 1;
    }

    return 0;
}

static u8 sub_0208DEA4 (UnkStruct_0208D7BC * param0)
{
    switch (param0->unk_6A6) {
    case 0:
        sub_0200D3EC(param0->unk_41C[11], 0);
        sub_0200D3EC(param0->unk_41C[12], 0);
        sub_0200D3EC(param0->unk_41C[18], 0);
        sub_0200D3EC(param0->unk_41C[19], 0);
        sub_02021CAC(param0->unk_41C[9], 0);
        sub_0201AD10(&param0->unk_04[35]);
        sub_0208F6DC(param0, NULL);
        sub_0209145C(param0);
        sub_020913D8(param0);
        param0->unk_6A6 = 1;
        break;
    case 1:
    {
        int v0 = sub_020192EC(param0->unk_00, 2);

        if (v0 >= 128) {
            sub_0201C63C(param0->unk_00, 2, 0, 136);
            param0->unk_6A6 = 2;
        } else {
            sub_0201C63C(param0->unk_00, 2, 1, 64);
        }
    }
    break;
    case 2:
        sub_0201A9A4(&param0->unk_04[33]);
        sub_0201A9A4(&param0->unk_04[6]);
        sub_0201A9A4(&param0->unk_04[32]);
        sub_02090064(param0, 129);
        sub_0208EE10(param0, 1);
        sub_0208F6DC(param0, &param0->unk_04[35]);
        return 1;
    }

    return 0;
}

static u8 sub_0208DF94 (UnkStruct_0208D7BC * param0, s8 param1)
{
    s8 v0 = param0->unk_6A5_0;

    while (TRUE) {
        v0 += param1;

        if (v0 < 0) {
            v0 = 4;
        } else if (v0 == 5) {
            v0 = 0;
        }

        if ((param0->unk_250.unk_34[v0] != 0) || (v0 == 4)) {
            break;
        }
    }

    if (v0 != param0->unk_6A5_0) {
        param0->unk_6A5_0 = v0;
        return 1;
    }

    return 0;
}

static void sub_0208DFF4 (UnkStruct_0208D7BC * param0)
{
    sub_0208F2E8(param0);

    if (param0->unk_6A5_0 == 4) {
        if (param0->unk_24C->unk_18 != 0) {
            if (param0->unk_6A4 == 3) {
                sub_0208E07C(param0, param0->unk_24C->unk_18);
            } else {
                sub_0208E0B8(param0, param0->unk_24C->unk_18);
            }
        } else {
            if (param0->unk_6A4 == 3) {
                sub_0208E07C(param0, 0xffffffff);
            } else {
                sub_0208E0B8(param0, 0xffffffff);
            }
        }
    } else {
        if (param0->unk_6A4 == 3) {
            sub_0208E07C(param0, param0->unk_250.unk_34[param0->unk_6A5_0]);
        } else {
            sub_0208E0B8(param0, param0->unk_250.unk_34[param0->unk_6A5_0]);
        }
    }
}

static void sub_0208E07C (UnkStruct_0208D7BC * param0, u32 param1)
{
    if (param1 == 0xffffffff) {
        sub_020913D8(param0);
        sub_0200D3EC(param0->unk_41C[18], 0);
    } else {
        sub_020912A4(param0, param1);
        sub_0208F294(param0, param1);
        sub_0200D3EC(param0->unk_41C[18], 1);
    }
}

static void sub_0208E0B8 (UnkStruct_0208D7BC * param0, u32 param1)
{
    sub_0208E498(param0, param1);

    if (param1 == 0xffffffff) {
        sub_020915F4(param0);
    } else {
        sub_02091570(param0, param1);
    }
}

static void sub_0208E0DC (UnkStruct_0208D7BC * param0)
{
    void * v0;
    u16 v1;
    u8 v2;
    u8 v3;

    v0 = sub_0208DD48(param0);

    if (param0->unk_24C->unk_11 == 2) {
        BoxPokemon_SwapMoveSlots(v0, param0->unk_6A5_0, param0->unk_6A5_4);
    } else {
        Pokemon_SwapMoveSlots(v0, param0->unk_6A5_0, param0->unk_6A5_4);
    }

    v1 = param0->unk_250.unk_34[param0->unk_6A5_0];
    param0->unk_250.unk_34[param0->unk_6A5_0] = param0->unk_250.unk_34[param0->unk_6A5_4];
    param0->unk_250.unk_34[param0->unk_6A5_4] = v1;

    v2 = param0->unk_250.unk_3C[param0->unk_6A5_0];
    param0->unk_250.unk_3C[param0->unk_6A5_0] = param0->unk_250.unk_3C[param0->unk_6A5_4];
    param0->unk_250.unk_3C[param0->unk_6A5_4] = v2;

    v3 = param0->unk_250.unk_40[param0->unk_6A5_0];
    param0->unk_250.unk_40[param0->unk_6A5_0] = param0->unk_250.unk_40[param0->unk_6A5_4];
    param0->unk_250.unk_40[param0->unk_6A5_4] = v3;
}

static void sub_0208E190 (UnkStruct_0208D7BC * param0)
{
    sub_0201AD10(&param0->unk_04[33]);
    sub_0201AD10(&param0->unk_04[6]);
    sub_0201AD10(&param0->unk_04[32]);

    sub_0201C63C(param0->unk_00, 2, 0, 0);

    sub_02091420(param0);
    sub_0208DFF4(param0);

    sub_0200D3EC(param0->unk_41C[11], 1);
    sub_0208F7A4(param0);

    if (param0->unk_250.unk_10 != param0->unk_250.unk_11) {
        sub_0200D3EC(param0->unk_41C[12], 1);
    }

    sub_02021CAC(param0->unk_41C[9], 1);
}

static u8 sub_0208E208 (UnkStruct_0208D7BC * param0)
{
    switch (param0->unk_6A6) {
    case 0:
        sub_0201C63C(param0->unk_00, 2, 0, 136);
        sub_0201C63C(param0->unk_00, 2, 3, 256);
        sub_0208E498(param0, 0xffffffff);
        sub_0208EE10(param0, 0);
        sub_0201AD10(&param0->unk_04[33]);
        sub_0201AD10(&param0->unk_04[6]);
        sub_0201AD10(&param0->unk_04[32]);
        sub_0201AD10(&param0->unk_04[35]);
        sub_0208F6DC(param0, NULL);
        param0->unk_6A5_0 = 0;
        param0->unk_6A6 = 1;
        break;
    case 1:
    {
        int v0 = sub_020192EC(param0->unk_00, 2);

        if (v0 <= 64) {
            sub_0201C63C(param0->unk_00, 2, 0, 0);
            param0->unk_6A6 = 2;
        } else {
            sub_0201C63C(param0->unk_00, 2, 2, 64);
        }
    }
    break;
    case 2:
        sub_02091420(param0);

        if (param0->unk_24C->unk_12 != 1) {
            sub_02090064(param0, 152);
            sub_0208F6DC(param0, &param0->unk_04[35]);
        }

        sub_0208DFF4(param0);
        sub_0208F7A4(param0);
        sub_0208F844(param0);
        sub_02021CAC(param0->unk_41C[9], 1);

        return 1;
    }

    return 0;
}

static u8 sub_0208E308 (UnkStruct_0208D7BC * param0)
{
    switch (param0->unk_6A6) {
    case 0:
        sub_0208F964(param0);
        sub_0200D3EC(param0->unk_41C[19], 0);
        sub_0208E498(param0, 0xffffffff);
        sub_02021CAC(param0->unk_41C[9], 0);
        sub_0201AD10(&param0->unk_04[35]);
        sub_0208F6DC(param0, NULL);
        sub_0209145C(param0);
        sub_020915F4(param0);
        param0->unk_6A6 = 1;
        break;
    case 1:
    {
        int v0 = sub_020192EC(param0->unk_00, 2);

        if (v0 >= 128) {
            sub_0201C63C(param0->unk_00, 2, 0, 136);
            param0->unk_6A6 = 2;
        } else {
            sub_0201C63C(param0->unk_00, 2, 1, 64);
        }
    }
    break;
    case 2:
        sub_0201A9A4(&param0->unk_04[33]);
        sub_0201A9A4(&param0->unk_04[6]);
        sub_0201A9A4(&param0->unk_04[32]);
        sub_02090064(param0, 158);
        sub_0208EE10(param0, 1);
        sub_0208F6DC(param0, &param0->unk_04[35]);
        return 1;
    }

    return 0;
}

static void sub_0208E3DC (UnkStruct_0208D7BC * param0, u16 param1, u8 param2)
{
    sub_02019CB8(param0->unk_00, 2, param1, 2 + param2 * 2, (32 + 15), 1, 1, 16);
    sub_02019CB8(param0->unk_00, 2, param1 + 1, 2 + param2 * 2 + 1, (32 + 15), 1, 1, 16);
    sub_02019CB8(param0->unk_00, 2, param1 + 32, 2 + param2 * 2, (32 + 15) + 1, 1, 1, 16);
    sub_02019CB8(param0->unk_00, 2, param1 + 33, 2 + param2 * 2 + 1, (32 + 15) + 1, 1, 1, 16);
}

static void sub_0208E46C (UnkStruct_0208D7BC * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 6; v0++) {
        sub_0208E3DC(param0, 0x12e, v0);
    }

    sub_0201C3C0(param0->unk_00, 2);
}

static void sub_0208E498 (UnkStruct_0208D7BC * param0, u32 param1)
{
    u32 v0;
    u16 v1;
    s8 v2;

    sub_0208E46C(param0);

    if (param1 != 0xffffffff) {
        v0 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_CONTEST_EFFECT);
        v2 = sub_02095734(v0) / 10;

        for (v1 = 0; v1 < v2; v1++) {
            sub_0208E3DC(param0, 0x12c, v1);
        }
    }

    sub_0201C3C0(param0->unk_00, 2);
}

static void sub_0208E4EC (UnkStruct_0208D7BC * param0)
{
    if (param0->unk_6A4 == 3) {
        sub_020913D8(param0);
    } else {
        sub_020915F4(param0);
    }
}

static void sub_0208E508 (UnkStruct_0208D7BC * param0)
{
    sub_02091420(param0);
    sub_0208DFF4(param0);
    sub_0208F7A4(param0);

    if (param0->unk_6A4 == 3) {
        sub_0208F964(param0);
        sub_0200D3EC(param0->unk_41C[11], 1);

        if (param0->unk_250.unk_10 != param0->unk_250.unk_11) {
            sub_0200D3EC(param0->unk_41C[12], 1);
        }

        sub_0201C63C(param0->unk_00, 2, 3, 0);
    } else {
        sub_0208F844(param0);
        sub_0201C63C(param0->unk_00, 2, 3, 256);
    }
}

static u8 sub_0208E57C (UnkStruct_0208D7BC * param0)
{
    switch (param0->unk_6A6) {
    case 0:
        sub_0201C63C(param0->unk_00, 2, 0, 256);
        sub_0201C63C(param0->unk_00, 2, 3, 0);

        sub_0208EE10(param0, 0);
        sub_0201AD10(&param0->unk_04[6]);
        sub_0201AD10(&param0->unk_04[32]);
        sub_0201AD10(&param0->unk_04[30]);
        sub_0201AD10(&param0->unk_04[35]);
        sub_0201AD10(&param0->unk_244[0]);
        sub_0208F6DC(param0, NULL);

        param0->unk_6AF = 0;
        param0->unk_6B0 = 0;
        param0->unk_6A6 = 1;
        break;
    case 1:
    {
        int v0 = sub_020192F8(param0->unk_00, 2);

        if (v0 >= 48) {
            sub_0201C63C(param0->unk_00, 2, 3, 56);
            param0->unk_6A6 = 2;
        } else {
            sub_0201C63C(param0->unk_00, 2, 4, 16);
        }
    }
    break;
    case 2:
        sub_02090064(param0, 181);
        sub_0208F6DC(param0, &param0->unk_04[35]);
        sub_02021CAC(param0->unk_41C[67], 1);
        sub_02021CAC(param0->unk_41C[70], 1);
        sub_02021CAC(param0->unk_41C[63], 0);
        sub_02021CAC(param0->unk_41C[64], 0);
        sub_02021CAC(param0->unk_41C[65], 0);
        sub_02021CAC(param0->unk_41C[66], 0);
        sub_0208E794(param0, 0);

        return 1;
    }

    return 0;
}

static u8 sub_0208E6A8 (UnkStruct_0208D7BC * param0)
{
    switch (param0->unk_6A6) {
    case 0:
        param0->unk_6AF = 0;
        param0->unk_6B0 = 0;
        sub_0201AD10(&param0->unk_244[1]);
        sub_0201AD10(&param0->unk_244[2]);
        sub_0201AD10(&param0->unk_244[3]);
        sub_0201AD10(&param0->unk_04[35]);
        sub_0208F6DC(param0, NULL);
        sub_0208FA04(param0);
        param0->unk_6A6 = 1;
        break;
    case 1:
    {
        int v0 = sub_020192F8(param0->unk_00, 2);

        if (v0 <= 8) {
            sub_0201C63C(param0->unk_00, 2, 3, 0);
            param0->unk_6A6 = 2;
        } else {
            sub_0201C63C(param0->unk_00, 2, 5, 16);
        }
    }
    break;
    case 2:
        sub_0201A9A4(&param0->unk_04[6]);
        sub_0201A9A4(&param0->unk_04[32]);
        sub_0201A9A4(&param0->unk_04[30]);
        sub_0201A9A4(&param0->unk_04[35]);
        sub_0201A9A4(&param0->unk_244[0]);
        sub_02090064(param0, 180);
        sub_0208EE10(param0, 1);
        sub_0208F6DC(param0, &param0->unk_04[35]);

        return 1;
    }

    return 0;
}

static void sub_0208E794 (UnkStruct_0208D7BC * param0, s8 param1)
{
    u8 v0;
    u8 v1;

    v0 = param0->unk_6AF;
    v1 = param0->unk_6B0;

    if (param1 == 1) {
        if ((param0->unk_6AF & 3) == 3) {
            return;
        }

        if ((param0->unk_6B0 * 4 + param0->unk_6AF + 1) < param0->unk_6B1) {
            param0->unk_6AF += 1;
        }
    } else if (param1 == -1) {
        if ((param0->unk_6AF & 3) == 0) {
            return;
        }

        param0->unk_6AF -= 1;
    } else if (param1 == 4) {
        if (param0->unk_6AF < 4) {
            if ((param0->unk_6B0 * 4 + param0->unk_6AF + 4) >= param0->unk_6B1) {
                if ((param0->unk_6B1 > 4) && ((param0->unk_6B1 % 4) != 0)) {
                    param0->unk_6AF = param0->unk_6B1 % 4 + 3;
                }
            } else {
                param0->unk_6AF += 4;
            }
        } else {
            if ((param0->unk_6B0 * 4 + 8) < param0->unk_6B1) {
                param0->unk_6B0++;

                if ((param0->unk_6B0 * 4 + param0->unk_6AF) >= param0->unk_6B1) {
                    param0->unk_6AF = param0->unk_6B1 % 4 + 3;
                }
            }
        }
    } else if (param1 == -4) {
        if (param0->unk_6AF >= 4) {
            param0->unk_6AF -= 4;
        } else if (param0->unk_6B0 != 0) {
            param0->unk_6B0--;
        }
    }

    if ((v0 != param0->unk_6AF) || (v1 != param0->unk_6B0)) {
        Sound_PlayEffect(1500);
    }

    param0->unk_6B2 = sub_0208E904(param0, param0->unk_6AF);

    sub_0208FB00(param0);

    if (v1 != param0->unk_6B0) {
        sub_0208FAA4(param0);
    }

    sub_020910E4(param0);
    sub_02090F84(param0);

    if (param0->unk_6B0 != 0) {
        sub_02021CAC(param0->unk_41C[68], 1);
    } else {
        sub_02021CAC(param0->unk_41C[68], 0);
    }

    if ((param0->unk_6B0 * 4 + 8) < param0->unk_6B1) {
        sub_02021CAC(param0->unk_41C[69], 1);
    } else {
        sub_02021CAC(param0->unk_41C[69], 0);
    }
}

u8 sub_0208E904 (UnkStruct_0208D7BC * param0, u8 param1)
{
    u16 v0;
    u8 v1, v2;

    v1 = param1 + param0->unk_6B0 * 4;
    v2 = 0;

    for (v0 = 0; v0 < 80; v0++) {
        if ((param0->unk_250.unk_54[v0 / 32] & (1 << (v0 & 0x1f))) != 0) {
            if (v1 == v2) {
                return (u8)v0;
            }

            v2++;
        }
    }

    return 0;
}

static int sub_0208E958 (UnkStruct_0208D7BC * param0)
{
    if (param0->unk_250.unk_4A == 255) {
        sub_02002E98(0, 14 * 32, 19);
        sub_0200DD0C(param0->unk_00, 1, (1024 - (18 + 12)), 13, sub_02027B50(param0->unk_24C->unk_04), 19);
        sub_02091610(param0, 0xff);
        param0->unk_24C->unk_17 = 1;

        return 17;
    }

    param0->unk_24C->unk_17 = 0;
    return 18;
}

void sub_0208E9C0 (UnkStruct_02098D38 * param0, const TrainerInfo * param1)
{
    param0->unk_08 = TrainerInfo_Name(param1);
    param0->unk_0C = TrainerInfo_ID(param1);
    param0->unk_10 = (u8)TrainerInfo_Gender(param1);
}

u32 sub_0208E9E0 (void)
{
    return 64;
}

u32 sub_0208E9E4 (void)
{
    return 65;
}

u32 sub_0208E9E8 (void)
{
    return 63;
}

u32 sub_0208E9EC (void)
{
    return 62;
}

u32 sub_0208E9F0 (Pokemon * param0)
{
    u32 v0 = Pokemon_GetValue(param0, MON_DATA_STATUS_CONDITION, NULL);

    if (Pokemon_GetValue(param0, MON_DATA_CURRENT_HP, NULL) == 0) {
        return 6;
    } else if ((v0 & (0x8 | 0x80)) != 0) {
        return 4;
    } else if ((v0 & 0x7) != 0) {
        return 3;
    } else if ((v0 & 0x10) != 0) {
        return 5;
    } else if ((v0 & 0x20) != 0) {
        return 2;
    } else if ((v0 & 0x40) != 0) {
        return 1;
    }

    return 7;
}
