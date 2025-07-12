#include "overlay095/ov95_02249F90.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02099F80.h"

#include "overlay095/ov95_02246C20.h"
#include "overlay095/struct_ov95_02247628_decl.h"

#include "bg_window.h"
#include "enums.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "sys_task_manager.h"

enum {
    UnkEnum_ov95_0224A020_00 = 0x50,
    UnkEnum_ov95_0224A020_01 = -0x30,
    UnkEnum_ov95_0224A020_02 = -0x180,
    UnkEnum_ov95_0224A020_03 = -0x30,
    UnkEnum_ov95_0224A020_04 = 0x3C
};

typedef struct {
    UnkStruct_ov95_02247628 *unk_00;
    int unk_04;
    int unk_08;
    BgConfig *unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    fx32 unk_18;
    fx32 unk_1C;
    BOOL unk_20;
} UnkStruct_ov95_02249FF8;

static int ov95_02249FF8(UnkStruct_ov95_02249FF8 *param0, int *param1);
static int ov95_0224A020(UnkStruct_ov95_02249FF8 *param0, int *param1);
static void ov95_0224A0C4(SysTask *param0, void *param1);
static void ov95_0224A10C(UnkStruct_ov95_02249FF8 *param0);
static void ov95_0224A320(UnkStruct_ov95_02249FF8 *param0);
static void ov95_0224A358(BgConfig *param0, int param1, int param2);

void *ov95_02249F90(UnkStruct_ov95_02247628 *param0)
{
    UnkStruct_ov95_02249FF8 *v0 = Heap_AllocFromHeap(HEAP_ID_58, sizeof(UnkStruct_ov95_02249FF8));

    if (v0) {
        int v1;

        v0->unk_00 = param0;
        v0->unk_04 = 0;
        v0->unk_0C = ov95_02247628(param0);
    }

    return v0;
}

void ov95_02249FB4(void *param0)
{
    UnkStruct_ov95_02249FF8 *v0 = param0;

    if (v0) {
        int v1;

        ov95_0224A320(v0);
        Heap_Free(v0);
    }
}

BOOL ov95_02249FC8(void *param0, int *param1)
{
    static int (*const v0[])(UnkStruct_ov95_02249FF8 *, int *) = {
        ov95_02249FF8,
        ov95_0224A020
    };

    UnkStruct_ov95_02249FF8 *v1 = param0;

    if ((*param1) < NELEMS(v0)) {
        if (v0[*param1](v1, &(v1->unk_04))) {
            (*param1)++;
            v1->unk_04 = 0;
        }

        return 0;
    }

    return 1;
}

static int ov95_02249FF8(UnkStruct_ov95_02249FF8 *param0, int *param1)
{
    ov95_0224A10C(param0);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 8, 1, HEAP_ID_58);

    return 1;
}

static int ov95_0224A020(UnkStruct_ov95_02249FF8 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        if (IsScreenFadeDone()) {
            param0->unk_10 = UnkEnum_ov95_0224A020_02 << 12;
            param0->unk_14 = UnkEnum_ov95_0224A020_00 << 12;
            param0->unk_18 = ((UnkEnum_ov95_0224A020_03 - UnkEnum_ov95_0224A020_02) << 12) / UnkEnum_ov95_0224A020_04;
            param0->unk_1C = ((UnkEnum_ov95_0224A020_01 - UnkEnum_ov95_0224A020_00) << 12) / UnkEnum_ov95_0224A020_04;
            param0->unk_08 = UnkEnum_ov95_0224A020_04;
            param0->unk_20 = 0;
            SysTask_ExecuteOnVBlank(ov95_0224A0C4, param0, 0);
            (*param1)++;
        }
        break;
    case 1:
        if (param0->unk_20) {
            Sound_PlayEffect(SEQ_SE_DP_KOUKAN03);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 16, 1, HEAP_ID_58);
            (*param1)++;
        }
        break;
    case 2:
        if (IsScreenFadeDone()) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov95_0224A0C4(SysTask *param0, void *param1)
{
    UnkStruct_ov95_02249FF8 *v0 = param1;

    if (v0->unk_08) {
        v0->unk_08--;
        v0->unk_10 += v0->unk_18;
        v0->unk_14 += v0->unk_1C;

        ov95_0224A358(v0->unk_0C, v0->unk_10 >> 12, v0->unk_14 >> 12);
    } else {
        ov95_0224A358(v0->unk_0C, UnkEnum_ov95_0224A020_03, UnkEnum_ov95_0224A020_01);
        v0->unk_20 = 1;
        SysTask_Done(param0);
    }
}

static void ov95_0224A10C(UnkStruct_ov95_02249FF8 *param0)
{
    static const UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_23_G,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_32_H,
        GX_VRAM_OBJ_16_F,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0123_E
    };
    static const GraphicsModes v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };
    static const BgTemplate v2 = {
        0,
        0,
        0x1000,
        0,
        2,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xd000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        1,
        1,
        0,
        0
    };
    static const BgTemplate v3 = {
        0,
        0,
        0x1000,
        0,
        2,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe000,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        2,
        1,
        0,
        0
    };
    static const BgTemplate v4 = {
        0,
        0,
        0x0,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf000,
        GX_BG_CHARBASE_0x04000,
        GX_BG_EXTPLTT_01,
        3,
        1,
        0,
        0
    };

    GXLayers_SetBanks(&v0);
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    SetAllGraphicsModes(&v1);

    Bg_InitFromTemplate(param0->unk_0C, BG_LAYER_MAIN_1, &v2, 0);
    Bg_InitFromTemplate(param0->unk_0C, BG_LAYER_SUB_1, &v2, 0);
    Bg_InitFromTemplate(param0->unk_0C, BG_LAYER_MAIN_2, &v3, 0);
    Bg_InitFromTemplate(param0->unk_0C, BG_LAYER_MAIN_3, &v4, 0);
    Bg_InitFromTemplate(param0->unk_0C, BG_LAYER_SUB_3, &v4, 0);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 19, param0->unk_0C, 3, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 19, param0->unk_0C, 7, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 18, param0->unk_0C, 3, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 18, param0->unk_0C, 7, 0, 0, 1, HEAP_ID_58);

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 20, 0, 0, 0x20, HEAP_ID_58);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 20, 4, 0, 0x20, HEAP_ID_58);

    Bg_FillTilesRange(param0->unk_0C, 1, 0x0, 1, 200);
    Bg_FillTilesRange(param0->unk_0C, 5, 0x0, 1, 200);
    Bg_FillTilesRange(param0->unk_0C, 2, 0x0, 1, 200);

    ov95_022473E8(param0->unk_00, 0, 1, 14, 0);
    ov95_022473E8(param0->unk_00, 0, 5, 14, 0);
    ov95_022473E8(param0->unk_00, 1, 2, 15, 0);

    Bg_FillTilemapRect(param0->unk_0C, 1, 200, 0, 0, 32, 64, 0);
    Bg_FillTilemapRect(param0->unk_0C, 5, 200, 0, 0, 32, 64, 0);
    Bg_FillTilemapRect(param0->unk_0C, 2, 200, 0, 0, 32, 64, 0);

    ov95_022474D4(param0->unk_00, 0, 1, 14, 20, 0);
    ov95_022474D4(param0->unk_00, 0, 5, 14, 20, 0);
    ov95_022474D4(param0->unk_00, 1, 2, 15, 2, 0);

    Bg_CopyTilemapBufferToVRAM(param0->unk_0C, 1);
    Bg_CopyTilemapBufferToVRAM(param0->unk_0C, 5);
    Bg_CopyTilemapBufferToVRAM(param0->unk_0C, 2);

    ov95_0224A358(param0->unk_0C, UnkEnum_ov95_0224A020_00, UnkEnum_ov95_0224A020_02);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov95_0224A320(UnkStruct_ov95_02249FF8 *param0)
{
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_SUB_3);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_SUB_1);
}

static void ov95_0224A358(BgConfig *param0, int param1, int param2)
{
    param2 &= 0x1ff;
    param1 &= 0x1ff;

    Bg_SetOffset(param0, BG_LAYER_MAIN_2, 3, param2);
    Bg_SetOffset(param0, BG_LAYER_MAIN_1, 3, param1);
    Bg_SetOffset(param0, BG_LAYER_SUB_1, 3, param1 + 192);
}
