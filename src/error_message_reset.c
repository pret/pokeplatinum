#include "error_message_reset.h"

#include <nitro.h>
#include <string.h>

#include "constants/screen.h"

#include "struct_defs/struct_02099F80.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "communication_system.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "main.h"
#include "message.h"
#include "render_window.h"
#include "screen_fade.h"
#include "strbuf.h"
#include "system.h"
#include "text.h"
#include "unk_020366A0.h"

static const UnkStruct_02099F80 sErrorMessageBanksConfig = {
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

static const GraphicsModes sErrorMessageBgModeSet = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const BgTemplate sErrorMessageBgTemplate = {
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

static const WindowTemplate sErrorMessageWindowTemplate = {
    0x0,
    0x3,
    0x3,
    0x1A,
    0x12,
    0x1,
    0x23
};

static const HeapParam sErrorMessageHeapParams[] = {
    { .size = 0x20000,
        .arena = OS_ARENA_MAIN }
};

static BOOL sErrorMessagePrinterLock;

static void VBlankIntr(void)
{
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
    MI_WaitDma(GX_DEFAULT_DMAID);
}

void ErrorMessageReset_PrintErrorAndReset(void)
{
    BgConfig *bgConfig;
    Window window;
    MessageLoader *errorMsgData;
    Strbuf *errorString;
    int v4;
    int heapID = HEAP_ID_SYSTEM;

    if (sErrorMessagePrinterLock == TRUE) {
        return;
    }

    sErrorMessagePrinterLock = TRUE;

    OS_InitArenaHiAndLo(OS_ARENA_MAIN);
    Heap_InitSystem(sErrorMessageHeapParams, NELEMS(sErrorMessageHeapParams), NELEMS(sErrorMessageHeapParams), 0);

    v4 = 3;

    SetScreenColorBrightness(DS_SCREEN_MAIN, FADE_TO_BLACK);
    SetScreenColorBrightness(DS_SCREEN_SUB, FADE_TO_BLACK);

    OS_DisableIrqMask(OS_IE_V_BLANK);
    OS_SetIrqFunction(OS_IE_V_BLANK, VBlankIntr);
    OS_EnableIrqMask(OS_IE_V_BLANK);

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

    GXLayers_SetBanks(&sErrorMessageBanksConfig);
    bgConfig = BgConfig_New(heapID);

    SetAllGraphicsModes(&sErrorMessageBgModeSet);
    Bg_InitFromTemplate(bgConfig, 0, &sErrorMessageBgTemplate, 0);
    Bg_ClearTilemap(bgConfig, 0);
    LoadStandardWindowGraphics(bgConfig, 0, (512 - 9), 2, 0, heapID);
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, 1 * (2 * 16), heapID);
    Bg_ClearTilesRange(0, 32, 0, heapID);
    Bg_MaskPalette(0, 0x6c21);
    Bg_MaskPalette(4, 0x6c21);

    errorMsgData = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0214, heapID);
    errorString = Strbuf_Init(0x180, heapID);

    Text_ResetAllPrinters();

    Window_AddFromTemplate(bgConfig, &window, &sErrorMessageWindowTemplate);
    Window_FillRectWithColor(&window, 15, 0, 0, 26 * 8, 18 * 8);
    Window_DrawStandardFrame(&window, 0, (512 - 9), 2);
    MessageLoader_GetStrbuf(errorMsgData, v4, errorString);
    Text_AddPrinterWithParams(&window, FONT_SYSTEM, errorString, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Strbuf_Free(errorString);

    GXLayers_TurnBothDispOn();
    ResetScreenMasterBrightness(DS_SCREEN_MAIN);
    ResetScreenMasterBrightness(DS_SCREEN_SUB);
    BrightnessController_SetScreenBrightness(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
    sub_02037DB0();

    while (TRUE) {
        HandleConsoleFold();
        CommSys_Update();

        if (sub_02038AB8()) {
            break;
        }

        OS_WaitIrq(1, OS_IE_V_BLANK);
    }

    while (TRUE) {
        HandleConsoleFold();

        if (PAD_Read() & PAD_BUTTON_A) {
            break;
        }

        OS_WaitIrq(1, OS_IE_V_BLANK);
    }

    SetScreenColorBrightness(DS_SCREEN_MAIN, FADE_TO_WHITE);
    SetScreenColorBrightness(DS_SCREEN_SUB, FADE_TO_WHITE);

    Window_Remove(&window);
    MessageLoader_Free(errorMsgData);
    Heap_FreeToHeap(bgConfig);

    OS_ResetSystem(0);
}
