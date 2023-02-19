#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_plstring_decl.h"

#include "struct_defs/struct_02017E74.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02000C88.h"
#include "unk_02002B7C.h"
#include "unk_0200A9DC.h"
#include "unk_0200AC5C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "plstring.h"
#include "unk_02034198.h"
#include "unk_020366A0.h"
#include "error_message_reset.h"

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

static const UnkStruct_ov84_0223BA5C sErrorMessageBgModeSet = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const UnkStruct_ov97_0222DB78 sErrorMessageBgTemplate = {
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

static const UnkStruct_ov61_0222C884 sErrorMessageWindowTemplate = {
    0x0,
    0x3,
    0x3,
    0x1A,
    0x12,
    0x1,
    0x23
};

static const HeapParam sErrorMessageHeapParams[] = {
    {
        .size = 0x20000,
        .arena = OS_ARENA_MAIN
    }
};

static BOOL sErrorMessagePrinterLock;

static void VBlankIntr (void)
{
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
    MI_WaitDma(GX_DEFAULT_DMAID);
}

void ErrorMessageReset_PrintErrorAndReset (void)
{
    UnkStruct_02018340 * bgConfig;
    UnkStruct_0205AA50 window;
    UnkStruct_0200B144 * errorMsgData;
    PLString * errorString;
    int v4;
    int v5 = 0;

    if (sErrorMessagePrinterLock == TRUE) {
        return;
    }

    sErrorMessagePrinterLock = TRUE;

    OS_InitArenaHiAndLo(OS_ARENA_MAIN);
    Heap_InitSystem(sErrorMessageHeapParams, NELEMS(sErrorMessageHeapParams), NELEMS(sErrorMessageHeapParams), 0);

    v4 = 3;

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);

    OS_DisableIrqMask(OS_IE_V_BLANK);
    OS_SetIrqFunction(OS_IE_V_BLANK, VBlankIntr);
    OS_EnableIrqMask(OS_IE_V_BLANK);

    sub_02017798(NULL, NULL);
    sub_020177BC(NULL, NULL);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    sub_02017DD4(4, 8);
    Unk_021BF67C.unk_65 = 0;
    GXLayers_SwapDisplay();

    G2_BlendNone();
    G2S_BlendNone();
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    GXLayers_SetBanks(&sErrorMessageBanksConfig);
    bgConfig = sub_02018340(v5);

    sub_02018368(&sErrorMessageBgModeSet);
    sub_020183C4(bgConfig, 0, &sErrorMessageBgTemplate, 0);
    sub_02019EBC(bgConfig, 0);
    sub_0200DAA4(bgConfig, 0, (512 - 9), 2, 0, v5);
    sub_02002E7C(0, 1 * (2 * 16), v5);
    sub_02019690(0, 32, 0, v5);
    sub_0201975C(0, 0x6c21);
    sub_0201975C(4, 0x6c21);

    errorMsgData = sub_0200B144(1, 26, 214, v5);
    errorString = PLString_New(0x180, v5);

    sub_0201D710();

    sub_0201A8D4(bgConfig, &window, &sErrorMessageWindowTemplate);
    sub_0201AE78(&window, 15, 0, 0, 26 * 8, 18 * 8);
    sub_0200DC48(&window, 0, (512 - 9), 2);
    sub_0200B1B8(errorMsgData, v4, errorString);
    sub_0201D738(&window, 0, errorString, 0, 0, 0, NULL);
    PLString_Free(errorString);

    GXLayers_TurnBothDispOn();
    sub_0200F338(0);
    sub_0200F338(1);
    sub_0200AB4C(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);
    sub_02037DB0();

    while (TRUE) {
        sub_0200106C();
        sub_020349EC();

        if (sub_02038AB8()) {
            break;
        }

        OS_WaitIrq(1, OS_IE_V_BLANK);
    }

    while (TRUE) {
        sub_0200106C();

        if (PAD_Read() & PAD_BUTTON_A) {
            break;
        }

        OS_WaitIrq(1, OS_IE_V_BLANK);
    }

    sub_0200F344(0, 0x7fff);
    sub_0200F344(1, 0x7fff);

    sub_0201A8FC(&window);
    sub_0200B190(errorMsgData);
    Heap_FreeToHeap(bgConfig);

    OS_ResetSystem(0);
}
