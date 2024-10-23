#include "overlay020/ov20_021D2098.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020998EC_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay020/ov20_021D0D80.h"
#include "overlay020/ov20_021D2EA4.h"
#include "overlay020/ov20_021D3864.h"
#include "overlay020/ov20_021D3A54.h"
#include "overlay020/ov20_021D40E8.h"
#include "overlay020/ov20_021D4728.h"
#include "overlay020/struct_ov20_021D16E8_decl.h"
#include "overlay020/struct_ov20_021D30F8_decl.h"
#include "overlay020/struct_ov20_021D3980_decl.h"
#include "overlay020/struct_ov20_021D3E0C_decl.h"
#include "overlay020/struct_ov20_021D4210_decl.h"
#include "overlay020/struct_ov20_021D4AD4_decl.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A784.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"

typedef struct UnkStruct_ov20_021D2128_t {
    SysTask *unk_00;
    SysTask *unk_04;
    SysTask *unk_08[4];
    const UnkStruct_ov20_021D16E8 *unk_18;
    const UnkStruct_020998EC *unk_1C;
    BgConfig *unk_20;
    CellActorCollection *unk_24;
    UnkStruct_0200C738 unk_28;
    NNSG2dImageProxy unk_1B4[2];
    NNSG2dImagePaletteProxy unk_1FC[2];
    NNSG2dCellDataBank *unk_224[2];
    NNSG2dCellAnimBankData *unk_22C[2];
    void *unk_234[2];
    void *unk_23C[2];
    UnkStruct_ov20_021D30F8 *unk_244;
    UnkStruct_ov20_021D3980 *unk_248;
    UnkStruct_ov20_021D3E0C *unk_24C;
    UnkStruct_ov20_021D4210 *unk_250;
    UnkStruct_ov20_021D4AD4 *unk_254;
} UnkStruct_ov20_021D2128;

typedef struct {
    UnkStruct_ov20_021D2128 *unk_00;
    const UnkStruct_ov20_021D16E8 *unk_04;
    const UnkStruct_020998EC *unk_08;
    u32 unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov20_021D2238;

static void ov20_021D2178(SysTask *param0, void *param1);
static void ov20_021D217C(SysTask *param0, void *param1);
static void ov20_021D2238(UnkStruct_ov20_021D2238 *param0);
static void ov20_021D2260(SysTask *param0, void *param1);
static void ov20_021D2370(UnkStruct_ov20_021D2238 *param0, NARC *param1);
static void ov20_021D2414(SysTask *param0, void *param1);
static void ov20_021D24EC(UnkStruct_ov20_021D2238 *param0);
static void ov20_021D2570(SysTask *param0, void *param1);
static void ov20_021D25C0(SysTask *param0, void *param1);
static void ov20_021D25EC(SysTask *param0, void *param1);
static void ov20_021D2630(SysTask *param0, void *param1);
static void ov20_021D2660(SysTask *param0, void *param1);
static void ov20_021D26D8(SysTask *param0, void *param1);
static void ov20_021D2740(SysTask *param0, void *param1);
static void ov20_021D27E4(SysTask *param0, void *param1);
static void ov20_021D2848(SysTask *param0, void *param1);
static void ov20_021D28E8(SysTask *param0, void *param1);
static void ov20_021D29BC(SysTask *param0, void *param1);
static void ov20_021D2A9C(SysTask *param0, void *param1);
static void ov20_021D2B74(SysTask *param0, void *param1);
static void ov20_021D2B94(SysTask *param0, void *param1);
static void ov20_021D2BB4(SysTask *param0, void *param1);
static void ov20_021D2BD4(SysTask *param0, void *param1);
static void ov20_021D2BF4(SysTask *param0, void *param1);
static void ov20_021D2C44(SysTask *param0, void *param1);
static void ov20_021D2C60(SysTask *param0, void *param1);
static void ov20_021D2CB0(SysTask *param0, void *param1);
static void ov20_021D2D00(SysTask *param0, void *param1);
static void ov20_021D2D1C(SysTask *param0, void *param1);
static void ov20_021D2D3C(SysTask *param0, void *param1);
static void ov20_021D2D84(SysTask *param0, void *param1);
static void ov20_021D2DA0(SysTask *param0, void *param1);
static void ov20_021D2DBC(SysTask *param0, void *param1);
static void ov20_021D2DD8(SysTask *param0, void *param1);

UnkStruct_ov20_021D2128 *ov20_021D2098(const UnkStruct_ov20_021D16E8 *param0, const UnkStruct_020998EC *param1)
{
    UnkStruct_ov20_021D2128 *v0 = Heap_AllocFromHeap(35, sizeof(UnkStruct_ov20_021D2128));

    if (v0) {
        int v1;

        SetMainCallback(NULL, NULL);
        DisableHBlank();

        v0->unk_18 = param0;
        v0->unk_1C = param1;

        NNS_G2dInitOamManagerModule();
        sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 35);

        v0->unk_24 = sub_020095C4(128, &v0->unk_28, 35);
        v0->unk_20 = BgConfig_New(35);
        v0->unk_00 = SysTask_Start(ov20_021D2178, v0, 2);
        v0->unk_04 = ov20_021D2170(ov20_021D217C, v0, 1);

        for (v1 = 0; v1 < 4; v1++) {
            v0->unk_08[v1] = NULL;
        }
    }

    return v0;
}

void ov20_021D2128(UnkStruct_ov20_021D2128 *param0)
{
    if (param0) {
        int v0;

        SetMainCallback(NULL, NULL);

        for (v0 = 0; v0 < 4; v0++) {
            if (param0->unk_08[v0]) {
                SysTask_Done(param0->unk_08[v0]);
            }
        }

        SysTask_Done(param0->unk_00);
        SysTask_Done(param0->unk_04);

        sub_0200A878();
        CellActorCollection_Delete(param0->unk_24);

        Heap_FreeToHeap(param0->unk_20);
        Heap_FreeToHeap(param0);
    }
}

SysTask *ov20_021D2170(SysTaskFunc param0, void *param1, int param2)
{
    return SysTask_ExecuteOnVBlank(param0, param1, param2);
}

static void ov20_021D2178(SysTask *param0, void *param1)
{
    return;
}

static void ov20_021D217C(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2128 *v0 = param1;

    CellActorCollection_Update(v0->unk_24);
    sub_0200A858();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

void ov20_021D21A0(UnkStruct_ov20_021D2128 *param0, int param1)
{
    static const SysTaskFunc v0[] = {
        ov20_021D2260,
        ov20_021D2414,
        ov20_021D2570,
        ov20_021D25C0,
        ov20_021D25EC,
        ov20_021D2630,
        ov20_021D2660,
        ov20_021D27E4,
        ov20_021D2848,
        ov20_021D28E8,
        ov20_021D29BC,
        ov20_021D2A9C,
        ov20_021D2B74,
        ov20_021D2B94,
        ov20_021D2BB4,
        ov20_021D2BD4,
        ov20_021D2BF4,
        ov20_021D2C44,
        ov20_021D2C60,
        ov20_021D2CB0,
        ov20_021D2D00,
        ov20_021D2D1C,
        ov20_021D2D3C,
        ov20_021D26D8,
        ov20_021D2740,
        ov20_021D2D84,
        ov20_021D2DA0,
        ov20_021D2DBC,
        ov20_021D2DD8,
    };

    if (param1 < NELEMS(v0)) {
        UnkStruct_ov20_021D2238 *v1 = Heap_AllocFromHeap(35, sizeof(UnkStruct_ov20_021D2238));

        if (v1) {
            int v2;

            v1->unk_14 = 0;
            v1->unk_0C = param1;
            v1->unk_00 = param0;
            v1->unk_04 = param0->unk_18;
            v1->unk_08 = param0->unk_1C;

            for (v2 = 0; v2 < 4; v2++) {
                if (param0->unk_08[v2] == NULL) {
                    v1->unk_10 = v2;
                    param0->unk_08[v2] = SysTask_Start(v0[param1], v1, 1);
                    break;
                }
            }
        }
    } else {
        GF_ASSERT(0);
    }
}

BOOL ov20_021D21F8(UnkStruct_ov20_021D2128 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_08[v0] != NULL) {
            return 0;
        }
    }

    return 1;
}

BOOL ov20_021D2210(UnkStruct_ov20_021D2128 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_08[v0] != NULL) {
            UnkStruct_ov20_021D2238 *v1 = SysTask_GetParam(param0->unk_08[v0]);

            if (v1->unk_0C == param1) {
                return 0;
            }
        }
    }

    return 1;
}

static void ov20_021D2238(UnkStruct_ov20_021D2238 *param0)
{
    SysTask_Done(param0->unk_00->unk_08[param0->unk_10]);
    param0->unk_00->unk_08[param0->unk_10] = NULL;
    Heap_FreeToHeap(param0);
}

static void ov20_021D2260(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    NARC *v1;

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_64K);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__PMSI, 35);

    ov20_021D24EC(v0);
    ov20_021D2370(v0, v1);

    v0->unk_00->unk_244 = ov20_021D2EA4(v0->unk_00, v0->unk_04, v0->unk_08);
    ov20_021D2F50(v0->unk_00->unk_244, v1);

    v0->unk_00->unk_248 = ov20_021D3864(v0->unk_00, v0->unk_04, v0->unk_08);
    ov20_021D3898(v0->unk_00->unk_248, v1);

    v0->unk_00->unk_24C = ov20_021D3A54(v0->unk_00, v0->unk_04, v0->unk_08);
    ov20_021D3A98(v0->unk_00->unk_24C, v1);

    v0->unk_00->unk_250 = ov20_021D40E8(v0->unk_00, v0->unk_04, v0->unk_08);
    ov20_021D41A8(v0->unk_00->unk_250);

    v0->unk_00->unk_254 = ov20_021D4728(v0->unk_00, v0->unk_04, v0->unk_08);
    ov20_021D4774(v0->unk_00->unk_254, v1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GX_DispOn();

    NARC_dtor(v1);

    ov20_021D2238(v0);
}

static void ov20_021D2370(UnkStruct_ov20_021D2238 *param0, NARC *param1)
{
    UnkStruct_ov20_021D2128 *v0 = param0->unk_00;

    NNS_G2dInitImagePaletteProxy(&(v0->unk_1FC[0]));
    NNS_G2dInitImagePaletteProxy(&(v0->unk_1FC[1]));

    NNS_G2dInitImageProxy(&(v0->unk_1B4[0]));
    NNS_G2dInitImageProxy(&(v0->unk_1B4[1]));

    sub_0200718C(param1, 9, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 35, &(v0->unk_1B4[0]));
    sub_0200716C(param1, 10, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 35, &(v0->unk_1FC[0]));

    v0->unk_234[0] = sub_02007204(param1, 7, 1, &(v0->unk_224[0]), 35);
    v0->unk_23C[0] = sub_02007220(param1, 8, 1, &(v0->unk_22C[0]), 35);
    v0->unk_234[1] = NULL;
    v0->unk_23C[1] = NULL;
}

static void ov20_021D2414(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    switch (v0->unk_14) {
    case 0:
        sub_0200F174(0, 0, 0, 0x0, 5, 1, 35);
        v0->unk_14++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            int v2;

            ov20_021D2EF0(v0->unk_00->unk_244);
            ov20_021D3880(v0->unk_00->unk_248);
            ov20_021D3A80(v0->unk_00->unk_24C);
            ov20_021D4164(v0->unk_00->unk_250);
            ov20_021D4764(v0->unk_00->unk_254);

            for (v2 = 0; v2 < 2; v2++) {
                if (v1->unk_234[v2] != NULL) {
                    Heap_FreeToHeap(v1->unk_234[v2]);
                }

                if (v1->unk_23C[v2] != NULL) {
                    Heap_FreeToHeap(v1->unk_23C[v2]);
                }
            }

            Bg_FreeTilemapBuffer(v1->unk_20, 0);
            Bg_FreeTilemapBuffer(v1->unk_20, 1);
            Bg_FreeTilemapBuffer(v1->unk_20, 2);
            Bg_FreeTilemapBuffer(v1->unk_20, 3);
            Bg_FreeTilemapBuffer(v1->unk_20, 4);

            ov20_021D2238(v0);
        }
        break;
    }
}

static void ov20_021D24EC(UnkStruct_ov20_021D2238 *param0)
{
    static const UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_01_FG
    };
    static const GraphicsModes v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D,
    };
    static const BgTemplate v2 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xd800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };
    static const BgTemplate v3 = {
        0,
        0,
        0x1000,
        0,
        3,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe000,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };
    static const BgTemplate v4 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf000,
        GX_BG_CHARBASE_0x18000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };
    static const BgTemplate v5 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x08000,
        GX_BG_EXTPLTT_01,
        3,
        0,
        0,
        0
    };
    static const BgTemplate v6 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };
    UnkStruct_ov20_021D2128 *v7 = param0->unk_00;

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    GX_SetGraphicsMode(GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);

    GXLayers_SetBanks(&v0);
    SetAllGraphicsModes(&v1);

    Bg_InitFromTemplate(v7->unk_20, 0, &v2, 0);
    Bg_InitFromTemplate(v7->unk_20, 1, &v3, 0);
    Bg_InitFromTemplate(v7->unk_20, 2, &v4, 0);
    Bg_InitFromTemplate(v7->unk_20, 3, &v5, 0);

    Bg_InitFromTemplate(v7->unk_20, 4, &v6, 0);
}

static void ov20_021D2570(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    switch (v0->unk_14) {
    case 0:
        sub_0200F174(0, 1, 1, 0x0, 5, 1, 35);
        v0->unk_14++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            v0->unk_14++;
        }
        break;
    default:
        ov20_021D2238(v0);
        break;
    }
}

static void ov20_021D25C0(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D3228(v1->unk_244);
    ov20_021D3700(v1->unk_244, ov20_021D1FCC(v0->unk_04));

    ov20_021D2238(v0);
}

static void ov20_021D25EC(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D369C(v1->unk_244, 0);
    ov20_021D36B0(v1->unk_244);

    ov20_021D39D4(v1->unk_248, 1);
    ov20_021D39EC(v1->unk_248, ov20_021D1FD4(v1->unk_18));

    ov20_021D2238(v0);
}

static void ov20_021D2630(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D39D4(v1->unk_248, 0);
    ov20_021D36D0(v1->unk_244);
    ov20_021D369C(v1->unk_244, 1);
    ov20_021D2238(v0);
}

static void ov20_021D2660(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    switch (v0->unk_14) {
    case 0:
        ov20_021D3684(v1->unk_244);
        ov20_021D36B0(v1->unk_244);
        ov20_021D3EF8(v1->unk_24C);
        v0->unk_14++;
        break;
    case 1:
        if (ov20_021D3F10(v1->unk_24C)) {
            ov20_021D3A2C(v1->unk_248);
            ov20_021D3E74(v1->unk_24C, ov20_021D1FDC(v1->unk_18));
            ov20_021D3E48(v1->unk_24C, 1);
            ov20_021D2238(v0);
        }
        break;
    }
}

static void ov20_021D26D8(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    switch (v0->unk_14) {
    case 0:
        ov20_021D4BA4(v1->unk_254);
        v0->unk_14++;
        break;
    case 1:
        ov20_021D40A8(v1->unk_24C);
        v0->unk_14++;
        break;
    case 2:
        if (ov20_021D40DC(v1->unk_24C)
            && ov20_021D4C2C(v1->unk_254)) {
            ov20_021D4084(v1->unk_24C);
            ov20_021D2238(v0);
        }
        break;
    }
}

static void ov20_021D2740(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    switch (v0->unk_14) {
    case 0:
        ov20_021D4BA4(v1->unk_254);
        v0->unk_14++;
        break;
    case 1:
        ov20_021D3E48(v1->unk_24C, 0);
        ov20_021D40A8(v1->unk_24C);
        v0->unk_14++;
        break;
    case 2:
        if (ov20_021D40DC(v1->unk_24C)) {
            ov20_021D4084(v1->unk_24C);
            v0->unk_14++;
        }
        break;
    case 3:
        if (ov20_021D4C2C(v1->unk_254)) {
            ov20_021D3E74(v1->unk_24C, ov20_021D1FDC(v1->unk_18));
            ov20_021D3E48(v1->unk_24C, 1);
            ov20_021D2238(v0);
        }
        break;
    }
}

static void ov20_021D27E4(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    switch (v0->unk_14) {
    case 0:
        ov20_021D3A40(v1->unk_248);
        ov20_021D3E48(v1->unk_24C, 0);
        ov20_021D3F60(v1->unk_24C);
        v0->unk_14++;
        break;
    case 1:
        if (ov20_021D3F84(v1->unk_24C)) {
            ov20_021D36D0(v1->unk_244);
            ov20_021D3690(v1->unk_244);
            ov20_021D2238(v0);
        }
        break;
    }
}

static void ov20_021D2848(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    switch (v0->unk_14) {
    case 0:
        ov20_021D4294(v1->unk_250);
        ov20_021D3E48(v1->unk_24C, 0);
        ov20_021D4004(v1->unk_24C);
        v0->unk_14++;
        break;
    case 1:
        if (ov20_021D4020(v1->unk_24C)) {
            ov20_021D42E4(v1->unk_250);
            v0->unk_14++;
        }
        break;
    case 2:
        if (ov20_021D4390(v1->unk_250)) {
            ov20_021D4480(v1->unk_250, ov20_021D2034(v1->unk_18));
            ov20_021D4440(v1->unk_250, 1);
            ov20_021D4DBC(v1->unk_254, 1);
            ov20_021D2238(v0);
        }
        break;
    }
}

static void ov20_021D28E8(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    switch (v0->unk_14) {
    case 0:
        ov20_021D4BA4(v1->unk_254);
        v0->unk_14++;
        break;
    case 1:
        ov20_021D4440(v1->unk_250, 0);
        ov20_021D4DBC(v1->unk_254, 0);
        ov20_021D43B4(v1->unk_250);
        v0->unk_14++;
        break;
    case 2:
        if (ov20_021D43D8(v1->unk_250)) {
            ov20_021D4084(v1->unk_24C);
            v0->unk_14++;
        }
        break;
    case 3:
        ov20_021D403C(v1->unk_24C);
        v0->unk_14++;
        break;
    case 4:
        if (ov20_021D4078(v1->unk_24C)
            && ov20_021D4C2C(v1->unk_254)) {
            ov20_021D3E74(v1->unk_24C, ov20_021D1FDC(v1->unk_18));
            ov20_021D3E48(v1->unk_24C, 1);
            ov20_021D2238(v0);
        }
        break;
    }
}

static void ov20_021D29BC(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    switch (v0->unk_14) {
    case 0:
        ov20_021D3A40(v1->unk_248);
        ov20_021D4440(v1->unk_250, 0);
        ov20_021D4DBC(v1->unk_254, 0);
        ov20_021D43B4(v1->unk_250);
        v0->unk_14++;
        break;
    case 1:
        if (ov20_021D43D8(v1->unk_250)) {
            ov20_021D3FD0(v1->unk_24C);
            ov20_021D403C(v1->unk_24C);
            v0->unk_14++;
        }
        break;
    case 2:
        if (ov20_021D4078(v1->unk_24C)) {
            ov20_021D3FE0(v1->unk_24C);
            v0->unk_14++;
        }
        break;
    case 3:
        if (ov20_021D3FF8(v1->unk_24C)) {
            ov20_021D3228(v1->unk_244);
            ov20_021D369C(v1->unk_244, 1);
            ov20_021D36D0(v1->unk_244);
            ov20_021D3690(v1->unk_244);
            ov20_021D2238(v0);
        }
    }
}

static void ov20_021D2A9C(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    switch (v0->unk_14) {
    case 0:
        ov20_021D3A40(v1->unk_248);
        ov20_021D4440(v1->unk_250, 0);
        ov20_021D4DBC(v1->unk_254, 0);
        ov20_021D43B4(v1->unk_250);
        v0->unk_14++;
        break;
    case 1:
        if (ov20_021D43D8(v1->unk_250)) {
            ov20_021D3FD0(v1->unk_24C);
            ov20_021D403C(v1->unk_24C);
            v0->unk_14++;
        }
        break;
    case 2:
        if (ov20_021D4078(v1->unk_24C)) {
            ov20_021D3FE0(v1->unk_24C);
            v0->unk_14++;
        }
        break;
    case 3:
        if (ov20_021D3FF8(v1->unk_24C)) {
            ov20_021D3228(v1->unk_244);
            ov20_021D369C(v1->unk_244, 0);
            ov20_021D39D4(v1->unk_248, 1);
            ov20_021D2238(v0);
        }
    }
}

static void ov20_021D2B74(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D3700(v1->unk_244, ov20_021D1FCC(v1->unk_18));
    ov20_021D2238(v0);
}

static void ov20_021D2B94(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D39EC(v1->unk_248, ov20_021D1FD4(v1->unk_18));
    ov20_021D2238(v0);
}

static void ov20_021D2BB4(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D3E74(v1->unk_24C, ov20_021D1FDC(v1->unk_18));
    ov20_021D2238(v0);
}

static void ov20_021D2BD4(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D4480(v1->unk_250, ov20_021D2034(v1->unk_18));
    ov20_021D2238(v0);
}

static void ov20_021D2BF4(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    switch (v0->unk_14) {
    case 0:
        ov20_021D44BC(v1->unk_250, ov20_021D2040(v1->unk_18));
        v0->unk_14++;
        break;
    case 1:
        if (ov20_021D4578(v1->unk_250)) {
            ov20_021D4DBC(v1->unk_254, 1);
            ov20_021D2238(v0);
        }
        break;
    }
}

static void ov20_021D2C44(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D3578(v1->unk_244, 0);
    ov20_021D2238(v0);
}

static void ov20_021D2C60(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D3578(v1->unk_244, 2);
    ov20_021D3790(v1->unk_244, ov20_021D208C(v0->unk_04));

    if (ov20_021D39E0(v1->unk_248)) {
        ov20_021D39BC(v1->unk_248);
    } else {
        ov20_021D3684(v1->unk_244);
    }

    ov20_021D2238(v0);
}

static void ov20_021D2CB0(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D3578(v1->unk_244, 3);
    ov20_021D3790(v1->unk_244, ov20_021D208C(v0->unk_04));

    if (ov20_021D39E0(v1->unk_248)) {
        ov20_021D39BC(v1->unk_248);
    } else {
        ov20_021D3684(v1->unk_244);
    }

    ov20_021D2238(v0);
}

static void ov20_021D2D00(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D3578(v1->unk_244, 1);
    ov20_021D2238(v0);
}

static void ov20_021D2D1C(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D381C(v1->unk_244, ov20_021D208C(v0->unk_04));
    ov20_021D2238(v0);
}

static void ov20_021D2D3C(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D3578(v1->unk_244, 0);
    ov20_021D384C(v1->unk_244);

    if (ov20_021D39E0(v1->unk_248)) {
        ov20_021D39C8(v1->unk_248);
    } else {
        ov20_021D3690(v1->unk_244);
    }

    ov20_021D2238(v0);
}

static void ov20_021D2D84(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D4DF4(v1->unk_254, 0, 1);
    ov20_021D2238(v0);
}

static void ov20_021D2DA0(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D4DF4(v1->unk_254, 1, 1);
    ov20_021D2238(v0);
}

static void ov20_021D2DBC(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D4DF4(v1->unk_254, 0, 0);
    ov20_021D2238(v0);
}

static void ov20_021D2DD8(SysTask *param0, void *param1)
{
    UnkStruct_ov20_021D2238 *v0 = param1;
    UnkStruct_ov20_021D2128 *v1 = v0->unk_00;

    ov20_021D4DF4(v1->unk_254, 1, 0);
    ov20_021D2238(v0);
}

u32 ov20_021D2DF4(UnkStruct_ov20_021D2128 *param0)
{
    return ov20_021D3574(param0->unk_244);
}

BgConfig *ov20_021D2E04(UnkStruct_ov20_021D2128 *param0)
{
    return param0->unk_20;
}

CellActorCollection *ov20_021D2E08(UnkStruct_ov20_021D2128 *param0)
{
    return param0->unk_24;
}

void ov20_021D2E0C(UnkStruct_ov20_021D2128 *param0, CellActorResourceData *param1, u32 param2, u32 param3)
{
    param1->imageProxy = &param0->unk_1B4[param2];
    param1->paletteProxy = &param0->unk_1FC[param2];
    param1->cellBank = param0->unk_224[param2];
    param1->cellAnimBank = param0->unk_22C[param2];
    param1->priority = param3;
    param1->charData = NULL;
    param1->multiCellBank = NULL;
    param1->multiCellAnimBank = NULL;
    param1->isVRamTransfer = 0;
}

CellActor *ov20_021D2E50(UnkStruct_ov20_021D2128 *param0, CellActorResourceData *param1, u32 param2, u32 param3, u32 param4, int param5)
{
    CellActorInitParams v0;
    CellActor *v1;
    OSIntrMode v2;

    v0.collection = param0->unk_24;
    v0.resourceData = param1;
    v0.position.x = param2 * FX32_ONE;
    v0.position.y = param3 * FX32_ONE;
    v0.position.z = 0;
    v0.priority = param4;
    v0.vramType = param5;
    v0.heapID = 35;

    v2 = OS_DisableInterrupts();
    v1 = CellActorCollection_Add(&v0);

    OS_RestoreInterrupts(v2);

    if (v1) {
        CellActor_SetAnimateFlag(v1, 1);
        CellActor_SetAnimSpeed(v1, ((FX32_ONE * 2) / 2));
    }

    return v1;
}
