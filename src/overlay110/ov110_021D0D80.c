#include "overlay110/ov110_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202D750_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_defs/struct_0203E564.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay110/ov110_021D2124.h"

#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0202D05C.h"
#include "unk_0202FF4C.h"
#include "unk_020302D0.h"
#include "unk_02030494.h"
#include "unk_0203061C.h"
#include "unk_02030880.h"
#include "unk_0205DFC4.h"

typedef struct {
    OverlayManager * unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u16 unk_08;
    u16 unk_0A;
    BGL * unk_0C;
    Window unk_10[16];
    MessageLoader * unk_110;
    StringTemplate * unk_114;
    Strbuf* unk_118;
    Strbuf* unk_11C;
    PaletteData * unk_120;
    const Options * unk_124;
    SaveData * unk_128;
    UnkStruct_0203068C * unk_12C;
} UnkStruct_ov110_021D0F78;

int ov110_021D0D80(OverlayManager * param0, int * param1);
int ov110_021D0E9C(OverlayManager * param0, int * param1);
int ov110_021D0EF0(OverlayManager * param0, int * param1);
static BOOL ov110_021D0F78(UnkStruct_ov110_021D0F78 * param0);
static BOOL ov110_021D0FD0(UnkStruct_ov110_021D0F78 * param0);
static BOOL ov110_021D1000(UnkStruct_ov110_021D0F78 * param0);
static void ov110_021D1048(void * param0);
static void ov110_021D1078(void);
static void ov110_021D1098(BGL * param0);
static void ov110_021D1180(UnkStruct_ov110_021D0F78 * param0);
static void ov110_021D11CC(BGL * param0);
static void ov110_021D1200(UnkStruct_ov110_021D0F78 * param0, int * param1, int param2);
static u8 ov110_021D1208(u8 param0);
static void ov110_021D123C(UnkStruct_ov110_021D0F78 * param0, u32 param1);
static void ov110_021D128C(void);
static void ov110_021D12C0(UnkStruct_ov110_021D0F78 * param0, u32 param1);
static u8 ov110_021D1324(UnkStruct_ov110_021D0F78 * param0, Window * param1, int param2, u32 param3, u32 param4, u8 param5, u8 param6, u8 param7, u8 param8, u8 param9, int param10);
static u8 ov110_021D13CC(UnkStruct_ov110_021D0F78 * param0, Window * param1, int param2, u8 param3);
static void ov110_021D13F0(UnkStruct_ov110_021D0F78 * param0, u32 param1, s32 param2);
static void ov110_021D140C(UnkStruct_ov110_021D0F78 * param0);
static void ov110_021D1468(UnkStruct_ov110_021D0F78 * param0);
static void ov110_021D1650(UnkStruct_ov110_021D0F78 * param0);
static u32 ov110_021D17AC(UnkStruct_ov110_021D0F78 * param0, u8 param1);
static void ov110_021D1808(UnkStruct_ov110_021D0F78 * param0);
static void ov110_021D19B0(UnkStruct_ov110_021D0F78 * param0);
static void ov110_021D19F4(UnkStruct_ov110_021D0F78 * param0);
static u32 ov110_021D1BEC(UnkStruct_ov110_021D0F78 * param0);
static void ov110_021D1C40(UnkStruct_ov110_021D0F78 * param0);
static u32 ov110_021D1D68(UnkStruct_ov110_021D0F78 * param0);
static void ov110_021D1DBC(UnkStruct_ov110_021D0F78 * param0);
static void ov110_021D1ED8(UnkStruct_ov110_021D0F78 * param0);
static u32 ov110_021D20CC(UnkStruct_ov110_021D0F78 * param0, u8 param1);

int ov110_021D0D80 (OverlayManager * param0, int * param1)
{
    int v0;
    UnkStruct_ov110_021D0F78 * v1;
    UnkStruct_0203E564 * v2;

    SetMainCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    Heap_Create(3, 114, 0x20000);
    v1 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov110_021D0F78), 114);
    memset(v1, 0, sizeof(UnkStruct_ov110_021D0F78));

    v1->unk_00 = param0;
    v1->unk_0C = sub_02018340(114);

    v2 = (UnkStruct_0203E564 *)OverlayManager_Args(param0);

    v1->unk_128 = v2->unk_00;
    v1->unk_12C = sub_0203068C(v1->unk_128);
    v1->unk_05 = v2->unk_04;
    v1->unk_06 = v2->unk_05;
    v1->unk_08 = v2->unk_06;
    v1->unk_124 = SaveData_Options(v1->unk_128);

    ov110_021D1180(v1);

    v1->unk_110 = MessageLoader_Init(1, 26, 16, 114);
    v1->unk_114 = StringTemplate_Default(114);
    v1->unk_118 = Strbuf_Init(800, 114);
    v1->unk_11C = Strbuf_Init(800, 114);

    Font_LoadTextPalette(0, 13 * 32, 114);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, 114);
    ov110_021D2124(v1->unk_0C, v1->unk_10, ov110_021D1208(v1->unk_06));
    SetMainCallback(ov110_021D1048, (void *)v1);
    (*param1) = 0;

    return 1;
}

int ov110_021D0E9C (OverlayManager * param0, int * param1)
{
    UnkStruct_ov110_021D0F78 * v0 = OverlayManager_Data(param0);

    switch (*param1) {
    case 0:
        if (ov110_021D0F78(v0) == 1) {
            ov110_021D1200(v0, param1, 1);
        }
        break;
    case 1:
        if (ov110_021D0FD0(v0) == 1) {
            ov110_021D1200(v0, param1, 2);
        }
        break;
    case 2:
        if (ov110_021D1000(v0) == 1) {
            return 1;
        }
    }

    return 0;
}

int ov110_021D0EF0 (OverlayManager * param0, int * param1)
{
    int v0;
    UnkStruct_ov110_021D0F78 * v1 = OverlayManager_Data(param0);

    sub_02002FA0(v1->unk_120, 2);
    sub_02002FA0(v1->unk_120, 0);
    sub_02002F54(v1->unk_120);

    v1->unk_120 = NULL;

    MessageLoader_Free(v1->unk_110);
    StringTemplate_Free(v1->unk_114);
    Strbuf_Free(v1->unk_118);
    Strbuf_Free(v1->unk_11C);

    ov110_021D216C(v1->unk_10, ov110_021D1208(v1->unk_06));
    ov110_021D11CC(v1->unk_0C);

    OverlayManager_FreeData(param0);
    SetMainCallback(NULL, NULL);
    Heap_Destroy(114);

    return 1;
}

static BOOL ov110_021D0F78 (UnkStruct_ov110_021D0F78 * param0)
{
    switch (param0->unk_04) {
    case 0:
        param0->unk_04++;
        break;
    case 1:
        sub_0200F174(0, 1, 1, 0x0, 6, 1 * 3, 114);
        ov110_021D140C(param0);
        param0->unk_04++;
        break;
    case 2:
        if (ScreenWipe_Done() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov110_021D0FD0 (UnkStruct_ov110_021D0F78 * param0)
{
    int v0;

    switch (param0->unk_04) {
    case 0:
        param0->unk_04++;
        break;
    case 1:

        if ((gCoreSys.heldKeys & PAD_BUTTON_A) || (gCoreSys.heldKeys & PAD_BUTTON_B)) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov110_021D1000 (UnkStruct_ov110_021D0F78 * param0)
{
    int v0;

    switch (param0->unk_04) {
    case 0:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 114);
        param0->unk_04++;
        break;
    case 1:
        if (ScreenWipe_Done() == 1) {
            return 1;
        }

        break;
    }

    return 0;
}

static void ov110_021D1048 (void * param0)
{
    UnkStruct_ov110_021D0F78 * v0 = param0;

    if (v0->unk_120 != NULL) {
        sub_02003694(v0->unk_120);
    }

    sub_0201C2B8(v0->unk_0C);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov110_021D1078 (void)
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
    return;
}

static void ov110_021D1098 (BGL * param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
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
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v1, 0);
        sub_02019690(0, 32, 0, 114);
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
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v2, 0);
        sub_02019690(2, 32, 0, 114);
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
            GX_BG_SCRBASE_0x3000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 6, &v3, 0);
        sub_02019690(6, 32, 0, 114);
        sub_02019EBC(param0, 6);
    }

    G2_SetBG0Priority(0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

    return;
}

static void ov110_021D1180 (UnkStruct_ov110_021D0F78 * param0)
{
    ov110_021D1078();
    ov110_021D1098(param0->unk_0C);

    param0->unk_120 = sub_02002F38(114);

    sub_02002F70(param0->unk_120, 2, (32 * 16), 114);
    sub_02002F70(param0->unk_120, 0, (32 * 16), 114);

    ov110_021D123C(param0, 2);
    ov110_021D128C();
    ov110_021D12C0(param0, 6);

    return;
}

static void ov110_021D11CC (BGL * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);

    sub_02019044(param0, 0);
    sub_02019044(param0, 2);
    sub_02019044(param0, 6);
    Heap_FreeToHeap(param0);

    return;
}

static void ov110_021D1200 (UnkStruct_ov110_021D0F78 * param0, int * param1, int param2)
{
    param0->unk_04 = 0;
    *param1 = param2;
    return;
}

static u8 ov110_021D1208 (u8 param0)
{
    u8 v0;

    v0 = 0;

    switch (param0) {
    case 2:
    case 3:
        v0 = 0;
        break;
    case 5:
        v0 = 1;
        break;
    case 4:
        v0 = 2;
        break;
    case 6:
        v0 = 3;
        break;
    case 1:
        v0 = 4;
        break;
    }

    return v0;
}

static void ov110_021D123C (UnkStruct_ov110_021D0F78 * param0, u32 param1)
{
    NARC * v0;

    v0 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, 114);

    sub_020070E8(v0, 124, param0->unk_0C, param1, 0, 0, 1, 114);
    sub_0200710C(v0, 123, param0->unk_0C, param1, 0, 0, 1, 114);
    NARC_dtor(v0);

    return;
}

static void ov110_021D128C (void)
{
    void * v0;
    NNSG2dPaletteData * v1;

    v0 = sub_02006F88(150, 170, &v1, 114);

    DC_FlushRange(v1->pRawData, (sizeof(u16) * 16 * 2));
    GX_LoadBGPltt(v1->pRawData, 0, (sizeof(u16) * 16 * 2));
    Heap_FreeToHeap(v0);

    return;
}

static void ov110_021D12C0 (UnkStruct_ov110_021D0F78 * param0, u32 param1)
{
    NARC * v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__POKETCH, 114);

    sub_020070E8(v0, 10, param0->unk_0C, param1, 0, 0, 1, 114);
    sub_0200710C(v0, 11, param0->unk_0C, param1, 0, 0, 1, 114);
    sub_02007130(v0, 12, 4, 0, 0x20, 114);
    NARC_dtor(v0);

    return;
}

static u8 ov110_021D1324 (UnkStruct_ov110_021D0F78 * param0, Window * param1, int param2, u32 param3, u32 param4, u8 param5, u8 param6, u8 param7, u8 param8, u8 param9, int param10)
{
    if (param9)
        BGL_FillWindow(param1, param7);
    MessageLoader_GetStrbuf(param0->unk_110, param2, param0->unk_11C);
    StringTemplate_Format(param0->unk_114, param0->unk_118, param0->unk_11C);
    
    switch(param10) {
    case 1:
        param3 -= (Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_118, 0) + 1) / 2;
        break;
    case 2:
        param3 -= Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_118, 0);
        break;
    }

    Text_AddPrinterWithParamsAndColor(param1, param8, param0->unk_118, param3, param4, TEXT_SPEED_INSTANT, TEXT_COLOR(param5, param6, param7), NULL);
}

static u8 ov110_021D13CC (UnkStruct_ov110_021D0F78 * param0, Window * param1, int param2, u8 param3)
{
    return ov110_021D1324(param0, param1, param2, 0, 0, 1, 2, 0, FONT_SYSTEM, param3, 0);
}

static void ov110_021D13F0 (UnkStruct_ov110_021D0F78 * param0, u32 param1, s32 param2)
{
    StringTemplate_SetNumber(param0->unk_114, param1, param2, 4, 1, 1);
    return;
}

static void ov110_021D140C (UnkStruct_ov110_021D0F78 * param0)
{
    int v0;

    switch (param0->unk_06) {
    case 2:
    case 3:
        ov110_021D1468(param0);
        ov110_021D1650(param0);
        break;
    case 5:
        ov110_021D1808(param0);
        break;
    case 4:
        ov110_021D19F4(param0);
        break;
    case 6:
        ov110_021D1C40(param0);
        break;
    case 1:
        if ((param0->unk_05 == 0) || (param0->unk_05 == 1)) {
            ov110_021D1DBC(param0);
        } else {
            ov110_021D1ED8(param0);
        }
        break;
    default:
        ov110_021D1C40(param0);
        break;
    }

    return;
}

static void ov110_021D1468 (UnkStruct_ov110_021D0F78 * param0)
{
    u8 v0, v1;
    int v2;
    u32 v3;
    
    v0 = 0;
    BGL_FillWindow(&param0->unk_10[v0], 0);
    ov110_021D1324(param0, &param0->unk_10[v0], 22, 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 0);

    if (param0->unk_05 == 0) {
        v2 = 26;
        v3 = 216;
    } else if (param0->unk_05 == 1) {
        v2 = 27;
        v3 = 216;
    } else {
        v2 = 28;
        v3 = 216;
    }

    ov110_021D1324(param0, &param0->unk_10[v0], v2, v3, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    sub_0201A9A4(&param0->unk_10[v0]);
    v0 = 1;
    ov110_021D13CC(param0, &param0->unk_10[v0], 34, 1);
    ov110_021D1324(param0, &param0->unk_10[v0], 36, 28 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    sub_0201A9A4(&param0->unk_10[v0]);
    v0 = 2;
    ov110_021D13CC(param0, &param0->unk_10[v0], ov110_021D17AC(param0, 0), 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->unk_12C, sub_0205E430(0, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[v0], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->unk_12C, sub_0205E488(0, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[v0], 40, 28 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    sub_0201A9A4(&param0->unk_10[v0]);
    v0 = 3;
    ov110_021D13CC(param0, &param0->unk_10[v0], 31, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->unk_12C, sub_0205E45C(0, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[v0], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->unk_12C, sub_0205E4B4(0, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[v0], 40, 28 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    sub_0201A9A4(&param0->unk_10[v0]);
}

asm static void ov110_021D1650 (UnkStruct_ov110_021D0F78 * param0)
{
    push {r3, r4, lr}
    sub sp, #0x1c
    add r4, r0, #0
    add r1, r4, #0
    add r1, #0x50
    mov r2, #0x23
    mov r3, #1
    bl ov110_021D13CC
    add r0, r4, #0
    add r0, #0x50
    bl sub_0201A9A4
    add r0, r4, #0
    mov r1, #1
    bl ov110_021D17AC
    add r1, r4, #0
    add r2, r0, #0
    add r0, r4, #0
    add r1, #0x60
    mov r3, #1
    bl ov110_021D13CC
    ldrb r1, [r4, #5]
    mov r0, #1
    bl sub_0205E430
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x60
    mov r2, #0x26
    mov r3, #0x70
    bl ov110_021D1324
    ldrb r1, [r4, #5]
    mov r0, #1
    bl sub_0205E488
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    add r1, r4, #0
    str r0, [sp, #0x18]
    add r0, r4, #0
    add r1, #0x60
    mov r2, #0x28
    mov r3, #0xe0
    bl ov110_021D1324
    add r0, r4, #0
    add r0, #0x60
    bl sub_0201A9A4
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x70
    mov r2, #0x1f
    mov r3, #1
    bl ov110_021D13CC
    ldrb r1, [r4, #5]
    mov r0, #1
    bl sub_0205E45C
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x70
    mov r2, #0x26
    mov r3, #0x70
    bl ov110_021D1324
    ldrb r1, [r4, #5]
    mov r0, #1
    bl sub_0205E4B4
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    add r1, r4, #0
    str r0, [sp, #0x18]
    add r0, r4, #0
    add r1, #0x70
    mov r2, #0x28
    mov r3, #0xe0
    bl ov110_021D1324
    add r4, #0x70
    add r0, r4, #0
    bl sub_0201A9A4
    add sp, #0x1c
    pop {r3, r4, pc}
}

static u32 ov110_021D17AC (UnkStruct_ov110_021D0F78 * param0, u8 param1)
{
    u8 v0;
    u32 v1;

    if (param1 == 0) {
        v1 = 102;
    } else {
        v1 = 104;
    }

    if (param0->unk_05 == 3) {
        v0 = sub_02030698(sub_0203068C(param0->unk_128), v1, sub_0205E6A8(v1));
    } else {
        v0 = (u8)sub_020300E0(sub_020300F4(param0->unk_128), 10, (param1 * 4) + param0->unk_05, NULL);
    }

    if (v0 == 1) {
        return 30;
    }

    return 29;
}

asm static void ov110_021D1808 (UnkStruct_ov110_021D0F78 * param0)
{
    push {r4, r5, r6, lr}
    sub sp, #0x20
    add r5, r0, #0
    add r0, #0x10
    mov r1, #0
    bl BGL_FillWindow
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r5, #0
    add r0, r5, #0
    add r1, #0x10
    mov r2, #0x18
    mov r3, #8
    bl ov110_021D1324
    ldrb r0, [r5, #5]
    cmp r0, #0
    bne _021D1844
    mov r2, #0x1a
    mov r3, #0xd8
    b _021D1852
 _021D1844:
    cmp r0, #1
    bne _021D184E
    mov r2, #0x1b
    mov r3, #0xd8
    b _021D1852
 _021D184E:
    mov r2, #0x1c
    mov r3, #0xd8
 _021D1852:
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    add r1, r5, #0
    str r0, [sp, #0x18]
    add r0, r5, #0
    add r1, #0x10
    bl ov110_021D1324
    add r0, r5, #0
    add r0, #0x10
    bl sub_0201A9A4
    add r0, r5, #0
    bl ov110_021D19B0
    mov r3, #0
    add r1, r5, #0
    str r3, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r3, [sp, #0xc]
    str r3, [sp, #0x10]
    str r3, [sp, #0x14]
    add r0, r5, #0
    add r1, #0x20
    mov r2, #0x27
    str r3, [sp, #0x18]
    bl ov110_021D1324
    add r0, r5, #0
    add r0, #0x20
    bl sub_0201A9A4
    add r1, r5, #0
    add r0, r5, #0
    add r1, #0x30
    mov r2, #0x1d
    mov r3, #1
    bl ov110_021D13CC
    mov r0, #0x4a
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    bl sub_0203068C
    add r4, r0, #0
    ldrb r0, [r5, #5]
    bl sub_0205E55C
    add r6, r0, #0
    ldrb r0, [r5, #5]
    bl sub_0205E55C
    bl sub_0205E6A8
    add r2, r0, #0
    add r0, r4, #0
    add r1, r6, #0
    bl sub_02030698
    ldrh r1, [r5, #8]
    cmp r1, r0
    beq _021D18E6
    mov r2, #0
    b _021D18FC
 _021D18E6:
    ldrb r0, [r5, #5]
    bl sub_0205E50C
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
 _021D18FC:
    add r0, r5, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r5, #0
    add r0, r5, #0
    add r1, #0x30
    mov r2, #0x26
    mov r3, #0x70
    bl ov110_021D1324
    add r0, r5, #0
    add r0, #0x30
    bl sub_0201A9A4
    add r1, r5, #0
    add r0, r5, #0
    add r1, #0x40
    mov r2, #0x1f
    mov r3, #1
    bl ov110_021D13CC
    mov r0, #0x4a
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    mov r1, #0xb
    add r2, sp, #0x1c
    bl sub_020308A0
    add r4, r0, #0
    ldr r0, [sp, #0x1c]
    cmp r0, #1
    beq _021D1956
    mov r6, #0
    b _021D196E
 _021D1956:
    ldrb r0, [r5, #5]
    bl sub_0205E584
    add r2, r0, #0
    mov r0, #0x4a
    lsl r0, r0, #2
    ldrh r3, [r5, #8]
    ldr r0, [r5, r0]
    add r1, r4, #0
    bl sub_020308BC
    add r6, r0, #0
 _021D196E:
    cmp r4, #0
    beq _021D1978
    add r0, r4, #0
    bl Heap_FreeToHeap
 _021D1978:
    add r0, r5, #0
    mov r1, #0
    add r2, r6, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r5, #0
    add r0, r5, #0
    add r1, #0x40
    mov r2, #0x26
    mov r3, #0x70
    bl ov110_021D1324
    add r5, #0x40
    add r0, r5, #0
    bl sub_0201A9A4
    add sp, #0x20
    pop {r4, r5, r6, pc}
}

static void ov110_021D19B0 (UnkStruct_ov110_021D0F78 * param0)
{
    MessageLoader * v0;
    Strbuf* v1;

    v0 = MessageLoader_Init(1, 26, 412, 114);
    v1 = MessageLoader_GetNewStrbuf(v0, param0->unk_08);

    MessageLoader_Free(v0);
    StringTemplate_SetStrbuf(param0->unk_114, 0, v1, 0, 0, GAME_LANGUAGE);
    Strbuf_Free(v1);

    return;
}

asm static void ov110_021D19F4 (UnkStruct_ov110_021D0F78 * param0)
{
    push {r3, r4, r5, r6, lr}
    sub sp, #0x1c
    add r5, r0, #0
    add r0, #0x10
    mov r1, #0
    bl BGL_FillWindow
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r5, #0
    add r0, r5, #0
    add r1, #0x10
    mov r2, #0x17
    mov r3, #8
    bl ov110_021D1324
    ldrb r0, [r5, #5]
    cmp r0, #0
    bne _021D1A30
    mov r2, #0x1a
    mov r3, #0xd8
    b _021D1A3E
 _021D1A30:
    cmp r0, #1
    bne _021D1A3A
    mov r2, #0x1b
    mov r3, #0xd8
    b _021D1A3E
 _021D1A3A:
    mov r2, #0x1c
    mov r3, #0xd8
 _021D1A3E:
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    add r1, r5, #0
    str r0, [sp, #0x18]
    add r0, r5, #0
    add r1, #0x10
    bl ov110_021D1324
    add r0, r5, #0
    add r0, #0x10
    bl sub_0201A9A4
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r1, [sp, #0x14]
    add r1, r5, #0
    str r0, [sp, #0x18]
    add r0, r5, #0
    add r1, #0x20
    mov r2, #0x25
    mov r3, #0x60
    bl ov110_021D1324
    add r0, r5, #0
    add r0, #0x20
    bl sub_0201A9A4
    add r0, r5, #0
    bl ov110_021D1BEC
    add r1, r5, #0
    add r2, r0, #0
    add r0, r5, #0
    add r1, #0x30
    mov r3, #1
    bl ov110_021D13CC
    ldrb r0, [r5, #5]
    bl sub_0205E5E0
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r5, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r5, #0
    add r0, r5, #0
    add r1, #0x30
    mov r2, #0x2a
    mov r3, #0x70
    bl ov110_021D1324
    mov r0, #0x4a
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    bl sub_0203068C
    add r4, r0, #0
    ldrb r0, [r5, #5]
    bl sub_0205E630
    add r6, r0, #0
    ldrb r0, [r5, #5]
    bl sub_0205E630
    bl sub_0205E6A8
    add r2, r0, #0
    add r0, r4, #0
    add r1, r6, #0
    bl sub_02030698
    add r2, r0, #0
    add r0, r5, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    add r1, r5, #0
    str r0, [sp, #0x18]
    add r0, r5, #0
    add r1, #0x30
    mov r2, #0x29
    mov r3, #0xe0
    bl ov110_021D1324
    add r0, r5, #0
    add r0, #0x30
    bl sub_0201A9A4
    add r1, r5, #0
    add r0, r5, #0
    add r1, #0x40
    mov r2, #0x1f
    mov r3, #1
    bl ov110_021D13CC
    ldrb r0, [r5, #5]
    bl sub_0205E608
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r5, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r5, #0
    add r0, r5, #0
    add r1, #0x40
    mov r2, #0x2a
    mov r3, #0x70
    bl ov110_021D1324
    mov r0, #0x4a
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    bl sub_0203068C
    add r4, r0, #0
    ldrb r0, [r5, #5]
    bl sub_0205E680
    add r6, r0, #0
    ldrb r0, [r5, #5]
    bl sub_0205E680
    bl sub_0205E6A8
    add r2, r0, #0
    add r0, r4, #0
    add r1, r6, #0
    bl sub_02030698
    add r2, r0, #0
    add r0, r5, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    add r1, r5, #0
    str r0, [sp, #0x18]
    add r0, r5, #0
    add r1, #0x40
    mov r2, #0x29
    mov r3, #0xe0
    bl ov110_021D1324
    add r5, #0x40
    add r0, r5, #0
    bl sub_0201A9A4
    add sp, #0x1c
    pop {r3, r4, r5, r6, pc}
}

static u32 ov110_021D1BEC (UnkStruct_ov110_021D0F78 * param0)
{
    u8 v0;

    if (param0->unk_05 == 3) {
        v0 = sub_02030698(sub_0203068C(param0->unk_128), 108, sub_0205E6A8(108));
    } else {
        v0 = (u8)sub_02030470(sub_0203041C(param0->unk_128), 9, param0->unk_05, 0, NULL);
    }

    if (v0 == 1) {
        return 30;
    }

    return 29;
}

asm static void ov110_021D1C40 (UnkStruct_ov110_021D0F78 * param0)
{
    push {r3, r4, lr}
    sub sp, #0x1c
    add r4, r0, #0
    add r0, #0x10
    mov r1, #0
    bl BGL_FillWindow
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x10
    mov r2, #0x19
    mov r3, #8
    bl ov110_021D1324
    ldrb r0, [r4, #5]
    cmp r0, #0
    bne _021D1C7C
    mov r2, #0x1a
    mov r3, #0xd8
    b _021D1C8A
 _021D1C7C:
    cmp r0, #1
    bne _021D1C86
    mov r2, #0x1b
    mov r3, #0xd8
    b _021D1C8A
 _021D1C86:
    mov r2, #0x1c
    mov r3, #0xd8
 _021D1C8A:
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    add r1, r4, #0
    str r0, [sp, #0x18]
    add r0, r4, #0
    add r1, #0x10
    bl ov110_021D1324
    add r0, r4, #0
    add r0, #0x10
    bl sub_0201A9A4
    add r0, r4, #0
    bl ov110_021D1D68
    add r1, r4, #0
    add r2, r0, #0
    add r0, r4, #0
    add r1, #0x20
    mov r3, #1
    bl ov110_021D13CC
    ldrb r0, [r4, #5]
    bl sub_0205E700
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x20
    mov r2, #0x2b
    mov r3, #0x70
    bl ov110_021D1324
    add r0, r4, #0
    add r0, #0x20
    bl sub_0201A9A4
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x30
    mov r2, #0x1f
    mov r3, #1
    bl ov110_021D13CC
    ldrb r0, [r4, #5]
    bl sub_0205E728
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x30
    mov r2, #0x2b
    mov r3, #0x70
    bl ov110_021D1324
    add r4, #0x30
    add r0, r4, #0
    bl sub_0201A9A4
    add sp, #0x1c
    pop {r3, r4, pc}
}

static u32 ov110_021D1D68 (UnkStruct_ov110_021D0F78 * param0)
{
    u8 v0;

    if (param0->unk_05 == 3) {
        v0 = sub_02030698(sub_0203068C(param0->unk_128), 110, sub_0205E6A8(110));
    } else {
        v0 = (u8)sub_02030600(sub_020305B8(param0->unk_128), 8, param0->unk_05, 0, NULL);
    }

    if (v0 == 1) {
        return 30;
    }

    return 29;
}

asm static void ov110_021D1DBC (UnkStruct_ov110_021D0F78 * param0)
{
    push {r3, r4, lr}
    sub sp, #0x1c
    add r4, r0, #0
    add r0, #0x10
    mov r1, #0
    bl BGL_FillWindow
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x10
    mov r2, #0x15
    mov r3, #8
    bl ov110_021D1324
    ldrb r0, [r4, #5]
    cmp r0, #0
    bne _021D1DF6
    mov r2, #0x1a
    b _021D1DF8
 _021D1DF6:
    mov r2, #0x1b
 _021D1DF8:
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    add r1, r4, #0
    str r0, [sp, #0x18]
    mov r3, #0xd8
    add r0, r4, #0
    add r1, #0x10
    bl ov110_021D1324
    add r0, r4, #0
    add r0, #0x10
    bl sub_0201A9A4
    ldrb r1, [r4, #5]
    add r0, r4, #0
    bl ov110_021D20CC
    add r1, r4, #0
    add r2, r0, #0
    add r0, r4, #0
    add r1, #0x30
    mov r3, #1
    bl ov110_021D13CC
    ldrb r0, [r4, #5]
    bl sub_0205E750
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x30
    mov r2, #0x26
    mov r3, #0x70
    bl ov110_021D1324
    add r0, r4, #0
    add r0, #0x30
    bl sub_0201A9A4
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x40
    mov r2, #0x1f
    mov r3, #1
    bl ov110_021D13CC
    ldrb r0, [r4, #5]
    bl sub_0205E790
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x40
    mov r2, #0x26
    mov r3, #0x70
    bl ov110_021D1324
    add r4, #0x40
    add r0, r4, #0
    bl sub_0201A9A4
    add sp, #0x1c
    pop {r3, r4, pc}
}

asm static void ov110_021D1ED8 (UnkStruct_ov110_021D0F78 * param0)
{
    push {r3, r4, lr}
    sub sp, #0x1c
    add r4, r0, #0
    add r0, #0x10
    mov r1, #0
    bl BGL_FillWindow
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x10
    mov r2, #0x15
    mov r3, #8
    bl ov110_021D1324
    mov r1, #0
    str r1, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    add r1, r4, #0
    str r0, [sp, #0x18]
    add r0, r4, #0
    add r1, #0x10
    mov r2, #0x1c
    mov r3, #0xd8
    bl ov110_021D1324
    add r0, r4, #0
    add r0, #0x10
    bl sub_0201A9A4
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x20
    mov r2, #0x20
    mov r3, #1
    bl ov110_021D13CC
    add r0, r4, #0
    add r0, #0x20
    bl sub_0201A9A4
    ldrb r1, [r4, #5]
    add r0, r4, #0
    bl ov110_021D20CC
    add r1, r4, #0
    add r2, r0, #0
    add r0, r4, #0
    add r1, #0x50
    mov r3, #1
    bl ov110_021D13CC
    ldrb r0, [r4, #5]
    bl sub_0205E750
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x50
    mov r2, #0x26
    mov r3, #0x70
    bl ov110_021D1324
    add r0, r4, #0
    add r0, #0x50
    bl sub_0201A9A4
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x60
    mov r2, #0x1f
    mov r3, #1
    bl ov110_021D13CC
    ldrb r0, [r4, #5]
    bl sub_0205E790
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x60
    mov r2, #0x26
    mov r3, #0x70
    bl ov110_021D1324
    add r0, r4, #0
    add r0, #0x60
    bl sub_0201A9A4
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x70
    mov r2, #0x21
    mov r3, #1
    bl ov110_021D13CC
    add r0, r4, #0
    add r0, #0x70
    bl sub_0201A9A4
    add r0, r4, #0
    mov r1, #3
    bl ov110_021D20CC
    add r1, r4, #0
    add r2, r0, #0
    add r0, r4, #0
    add r1, #0x80
    mov r3, #1
    bl ov110_021D13CC
    mov r0, #3
    bl sub_0205E750
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x80
    mov r2, #0x26
    mov r3, #0x70
    bl ov110_021D1324
    add r0, r4, #0
    add r0, #0x80
    bl sub_0201A9A4
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x90
    mov r2, #0x1f
    mov r3, #1
    bl ov110_021D13CC
    mov r0, #3
    bl sub_0205E790
    add r1, r0, #0
    mov r0, #0x4b
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r2, #0xff
    bl sub_02030698
    add r2, r0, #0
    add r0, r4, #0
    mov r1, #0
    bl ov110_021D13F0
    mov r2, #0
    str r2, [sp]
    mov r1, #1
    str r1, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r2, [sp, #0x10]
    str r2, [sp, #0x14]
    str r1, [sp, #0x18]
    add r1, r4, #0
    add r0, r4, #0
    add r1, #0x90
    mov r2, #0x26
    mov r3, #0x70
    bl ov110_021D1324
    add r4, #0x90
    add r0, r4, #0
    bl sub_0201A9A4
    add sp, #0x1c
    pop {r3, r4, pc}
}

static u32 ov110_021D20CC (UnkStruct_ov110_021D0F78 * param0, u8 param1)
{
    u16 v0;
    int v1;
    UnkStruct_0202D750 * v2;

    v2 = sub_0202D750(param0->unk_128);

    switch (param1) {
    case 0:
        v0 = 8;
        break;
    case 1:
        v0 = 9;
        break;
    case 2:
        v0 = 10;
        break;
    case 3:
        v0 = 11;
        break;
    case 4:
        v0 = 12;
        break;
    case 6:
        v0 = 15;
        break;
    default:
        v0 = 8;
        break;
    }

    v1 = sub_0202D414(v2, v0, 0);

    if (v1 == 1) {
        return 30;
    }

    return 29;
}
