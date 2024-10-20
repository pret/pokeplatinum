#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "core_sys.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02000C88.h"
#include "unk_0200A9DC.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"

void sub_0201777C(void);

void sub_02039A64(int param0, int param1);

static const UnkStruct_02099F80 Unk_020E5F7C = {
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

static const UnkStruct_ov84_0223BA5C Unk_020E5F50 = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const UnkStruct_ov97_0222DB78 Unk_020E5F60 = {
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

static const UnkStruct_ov61_0222C884 Unk_020E5F48 = {
    0x0,
    0x3,
    0x3,
    0x1A,
    0x12,
    0x1,
    0x23
};

void sub_02039A64(int param0, int param1)
{
    BGL *v0;
    Window v1;
    MessageLoader *v2;
    Strbuf *v3;
    int v4;

    v4 = 16;

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);
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

    GXLayers_SetBanks(&Unk_020E5F7C);
    v0 = sub_02018340(param0);

    sub_02018368(&Unk_020E5F50);
    sub_020183C4(v0, 0, &Unk_020E5F60, 0);
    sub_02019EBC(v0, 0);
    sub_0200DAA4(v0, 0, (512 - 9), 2, 0, param0);
    Font_LoadTextPalette(0, 1 * (2 * 16), param0);
    sub_02019690(0, 32, 0, param0);
    sub_0201975C(0, 0x6c21);
    sub_0201975C(4, 0x6c21);

    v2 = MessageLoader_Init(1, 26, 695, param0);
    v3 = Strbuf_Init(0x180, param0);

    Text_ResetAllPrinters();
    sub_0201A8D4(v0, &v1, &Unk_020E5F48);
    BGL_WindowColor(&v1, 15, 0, 0, 26 * 8, 18 * 8);
    Window_Show(&v1, 0, (512 - 9), 2);
    MessageLoader_GetStrbuf(v2, v4, v3);
    Text_AddPrinterWithParams(&v1, FONT_SYSTEM, v3, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Strbuf_Free(v3);
    GXLayers_TurnBothDispOn();
    sub_0200F338(0);
    sub_0200F338(1);
    sub_0200AB4C(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);

    while (TRUE) {
        int v5 = PAD_Read();

        HandleConsoleFold();

        if (v5 & PAD_BUTTON_A) {
            break;
        }

        OS_WaitIrq(1, OS_IE_V_BLANK);
    }

    BGL_DeleteWindow(&v1);
    MessageLoader_Free(v2);

    sub_02019120(0, 0);
    sub_02019120(1, 0);
    sub_02019120(2, 0);
    sub_02019120(3, 0);
    sub_02019120(4, 0);
    sub_02019120(5, 0);
    sub_02019120(6, 0);
    sub_02019120(7, 0);
    sub_02019044(v0, 0);
    Heap_FreeToHeap(v0);
}
