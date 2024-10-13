#include "library_tv/library_tv.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"

#define LIBRARY_TV_DURATION 90 + 150

typedef struct LibraryTV {
    int heapID;
    BGL *bgl;
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

    sub_0201C2B8(ltv->bgl);
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

    ltv->bgl = sub_02018340(ltv->heapID);

    UnkStruct_ov84_0223BA5C bgData = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    sub_02018368(&bgData);
    int frame, charSetID, screenID;

    UnkStruct_ov97_0222DB78 bgHeader0 = { 0, 0, 0x800, 0, 1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x0000, GX_BG_CHARBASE_0x18000, GX_BG_EXTPLTT_01, 1, 0, 0, FALSE };
    frame = 2;
    sub_020183C4(ltv->bgl, frame, &bgHeader0, 0);
    sub_02019690(frame, 32, 0, ltv->heapID);
    sub_02019EBC(ltv->bgl, frame);

    UnkStruct_ov97_0222DB78 bgHeader1 = { 0, 0, 0x800, 0, 1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x0800, GX_BG_CHARBASE_0x14000, GX_BG_EXTPLTT_01, 1, 0, 0, FALSE };
    frame = 0;
    charSetID = 1;
    screenID = 4;
    sub_020183C4(ltv->bgl, frame, &bgHeader1, 0);
    sub_02006E3C(NARC_INDEX_DEMO__INTRO__INTRO_TV, charSetID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);
    sub_02006E60(NARC_INDEX_DEMO__INTRO__INTRO_TV, screenID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);

    UnkStruct_ov97_0222DB78 bgHeader2 = { 0, 0, 0x800, 0, 1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x1000, GX_BG_CHARBASE_0x10000, GX_BG_EXTPLTT_01, 1, 0, 0, FALSE };
    frame = 1;
    charSetID = 2;
    screenID = 5;
    sub_020183C4(ltv->bgl, frame, &bgHeader2, 0);
    sub_02006E3C(NARC_INDEX_DEMO__INTRO__INTRO_TV, charSetID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);
    sub_02006E60(NARC_INDEX_DEMO__INTRO__INTRO_TV, screenID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);

    UnkStruct_ov97_0222DB78 bgHeader3 = { 0, 0, 0x800, 0, 1, GX_BG_COLORMODE_256, GX_BG_SCRBASE_0x1800, GX_BG_CHARBASE_0x20000, GX_BG_EXTPLTT_01, 1, 0, 0, FALSE };
    frame = 3;
    charSetID = 2;
    screenID = 4;
    sub_020183C4(ltv->bgl, frame, &bgHeader3, 0);
    sub_02006E3C(NARC_INDEX_GRAPHIC__LIBRARY_TV, charSetID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);
    sub_02006E60(NARC_INDEX_GRAPHIC__LIBRARY_TV, screenID, ltv->bgl, frame, 0, 0, 0, ltv->heapID);

    sub_02006E84(NARC_INDEX_GRAPHIC__LIBRARY_TV, 3, 0, 0, 0, ltv->heapID);
    Font_LoadTextPalette(0, 1 * (2 * 16), ltv->heapID);
    sub_0201975C(0, 0x0);
    sub_0201975C(4, 0x0);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 0x4, 0xc);
}

static void LibraryTV_ReleaseVramBank(LibraryTV *ltv)
{
    sub_02019120(0, 0);
    sub_02019120(1, 0);
    sub_02019120(2, 0);
    sub_02019120(3, 0);
    sub_02019120(4, 0);
    sub_02019120(5, 0);
    sub_02019120(6, 0);
    sub_02019120(7, 0);

    G2_BlendNone();

    sub_02019044(ltv->bgl, 3);
    sub_02019044(ltv->bgl, 1);
    sub_02019044(ltv->bgl, 0);
    sub_02019044(ltv->bgl, 2);

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
    sub_02019184(ltv->bgl, 1, 3, ltv->scanLinePos >> 4);
}
