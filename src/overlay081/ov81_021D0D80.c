#include "overlay081/ov81_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0202BC58.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay081/ov81_021D1610.h"
#include "overlay081/struct_ov81_021D1610.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "core_sys.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "journal.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_020393C8.h"
#include "unk_0208C098.h"

static void ov81_021D0F00(void *param0);
static void ov81_021D0F20(void);
static void ov81_021D0F40(BGL *param0);
static void ov81_021D101C(BGL *param0);
static void ov81_021D1050(UnkStruct_ov81_021D1610 *param0);
static void ov81_021D1130(UnkStruct_ov81_021D1610 *param0);
static void ov81_021D115C(UnkStruct_ov81_021D1610 *param0);
static int ov81_021D1174(UnkStruct_ov81_021D1610 *param0);
static int ov81_021D1188(UnkStruct_ov81_021D1610 *param0);
static int ov81_021D120C(UnkStruct_ov81_021D1610 *param0);
static int ov81_021D12E8(UnkStruct_ov81_021D1610 *param0);
static int ov81_021D1358(UnkStruct_ov81_021D1610 *param0);
static u8 ov81_021D13CC(UnkStruct_ov81_021D1610 *param0, s8 param1);
static void ov81_021D1360(UnkStruct_ov81_021D1610 *param0);
static void ov81_021D140C(UnkStruct_ov81_021D1610 *param0, u8 param1, u8 param2);
static void ov81_021D1434(UnkStruct_ov81_021D1610 *param0);
static u8 ov81_021D14E0(UnkStruct_ov81_021D1610 *param0);
static u8 ov81_021D156C(UnkStruct_ov81_021D1610 *param0);

static const u8 Unk_ov81_021D33E8[9][32] = {
    { 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F },
    { 0x0, 0x1, 0x2, 0x3, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x0, 0x1, 0x2, 0x3, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x14, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x0, 0x1, 0x2, 0x3, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x1C, 0x1D, 0x1E, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x0, 0x1, 0x2, 0x3, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x0, 0x1, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x1C, 0x1D, 0x1E, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF }
};

int ov81_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov81_021D1610 *v0;
    SaveData *v1;

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    SetAutorepeat(4, 8);
    Heap_Create(3, 42, 0x20000);

    v1 = OverlayManager_Args(param0);
    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov81_021D1610), 42);
    memset(v0, 0, sizeof(UnkStruct_ov81_021D1610));
    v0->unk_00 = sub_02018340(42);

    v0->unk_4C = v1;
    v0->unk_44 = SaveData_GetJournal(v1);
    v0->unk_48 = SaveData_GetTrainerInfo(v1);

    sub_0208C120(0, 42);
    Font_UseImmediateGlyphAccess(FONT_SYSTEM, 42);

    ov81_021D0F20();
    ov81_021D0F40(v0->unk_00);
    ov81_021D1050(v0);
    ov81_021D1130(v0);
    ov81_021D1610(v0);
    ov81_021D164C(v0, 0);
    ov81_021D1434(v0);

    SetMainCallback(ov81_021D0F00, v0);
    GXLayers_TurnBothDispOn();
    sub_02039734();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_02004550(67, 0, 0);

    return 1;
}

int ov81_021D0E70(OverlayManager *param0, int *param1)
{
    UnkStruct_ov81_021D1610 *v0 = OverlayManager_Data(param0);

    switch (*param1) {
    case 0:
        *param1 = ov81_021D1174(v0);
        break;
    case 1:
        *param1 = ov81_021D1188(v0);
        break;
    case 2:
        *param1 = ov81_021D120C(v0);
        break;
    case 3:
        *param1 = ov81_021D12E8(v0);
        break;
    case 4:
        if (ov81_021D1358(v0) == 1) {
            return 1;
        }
    }

    return 0;
}

int ov81_021D0EC4(OverlayManager *param0, int *param1)
{
    UnkStruct_ov81_021D1610 *v0 = OverlayManager_Data(param0);

    SetMainCallback(NULL, NULL);

    ov81_021D1634(v0);
    ov81_021D101C(v0->unk_00);
    ov81_021D115C(v0);

    Font_UseLazyGlyphAccess(FONT_SYSTEM);
    OverlayManager_FreeData(param0);
    Heap_Destroy(42);

    return 1;
}

static void ov81_021D0F00(void *param0)
{
    UnkStruct_ov81_021D1610 *v0 = param0;

    sub_0201C2B8(v0->unk_00);
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov81_021D0F20(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_256_AB,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov81_021D0F40(BGL *param0)
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
            GX_BG_CHARBASE_0x10000,
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
            GX_BG_CHARBASE_0x20000,
            GX_BG_EXTPLTT_01,
            2,
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
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v3, 0);
    }
    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v4, 0);
    }

    sub_02019690(0, 32, 0, 42);
    sub_02019690(1, 32, 0, 42);
}

static void ov81_021D101C(BGL *param0)
{
    GXLayers_DisableEngineALayers();
    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
    Heap_FreeToHeapExplicit(42, param0);
}

static void ov81_021D1050(UnkStruct_ov81_021D1610 *param0)
{
    u16 *v0;
    NARC *v1;

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__F_NOTE_GRA, 42);

    if (TrainerInfo_Gender(param0->unk_48) == 0) {
        sub_020070E8(v1, 2, param0->unk_00, 2, 0, 0, 0, 42);
        sub_0200710C(v1, 0, param0->unk_00, 2, 0, 0, 0, 42);
        sub_02007130(v1, 4, 0, 0, 0, 42);
    } else {
        sub_020070E8(v1, 3, param0->unk_00, 2, 0, 0, 0, 42);
        sub_0200710C(v1, 1, param0->unk_00, 2, 0, 0, 0, 42);
        sub_02007130(v1, 5, 0, 0, 0, 42);
    }

    NARC_dtor(v1);

    v0 = sub_02019FE4(param0->unk_00, 2);
    MI_CpuCopy16(v0, param0->unk_5C, 0x800);
    sub_02019574(param0->unk_00, 3, param0->unk_5C, 0x800);

    Font_LoadTextPalette(0, 15 * 32, 42);
    sub_0201975C(4, 0);
}

static void ov81_021D1130(UnkStruct_ov81_021D1610 *param0)
{
    param0->unk_50 = MessageLoader_Init(0, 26, 366, 42);
    param0->unk_54 = StringTemplate_Default(42);
    param0->unk_58 = Strbuf_Init(128, 42);
}

static void ov81_021D115C(UnkStruct_ov81_021D1610 *param0)
{
    MessageLoader_Free(param0->unk_50);
    StringTemplate_Free(param0->unk_54);
    Strbuf_Free(param0->unk_58);
}

static int ov81_021D1174(UnkStruct_ov81_021D1610 *param0)
{
    if (ScreenWipe_Done() == 1) {
        return 1;
    }

    return 0;
}

static int ov81_021D1188(UnkStruct_ov81_021D1610 *param0)
{
    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        if (ov81_021D13CC(param0, -1) == 1) {
            return 2;
        }

        return 1;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_KEY_RIGHT)) {
        if (ov81_021D13CC(param0, 1) == 1) {
            return 3;
        }

        return 1;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        if (param0->unk_105C != 0) {
            if (ov81_021D13CC(param0, -1) == 1) {
                return 2;
            }
        } else {
            sub_0208C120(1, 42);
            return 4;
        }
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_START) {
        sub_0208C120(1, 42);
        return 4;
    }

    return 1;
}

static int ov81_021D120C(UnkStruct_ov81_021D1610 *param0)
{
    switch (param0->unk_105E) {
    case 0:
        ov81_021D1360(param0);
        ov81_021D140C(param0, param0->unk_1063, param0->unk_105C - 1);
        param0->unk_105C--;
        ov81_021D164C(param0, param0->unk_1060 ^ 1);
        param0->unk_105E = 1;
        Sound_PlayEffect(1681);
        break;
    case 1:
        if (ov81_021D14E0(param0) == 1) {
            param0->unk_105F = 0;
            param0->unk_105E = 0;
            param0->unk_1060 ^= 1;

            sub_020198C0(param0->unk_00, param0->unk_1062, param0->unk_85C, 0, 0, 32, 32);
            sub_020198C0(param0->unk_00, param0->unk_1061, param0->unk_5C, 0, 0, 32, 32);
            sub_0201C3C0(param0->unk_00, param0->unk_1062);
            sub_0201C3C0(param0->unk_00, param0->unk_1061);

            return 1;
        }
    }

    return 2;
}

static int ov81_021D12E8(UnkStruct_ov81_021D1610 *param0)
{
    switch (param0->unk_105E) {
    case 0:
        ov81_021D1360(param0);
        param0->unk_105C++;
        ov81_021D164C(param0, param0->unk_1060 ^ 1);
        param0->unk_105E = 1;
        Sound_PlayEffect(1681);
        break;
    case 1:
        if (ov81_021D156C(param0) == 1) {
            param0->unk_105F = 0;
            param0->unk_105E = 0;
            param0->unk_1060 ^= 1;

            return 1;
        }
    }

    return 3;
}

static int ov81_021D1358(UnkStruct_ov81_021D1610 *param0)
{
    return ScreenWipe_Done();
}

static void ov81_021D1360(UnkStruct_ov81_021D1610 *param0)
{
    if (param0->unk_1060 == 0) {
        param0->unk_1062 = 0;
        param0->unk_1061 = 2;
        param0->unk_1064 = 1;
        param0->unk_1063 = 3;
    } else {
        param0->unk_1062 = 1;
        param0->unk_1061 = 3;
        param0->unk_1064 = 0;
        param0->unk_1063 = 2;
    }
}

static u8 ov81_021D13A0(UnkStruct_ov81_021D1610 *param0, u8 param1)
{
    UnkStruct_0202BC58 v0;

    sub_0202C2A4(param0->unk_44, &v0, 0, param1);

    if ((v0.unk_00_0 == 0) && (v0.unk_00_7 == 0) && (v0.unk_00_14 == 0)) {
        return 0;
    }

    return 1;
}

static u8 ov81_021D13CC(UnkStruct_ov81_021D1610 *param0, s8 param1)
{
    if (param1 == 1) {
        if (param0->unk_105C != 9) {
            if (ov81_021D13A0(param0, param0->unk_105C + 1) == 1) {
                return 1;
            }
        }
    } else {
        if (param0->unk_105C != 0) {
            if (ov81_021D13A0(param0, param0->unk_105C - 1) == 1) {
                return 1;
            }
        }
    }

    return 0;
}

static void ov81_021D140C(UnkStruct_ov81_021D1610 *param0, u8 param1, u8 param2)
{
    sub_02019E2C(param0->unk_00, param1, 0, 0, 32, 32, param2);
    sub_0201C3C0(param0->unk_00, param1);
}

static void ov81_021D1434(UnkStruct_ov81_021D1610 *param0)
{
    u16 *v0;

    v0 = sub_02019FE4(param0->unk_00, 0);
    MI_CpuCopy16(v0, param0->unk_85C, 0x800);
}

static void ov81_021D1450(UnkStruct_ov81_021D1610 *param0, u16 *param1, u16 param2, u16 param3)
{
    u16 *v0;
    u16 v1, v2;

    v0 = sub_02019FE4(param0->unk_00, param2);

    for (v2 = 0; v2 < 32; v2++) {
        if (Unk_ov81_021D33E8[param3][v2] == 0xff) {
            sub_02019CB8(param0->unk_00, param2, 0, v2, 0, 1, 32, 0);
            continue;
        }

        for (v1 = 0; v1 < 32; v1++) {
            v0[v1 * 32 + v2] = param1[v1 * 32 + Unk_ov81_021D33E8[param3][v2]];
        }
    }

    sub_0201C3C0(param0->unk_00, param2);
}

static u8 ov81_021D14E0(UnkStruct_ov81_021D1610 *param0)
{
    ov81_021D1450(param0, param0->unk_85C, param0->unk_1062, param0->unk_105F);
    ov81_021D1450(param0, param0->unk_5C, param0->unk_1061, param0->unk_105F);
    ov81_021D140C(param0, param0->unk_1061, param0->unk_105C + 1);

    param0->unk_105F++;

    if (param0->unk_105F == 9) {
        BGL_SetPriority(param0->unk_1064, 0);
        BGL_SetPriority(param0->unk_1063, 1);
        BGL_SetPriority(param0->unk_1062, 2);
        BGL_SetPriority(param0->unk_1061, 3);
        return 1;
    }

    return 0;
}

static u8 ov81_021D156C(UnkStruct_ov81_021D1610 *param0)
{
    ov81_021D1450(param0, param0->unk_85C, param0->unk_1064, 8 - param0->unk_105F);
    ov81_021D1450(param0, param0->unk_5C, param0->unk_1063, 8 - param0->unk_105F);
    ov81_021D140C(param0, param0->unk_1063, param0->unk_105C);

    if (param0->unk_105F == 1) {
        BGL_SetPriority(param0->unk_1064, 0);
        BGL_SetPriority(param0->unk_1063, 1);
        BGL_SetPriority(param0->unk_1062, 2);
        BGL_SetPriority(param0->unk_1061, 3);
    }

    param0->unk_105F++;

    if (param0->unk_105F == 9) {
        return 1;
    }

    return 0;
}
