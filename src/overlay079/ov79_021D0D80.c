#include "overlay079/ov79_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_defs/struct_0203D9B8.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay007/struct_ov7_0224F358.h"
#include "overlay079/ov79_021D183C.h"
#include "overlay079/ov79_021D20F4.h"
#include "overlay079/struct_ov79_021D0E1C.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_020158A8.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0208C098.h"
#include "unk_02098FFC.h"

typedef int (*UnkFuncPtr_ov79_021D394C)(UnkStruct_ov79_021D0E1C *);

int ov79_021D0D80(OverlayManager *param0, int *param1);
int ov79_021D0DC4(OverlayManager *param0, int *param1);
int ov79_021D0DDC(OverlayManager *param0, int *param1);
static int ov79_021D0E1C(UnkStruct_ov79_021D0E1C *param0);
static int ov79_021D122C(UnkStruct_ov79_021D0E1C *param0);
static int ov79_021D12A0(UnkStruct_ov79_021D0E1C *param0);
static void ov79_021D130C(void);
static void ov79_021D132C(UnkStruct_ov79_021D0E1C *param0);
static void ov79_021D13A4(UnkStruct_ov79_021D0E1C *param0);
static void ov79_021D13C4(UnkStruct_ov79_021D0E1C *param0);
static void ov79_021D14A0(UnkStruct_ov79_021D0E1C *param0);
static void ov79_021D14A4(UnkStruct_ov79_021D0E1C *param0);
static void ov79_021D1548(UnkStruct_ov79_021D0E1C *param0);
static void ov79_021D1568(UnkStruct_ov79_021D0E1C *param0);
static void ov79_021D1618(UnkStruct_ov79_021D0E1C *param0);
static void ov79_021D167C(UnkStruct_ov79_021D0E1C *param0);
static void ov79_021D17E8(UnkStruct_ov79_021D0E1C *param0);
static int ov79_021D0FEC(UnkStruct_ov79_021D0E1C *param0);
static int ov79_021D10A0(UnkStruct_ov79_021D0E1C *param0);
static int ov79_021D10B8(UnkStruct_ov79_021D0E1C *param0);
static int ov79_021D114C(UnkStruct_ov79_021D0E1C *param0);
static int ov79_021D116C(UnkStruct_ov79_021D0E1C *param0);
static int ov79_021D11C0(UnkStruct_ov79_021D0E1C *param0);

static const UnkFuncPtr_ov79_021D394C Unk_ov79_021D394C[] = {
    ov79_021D0FEC,
    ov79_021D10A0,
    ov79_021D10B8,
    ov79_021D114C,
    ov79_021D116C,
    ov79_021D11C0
};

int ov79_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov79_021D0E1C *v0 = NULL;
    UnkStruct_0203D9B8 *v1 = OverlayManager_Args(param0);

    Heap_Create(3, 45, 0x20000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov79_021D0E1C), 45);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov79_021D0E1C));

    v0->unk_00 = 45;
    v0->unk_20 = v1;
    v0->unk_1B = v1->unk_03;
    v0->unk_14 = 0xFFFF;

    return 1;
}

int ov79_021D0DC4(OverlayManager *param0, int *param1)
{
    UnkStruct_ov79_021D0E1C *v0 = (UnkStruct_ov79_021D0E1C *)OverlayManager_Data(param0);

    if (ov79_021D0E1C(v0)) {
        return 1;
    }

    return 0;
}

int ov79_021D0DDC(OverlayManager *param0, int *param1)
{
    UnkStruct_ov79_021D0E1C *v0 = (UnkStruct_ov79_021D0E1C *)OverlayManager_Data(param0);

    v0->unk_20->unk_01 = v0->unk_1A;
    v0->unk_20->unk_02 = v0->unk_10;
    v0->unk_20->unk_03 = v0->unk_1B;
    v0->unk_20->unk_04 = v0->unk_80;
    v0->unk_20->unk_06 = v0->unk_82;

    OverlayManager_FreeData(param0);
    Heap_Destroy(v0->unk_00);

    return 1;
}

static int ov79_021D0E1C(UnkStruct_ov79_021D0E1C *param0)
{
    switch (param0->unk_04) {
    case 0:

        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        sub_0200F32C(0);
        sub_0200F32C(1);
        sub_0201E3D8();
        sub_0201E450(4);
        break;
    case 1:
        if (!ov79_021D122C(param0)) {
            return 0;
        }

        param0->unk_0C = 0;
        sub_0200F174(0, 1, 1, 0x0, 6, 1, param0->unk_00);
        break;
    case 2:
        ov79_021D21F8(param0);

        if (!ScreenWipe_Done()) {
            return 0;
        }
        break;
    case 3:
        ov79_021D21F8(param0);

        if ((Unk_ov79_021D394C[param0->unk_18])(param0) == 0) {
            return 0;
        }

        param0->unk_0C = 0;
        sub_0200F174(0, 0, 0, 0x0, 6, 1, param0->unk_00);
        break;
    case 4:
        ov79_021D21F8(param0);

        if (!ScreenWipe_Done()) {
            return 0;
        }
        break;
    case 5:
        if (!ov79_021D12A0(param0)) {
            return 0;
        }
        break;
    case 6:
        sub_0201E530();
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        SetMainCallback(NULL, NULL);
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();
        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        break;
    default:
        return 1;
    }

    param0->unk_04++;
    return 0;
}

static void ov79_021D0F7C(void *param0)
{
    UnkStruct_ov79_021D0E1C *v0 = (UnkStruct_ov79_021D0E1C *)param0;

    if (v0->unk_1B8 != NULL) {
        sub_0200C800();
    }

    sub_0201DCAC();
    sub_0201C2B8(v0->unk_24);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static int ov79_021D0FB0(UnkStruct_ov79_021D0E1C *param0)
{
    int v0;
    u16 v1;
    static const TouchScreenRect v2[] = {
        { 0x22, 0x3E, 0x60, 0xA0 },
        { 0x52, 0x6E, 0xA0, 0xE0 },
        { 0x94, 0xB0, 0x88, 0xC8 },
        { 0x96, 0xB2, 0x38, 0x78 },
        { 0x52, 0x6E, 0x20, 0x60 },
        { 0x66, 0x82, 0x60, 0xA0 },
        { 0xFF, 0x0, 0x0, 0x0 }
    };

    v0 = sub_02022664(v2);

    if (v0 != 0xffffffff) {
        return v0;
    }

    v0 = sub_02022644(v2);

    if (v0 == 0xffffffff) {
        if (param0->unk_14 == 1) {
            ov79_021D1B24(param0, param0->unk_1B, 2);
        }
    }

    return -1;
}

static int ov79_021D0FEC(UnkStruct_ov79_021D0E1C *param0)
{
    u32 v0 = 0xffffffff;
    int v1 = 0;

    if (param0->unk_C4 == NULL) {
        return 0;
    }

    v1 = ov79_021D0FB0(param0);

    if (gCoreSys.heldKeys != 0) {
        if (param0->unk_14 == 0) {
            v0 = sub_02001288(param0->unk_C4);
        }
    } else {
        if (v1 >= 0) {
            ov79_021D1C44(param0, (u8)v1);
        }
        return 0;
    }

    if (v0 == 0xffffffff) {
        return 0;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(1500);
        param0->unk_1A = 0xFF;
        param0->unk_10 = 0;
        return 1;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(1500);

        switch (v0) {
        case 0xffffffff:
        case 0xfffffffe:
        case 0xFF:
            param0->unk_1A = 0xFF;
            param0->unk_10 = 0;
            return 1;
        default:
            param0->unk_1A = v0;
            param0->unk_18 = 1;
            return 0;
        }
    }

    return 0;
}

static int ov79_021D10A0(UnkStruct_ov79_021D0E1C *param0)
{
    u32 v0;

    ov79_021D2214(param0, 1);
    ov79_021D1ED8(param0);

    param0->unk_18 = 2;

    return 0;
}

static int ov79_021D10B8(UnkStruct_ov79_021D0E1C *param0)
{
    u32 v0;

    v0 = sub_02001288(param0->unk_C8);

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(1500);
        ov79_021D1F60(param0);
        ov79_021D2214(param0, 0);
        param0->unk_18 = 0;
        return 0;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(1500);

        switch (v0) {
        case 0:
            param0->unk_10 = 1;
            return 1;
        case 1:
            ov79_021D1F60(param0);
            ov79_021D1FBC(param0);
            param0->unk_18 = 3;
            break;
        case 0xffffffff:
        case 0xfffffffe:
        default:
            ov79_021D1F60(param0);
            ov79_021D2214(param0, 0);
            param0->unk_18 = 0;
            break;
        }
    }

    return 0;
}

static int ov79_021D114C(UnkStruct_ov79_021D0E1C *param0)
{
    if (Text_IsPrinterActive(param0->unk_1F)) {
        return 0;
    }

    ov79_021D2054(param0);
    param0->unk_18 = 4;
    return 0;
}

static int ov79_021D116C(UnkStruct_ov79_021D0E1C *param0)
{
    switch (sub_02002114(param0->unk_D4, param0->unk_00)) {
    case 0:
        Sound_PlayEffect(1500);
        ov79_021D2008(param0);
        param0->unk_18 = 5;
        return 0;
    case 0xfffffffe:
        Sound_PlayEffect(1500);
        sub_0200E084(&param0->unk_E8[2], 0);
        param0->unk_18 = 1;
        return 0;
    }

    return 0;
}

static int ov79_021D11C0(UnkStruct_ov79_021D0E1C *param0)
{
    if (Text_IsPrinterActive(param0->unk_1F)) {
        return 0;
    }

    if ((gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) == 0) {
        return 0;
    }

    sub_0200E084(&param0->unk_E8[2], 1);
    sub_0201ACF4(&param0->unk_E8[2]);

    param0->unk_20->unk_1C[param0->unk_1A].unk_04_val1_6 = 1;
    param0->unk_20->unk_02 = 1;

    ov79_021D1AB8(param0, 0);
    ov79_021D196C(param0);
    ov79_021D2214(param0, 0);

    param0->unk_18 = 0;
    return 0;
}

static int ov79_021D122C(UnkStruct_ov79_021D0E1C *param0)
{
    switch (param0->unk_08) {
    case 0:
        ov79_021D132C(param0);
        break;
    case 1:
        ov79_021D13C4(param0);
        break;
    case 2:
        ov79_021D1568(param0);
        ov79_021D14A4(param0);
        break;
    case 3:
        ov79_021D20F4(param0);
        break;
    case 4:
        ov79_021D167C(param0);
        break;
    case 5:
        ov79_021D196C(param0);
        ov79_021D1B24(param0, param0->unk_1B, 4);
        SetMainCallback(ov79_021D0F7C, param0);
        param0->unk_08 = 0;
        return 1;
    }

    param0->unk_08++;
    return 0;
}

static int ov79_021D12A0(UnkStruct_ov79_021D0E1C *param0)
{
    switch (param0->unk_08) {
    case 0:
        if (param0->unk_D0 != NULL) {
            ov79_021D1F60(param0);
        }

        ov79_021D1AB8(param0, 1);
        break;
    case 1:
        ov79_021D17E8(param0);
        ov79_021D21CC(param0);
        break;
    case 2:
        ov79_021D1548(param0);
        ov79_021D1618(param0);
        break;
    case 3:
        ov79_021D14A0(param0);
        break;
    case 4:
        ov79_021D13A4(param0);
        break;
    case 5:
        return 1;
    }

    param0->unk_08++;
    return 0;
}

static void ov79_021D130C(void)
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
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov79_021D132C(UnkStruct_ov79_021D0E1C *param0)
{
    int v0, v1;

    ov79_021D130C();

    param0->unk_24 = sub_02018340(param0->unk_00);

    {
        UnkStruct_ov84_0223BA5C v2 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v2);
    }

    {
        UnkStruct_ov97_0222DB78 v3[] = {
            {
                0x0,
                0x0,
                0x800,
                0x0,
                0x1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0x0,
                0x0,
                0x0,
                0x0,
            },
            {
                0x0,
                0x0,
                0x800,
                0x0,
                0x1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                0x1,
                0x0,
                0x0,
                0x0,
            },
            {
                0x0,
                0x0,
                0x800,
                0x0,
                0x1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xe800,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                0x3,
                0x0,
                0x0,
                0x0,
            },
            {
                0x0,
                0x0,
                0x800,
                0x0,
                0x1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xe000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0x3,
                0x0,
                0x0,
                0x0,
            },
            {
                0x0,
                0x0,
                0x800,
                0x0,
                0x1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf800,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                0x0,
                0x0,
                0x0,
                0x0,
            },
            {
                0x0,
                0x0,
                0x800,
                0x0,
                0x1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0x1,
                0x0,
                0x0,
                0x0,
            },
        };

        v1 = 0;

        for (v0 = 0; v0 < 6; v0++) {
            sub_020183C4(param0->unk_24, v1, &(v3[v0]), 0);
            sub_02019EBC(param0->unk_24, v1);
            sub_02019690(v1, 32, 0, param0->unk_00);
            ++v1;
        }
    }
}

static void ov79_021D13A4(UnkStruct_ov79_021D0E1C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        sub_02019044(param0->unk_24, v0);
    }

    Heap_FreeToHeap(param0->unk_24);
}

static void ov79_021D13C4(UnkStruct_ov79_021D0E1C *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PORU_GRA, param0->unk_00);

    sub_0208C210(param0->unk_24, param0->unk_00, v0, 83, 2, 0, 0, 0, 0);
    sub_0208C210(param0->unk_24, param0->unk_00, v0, 83, 3, 5, 0, 0, 0);
    sub_0208C210(param0->unk_24, param0->unk_00, v0, 83, 0, 0, 2, 0x20 * 0xC, 0);
    sub_0208C210(param0->unk_24, param0->unk_00, v0, 83, 0, 4, 2, 0x20 * 0xC, 0);
    sub_0208C210(param0->unk_24, param0->unk_00, v0, 83, 10, 3, 1, 0, 0);
    sub_0208C210(param0->unk_24, param0->unk_00, v0, 83, 11, 5, 1, 0, 0);
    NARC_dtor(v0);
    sub_0201C3C0(param0->unk_24, 3);
    sub_0201C3C0(param0->unk_24, 5);
}

static void ov79_021D14A0(UnkStruct_ov79_021D0E1C *param0)
{
    return;
}

static void ov79_021D14A4(UnkStruct_ov79_021D0E1C *param0)
{
    int v0;
    static const struct {
        u8 unk_00, unk_01, unk_02, unk_03, unk_04, unk_05;
        u16 unk_06;
    } v1[] = {
        { 0x2, 0x2, 0x4, 0x16, 0xC, 0xD, 0x28 },
        { 0x2, 0xB, 0x14, 0xA, 0x2, 0xD, 0x131 },
        { 0x1, 0x2, 0x13, 0x1B, 0x4, 0xC, 0x145 },
        { 0x1, 0x1A, 0x11, 0x5, 0x6, 0xD, 0x1B1 },
        { 0x1, 0x1A, 0xD, 0x5, 0x4, 0xD, 0x1CF },
        { 0x1, 0x0, 0x0, 0x10, 0x2, 0xD, 0x1E3 },
        { 0x4, 0x6, 0x0, 0x14, 0x3, 0xD, 0x1 },
        { 0x4, 0xC, 0x5, 0x8, 0x3, 0x5, 0x41 },
        { 0x4, 0x14, 0xA, 0x8, 0x3, 0x6, 0x59 },
        { 0x4, 0x11, 0x13, 0x8, 0x3, 0x7, 0x71 },
        { 0x4, 0x7, 0x13, 0x8, 0x3, 0x8, 0x89 },
        { 0x4, 0x4, 0xA, 0x8, 0x3, 0x9, 0xA1 },
        { 0x4, 0xC, 0xD, 0x8, 0x3, 0xA, 0xB9 }
    };

    sub_0200DAA4(param0->unk_24, 1, 1 + 18 + 12, 15, 0, param0->unk_00);
    sub_0200DD0C(param0->unk_24, 1, 1, 14, Options_Frame(param0->unk_20->unk_18), param0->unk_00);
    Font_LoadTextPalette(0, 13 * 32, param0->unk_00);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, param0->unk_00);
    Font_LoadTextPalette(4, 13 * 32, param0->unk_00);

    for (v0 = 0; v0 < 13; v0++) {
        BGL_AddWindow(param0->unk_24, &param0->unk_E8[v0], v1[v0].unk_00, v1[v0].unk_01, v1[v0].unk_02, v1[v0].unk_03, v1[v0].unk_04, v1[v0].unk_05, v1[v0].unk_06);
        BGL_FillWindow(&(param0->unk_E8[v0]), 0);
    }

    ov79_021D2078(param0);
}

static void ov79_021D1548(UnkStruct_ov79_021D0E1C *param0)
{
    int v0 = 0;

    for (v0 = 0; v0 < 13; v0++) {
        sub_0201ACF4(&param0->unk_E8[v0]);
        BGL_DeleteWindow(&param0->unk_E8[v0]);
    }
}

static void ov79_021D1568(UnkStruct_ov79_021D0E1C *param0)
{
    int v0 = 0;

    Font_InitManager(FONT_SUBSCREEN, param0->unk_00);

    param0->unk_2C = MessageLoader_Init(0, 26, 463, param0->unk_00);
    param0->unk_28 = sub_020158A8(param0->unk_00);
    param0->unk_30.unk_00 = StringTemplate_New(2, 64, param0->unk_00);
    param0->unk_30.unk_04 = Strbuf_Init(64, param0->unk_00);
    param0->unk_30.unk_08 = MessageLoader_GetNewStrbuf(param0->unk_2C, 6);
    param0->unk_30.unk_0C = MessageLoader_GetNewStrbuf(param0->unk_2C, 22);
    param0->unk_30.unk_10 = MessageLoader_GetNewStrbuf(param0->unk_2C, 4);
    param0->unk_30.unk_14 = MessageLoader_GetNewStrbuf(param0->unk_2C, 7);
    param0->unk_30.unk_18 = MessageLoader_GetNewStrbuf(param0->unk_2C, 8);
    param0->unk_30.unk_1C = MessageLoader_GetNewStrbuf(param0->unk_2C, 0);

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_30.unk_20[v0] = MessageLoader_GetNewStrbuf(param0->unk_2C, 11 + v0);

        if (v0 >= 5) {
            break;
        }

        param0->unk_30.unk_38[v0] = MessageLoader_GetNewStrbuf(param0->unk_2C, 17 + v0);
    }

    param0->unk_30.unk_4C = Options_TextFrameDelay(param0->unk_20->unk_18);
}

static void ov79_021D1618(UnkStruct_ov79_021D0E1C *param0)
{
    int v0 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        Strbuf_Free(param0->unk_30.unk_20[v0]);

        if (v0 >= 5) {
            break;
        }

        Strbuf_Free(param0->unk_30.unk_38[v0]);
    }

    Strbuf_Free(param0->unk_30.unk_1C);
    Strbuf_Free(param0->unk_30.unk_18);
    Strbuf_Free(param0->unk_30.unk_14);
    Strbuf_Free(param0->unk_30.unk_10);
    Strbuf_Free(param0->unk_30.unk_0C);
    Strbuf_Free(param0->unk_30.unk_08);
    Strbuf_Free(param0->unk_30.unk_04);
    StringTemplate_Free(param0->unk_30.unk_00);
    sub_020158F4(param0->unk_28);
    MessageLoader_Free(param0->unk_2C);
    Font_Free(FONT_SUBSCREEN);
}

static void ov79_021D167C(UnkStruct_ov79_021D0E1C *param0)
{
    int v0;
    static const UnkStruct_ov7_0224F358 v1[] = {
        { 0x0, 0x69, 0x28, 0x0, 0x0, 0x1, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x50, 0x12, 0x0, 0x1, 0x2, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x50, 0x8C, 0x0, 0x2, 0x2, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0xA, 0x64, 0x0, 0x3, 0x3, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
        { 0x1, 0xA, 0x64, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DSUB, 0x0, 0x0, 0x0, 0x0 }
    };

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_1C0[v0] = sub_0200CA08(param0->unk_1B8, param0->unk_1BC, &v1[v0]);
        CellActor_SetDrawFlag(param0->unk_1C0[v0], 1);
    }

    CellActor_SetAnimateFlag(param0->unk_1C0[0], 0);
    CellActor_SetAnimateFlag(param0->unk_1C0[1], 1);
    CellActor_SetAnimateFlag(param0->unk_1C0[2], 1);

    for (v0 = 0; v0 < 5; v0++) {
        static const struct {
            u16 unk_00, unk_02;
        } v2[] = {
            { 0x28, 0x9C },
            { 0x36, 0xA5 },
            { 0x31, 0xB4 },
            { 0x1F, 0xB4 },
            { 0x1A, 0xA5 }
        };

        param0->unk_1CC[v0] = sub_0200CA08(param0->unk_1B8, param0->unk_1BC, &v1[3]);

        CellActor_SetDrawFlag(param0->unk_1CC[v0], 1);
        CellActor_SetAnim(param0->unk_1CC[v0], v0 + 3);
        SpriteActor_SetPositionXY(param0->unk_1CC[v0], v2[v0].unk_00, v2[v0].unk_02);
    }

    for (v0 = 0; v0 < 6; v0++) {
        static const struct {
            u16 unk_00, unk_02;
        } v3[] = {
            { 0x80, 0x30 },
            { 0xC0, 0x60 },
            { 0xA8, 0xA2 },
            { 0x58, 0xA4 },
            { 0x40, 0x60 },
            { 0x80, 0x74 }
        };

        param0->unk_1E0[v0] = sub_0200CA08(param0->unk_1B8, param0->unk_1BC, &v1[4]);

        CellActor_SetDrawFlag(param0->unk_1E0[v0], 1);
        CellActor_SetAnim(param0->unk_1E0[v0], v0 * 3);
        CellActor_SetAnimSpeed(param0->unk_1E0[v0], FX32_CONST(2));
        CellActor_SetExplicitPalette(param0->unk_1E0[v0], v0 + 2);
        CellActor_SetAnimateFlag(param0->unk_1E0[v0], 0);
        SpriteActor_SetPositionXY(param0->unk_1E0[v0], v3[v0].unk_00, v3[v0].unk_02);
    }

    param0->unk_1FC = sub_0209916C(param0->unk_1F8, 0, 231, 76, 0, 1, 0, 0);

    SpriteActor_EnableObject(param0->unk_1FC->unk_04, 0);
}

static void ov79_021D17E8(UnkStruct_ov79_021D0E1C *param0)
{
    int v0;

    sub_02099370(param0->unk_1F8, param0->unk_1FC);

    for (v0 = 0; v0 < 6; v0++) {
        sub_0200C7E4(param0->unk_1E0[v0]);
    }

    for (v0 = 0; v0 < 5; v0++) {
        sub_0200C7E4(param0->unk_1CC[v0]);
    }

    for (v0 = 0; v0 < 3; v0++) {
        sub_0200C7E4(param0->unk_1C0[v0]);
    }
}
