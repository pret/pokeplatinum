#include "unk_0209A74C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02099F80.h"

#include "bg_window.h"
#include "core_sys.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "main.h"
#include "message.h"
#include "render_window.h"
#include "strbuf.h"
#include "text.h"
#include "unk_0200A9DC.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"

static const UnkStruct_02099F80 Unk_020F8AF8 = {
    GX_VRAM_BG_256_AB,
    GX_VRAM_BGEXTPLTT_NONE,
    GX_VRAM_SUB_BG_NONE,
    GX_VRAM_SUB_BGEXTPLTT_NONE,
    GX_VRAM_OBJ_NONE,
    GX_VRAM_OBJEXTPLTT_NONE,
    GX_VRAM_SUB_OBJ_NONE,
    GX_VRAM_SUB_OBJEXTPLTT_NONE,
    GX_VRAM_TEX_NONE,
    GX_VRAM_TEXPLTT_NONE
};

static const GraphicsModes Unk_020F8ACC = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const BgTemplate Unk_020F8ADC = {
    0x0,
    0x0,
    0x800,
    0x0,
    0x1,
    GX_BG_COLORMODE_16,
    GX_BG_SCRBASE_0x0000,
    GX_BG_CHARBASE_0x18000,
    GX_BG_EXTPLTT_01,
    0x1,
    0x0,
    0x0,
    0x0
};

static const WindowTemplate Unk_020F8AC4 = {
    0x0,
    0x3,
    0x3,
    0x1A,
    0x12,
    0x1,
    0x23
};

void sub_0209A74C(int param0)
{
    BgConfig *v0;
    Window v1;
    MessageLoader *v2;
    Strbuf *v3;
    int v4 = 0;

    sub_0200F344(0, 0);
    sub_0200F344(1, 0);
    SetMainCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    SetAutorepeat(4, 8);
    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();

    G2_BlendNone();
    G2S_BlendNone();
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    GXLayers_SetBanks(&Unk_020F8AF8);

    v0 = BgConfig_New(param0);

    SetAllGraphicsModes(&Unk_020F8ACC);
    Bg_InitFromTemplate(v0, 0, &Unk_020F8ADC, 0);
    Bg_ClearTilemap(v0, 0);
    LoadStandardWindowGraphics(v0, 0, 512 - 9, 2, 0, param0);
    Font_LoadTextPalette(0, 1 * (2 * 16), param0);
    Bg_ClearTilesRange(0, 32, 0, param0);
    Bg_MaskPalette(0, 27681);
    Bg_MaskPalette(4, 27681);

    v2 = MessageLoader_Init(1, 26, 5, param0);
    v3 = Strbuf_Init(384, param0);

    Text_ResetAllPrinters();
    Window_AddFromTemplate(v0, &v1, &Unk_020F8AC4);
    Window_FillRectWithColor(&v1, 15, 0, 0, 26 * 8, 18 * 8);
    Window_DrawStandardFrame(&v1, 0, 512 - 9, 2);
    MessageLoader_GetStrbuf(v2, v4, v3);
    Text_AddPrinterWithParams(&v1, FONT_SYSTEM, v3, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Strbuf_Free(v3);
    GXLayers_TurnBothDispOn();
    sub_0200F338(0);
    sub_0200F338(1);
    sub_0200AB4C(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);

    while (TRUE) {
        HandleConsoleFold();
        OS_WaitIrq(1, OS_IE_V_BLANK);
    }

    Window_Remove(&v1);
    MessageLoader_Free(v2);
    Bg_ToggleLayer(0, 0);
    Bg_ToggleLayer(1, 0);
    Bg_ToggleLayer(2, 0);
    Bg_ToggleLayer(3, 0);
    Bg_ToggleLayer(4, 0);
    Bg_ToggleLayer(5, 0);
    Bg_ToggleLayer(6, 0);
    Bg_ToggleLayer(7, 0);
    Bg_FreeTilemapBuffer(v0, 0);
    Heap_FreeToHeap(v0);

    PM_ForceToPowerOff();
}

void sub_0209A8E0(int param0)
{
    BgConfig *v0;
    Window v1;
    MessageLoader *v2;
    Strbuf *v3;
    int v4 = 1;

    sub_0200F344(0, 0);
    sub_0200F344(1, 0);
    SetMainCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    SetAutorepeat(4, 8);
    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();

    G2_BlendNone();
    G2S_BlendNone();
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    GXLayers_SetBanks(&Unk_020F8AF8);

    v0 = BgConfig_New(param0);

    SetAllGraphicsModes(&Unk_020F8ACC);
    Bg_InitFromTemplate(v0, 0, &Unk_020F8ADC, 0);
    Bg_ClearTilemap(v0, 0);
    LoadStandardWindowGraphics(v0, 0, 512 - 9, 2, 0, param0);
    Font_LoadTextPalette(0, 1 * (2 * 16), param0);
    Bg_ClearTilesRange(0, 32, 0, param0);
    Bg_MaskPalette(0, 0x6c21);
    Bg_MaskPalette(4, 0x6c21);

    v2 = MessageLoader_Init(1, 26, 5, param0);
    v3 = Strbuf_Init(0x180, param0);

    Text_ResetAllPrinters();
    Window_AddFromTemplate(v0, &v1, &Unk_020F8AC4);
    Window_FillRectWithColor(&v1, 15, 0, 0, 26 * 8, 18 * 8);
    Window_DrawStandardFrame(&v1, 0, (512 - 9), 2);
    MessageLoader_GetStrbuf(v2, v4, v3);
    Text_AddPrinterWithParams(&v1, FONT_SYSTEM, v3, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Strbuf_Free(v3);
    GXLayers_TurnBothDispOn();
    sub_0200F338(0);
    sub_0200F338(1);
    sub_0200AB4C(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);

    while (TRUE) {
        HandleConsoleFold();
        OS_WaitIrq(1, OS_IE_V_BLANK);
    }

    Window_Remove(&v1);
    MessageLoader_Free(v2);
    Bg_ToggleLayer(0, 0);
    Bg_ToggleLayer(1, 0);
    Bg_ToggleLayer(2, 0);
    Bg_ToggleLayer(3, 0);
    Bg_ToggleLayer(4, 0);
    Bg_ToggleLayer(5, 0);
    Bg_ToggleLayer(6, 0);
    Bg_ToggleLayer(7, 0);
    Bg_FreeTilemapBuffer(v0, 0);
    Heap_FreeToHeap(v0);

    PM_ForceToPowerOff();
}
