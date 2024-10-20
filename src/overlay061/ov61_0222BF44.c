#include "overlay061/ov61_0222BF44.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02025CCC_decl.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_02017498.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay061/struct_ov61_0222C3B0.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_text.h"
#include "save_player.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02001AF4.h"
#include "unk_02006E3C.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_02025CB0.h"
#include "unk_0202ACE0.h"
#include "unk_020366A0.h"
#include "unk_02038FFC.h"
#include "unk_020393C8.h"

typedef struct {
    UnkStruct_02017498 *unk_00;
    BGL *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    StringTemplate *unk_20;
    MessageLoader *unk_24;
    MessageLoader *unk_28;
    MessageLoader *unk_2C;
    MessageLoader *unk_30;
    Strbuf *unk_34;
    Strbuf *unk_38;
    Strbuf *unk_3C;
    int unk_40;
    Window unk_44;
    Window unk_54;
    Window unk_64;
    Window unk_74;
    UIControlData *unk_84;
    void *unk_88;
    int unk_8C;
    int unk_90;
    int unk_94;
    int unk_98;
    ResourceMetadata *unk_9C;
    BmpList *unk_A0;
    UnkStruct_ov61_0222C3B0 unk_A4;
} UnkStruct_ov61_0222C664;

int ov61_0222BF44(OverlayManager *param0, int *param1);
int ov61_0222C0F8(OverlayManager *param0, int *param1);
int ov61_0222C160(OverlayManager *param0, int *param1);
static void ov61_0222C1FC(void *param0);
static void ov61_0222C224(BGL *param0);
static void ov61_0222C38C(BGL *param0);
static void ov61_0222C3B0(UnkStruct_ov61_0222C664 *param0);
static void ov61_0222C664(UnkStruct_ov61_0222C664 *param0);
static void ov61_0222C70C(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222C728(Window *param0, Strbuf *param1, int param2, int param3, u32 param4, int param5);
void ov61_0222C760(Window *param0, Strbuf *param1, int param2, int param3, int param4, TextColor param5);
static void ov61_0222C794(UnkStruct_ov61_0222C664 *param0, int param1);
static void ov61_0222C7F8(UnkStruct_ov61_0222C664 *param0, int param1, int param2);
static int ov61_0222C834(int param0);
static void ov61_0222C850(UnkStruct_ov61_0222C664 *param0);
static void ov61_0222C86C(UnkStruct_ov61_0222C664 *param0);
static UIControlData *ov61_0222C884(BGL *param0, int param1, int param2);
static void ov61_0222C8B8(UnkStruct_ov61_0222C664 *param0, MessageLoader *param1, int param2, int param3, u16 param4);
static void ov61_0222C920(UnkStruct_ov61_0222C664 *param0, int param1, int param2);
static BOOL ov61_0222C928(int param0, int param1);
static int ov61_0222C960(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CA20(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CAA8(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CB2C(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CB3C(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CBF0(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CC40(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CC64(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CCAC(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CCE8(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CD58(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CE14(UnkStruct_ov61_0222C664 *param0);
static int ov61_0222CE2C(UnkStruct_ov61_0222C664 *param0);

static int (*Unk_ov61_0222E600[])(UnkStruct_ov61_0222C664 *) = {
    ov61_0222C960,
    ov61_0222CA20,
    ov61_0222CAA8,
    ov61_0222CB2C,
    ov61_0222CB3C,
    ov61_0222CBF0,
    ov61_0222CC40,
    ov61_0222CC64,
    ov61_0222CCAC,
    ov61_0222CCAC,
    ov61_0222CCE8,
    ov61_0222CD58,
    ov61_0222CE14,
    ov61_0222CE2C,
};

static const UnkStruct_ov61_0222C884 Unk_ov61_0222E4A0 = {
    0x0,
    0x17,
    0xD,
    0x7,
    0x4,
    0xD,
    0x0
};

int ov61_0222BF44(OverlayManager *param0, int *param1)
{
    UnkStruct_ov61_0222C664 *v0;

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(3, 117, 0x50000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov61_0222C664), 117);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov61_0222C664));
    v0->unk_00 = OverlayManager_Args(param0);
    v0->unk_04 = sub_02018340(117);

    sub_0201DBEC(64, 117);
    SetAutorepeat(4, 8);
    ov61_0222C224(v0->unk_04);
    sub_0201E3D8();
    sub_0201E450(4);

    v0->unk_20 = StringTemplate_New(11, 64, 117);
    v0->unk_24 = MessageLoader_Init(0, 26, 671, 117);
    v0->unk_28 = MessageLoader_Init(0, 26, 674, 117);
    v0->unk_2C = MessageLoader_Init(0, 26, 695, 117);
    v0->unk_34 = Strbuf_Init((90 * 2), 117);
    v0->unk_3C = Strbuf_Init((16 * 8 * 2), 117);
    v0->unk_38 = MessageLoader_GetNewStrbuf(v0->unk_24, 31);

    ov61_0222C3B0(v0);
    ov61_0222C664(v0);

    sub_0200F174(0, 1, 1, 0x0, 6, 1, 117);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);

    gCoreSys.unk_65 = 0;

    GXLayers_SwapDisplay();
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);
    SetMainCallback(ov61_0222C1FC, v0);

    if (v0->unk_00->unk_10) {
        sub_02039734();
        ov61_0222C920(v0, 13, 8);
    } else {
        if (v0->unk_00->unk_00->unk_08) {
            v0->unk_08 = 1;
        } else {
            v0->unk_08 = 0;
        }
    }

    v0->unk_00->unk_8C = 0;
    return 1;
}

int ov61_0222C0F8(OverlayManager *param0, int *param1)
{
    UnkStruct_ov61_0222C664 *v0 = OverlayManager_Data(param0);
    int v1, v2;

    switch (*param1) {
    case 0:
        if (ScreenWipe_Done() == 1) {
            *param1 = 1;
        }
        break;
    case 1:
        v2 = v0->unk_08;
        v1 = (*Unk_ov61_0222E600[v0->unk_08])(v0);

        if (v2 != v0->unk_08) {
            v0->unk_90 = 0;
            v0->unk_98 = 0;
            v0->unk_94 = 0;
        }

        if (v1 == 1) {
            *param1 = 2;
        }
        break;
    case 2:
        if (ScreenWipe_Done() == 1) {
            return 1;
        }
        break;
    }

    inline_ov61_0222C0F8(&v0->unk_A4);
    return 0;
}

int ov61_0222C160(OverlayManager *param0, int *param1)
{
    UnkStruct_ov61_0222C664 *v0 = OverlayManager_Data(param0);

    inline_ov61_0222C160(&v0->unk_A4);

    MessageLoader_Free(v0->unk_2C);
    MessageLoader_Free(v0->unk_28);
    MessageLoader_Free(v0->unk_24);
    StringTemplate_Free(v0->unk_20);
    Strbuf_Free(v0->unk_38);
    Strbuf_Free(v0->unk_3C);
    Strbuf_Free(v0->unk_34);
    ov61_0222C70C(v0);
    Heap_FreeToHeap(v0->unk_04);
    ov61_0222C38C(v0->unk_04);
    SetMainCallback(NULL, NULL);
    DisableHBlank();
    sub_0201DC3C();
    sub_0201E530();
    RenderControlFlags_SetCanABSpeedUpPrint(0);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);
    sub_02039794();
    OverlayManager_FreeData(param0);
    Heap_Destroy(117);

    return 1;
}

static void ov61_0222C1FC(void *param0)
{
    UnkStruct_ov61_0222C664 *v0 = param0;

    sub_0201DCAC();
    sub_0200A858();
    sub_0201C2B8(v0->unk_04);

    inline_ov61_0222C1FC(&v0->unk_A4);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov61_0222C224(BGL *param0)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

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

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        sub_02018368(&v1);
    }

    {
        UnkStruct_ov97_0222DB78 v2[] = {
            {
                0,
                0,
                0x800,
                0,
                0x1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
            {
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
                0,
            },
        };

        sub_020183C4(param0, 0, &v2[0], 0);
        sub_02019EBC(param0, 0);
        sub_02019184(param0, 0, 0, 0);
        sub_02019184(param0, 0, 3, 0);
        sub_020183C4(param0, 1, &v2[1], 0);
        sub_02019EBC(param0, 1);
        sub_02019184(param0, 1, 0, 0);
        sub_02019184(param0, 1, 3, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3[] = {
            {
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
                0,
            },
            {
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
                0,
            },
        };

        sub_020183C4(param0, 4, &v3[0], 0);
        sub_02019EBC(param0, 4);
        sub_02019184(param0, 4, 0, 0);
        sub_02019184(param0, 4, 3, 0);
        sub_020183C4(param0, 5, &v3[1], 0);
        sub_02019EBC(param0, 5);
        sub_02019184(param0, 5, 0, 0);
        sub_02019184(param0, 5, 3, 0);
    }

    sub_02019690(0, 32, 0, 117);
    sub_02019690(4, 32, 0, 117);
}

static void ov61_0222C38C(BGL *param0)
{
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
}

static void ov61_0222C3B0(UnkStruct_ov61_0222C664 *param0)
{
    BGL *v0 = param0->unk_04;
    NARC *v1;

    v1 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, 117);

    sub_02007130(v1, 3, 0, 0, 0, 117);
    sub_02007130(v1, 3, 4, 0, 0, 117);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, 117);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, 117);
    sub_0200DD0C(v0, 0, 1, 10, Options_Frame(SaveData_Options(param0->unk_00->unk_00->unk_04)), 117);
    sub_0200DAA4(v0, 0, (1 + (18 + 12)), 11, 0, 117);
    sub_020070E8(v1, 2, v0, 1, 0, 0, 0, 117);
    sub_0200710C(v1, 5, v0, 1, 0, 32 * 24 * 2, 0, 117);
    sub_020070E8(v1, 10, v0, 5, 0, 0, 0, 117);
    sub_0200710C(v1, 11, v0, 5, 0, 32 * 24 * 2, 0, 117);
    sub_0201975C(0, 0);
    sub_0201975C(4, 0);

    inline_ov61_0222C3B0(&param0->unk_A4, v1, 4, 117);

    NARC_dtor(v1);
}

static void ov61_0222C664(UnkStruct_ov61_0222C664 *param0)
{
    BGL_AddWindow(param0->unk_04, &param0->unk_64, 0, 4, 4, 23, 16, 13, (((1 + (18 + 12)) + 9) + 27 * 4));
    BGL_FillWindow(&param0->unk_64, 0x0);
    BGL_AddWindow(param0->unk_04, &param0->unk_54, 0, 4, 1, 24, 2, 13, ((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16));
    BGL_FillWindow(&param0->unk_54, 0x0);

    ov61_0222C760(&param0->unk_54, param0->unk_38, 0, 1, 1, TEXT_COLOR(15, 14, 0));

    BGL_AddWindow(param0->unk_04, &param0->unk_44, 0, 2, 19, 27, 4, 13, ((1 + (18 + 12)) + 9));
    BGL_FillWindow(&param0->unk_44, 0x0);
}

static void ov61_0222C70C(UnkStruct_ov61_0222C664 *param0)
{
    BGL_DeleteWindow(&param0->unk_44);
    BGL_DeleteWindow(&param0->unk_54);
    BGL_DeleteWindow(&param0->unk_64);
}

static int ov61_0222C728(Window *param0, Strbuf *param1, int param2, int param3, u32 param4, int param5)
{
    int v0 = 0, v1;

    switch (param3) {
    case 1:
        v0 = Font_CalcStrbufWidth(param5, param1, 0);
        param2 = ((param0->unk_07 * 8) - v0) / 2;
        break;
    case 2:
        v0 = Font_CalcStrbufWidth(param5, param1, 0);
        param2 = (param0->unk_07 * 8) - v0;
        break;
    }

    return param2;
}

void ov61_0222C760(Window *param0, Strbuf *param1, int param2, int param3, int param4, TextColor param5)
{
    param2 = ov61_0222C728(param0, param1, param2, param4, param5, 1);
    Text_AddPrinterWithParamsAndColor(param0, FONT_MESSAGE, param1, param2, param3, TEXT_SPEED_INSTANT, param5, NULL);
}

static void ov61_0222C794(UnkStruct_ov61_0222C664 *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init((16 * 8 * 2), 117);

    MessageLoader_GetStrbuf(param0->unk_2C, param1, v0);
    StringTemplate_Format(param0->unk_20, param0->unk_3C, v0);
    BGL_FillWindow(&param0->unk_64, 15);
    Window_Show(&param0->unk_64, 1, (1 + (18 + 12)), 11);

    param0->unk_40 = Text_AddPrinterWithParams(&param0->unk_64, FONT_MESSAGE, param0->unk_3C, 0, 0, TEXT_SPEED_INSTANT, NULL);
    param0->unk_40 = 0xff;

    Strbuf_Free(v0);
}

static void ov61_0222C7F8(UnkStruct_ov61_0222C664 *param0, int param1, int param2)
{
    int v0;

    if (param1 != -1) {
        v0 = 0 + param1;
    } else {
        v0 = 11;
    }

    StringTemplate_SetNumber(param0->unk_20, 0, param2, 5, 2, 1);
    sub_0200E084(&param0->unk_44, 1);

    ov61_0222C794(param0, v0);
}

static int ov61_0222C834(int param0)
{
    if ((param0 == 0xff) || (Text_IsPrinterActive(param0) == 0)) {
        return 0;
    }

    return 1;
}

static void ov61_0222C850(UnkStruct_ov61_0222C664 *param0)
{
    if (param0->unk_88 == NULL) {
        param0->unk_88 = sub_0200E7FC(&param0->unk_44, 1);
    }
}

static void ov61_0222C86C(UnkStruct_ov61_0222C664 *param0)
{
    if (param0->unk_88 != NULL) {
        DeleteWaitDial(param0->unk_88);
        param0->unk_88 = NULL;
    }
}

static UIControlData *ov61_0222C884(BGL *param0, int param1, int param2)
{
    UnkStruct_ov61_0222C884 v0;

    v0 = Unk_ov61_0222E4A0;
    v0.unk_02 = param1;
    v0.unk_06 = param2;

    return sub_02002100(param0, &v0, (1 + (18 + 12)), 11, 117);
}

static void ov61_0222C8B8(UnkStruct_ov61_0222C664 *param0, MessageLoader *param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    v0 = MessageLoader_GetNewStrbuf(param1, param2);

    StringTemplate_Format(param0->unk_20, param0->unk_34, v0);
    Strbuf_Free(v0);
    BGL_FillWindow(&param0->unk_44, 0xf0f);
    sub_0200E060(&param0->unk_44, 0, 1, 10);

    param0->unk_40 = Text_AddPrinterWithParams(&param0->unk_44, FONT_MESSAGE, param0->unk_34, 0, 0, param3, NULL);
    param0->unk_8C = 0;

    if ((param3 == 0xff) || (param3 == 0)) {
        param0->unk_40 = 0xff;
    }
}

static void ov61_0222C920(UnkStruct_ov61_0222C664 *param0, int param1, int param2)
{
    param0->unk_08 = param1;
    param0->unk_0C = param2;
}

static BOOL ov61_0222C928(int param0, int param1)
{
    int v0;
    BOOL v1;

    v0 = ov4_021D1F3C(param0, param1);

    switch (v0) {
    case 1:
    case 4:
    case 5:
    case 11:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
        v1 = 1;
        break;
    case 0:
    case 2:
    case 3:
    default:
        v1 = 0;
        break;
    }

    return v1;
}

static int ov61_0222C960(UnkStruct_ov61_0222C664 *param0)
{
    if (ov61_0222C834(param0->unk_40) == 1) {
        return 0;
    }

    switch (param0->unk_90) {
    case 0:
        param0->unk_90++;
        break;
    case 1:
        ov61_0222C8B8(param0, param0->unk_2C, 17, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_90++;
        break;
    case 2:
        param0->unk_84 = ov61_0222C884(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2));
        param0->unk_90++;
        break;
    case 3: {
        int v0 = sub_02002114(param0->unk_84, 117);

        if (v0 != 0xffffffff) {
            if (v0 == 0xfffffffe) {
                param0->unk_08 = 8;
            } else {
                param0->unk_90++;
            }
        }
    } break;
    case 4:
        param0->unk_08 = 1;
        break;
    }

    return 0;
}

static int ov61_0222CA20(UnkStruct_ov61_0222C664 *param0)
{
    switch (param0->unk_90) {
    case 0:
        sub_02038438(param0->unk_00->unk_00->unk_04);
        sub_02039734();
        ov61_0222C8B8(param0, param0->unk_28, 1, TEXT_SPEED_FAST, 0xf0f);
        ov61_0222C850(param0);
        param0->unk_90++;
        break;
    case 1:
        if (ov61_0222C834(param0->unk_40) == 0) {
            param0->unk_90++;
        }
        break;
    case 2:
        DWC_InitInetEx(&param0->unk_00->unk_20, 2, 1, 20);
        DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
        DWC_ConnectInetAsync();
        param0->unk_08 = 2;
        break;
    }

    return 0;
}

static int ov61_0222CAA8(UnkStruct_ov61_0222C664 *param0)
{
    DWC_ProcessInet();

    if (DWC_CheckInet()) {
        switch (DWC_GetInetStatus()) {
        case DWC_CONNECTINET_STATE_ERROR: {
            DWCError v0;
            int v1;
            DWCErrorType v2;

            v0 = DWC_GetLastErrorEx(&v1, &v2);
            param0->unk_14 = v0;
            param0->unk_18 = v1;
            param0->unk_1C = v2;
        }
            DWC_ClearError();
            DWC_CleanupInet();
            ov61_0222C86C(param0);
            param0->unk_08 = 6;
            break;
        case DWC_CONNECTINET_STATE_NOT_INITIALIZED:
        case DWC_CONNECTINET_STATE_IDLE:
        case DWC_CONNECTINET_STATE_OPERATING:
        case DWC_CONNECTINET_STATE_OPERATED:
        case DWC_CONNECTINET_STATE_DISCONNECTING:
        case DWC_CONNECTINET_STATE_DISCONNECTED:
        default:
        case DWC_CONNECTINET_STATE_FATAL_ERROR: {
            DWCError v3;
            int v4;

            v3 = DWC_GetLastError(&v4);

            ov61_0222C86C(param0);
            param0->unk_08 = 10;
            param0->unk_10 = -2;
        } break;
        case DWC_CONNECTINET_STATE_CONNECTED: {
            DWCApInfo v5;

            DWC_GetApInfo(&v5);

            if (v5.aptype == DWC_APINFO_TYPE_SHOP) {
                (void)0;
            }
        }

            param0->unk_08 = 3;
            break;
        }
    }

    return 0;
}

static int ov61_0222CB2C(UnkStruct_ov61_0222C664 *param0)
{
    DWC_NASLoginAsync();
    param0->unk_08 = 4;
    return 0;
}

static int ov61_0222CB3C(UnkStruct_ov61_0222C664 *param0)
{
    switch (DWC_NASLoginProcess()) {
    case DWC_NASLOGIN_STATE_SUCCESS:;
        param0->unk_08 = 5;
        break;
    case DWC_NASLOGIN_STATE_ERROR:
    case DWC_NASLOGIN_STATE_CANCELED:
    case DWC_NASLOGIN_STATE_DIRTY:
        ov61_0222C86C(param0);
        {
            int v0;
            DWCErrorType v1;
            DWCError v2;

            v2 = DWC_GetLastErrorEx(&v0, &v1);

            param0->unk_14 = v2;
            param0->unk_18 = v0;
            param0->unk_1C = v1;

            DWC_ClearError();
            DWC_CleanupInet();

            param0->unk_08 = 6;

            switch (v1) {
            case DWC_ETYPE_LIGHT:
            case DWC_ETYPE_SHOW_ERROR:
                param0->unk_08 = 6;
                break;
            case DWC_ETYPE_SHUTDOWN_GHTTP:
                DWC_ShutdownGHTTP();
                param0->unk_08 = 6;
                break;
            case DWC_ETYPE_DISCONNECT:
                param0->unk_08 = 6;
                break;
            case DWC_ETYPE_SHUTDOWN_FM:
                DWC_ShutdownFriendsMatch();
                param0->unk_08 = 6;
                break;
            case DWC_ETYPE_SHUTDOWN_ND:
            case DWC_ETYPE_FATAL:
                sub_02038A0C();
                break;
            }
            if ((v0 < -20000) && (v0 >= -29999)) {
                param0->unk_08 = 6;
            }
        }
        break;
    }

    return 0;
}

static int ov61_0222CBF0(UnkStruct_ov61_0222C664 *param0)
{
    DWCUserData *v0;
    s32 v1;
    UnkStruct_02025CCC *v2;
    UnkStruct_0202B370 *v3;

    v3 = sub_0202B370(param0->unk_00->unk_00->unk_04);
    v2 = sub_02025CCC(param0->unk_00->unk_00->unk_04);
    v0 = sub_0202AD28(v3);
    v1 = sub_02025D74(v2);

    if (v1 == 0) {
        sub_02025D78(v2, sub_02039058(v3));
    }

    v1 = sub_02025D74(v2);

    param0->unk_08 = 9;
    param0->unk_00->unk_8C = 1;

    return 0;
}

static int ov61_0222CC40(UnkStruct_ov61_0222C664 *param0)
{
    int v0;

    v0 = ov4_021D1F3C(-param0->unk_18, param0->unk_1C);
    ov61_0222C7F8(param0, v0, -param0->unk_18);
    param0->unk_08 = 7;

    return 0;
}

static int ov61_0222CC64(UnkStruct_ov61_0222C664 *param0)
{
    if (gCoreSys.pressedKeys & PAD_BUTTON_A || gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Window_Clear(&param0->unk_64, 0);
        param0->unk_90 = 0;

        if (ov61_0222C928(-param0->unk_18, param0->unk_1C) == 1) {
            param0->unk_08 = 0;
        } else {
            param0->unk_08 = 8;
        }
    }

    return 0;
}

static int ov61_0222CCAC(UnkStruct_ov61_0222C664 *param0)
{
    if (param0->unk_08 != 9) {
        sub_0203848C();
    }

    sub_02039794();
    ov61_0222C86C(param0);
    sub_0200F174(0, 0, 0, 0x0, 6, 1, 117);
    param0->unk_08 = 0;

    return 1;
}

static int ov61_0222CCE8(UnkStruct_ov61_0222C664 *param0)
{
    int v0 = 0;

    switch (param0->unk_10) {
    case 1:
        v0 = 144;
        break;
    case 2:
    case -1:
        v0 = 145;
        break;
    case -2:
    case -14:
        v0 = 150;
        break;
    case -12:
    case -15:
    case -3:
    case -5:
        v0 = 149;
        break;
    }

    ov61_0222C8B8(param0, param0->unk_24, v0, TEXT_SPEED_FAST, 0xf0f);
    ov61_0222C920(param0, 12, 11);

    return 0;
}

static int ov61_0222CD58(UnkStruct_ov61_0222C664 *param0)
{
    switch (param0->unk_90) {
    case 0:
        ov61_0222C8B8(param0, param0->unk_24, 178, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_90++;
        break;
    case 1:
        if (ov61_0222C834(param0->unk_40) == 0) {
            sub_0203848C();
            DWC_CleanupInet();
            param0->unk_90++;
        }
        break;
    case 2:
        ov61_0222C8B8(param0, param0->unk_24, 179, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_90++;
        break;
    case 3:
        if (ov61_0222C834(param0->unk_40) == 0) {
            param0->unk_90++;
        }
        break;
    default:
        param0->unk_94++;

        if (param0->unk_94 > 30) {
            param0->unk_08 = 8;
        }

        break;
    }

    return 0;
}

static int ov61_0222CE14(UnkStruct_ov61_0222C664 *param0)
{
    if (ov61_0222C834(param0->unk_40) == 0) {
        param0->unk_08 = param0->unk_0C;
    }

    return 0;
}

static int ov61_0222CE2C(UnkStruct_ov61_0222C664 *param0)
{
    if (ov61_0222C834(param0->unk_40) == 1) {
        return 0;
    }

    switch (param0->unk_90) {
    case 0:
        ov61_0222C8B8(param0, param0->unk_2C, 26, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_90++;
        break;
    case 1:
        DWC_CleanupInet();
        sub_0203848C();
        param0->unk_90++;
        break;
    case 2:
        sub_02039794();
        ov61_0222C8B8(param0, param0->unk_2C, 27, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_90++;
        break;
    case 3:
        param0->unk_94++;
        if (param0->unk_94 > 30) {
            param0->unk_08 = param0->unk_0C;
        }
        break;
    }

    return 0;
}
