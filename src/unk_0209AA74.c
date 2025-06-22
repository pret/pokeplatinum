#include "unk_0209AA74.h"

#include <nitro.h>
#include <string.h>

#include "constants/screen.h"

#include "struct_defs/struct_02099F80.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "main.h"
#include "message.h"
#include "render_window.h"
#include "screen_fade.h"
#include "strbuf.h"
#include "system.h"
#include "text.h"

static const UnkStruct_02099F80 Unk_020F8B54 = {
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

static const GraphicsModes Unk_020F8B28 = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const BgTemplate Unk_020F8B38 = {
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

static const WindowTemplate Unk_020F8B20 = {
    0x0,
    0x3,
    0x3,
    0x1A,
    0x12,
    0x1,
    0x23
};

void sub_0209AA74(int heapID, int param1)
{
    BgConfig *v0;
    Window v1;
    MessageLoader *v2;
    Strbuf *v3;
    int v4;

    if (param1 == 0) {
        v4 = 1;
    } else {
        v4 = 0;
    }

    SetScreenColorBrightness(DS_SCREEN_MAIN, FADE_TO_BLACK);
    SetScreenColorBrightness(DS_SCREEN_SUB, FADE_TO_BLACK);
    SetDummyVBlankIntr();
    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    SetAutorepeat(4, 8);
    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;
    GXLayers_SwapDisplay();

    G2_BlendNone();
    G2S_BlendNone();
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    GXLayers_SetBanks(&Unk_020F8B54);

    v0 = BgConfig_New(heapID);

    SetAllGraphicsModes(&Unk_020F8B28);
    Bg_InitFromTemplate(v0, BG_LAYER_MAIN_0, &Unk_020F8B38, 0);
    Bg_ClearTilemap(v0, BG_LAYER_MAIN_0);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, 512 - 9, 2, 0, heapID);
    Font_LoadTextPalette(0, 1 * (2 * 16), heapID);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, heapID);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0x6c21);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0x6c21);

    v2 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0006, heapID);
    v3 = Strbuf_Init(0x180, heapID);

    Text_ResetAllPrinters();
    Window_AddFromTemplate(v0, &v1, &Unk_020F8B20);
    Window_FillRectWithColor(&v1, 15, 0, 0, 26 * 8, 18 * 8);
    Window_DrawStandardFrame(&v1, 0, (512 - 9), 2);
    MessageLoader_GetStrbuf(v2, v4, v3);
    Text_AddPrinterWithParams(&v1, FONT_SYSTEM, v3, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Strbuf_Free(v3);
    GXLayers_TurnBothDispOn();
    ResetScreenMasterBrightness(DS_SCREEN_MAIN);
    ResetScreenMasterBrightness(DS_SCREEN_SUB);
    BrightnessController_SetScreenBrightness(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);

    while (TRUE) {
        HandleConsoleFold();
        OS_WaitIrq(1, OS_IE_V_BLANK);
    }

    Window_Remove(&v1);
    MessageLoader_Free(v2);
    Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_0, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_1, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_2, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_3, 0);
    Bg_FreeTilemapBuffer(v0, BG_LAYER_MAIN_0);
    Heap_FreeToHeap(v0);

    PM_ForceToPowerOff();
}
