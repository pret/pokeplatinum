#include "unk_02039814.h"

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
#include "string_template.h"
#include "text.h"
#include "unk_0200A9DC.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"

void sub_02039834(int param0, int param1, int param2);

static const UnkStruct_02099F80 Unk_020E5EFC = {
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

static const UnkStruct_ov84_0223BA5C Unk_020E5ED0 = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const UnkStruct_ov97_0222DB78 Unk_020E5EE0 = {
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

static const UnkStruct_ov61_0222C884 Unk_020E5EC8 = {
    0x0,
    0x3,
    0x3,
    0x1A,
    0x12,
    0x1,
    0x23
};

static void sub_02039814(void)
{
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
    MI_WaitDma(GX_DEFAULT_DMAID);
}

void sub_02039834(int param0, int param1, int param2)
{
    BGL *v0;
    Window v1;
    MessageLoader *v2;
    Strbuf *v3;
    Strbuf *v4;
    StringTemplate *v5;
    int v6;

    switch (param1) {
    case 0:
    default:
        v6 = 1;
        break;
    case 1:
        v6 = 2;
        break;
    case 2:
        v6 = 3;
        break;
    case 3:
        v6 = 4;
        break;
    case 4:
        v6 = 5;
        break;
    case 5:
        v6 = 6;
        break;
    case 6:
        v6 = 7;
        break;
    }

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);

    (void)OS_DisableIrqMask(OS_IE_V_BLANK);
    OS_SetIrqFunction(OS_IE_V_BLANK, sub_02039814);
    (void)OS_EnableIrqMask(OS_IE_V_BLANK);

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

    GXLayers_SetBanks(&Unk_020E5EFC);
    v0 = sub_02018340(param0);

    sub_02018368(&Unk_020E5ED0);
    sub_020183C4(v0, 0, &Unk_020E5EE0, 0);
    sub_02019EBC(v0, 0);
    sub_0200DAA4(v0, 0, (512 - 9), 2, 0, param0);
    Font_LoadTextPalette(0, 1 * (2 * 16), param0);
    sub_02019690(0, 32, 0, param0);
    sub_0201975C(0, 0x6c21);
    sub_0201975C(4, 0x6c21);

    v2 = MessageLoader_Init(1, 26, 214, param0);
    v3 = Strbuf_Init(0x180, param0);
    v4 = Strbuf_Init(0x180, param0);
    Text_ResetAllPrinters();
    v5 = StringTemplate_Default(param0);

    sub_0201A8D4(v0, &v1, &Unk_020E5EC8);
    BGL_WindowColor(&v1, 15, 0, 0, 26 * 8, 18 * 8);
    Window_Show(&v1, 0, (512 - 9), 2);

    StringTemplate_SetNumber(v5, 0, param2, 5, 2, 1);
    MessageLoader_GetStrbuf(v2, v6, v4);
    StringTemplate_Format(v5, v3, v4);

    Text_AddPrinterWithParams(&v1, FONT_SYSTEM, v3, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Strbuf_Free(v3);

    GXLayers_TurnBothDispOn();
    sub_0200F338(0);
    sub_0200F338(1);
    sub_0200AB4C(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);

    BGL_DeleteWindow(&v1);
    MessageLoader_Free(v2);
    StringTemplate_Free(v5);
    Heap_FreeToHeap(v0);
}
