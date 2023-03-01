#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "string/strbuf.h"

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
#include "string/strbuf.h"

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

void sub_02039A64 (int param0, int param1)
{
    UnkStruct_02018340 * v0;
    UnkStruct_0205AA50 v1;
    UnkStruct_0200B144 * v2;
    Strbuf * v3;
    int v4;

    v4 = 16;

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);
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

    GXLayers_SetBanks(&Unk_020E5F7C);
    v0 = sub_02018340(param0);

    sub_02018368(&Unk_020E5F50);
    sub_020183C4(v0, 0, &Unk_020E5F60, 0);
    sub_02019EBC(v0, 0);
    sub_0200DAA4(v0, 0, (512 - 9), 2, 0, param0);
    sub_02002E7C(0, 1 * (2 * 16), param0);
    sub_02019690(0, 32, 0, param0);
    sub_0201975C(0, 0x6c21);
    sub_0201975C(4, 0x6c21);

    v2 = sub_0200B144(1, 26, 695, param0);
    v3 = PLString_Init(0x180, param0);

    sub_0201D710();
    sub_0201A8D4(v0, &v1, &Unk_020E5F48);
    sub_0201AE78(&v1, 15, 0, 0, 26 * 8, 18 * 8);
    sub_0200DC48(&v1, 0, (512 - 9), 2);
    sub_0200B1B8(v2, v4, v3);
    sub_0201D738(&v1, 0, v3, 0, 0, 0, NULL);
    PLString_Free(v3);
    GXLayers_TurnBothDispOn();
    sub_0200F338(0);
    sub_0200F338(1);
    sub_0200AB4C(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);

    while (TRUE) {
        int v5 = PAD_Read();

        sub_0200106C();

        if (v5 & PAD_BUTTON_A) {
            break;
        }

        OS_WaitIrq(1, OS_IE_V_BLANK);
    }

    sub_0201A8FC(&v1);
    sub_0200B190(v2);

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
