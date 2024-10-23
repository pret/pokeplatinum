#include "overlay085/ov85_02241440.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_berry_data_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_020972FC.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/camera_angle.h"

#include "berry_data.h"
#include "camera.h"
#include "core_sys.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_0200C440.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201E3D8.h"
#include "unk_0202419C.h"
#include "unk_020393C8.h"
#include "unk_0208C098.h"
#include "unk_020972FC.h"

typedef struct {
    VecFx16 unk_00;
    VecFx16 unk_06;
    VecFx16 unk_0C;
    VecFx16 unk_12;
} UnkStruct_ov85_022420A8;

typedef struct {
    BGL *unk_00;
    Window unk_04[12];
    MessageLoader *unk_C4;
    StringTemplate *unk_C8;
    UnkStruct_0200C440 *unk_CC;
    Camera *camera;
    UnkStruct_ov85_022420A8 unk_D4[4];
    UnkStruct_ov85_022420A8 unk_134[4];
    UnkStruct_ov85_022420A8 unk_194[4];
    u32 unk_1F4;
    UnkStruct_020972FC *unk_1F8;
    BerryData *unk_1FC;
    u8 unk_200;
    u8 unk_201;
} UnkStruct_ov85_022417E4;

typedef struct {
    VecFx16 unk_00;
    VecFx16 unk_06;
    VecFx16 unk_0C;
} UnkStruct_ov85_022423A0;

#define PRM_SIZ(max, min) (FX_F32_TO_FX16(FX_FX16_TO_F32(max - min) / 50))

static void ov85_022415F4(void *param0);
static void ov85_02241614(void);
static void ov85_02241634(BGL *param0);
static void ov85_022416E8(BGL *param0);
static void ov85_02241718(UnkStruct_ov85_022417E4 *param0, NARC *param1);
static void ov85_022417CC(void);
static void ov85_022417E4(UnkStruct_ov85_022417E4 *param0);
static void ov85_0224181C(UnkStruct_ov85_022417E4 *param0);
static void ov85_0224183C(UnkStruct_ov85_022417E4 *param0);
static void ov85_02241860(Window *param0);
static void ov85_02241E60(UnkStruct_ov85_022417E4 *param0, NARC *param1);
static void ov85_02241C64(UnkStruct_ov85_022417E4 *param0, u8 param1);
static void ov85_02241CD0(UnkStruct_ov85_022417E4 *param0);
static int ov85_02241CE8(UnkStruct_ov85_022417E4 *param0);
static int ov85_02241D10(UnkStruct_ov85_022417E4 *param0);
static int ov85_02241DF8(UnkStruct_ov85_022417E4 *param0);
static u8 ov85_02241DEC(UnkStruct_ov85_022417E4 *param0);
static u32 ov85_02241EB8(u32 *param0, u32 param1, s32 param2);
static void ov85_02241F0C(UnkStruct_ov85_022417E4 *param0);
static void ov85_02241F5C(void);
static void ov85_02241FF0(UnkStruct_ov85_022417E4 *param0);
static void ov85_0224202C(UnkStruct_ov85_022417E4 *param0);
static void ov85_02242038(UnkStruct_ov85_022417E4 *param0);
static void ov85_02242218(UnkStruct_ov85_022417E4 *param0);
static void ov85_02242578(UnkStruct_ov85_022417E4 *param0);
static void ov85_02242144(UnkStruct_ov85_022417E4 *param0);
static void ov85_022420A8(UnkStruct_ov85_022420A8 *param0);
static void ov85_02242124(VecFx16 *param0, VecFx16 *param1);
static void ov85_022423FC(VecFx16 *param0, VecFx16 *param1, VecFx16 *param2);
static void ov85_022423A0(const UnkStruct_ov85_022423A0 *param0, VecFx16 *param1, u8 param2);

static const UnkStruct_ov61_0222C884 Unk_ov85_022428D8[] = {
    { 0x3, 0x1, 0x0, 0xC, 0x2, 0x2, 0x3E8 },
    { 0x1, 0x1, 0x3, 0xA, 0x2, 0xF, 0x41 },
    { 0x3, 0x12, 0x1, 0x7, 0x2, 0xF, 0x200 },
    { 0x3, 0x1A, 0x6, 0x6, 0x2, 0xF, 0x20E },
    { 0x3, 0x17, 0xC, 0x6, 0x2, 0xF, 0x21A },
    { 0x3, 0xE, 0xC, 0x6, 0x2, 0xF, 0x226 },
    { 0x3, 0xB, 0x6, 0x6, 0x2, 0xF, 0x232 },
    { 0x3, 0x2, 0xD, 0x6, 0x2, 0xF, 0x23E },
    { 0x1, 0x8, 0xD, 0x6, 0x2, 0xF, 0x55 },
    { 0x3, 0x2, 0xF, 0x6, 0x2, 0xF, 0x24A },
    { 0x1, 0x8, 0xF, 0xF, 0x2, 0xF, 0x61 },
    { 0x1, 0x2, 0x11, 0x1C, 0x6, 0xF, 0x7F }
};

static const UnkStruct_ov85_022423A0 Unk_ov85_02242938[][4] = {
    {
        {
            { 0x580, 0xBAA, 0x0 },
            { 0x580, 0x647, 0x0 },
            { 0x0, 0x1C, 0x0 },
        },
        {
            { 0x9EC, 0x740, 0x0 },
            { 0x60D, 0x5B9, 0x0 },
            { 0x14, 0x8, 0x0 },
        },
        {
            { 0x860, 0xA7, 0x0 },
            { 0x5DC, 0x4E7, 0x0 },
            { 0xD, 0xFFFFFFFFFFFFFFEA, 0x0 },
        },
        {
            { 0x580, 0x582, 0x0 },
            { 0x580, 0x582, 0x0 },
            { 0x0, 0x0, 0x0 },
        },
    },
    {
        {
            { 0x13F, 0x740, 0x0 },
            { 0x51B, 0x5B9, 0x0 },
            { 0xFFFFFFFFFFFFFFEC, 0x8, 0x0 },
        },
        {
            { 0x5A8, 0xBAA, 0x0 },
            { 0x5A8, 0x647, 0x0 },
            { 0x0, 0x1C, 0x0 },
        },
        {
            { 0x5A8, 0x582, 0x0 },
            { 0x5A8, 0x582, 0x0 },
            { 0x0, 0x0, 0x0 },
        },
        {
            { 0x2C0, 0xA7, 0x0 },
            { 0x54B, 0x4E7, 0x0 },
            { 0xFFFFFFFFFFFFFFF3, 0xFFFFFFFFFFFFFFEA, 0x0 },
        },
    },
    {
        {
            { 0x13F, 0x740, 0x0 },
            { 0x51B, 0x5B9, 0x0 },
            { 0xFFFFFFFFFFFFFFEC, 0x8, 0x0 },
        },
        {
            { 0x5A8, 0x582, 0x0 },
            { 0x5A8, 0x582, 0x0 },
            { 0x0, 0x0, 0x0 },
        },
        {
            { 0x860, 0xA7, 0x0 },
            { 0x5FF, 0x4E7, 0x0 },
            { 0xC, 0xFFFFFFFFFFFFFFEA, 0x0 },
        },
        {
            { 0x2C0, 0xA7, 0x0 },
            { 0x54B, 0x4E7, 0x0 },
            { 0xFFFFFFFFFFFFFFF3, 0xFFFFFFFFFFFFFFEA, 0x0 },
        },
    },
    {
        {
            { 0x580, 0x582, 0x0 },
            { 0x580, 0x582, 0x0 },
            { 0x0, 0x0, 0x0 },
        },
        {
            { 0x9EC, 0x740, 0x0 },
            { 0x60D, 0x5B9, 0x0 },
            { 0x14, 0x8, 0x0 },
        },
        {
            { 0x860, 0xA7, 0x0 },
            { 0x5DC, 0x4E7, 0x0 },
            { 0xD, 0xFFFFFFFFFFFFFFEA, 0x0 },
        },
        {
            { 0x2C0, 0xA7, 0x0 },
            { 0x528, 0x4E7, 0x0 },
            { 0xFFFFFFFFFFFFFFF4, 0xFFFFFFFFFFFFFFEA, 0x0 },
        },
    },
};

int ov85_02241440(OverlayManager *param0, int *param1)
{
    UnkStruct_ov85_022417E4 *v0;
    NARC *v1;

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(3, 36, 0x20000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov85_022417E4), 36);
    memset(v0, 0, sizeof(UnkStruct_ov85_022417E4));
    v0->unk_1F8 = OverlayManager_Args(param0);
    v0->unk_00 = sub_02018340(36);
    v0->unk_1FC = BerryData_LoadDataByNarcMemberIndex(v0->unk_1F8->unk_08, 36);

    sub_0208C120(0, 36);

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__NTAG_GRA, 36);

    ov85_02241614();
    ov85_02241634(v0->unk_00);
    ov85_02241718(v0, v1);
    ov85_022417CC();
    ov85_022417E4(v0);

    SetAutorepeat(4, 8);
    sub_0201E3D8();
    sub_0201E450(4);

    ov85_02241E60(v0, v1);
    ov85_0224183C(v0);
    ov85_02241CD0(v0);
    ov85_02242038(v0);
    ov85_02242218(v0);

    SetMainCallback(ov85_022415F4, v0);
    sub_020397E4();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    NARC_dtor(v1);

    return 1;
}

int ov85_0224154C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov85_022417E4 *v0 = OverlayManager_Data(param0);

    switch (*param1) {
    case 0:
        *param1 = ov85_02241CE8(v0);
        break;
    case 1:
        *param1 = ov85_02241D10(v0);
        break;
    case 2:
        *param1 = ov85_02241DF8(v0);
        break;
    case 3:
        if (ov85_02241DEC(v0) == 1) {
            return 1;
        }
        break;
    }

    ov85_02241FF0(v0);

    return 0;
}

int ov85_022415A0(OverlayManager *param0, int *param1)
{
    UnkStruct_ov85_022417E4 *v0 = OverlayManager_Data(param0);

    ov85_02241860(v0->unk_04);
    ov85_022416E8(v0->unk_00);

    sub_0201E530();

    ov85_0224181C(v0);
    ov85_0224202C(v0);

    Heap_FreeToHeap(v0->unk_1FC);
    OverlayManager_FreeData(param0);
    SetMainCallback(NULL, NULL);
    Heap_Destroy(36);

    G2_BlendNone();

    return 1;
}

static void ov85_022415F4(void *param0)
{
    UnkStruct_ov85_022417E4 *v0 = param0;

    sub_0201C2B8(v0->unk_00);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov85_02241614(void)
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

static void ov85_02241634(BGL *param0)
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

    ov85_02241F5C();

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
            2,
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
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v2, 0);
        sub_0201C63C(param0, 2, 3, 8);
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

        sub_020183C4(param0, 3, &v3, 0);
    }

    sub_02019690(1, 32, 0, 36);
}

static void ov85_022416E8(BGL *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 0);
    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    Heap_FreeToHeapExplicit(36, param0);
}

static void ov85_02241718(UnkStruct_ov85_022417E4 *param0, NARC *param1)
{
    sub_020070E8(param1, 2, param0->unk_00, 2, 0, 0, 0, 36);
    sub_0200710C(param1, 0, param0->unk_00, 2, 0, 0, 0, 36);
    sub_0200710C(param1, 1, param0->unk_00, 3, 0, 0, 0, 36);
    sub_02007130(param1, 3, 0, 0, 0, 36);

    {
        u16 *v0;
        u32 v1;

        v0 = (u16 *)Heap_AllocFromHeap(36, 8 * 8 * 2);

        for (v1 = 0; v1 < 8 * 8; v1++) {
            v0[v1] = (3 << 12) + 1 + v1;
        }

        sub_020198C0(param0->unk_00, 1, v0, 2, 5, 8, 8);
        Heap_FreeToHeap(v0);
        sub_02019448(param0->unk_00, 1);
    }

    Font_LoadTextPalette(0, 15 * 0x20, 36);
}

static void ov85_022417CC(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 23, 8);
}

static void ov85_022417E4(UnkStruct_ov85_022417E4 *param0)
{
    param0->unk_C4 = MessageLoader_Init(0, 26, 398, 36);
    param0->unk_CC = sub_0200C440(15, 2, 0, 36);
    param0->unk_C8 = StringTemplate_Default(36);
}

static void ov85_0224181C(UnkStruct_ov85_022417E4 *param0)
{
    MessageLoader_Free(param0->unk_C4);
    sub_0200C560(param0->unk_CC);
    StringTemplate_Free(param0->unk_C8);
}

static void ov85_0224183C(UnkStruct_ov85_022417E4 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 12; v0++) {
        sub_0201A8D4(param0->unk_00, &param0->unk_04[v0], &Unk_ov85_022428D8[v0]);
    }
}

static void ov85_02241860(Window *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 12; v0++) {
        BGL_DeleteWindow(&param0[v0]);
    }
}

static void ov85_02241878(UnkStruct_ov85_022417E4 *param0, u32 param1, u32 param2, u32 param3)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_04[param1];
    v1 = MessageLoader_GetNewStrbuf(param0->unk_C4, param2);
    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, (sub_0201C294(v0) * 8 - v2) / 2, 0, TEXT_SPEED_NO_TRANSFER, param3, NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov85_022418CC(UnkStruct_ov85_022417E4 *param0)
{
    BGL_FillWindow(&param0->unk_04[0], 4);
    ov85_02241878(param0, 0, 0, TEXT_COLOR(1, 2, 4));
}

static void ov85_022418EC(UnkStruct_ov85_022417E4 *param0)
{
    BGL_FillWindow(&param0->unk_04[2], 0);
    ov85_02241878(param0, 2, 1, TEXT_COLOR(15, 2, 0));
}

static void ov85_0224190C(UnkStruct_ov85_022417E4 *param0)
{
    BGL_FillWindow(&param0->unk_04[3], 0);
    ov85_02241878(param0, 3, 2, TEXT_COLOR(15, 2, 0));
}

static void ov85_0224192C(UnkStruct_ov85_022417E4 *param0)
{
    BGL_FillWindow(&param0->unk_04[4], 0);
    ov85_02241878(param0, 4, 3, TEXT_COLOR(15, 2, 0));
}

static void ov85_0224194C(UnkStruct_ov85_022417E4 *param0)
{
    BGL_FillWindow(&param0->unk_04[5], 0);
    ov85_02241878(param0, 5, 4, TEXT_COLOR(15, 2, 0));
}

static void ov85_0224196C(UnkStruct_ov85_022417E4 *param0)
{
    BGL_FillWindow(&param0->unk_04[6], 0);
    ov85_02241878(param0, 6, 5, TEXT_COLOR(15, 2, 0));
}

static void ov85_0224198C(UnkStruct_ov85_022417E4 *param0)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;

    v0 = &param0->unk_04[1];

    BGL_FillWindow(v0, 0);
    sub_0200C578(param0->unk_CC, 2, v0, 0, 5);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_C4, 6);
    v2 = Strbuf_Init((2 + 1) * 2, 36);

    StringTemplate_SetNumber(param0->unk_C8, 0, param0->unk_1F8->unk_08 + 1, 2, 2, 1);
    StringTemplate_Format(param0->unk_C8, v2, v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, 16, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);

    v1 = BerryData_AllocAndGetName(param0->unk_1F8->unk_08, 36);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov85_02241A58(UnkStruct_ov85_022417E4 *param0)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_04[11];

    BGL_FillWindow(v0, 0);

    v1 = BerryData_AllocAndGetDescription(param0->unk_1F8->unk_08, 36);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov85_02241AA8(UnkStruct_ov85_022417E4 *param0)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_04[9];
    BGL_FillWindow(v0, 0);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_C4, 10);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov85_02241AF4(UnkStruct_ov85_022417E4 *param0)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_04[10];

    BGL_FillWindow(v0, 0);

    v2 = BerryData_GetAttribute(param0->unk_1FC, 1);

    if (v2 != 0) {
        v2--;
    }

    v1 = MessageLoader_GetNewStrbuf(param0->unk_C4, 11 + v2);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov85_02241B50(UnkStruct_ov85_022417E4 *param0)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_04[7];
    BGL_FillWindow(v0, 0);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_C4, 8);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov85_02241B9C(UnkStruct_ov85_022417E4 *param0)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u32 v3;

    v0 = &param0->unk_04[8];

    BGL_FillWindow(v0, 0);

    v3 = BerryData_GetAttribute(param0->unk_1FC, 0);
    v3 = (((v3 * 1000) / 254 + 5) / 10);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_C4, 9);
    v2 = Strbuf_Init(32, 36);

    StringTemplate_SetNumber(param0->unk_C8, 0, v3 / 10, 2, 0, 1);
    StringTemplate_SetNumber(param0->unk_C8, 1, v3 % 10, 1, 0, 1);
    StringTemplate_Format(param0->unk_C8, v2, v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    sub_0201A9A4(v0);
}

static void ov85_02241C64(UnkStruct_ov85_022417E4 *param0, u8 param1)
{
    switch (param1) {
    case 0:
        ov85_022418CC(param0);
        break;
    case 1:
        ov85_022418EC(param0);
        break;
    case 2:
        ov85_0224198C(param0);
        break;
    case 3:
        ov85_0224196C(param0);
        ov85_0224190C(param0);
        break;
    case 4:
        ov85_0224192C(param0);
        ov85_0224194C(param0);
        break;
    case 5:
        ov85_02241B50(param0);
        ov85_02241B9C(param0);
        break;
    case 6:
        ov85_02241AA8(param0);
        ov85_02241AF4(param0);
        break;
    case 7:
        ov85_02241A58(param0);
        break;
    }
}

static void ov85_02241CD0(UnkStruct_ov85_022417E4 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 8; v0++) {
        ov85_02241C64(param0, (u8)v0);
    }
}

static int ov85_02241CE8(UnkStruct_ov85_022417E4 *param0)
{
    if (ScreenWipe_Done() == 1) {
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG2, 16, 0);
        return 1;
    }

    return 0;
}

static int ov85_02241D10(UnkStruct_ov85_022417E4 *param0)
{
    u32 v0;

    if (gCoreSys.heldKeys & PAD_KEY_UP) {
        v0 = ov85_02241EB8(param0->unk_1F8->unk_00, param0->unk_1F8->unk_08, -1);

        if (param0->unk_1F8->unk_08 != v0) {
            param0->unk_1F8->unk_08 = v0;
            param0->unk_201 = 0;
            param0->unk_200 = 0;

            if ((param0->unk_1F8->unk_0A == 3) && (param0->unk_1F8->unk_09 != 0)) {
                param0->unk_1F8->unk_09--;
            } else {
                param0->unk_1F8->unk_0A--;
            }

            return 2;
        }

        return 1;
    }

    if (gCoreSys.heldKeys & PAD_KEY_DOWN) {
        v0 = ov85_02241EB8(param0->unk_1F8->unk_00, param0->unk_1F8->unk_08, 1);

        if (param0->unk_1F8->unk_08 != v0) {
            param0->unk_1F8->unk_08 = v0;
            param0->unk_201 = 0;
            param0->unk_200 = 0;

            if ((param0->unk_1F8->unk_0A == 5) && (param0->unk_1F8->unk_09 + 9 < param0->unk_1F8->unk_0B)) {
                param0->unk_1F8->unk_09++;
            } else {
                param0->unk_1F8->unk_0A++;
            }

            return 2;
        }

        return 1;
    }

    if ((gCoreSys.pressedKeys & PAD_BUTTON_B) || (gCoreSys.touchPressed)) {
        sub_0208C120(1, 36);
        return 3;
    }

    return 1;
}

static u8 ov85_02241DEC(UnkStruct_ov85_022417E4 *param0)
{
    return ScreenWipe_Done();
}

static int ov85_02241DF8(UnkStruct_ov85_022417E4 *param0)
{
    int v0 = 2;

    if (param0->unk_200 == 0) {
        param0->unk_201 += 4;

        if (param0->unk_201 == 16) {
            param0->unk_200 = 1;
        }
    } else if (param0->unk_200 == 1) {
        ov85_02241F0C(param0);
        param0->unk_200 = 2;
    } else {
        param0->unk_201 -= 4;

        if (param0->unk_201 == 0) {
            param0->unk_200 = 0;
            v0 = 1;
        }
    }

    G2_ChangeBlendAlpha(16 - param0->unk_201, param0->unk_201);

    return v0;
}

static void ov85_02241E60(UnkStruct_ov85_022417E4 *param0, NARC *param1)
{
    sub_020070E8(param1, ov85_02241EB0(param0->unk_1F8->unk_08), param0->unk_00, 1, 1, 0, 0, 36);
    sub_02007130(param1, ov85_02241EB4(param0->unk_1F8->unk_08), 0, 3 * 0x20, 0x20, 36);
}

u32 ov85_02241EB0(u32 param0)
{
    return 6 + param0;
}

u32 ov85_02241EB4(u32 param0)
{
    return 70 + param0;
}

static u32 ov85_02241EB8(u32 *param0, u32 param1, s32 param2)
{
    s32 v0 = (s32)param1;

    if (param2 < 0) {
        if (param1 != 0) {
            while (TRUE) {
                v0 -= 1;

                if (sub_02097368(param0, (u16)v0) == 1) {
                    param1 = (u32)v0;
                    param2++;

                    if (param2 == 0) {
                        break;
                    }
                }

                if (v0 == 0) {
                    break;
                }
            }
        }
    } else {
        if (param1 != 63) {
            while (TRUE) {
                v0 += 1;

                if (sub_02097368(param0, (u16)v0) == 1) {
                    param1 = (u16)v0;
                    param2--;

                    if (param2 == 0) {
                        break;
                    }
                }

                if (v0 == 63) {
                    break;
                }
            }
        }
    }

    return param1;
}

static void ov85_02241F0C(UnkStruct_ov85_022417E4 *param0)
{
    NARC *v0;

    Heap_FreeToHeap(param0->unk_1FC);
    param0->unk_1FC = BerryData_LoadDataByNarcMemberIndex(param0->unk_1F8->unk_08, 36);
    ov85_02241CD0(param0);

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__NTAG_GRA, 36);
    ov85_02241E60(param0, v0);
    NARC_dtor(v0);
    ov85_02242578(param0);
    sub_02019448(param0->unk_00, 1);
}

static void ov85_02241F5C(void)
{
    G3X_Init();
    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_AntiAlias(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, 0, 0, 0);
    G3X_SetClearColor(0, 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    G3_ViewPort(0, 0, 255, 191);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(0);
}

static void ov85_02241FF0(UnkStruct_ov85_022417E4 *param0)
{
    sub_020241B4();
    Camera_ComputeViewMatrix();

    G3_MtxMode(GX_MTXMODE_PROJECTION);
    G3_Identity();
    G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
    G3_Identity();

    ov85_022420A8(param0->unk_D4);
    ov85_02242144(param0);

    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

static void ov85_0224202C(UnkStruct_ov85_022417E4 *param0)
{
    Camera_Delete(param0->camera);
}

static void ov85_02242038(UnkStruct_ov85_022417E4 *param0)
{
    VecFx32 v0 = { 0, 0, 0x10000 };
    CameraAngle v1 = { 0, 0, 0 };
    fx32 v2 = 0x10000;
    u16 v3 = 0x5c1;

    param0->camera = Camera_Alloc(36);

    Camera_InitWithPosition(&v0, v2, &v1, v3, 1, param0->camera);
    Camera_SetClipping(0, FX32_CONST(100), param0->camera);
    Camera_ReleaseTarget(param0->camera);
    Camera_SetAsActive(param0->camera);
}

static void ov85_022420A8(UnkStruct_ov85_022420A8 *param0)
{
    G3_PolygonAttr(GX_LIGHTMASK_NONE, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, 18, 24, 0);
    G3_Begin(GX_BEGIN_QUADS);

    {
        u32 v0;

        for (v0 = 0; v0 < 4; v0++) {
            G3_Color(GX_RGB(8, 31, 15));
            G3_Vtx(param0[v0].unk_00.x, param0[v0].unk_00.y, param0[v0].unk_00.z);
            G3_Color(GX_RGB(8, 31, 15));
            G3_Vtx(param0[v0].unk_06.x, param0[v0].unk_06.y, param0[v0].unk_06.z);
            G3_Color(GX_RGB(8, 31, 15));
            G3_Vtx(param0[v0].unk_12.x, param0[v0].unk_12.y, param0[v0].unk_12.z);
            G3_Color(GX_RGB(8, 31, 15));
            G3_Vtx(param0[v0].unk_0C.x, param0[v0].unk_0C.y, param0[v0].unk_0C.z);
        }
    }

    G3_End();
}

static void ov85_02242124(VecFx16 *param0, VecFx16 *param1)
{
    param0->x += param1->x;
    param0->y += param1->y;
    param0->z += param1->z;
}

static void ov85_02242144(UnkStruct_ov85_022417E4 *param0)
{
    u32 v0;

    if (param0->unk_1F4 == 4) {
        return;
    }

    if (param0->unk_1F4 == 3) {
        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_D4[v0] = param0->unk_194[v0];
        }
    } else {
        for (v0 = 0; v0 < 4; v0++) {
            ov85_02242124(&param0->unk_D4[v0].unk_00, &param0->unk_134[v0].unk_00);
            ov85_02242124(&param0->unk_D4[v0].unk_06, &param0->unk_134[v0].unk_06);
            ov85_02242124(&param0->unk_D4[v0].unk_0C, &param0->unk_134[v0].unk_0C);
            ov85_02242124(&param0->unk_D4[v0].unk_12, &param0->unk_134[v0].unk_12);
        }
    }

    param0->unk_1F4++;
}

static void ov85_02242218(UnkStruct_ov85_022417E4 *param0)
{
    u32 v0;

    param0->unk_D4[0].unk_00 = Unk_ov85_02242938[0][3].unk_06;
    param0->unk_D4[0].unk_06 = Unk_ov85_02242938[0][3].unk_06;
    param0->unk_D4[0].unk_0C = Unk_ov85_02242938[0][3].unk_06;
    param0->unk_D4[0].unk_12 = Unk_ov85_02242938[0][3].unk_06;

    param0->unk_D4[1].unk_00 = Unk_ov85_02242938[1][2].unk_06;
    param0->unk_D4[1].unk_06 = Unk_ov85_02242938[1][2].unk_06;
    param0->unk_D4[1].unk_0C = Unk_ov85_02242938[1][2].unk_06;
    param0->unk_D4[1].unk_12 = Unk_ov85_02242938[1][2].unk_06;

    param0->unk_D4[2].unk_00 = Unk_ov85_02242938[2][1].unk_06;
    param0->unk_D4[2].unk_06 = Unk_ov85_02242938[2][1].unk_06;
    param0->unk_D4[2].unk_0C = Unk_ov85_02242938[2][1].unk_06;
    param0->unk_D4[2].unk_12 = Unk_ov85_02242938[2][1].unk_06;

    param0->unk_D4[3].unk_00 = Unk_ov85_02242938[3][0].unk_06;
    param0->unk_D4[3].unk_06 = Unk_ov85_02242938[3][0].unk_06;
    param0->unk_D4[3].unk_0C = Unk_ov85_02242938[3][0].unk_06;
    param0->unk_D4[3].unk_12 = Unk_ov85_02242938[3][0].unk_06;

    ov85_02242578(param0);
}

static void ov85_022423A0(const UnkStruct_ov85_022423A0 *param0, VecFx16 *param1, u8 param2)
{
    if (param2 == 0xff) {
        *param1 = param0->unk_00;
    } else if (param2 == 0) {
        *param1 = param0->unk_06;
    } else {
        param1->x = param0->unk_06.x + param0->unk_0C.x * param2;
        param1->y = param0->unk_06.y + param0->unk_0C.y * param2;
        param1->z = param0->unk_06.z + param0->unk_0C.z * param2;
    }
}

static void ov85_022423FC(VecFx16 *param0, VecFx16 *param1, VecFx16 *param2)
{
    param2->x = FX_F32_TO_FX16(FX_FX16_TO_F32(param1->x - param0->x) / 4);
    param2->y = FX_F32_TO_FX16(FX_FX16_TO_F32(param1->y - param0->y) / 4);
    param2->z = FX_F32_TO_FX16(FX_FX16_TO_F32(param1->z - param0->z) / 4);
}

static void ov85_02242578(UnkStruct_ov85_022417E4 *param0)
{
    u32 v0;

    ov85_022423A0(&Unk_ov85_02242938[0][0], &param0->unk_194[0].unk_00, BerryData_GetAttribute(param0->unk_1FC, 5));
    ov85_022423A0(&Unk_ov85_02242938[0][1], &param0->unk_194[0].unk_06, BerryData_GetAttribute(param0->unk_1FC, 6));
    ov85_022423A0(&Unk_ov85_02242938[0][2], &param0->unk_194[0].unk_12, BerryData_GetAttribute(param0->unk_1FC, 7));
    ov85_022423A0(&Unk_ov85_02242938[0][3], &param0->unk_194[0].unk_0C, 0);

    ov85_022423A0(&Unk_ov85_02242938[1][0], &param0->unk_194[1].unk_00, BerryData_GetAttribute(param0->unk_1FC, 9));
    ov85_022423A0(&Unk_ov85_02242938[1][1], &param0->unk_194[1].unk_06, BerryData_GetAttribute(param0->unk_1FC, 5));
    ov85_022423A0(&Unk_ov85_02242938[1][2], &param0->unk_194[1].unk_12, 0);
    ov85_022423A0(&Unk_ov85_02242938[1][3], &param0->unk_194[1].unk_0C, BerryData_GetAttribute(param0->unk_1FC, 8));

    ov85_022423A0(&Unk_ov85_02242938[2][0], &param0->unk_194[2].unk_00, BerryData_GetAttribute(param0->unk_1FC, 9));
    ov85_022423A0(&Unk_ov85_02242938[2][1], &param0->unk_194[2].unk_06, 0);
    ov85_022423A0(&Unk_ov85_02242938[2][2], &param0->unk_194[2].unk_12, BerryData_GetAttribute(param0->unk_1FC, 7));
    ov85_022423A0(&Unk_ov85_02242938[2][3], &param0->unk_194[2].unk_0C, BerryData_GetAttribute(param0->unk_1FC, 8));

    ov85_022423A0(&Unk_ov85_02242938[3][0], &param0->unk_194[3].unk_00, 0);
    ov85_022423A0(&Unk_ov85_02242938[3][1], &param0->unk_194[3].unk_06, BerryData_GetAttribute(param0->unk_1FC, 6));
    ov85_022423A0(&Unk_ov85_02242938[3][2], &param0->unk_194[3].unk_12, BerryData_GetAttribute(param0->unk_1FC, 7));
    ov85_022423A0(&Unk_ov85_02242938[3][3], &param0->unk_194[3].unk_0C, BerryData_GetAttribute(param0->unk_1FC, 8));

    for (v0 = 0; v0 < 4; v0++) {
        ov85_022423FC(&param0->unk_D4[v0].unk_00, &param0->unk_194[v0].unk_00, &param0->unk_134[v0].unk_00);
        ov85_022423FC(&param0->unk_D4[v0].unk_06, &param0->unk_194[v0].unk_06, &param0->unk_134[v0].unk_06);
        ov85_022423FC(&param0->unk_D4[v0].unk_0C, &param0->unk_194[v0].unk_0C, &param0->unk_134[v0].unk_0C);
        ov85_022423FC(&param0->unk_D4[v0].unk_12, &param0->unk_194[v0].unk_12, &param0->unk_134[v0].unk_12);
    }

    param0->unk_1F4 = 0;
}
