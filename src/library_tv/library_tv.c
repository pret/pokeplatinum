#include "library_tv/library_tv.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "struct_defs/struct_02099F80.h"

#include "bg_window.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"

#define LIBRARY_TV_DURATION 90 + 150

typedef struct LibraryTV {
    int heapID;
    BgConfig *bgl;
    MessageLoader *msgLdr;
    int tvState;
    Window tvWindow;
    int scanLinePos;
    int waitTiming;
} LibraryTV;

extern void sub_02000EC4(FSOverlayID param0, const OverlayManagerTemplate *param1);
static void LibraryTV_VBlank(void *data);
static void LibraryTV_SetVramBank(LibraryTV *ltv);
static void LibraryTV_ReleaseVramBank(LibraryTV *ltv);
static void LibraryTV_SetMsgLdr(LibraryTV *ltv);
static void LibraryTV_ReleaseMsgLdr(LibraryTV *ltv);
static void LibraryTV_UpdateScanLines(LibraryTV *ltv);

BOOL LibraryTV_Init(OverlayManager *ovy, int *state)
{
    int heapID = HEAP_ID_LIBRARY_TV;

    Heap_Create(HEAP_ID_APPLICATION, heapID, HEAP_SIZE_LIBRARY_TV);

    LibraryTV *ltv = OverlayManager_NewData(ovy, sizeof(LibraryTV), heapID);
    memset(ltv, 0, sizeof(LibraryTV));

    ltv->heapID = heapID;
    ltv->waitTiming = 0;

    return TRUE;
}

enum {
    STATE_INIT,
    STATE_BGM_START,
    STATE_FADE_START,
    STATE_FADE_WAIT,
    STATE_MAIN,
    STATE_EXIT
};

BOOL LibraryTV_Main(OverlayManager *ovy, int *state)
{
    LibraryTV *ltv = OverlayManager_Data(ovy);
    BOOL result = FALSE;

    switch (*state) {
    case STATE_INIT:
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);

        SetMainCallback(NULL, NULL);
        SetHBlankCallback(NULL, NULL);

        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        SetAutorepeat(4, 8);

        LibraryTV_SetVramBank(ltv);
        LibraryTV_SetMsgLdr(ltv);

        SetMainCallback(LibraryTV_VBlank, (void *)ltv);
        GXLayers_TurnBothDispOn();

        ltv->waitTiming = 0;
        *state = STATE_BGM_START;
        break;
    case STATE_BGM_START:
        if (ltv->waitTiming) {
            // unreachable
            ltv->waitTiming--;
        } else {
            ltv->waitTiming = 0;
            *state = STATE_FADE_START;
        }
        break;
    case STATE_FADE_START:
        if (ltv->waitTiming) {
            // unreachable
            ltv->waitTiming--;
        } else {
            ltv->waitTiming = 0;
            sub_0200F174(0, 1, 1, 0x0, 6, 1, ltv->heapID);
            *state = STATE_FADE_WAIT;
        }
        break;
    case STATE_FADE_WAIT:
        LibraryTV_UpdateScanLines(ltv);

        if (ScreenWipe_Done() == 1) {
            ltv->waitTiming = LIBRARY_TV_DURATION;
            *state = STATE_MAIN;
        }
        break;
    case STATE_MAIN:
        LibraryTV_UpdateScanLines(ltv);

        if (ltv->waitTiming) {
            ltv->waitTiming--;
        } else {
            ltv->waitTiming = 0;
            sub_0200F174(0, 0, 0, 0x0, 6, 1, ltv->heapID);
            *state = STATE_EXIT;
        }
        break;
    case STATE_EXIT:
        LibraryTV_UpdateScanLines(ltv);

        if (ScreenWipe_Done() == 1) {
            LibraryTV_ReleaseMsgLdr(ltv);
            LibraryTV_ReleaseVramBank(ltv);
            SetMainCallback(NULL, NULL);
            result = TRUE;
        }
        break;
    }

    return result;
}

BOOL LibraryTV_Exit(OverlayManager *ovy, int *state)
{
    LibraryTV *ltv = OverlayManager_Data(ovy);
    int heapID = ltv->heapID;

    OverlayManager_FreeData(ovy);
    Heap_Destroy(heapID);

    return TRUE;
}

static void LibraryTV_VBlank(void *data)
{
    LibraryTV *ltv = data;

    Bg_RunScheduledUpdates(ltv->bgl);
}

static void LibraryTV_SetVramBank(LibraryTV *ltv)
{
    UnkStruct_02099F80 vramBank = {
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

    GXLayers_SetBanks(&vramBank);

    ltv->bgl = BgConfig_New(ltv->heapID);

    GraphicsModes bgData = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    SetAllGraphicsModes(&bgData);
    int frame, charSetID, screenID;

    BgTemplate bgHeader0 = { 0, 0, 0x800, 0, 1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x0000, GX_BG_CHARBASE_0x18000, GX_BG_EXTPLTT_01, 1, 0, 0, FALSE };
    frame = 2;
    Bg_InitFromTemplate(ltv->bgl, frame, &bgHeader0, 0);
    Bg_ClearTilesRange(frame, 32, 0, ltv->heapID);
    Bg_ClearTilemap(ltv->bgl, frame);

    BgTemplate bgHeader1 = { 0, 0, 0x800, 0, 1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x0800, GX_BG_CHARBASE_0x14000, GX_BG_EXTPLTT_01, 1, 0, 0, FALSE };
    frame = 0;
    charSetID = 1;
    screenID = 4;
    Bg_InitFromTemplate(ltv->bgl, frame, &bgHeader1, 0);
    sub_02006E3C(NARC_INDEX_DEMO__INTRO__INTRO_TV, charSetID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);
    sub_02006E60(NARC_INDEX_DEMO__INTRO__INTRO_TV, screenID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);

    BgTemplate bgHeader2 = { 0, 0, 0x800, 0, 1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x1000, GX_BG_CHARBASE_0x10000, GX_BG_EXTPLTT_01, 1, 0, 0, FALSE };
    frame = 1;
    charSetID = 2;
    screenID = 5;
    Bg_InitFromTemplate(ltv->bgl, frame, &bgHeader2, 0);
    sub_02006E3C(NARC_INDEX_DEMO__INTRO__INTRO_TV, charSetID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);
    sub_02006E60(NARC_INDEX_DEMO__INTRO__INTRO_TV, screenID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);

    BgTemplate bgHeader3 = { 0, 0, 0x800, 0, 1, GX_BG_COLORMODE_256, GX_BG_SCRBASE_0x1800, GX_BG_CHARBASE_0x20000, GX_BG_EXTPLTT_01, 1, 0, 0, FALSE };
    frame = 3;
    charSetID = 2;
    screenID = 4;
    Bg_InitFromTemplate(ltv->bgl, frame, &bgHeader3, 0);
    sub_02006E3C(NARC_INDEX_GRAPHIC__LIBRARY_TV, charSetID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);
    sub_02006E60(NARC_INDEX_GRAPHIC__LIBRARY_TV, screenID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);

    sub_02006E84(NARC_INDEX_GRAPHIC__LIBRARY_TV, 3, 0, 0, 0, ltv->heapID);
    Font_LoadTextPalette(0, 1 * (2 * 16), ltv->heapID);
    Bg_MaskPalette(0, 0x0);
    Bg_MaskPalette(4, 0x0);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 0x4, 0xc);
}

static void LibraryTV_ReleaseVramBank(LibraryTV *ltv)
{
    Bg_ToggleLayer(0, 0);
    Bg_ToggleLayer(1, 0);
    Bg_ToggleLayer(2, 0);
    Bg_ToggleLayer(3, 0);
    Bg_ToggleLayer(4, 0);
    Bg_ToggleLayer(5, 0);
    Bg_ToggleLayer(6, 0);
    Bg_ToggleLayer(7, 0);

    G2_BlendNone();

    Bg_FreeTilemapBuffer(ltv->bgl, 3);
    Bg_FreeTilemapBuffer(ltv->bgl, 1);
    Bg_FreeTilemapBuffer(ltv->bgl, 0);
    Bg_FreeTilemapBuffer(ltv->bgl, 2);

    Heap_FreeToHeap(ltv->bgl);
}

static void LibraryTV_SetMsgLdr(LibraryTV *ltv)
{
    ltv->msgLdr = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, 26, 607, ltv->heapID);
    Text_ResetAllPrinters();
    ltv->tvState = 0;
}

static void LibraryTV_ReleaseMsgLdr(LibraryTV *ltv)
{
    MessageLoader_Free(ltv->msgLdr);
}

static void LibraryTV_UpdateScanLines(LibraryTV *ltv)
{
    ltv->scanLinePos += 0x4;
    Bg_SetOffset(ltv->bgl, 1, 3, ltv->scanLinePos >> 4);
}
