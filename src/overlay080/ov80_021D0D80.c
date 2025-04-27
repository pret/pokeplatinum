#include "overlay080/ov80_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay080/ov80_021D2A08.h"
#include "overlay080/ov80_021D2AF4.h"
#include "overlay080/struct_ov80_021D2A08.h"
#include "overlay080/struct_ov80_021D2E94.h"

#include "bg_window.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "map_matrix.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "sound.h"
#include "strbuf.h"
#include "system.h"
#include "unk_0200F174.h"
#include "unk_0201E3D8.h"
#include "unk_0208C098.h"

int ov80_021D0D80(OverlayManager *param0, int *param1);
int ov80_021D0DD8(OverlayManager *param0, int *param1);
int ov80_021D0E50(OverlayManager *param0, int *param1);
static void ov80_021D0E68(void *param0);
static void ov80_021D0EA8(void);
static int ov80_021D0EC8(UnkStruct_ov80_021D2A08 *param0);
static void ov80_021D1088(UnkStruct_ov80_021D2A08 *param0, BgConfig *param1);
static void ov80_021D1158(UnkStruct_ov80_021D2A08 *param0);
static void ov80_021D12D8(UnkStruct_ov80_021D2A08 *param0);
static void ov80_021D0FF4(UnkStruct_ov80_021D2A08 *param0);
static void ov80_021D1068(UnkStruct_ov80_021D2A08 *param0);
static int ov80_021D132C(UnkStruct_ov80_021D2A08 *param0);
static int ov80_021D1354(UnkStruct_ov80_021D2A08 *param0);
static int ov80_021D138C(UnkStruct_ov80_021D2A08 *param0);
static int ov80_021D13A0(UnkStruct_ov80_021D2A08 *param0);
static int ov80_021D13DC(UnkStruct_ov80_021D2A08 *param0);
static int ov80_021D1438(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D1458(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D14A8(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D1550(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D159C(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D163C(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D16F8(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D1744(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D1478(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D1758(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D1678(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D15C8(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D1610(UnkStruct_ov80_021D2A08 *param0);
int ov80_021D16D0(UnkStruct_ov80_021D2A08 *param0);

const UnkStruct_ov80_021D2E94 Unk_ov80_021D2E94[3] = {
    {
        ov80_021D1458,
        ov80_021D14A8,
        ov80_021D1550,
        ov80_021D159C,
        ov80_021D163C,
        ov80_021D16F8,
        ov80_021D1744,
        ov80_021D1478,
        ov80_021D1758,
    },
    {
        ov80_021D1458,
        ov80_021D14A8,
        ov80_021D1550,
        ov80_021D159C,
        ov80_021D1678,
        ov80_021D16F8,
        ov80_021D1744,
        ov80_021D1478,
        ov80_021D1758,
    },
    {
        ov80_021D1458,
        ov80_021D14A8,
        ov80_021D15C8,
        ov80_021D1610,
        ov80_021D16D0,
        ov80_021D16F8,
        ov80_021D1744,
        ov80_021D1478,
        ov80_021D1758,
    },
};

int ov80_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov80_021D2A08 *v0 = NULL;
    UnkStruct_0203D8AC *v1 = (UnkStruct_0203D8AC *)OverlayManager_Args(param0);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_17, 0x20000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov80_021D2A08), HEAP_ID_17);
    memset(v0, 0, sizeof(UnkStruct_ov80_021D2A08));
    v0->unk_2C = v1;

    if (v1->unk_139 < 3) {
        v0->unk_00 = v1->unk_139;
    } else {
        v0->unk_00 = 0;
    }

    v0->unk_02 = v1->unk_13C;
    v0->heapID = HEAP_ID_17;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_55, SEQ_NONE, 0);

    return 1;
}

int ov80_021D0DD8(OverlayManager *param0, int *param1)
{
    UnkStruct_ov80_021D2A08 *v0 = OverlayManager_Data(param0);

    switch (v0->unk_08) {
    case 0:
        v0->unk_08 = ov80_021D132C(v0);
        break;
    case 1:
        v0->unk_08 = ov80_021D1354(v0);
        break;
    case 3:
        v0->unk_08 = ov80_021D138C(v0);
        ov80_021D1068(v0);
        break;
    case 4:
        v0->unk_08 = ov80_021D13A0(v0);
        ov80_021D1068(v0);
        break;
    case 6:
        v0->unk_08 = ov80_021D13DC(v0);
        ov80_021D1068(v0);
        break;
    case 8:
        v0->unk_08 = ov80_021D1438(v0);
        break;
    case 7:
        return 1;
    }

    return 0;
}

int ov80_021D0E50(OverlayManager *param0, int *param1)
{
    int v0 = 0;
    UnkStruct_ov80_021D2A08 *v1 = OverlayManager_Data(param0);

    OverlayManager_FreeData(param0);
    Heap_Destroy(HEAP_ID_17);

    return 1;
}

static void ov80_021D0E68(void *param0)
{
    UnkStruct_ov80_021D2A08 *v0 = param0;

    if (Unk_ov80_021D2E94[v0->unk_00].unk_20 != NULL) {
        (Unk_ov80_021D2E94[v0->unk_00].unk_20)(v0);
    }

    NNS_GfdDoVramTransfer();

    ov80_021D2AEC(v0);
    Bg_RunScheduledUpdates(v0->unk_28);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov80_021D0EA8(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static int ov80_021D0EC8(UnkStruct_ov80_021D2A08 *param0)
{
    switch (param0->unk_0C) {
    case 0:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        if ((param0->unk_2C->unk_00 == 0) && (param0->unk_2C->unk_04 == 0)) {
            param0->unk_20 = 3;
            param0->unk_24 = 27;
        } else {
            param0->unk_20 = param0->unk_2C->unk_00 / 32;
            param0->unk_24 = param0->unk_2C->unk_04 / 32;
        }

        param0->unk_18 = param0->unk_20;
        param0->unk_1C = param0->unk_24;
        param0->unk_80 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_LOCATION_NAMES, param0->heapID);
        param0->unk_84 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0615, param0->heapID);
        param0->unk_88 = Strbuf_Init(22, param0->heapID);
        param0->unk_30 = MainMapMatrixData_Load(param0->heapID);
        param0->unk_40 = ov80_021D2D70("data/tmap_block.dat", param0->heapID);
        break;
    case 1:
        ov80_021D0EA8();
        param0->unk_28 = BgConfig_New(param0->heapID);
        ov80_021D1088(param0, param0->unk_28);
        ov80_021D1158(param0);
        EnableTouchScreen();
        InitializeTouchScreenNoBuffer(4);
        ov80_021D2A08(param0);
        break;
    case 2:
        SetVBlankCallback(ov80_021D0E68, param0);
        param0->unk_38 = Unk_ov80_021D2E94[param0->unk_00].unk_10;
        param0->unk_0C = 0;
        return 1;
    }

    param0->unk_0C++;
    return 0;
}

static void ov80_021D0FF4(UnkStruct_ov80_021D2A08 *param0)
{
    int v0;

    DisableTouchScreen();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();

    ov80_021D2AC0(param0);
    ov80_021D12D8(param0);

    for (v0 = 0; v0 < 8; v0++) {
        Bg_FreeTilemapBuffer(param0->unk_28, v0);
    }

    Heap_FreeToHeap(param0->unk_28);
    ov80_021D2E10(param0->unk_40);
    MainMapMatrixData_Free(param0->unk_30);
    Strbuf_Free(param0->unk_88);
    MessageLoader_Free(param0->unk_84);
    MessageLoader_Free(param0->unk_80);
}

static void ov80_021D1068(UnkStruct_ov80_021D2A08 *param0)
{
    (Unk_ov80_021D2E94[param0->unk_00].unk_18)(param0);
    ov80_021D2AE0(param0);
}

static void ov80_021D1088(UnkStruct_ov80_021D2A08 *param0, BgConfig *param1)
{
    int v0, v1;

    {
        GraphicsModes v2 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v2);
    }

    {
        BgTemplate v3[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xe800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xe000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x2000,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xd000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x2000,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xb000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
        };

        v1 = 0;

        for (v0 = 0; v0 < 8; v0++) {
            Bg_InitFromTemplate(param1, v1, &(v3[v0]), 0);
            Bg_ClearTilemap(param1, v1++);
        }
    }

    Bg_ClearTilesRange(0, 32, 0, param0->heapID);
    Bg_ClearTilesRange(1, 32, 0, param0->heapID);
    Bg_ClearTilesRange(2, 32, 0, param0->heapID);
    Bg_ClearTilesRange(3, 32, 0, param0->heapID);
    Bg_ClearTilesRange(4, 32, 0, param0->heapID);
    Bg_ClearTilesRange(5, 32, 0, param0->heapID);
    Bg_ClearTilesRange(6, 32, 0, param0->heapID);
    Bg_ClearTilesRange(7, 32, 0, param0->heapID);
}

static void ov80_021D1158(UnkStruct_ov80_021D2A08 *param0)
{
    void *v0;
    u32 v1, v2;
    NARC *v3;

    v2 = 17;
    v3 = NARC_ctor(NARC_INDEX_GRAPHIC__TMAP_GRA, param0->heapID);

    sub_0208C210(param0->unk_28, param0->heapID, v3, v2, 19, 1, 0, 0, 0);
    sub_0208C210(param0->unk_28, param0->heapID, v3, v2, 20, 6, 0, 0, 0);
    sub_0208C210(param0->unk_28, param0->heapID, v3, v2, 21, 5, 0, 0, 0);

    sub_0208C210(param0->unk_28, param0->heapID, v3, v2, 0, 0, 2, 0, 0);
    sub_0208C210(param0->unk_28, param0->heapID, v3, v2, 1, 4, 2, 0, 0);

    param0->unk_98 = sub_0208C2F4(v3, v2, 24, &param0->unk_B8, param0->heapID);
    param0->unk_9C = sub_0208C2F4(v3, v2, 22, &param0->unk_BC, param0->heapID);
    param0->unk_A0 = sub_0208C2F4(v3, v2, 23, &param0->unk_C0, param0->heapID);
    param0->unk_A4 = sub_0208C2F4(v3, v2, 25, &param0->unk_C4, param0->heapID);
    param0->unk_A8 = sub_0208C2F4(v3, v2, 26, &param0->unk_C8, param0->heapID);
    param0->unk_AC = sub_0208C2F4(v3, v2, 27, &param0->unk_CC, param0->heapID);
    param0->unk_B0 = sub_0208C2F4(v3, v2, 28, &param0->unk_D0, param0->heapID);
    param0->unk_B4 = sub_0208C2F4(v3, v2, 29, &param0->unk_D4, param0->heapID);

    NARC_dtor(v3);
    Font_LoadTextPalette(0, 15 * 32, param0->heapID);
    Font_LoadTextPalette(4, 15 * 32, param0->heapID);
}

static void ov80_021D12D8(UnkStruct_ov80_021D2A08 *param0)
{
    Heap_FreeToHeap(param0->unk_B4);
    Heap_FreeToHeap(param0->unk_B0);
    Heap_FreeToHeap(param0->unk_AC);
    Heap_FreeToHeap(param0->unk_A8);
    Heap_FreeToHeap(param0->unk_A4);
    Heap_FreeToHeap(param0->unk_A0);
    Heap_FreeToHeap(param0->unk_9C);
    Heap_FreeToHeap(param0->unk_98);
}

static int ov80_021D132C(UnkStruct_ov80_021D2A08 *param0)
{
    if (ov80_021D0EC8(param0) != 1) {
        return 0;
    }

    (Unk_ov80_021D2E94[param0->unk_00].unk_00)(param0);
    return 1;
}

static int ov80_021D1354(UnkStruct_ov80_021D2A08 *param0)
{
    if ((Unk_ov80_021D2E94[param0->unk_00].unk_04)(param0) != 1) {
        return 1;
    }

    Unk_ov80_021D2E94[param0->unk_00].unk_08(param0);
    return 3;
}

static int ov80_021D138C(UnkStruct_ov80_021D2A08 *param0)
{
    if (!IsScreenTransitionDone()) {
        return 3;
    }

    return 4;
}

static int ov80_021D13A0(UnkStruct_ov80_021D2A08 *param0)
{
    if ((param0->unk_38)(param0) != 1) {
        Unk_ov80_021D2E94[param0->unk_00].unk_14(param0);
        return 4;
    }

    Unk_ov80_021D2E94[param0->unk_00].unk_0C(param0);
    return 6;
}

static int ov80_021D13DC(UnkStruct_ov80_021D2A08 *param0)
{
    if (IsScreenTransitionDone()) {
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_NONE, 31, 0);
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        sub_0200F32C(0);
        sub_0200F32C(1);
        return 8;
    }

    Unk_ov80_021D2E94[param0->unk_00].unk_14(param0);
    return 6;
}

static int ov80_021D1438(UnkStruct_ov80_021D2A08 *param0)
{
    (Unk_ov80_021D2E94[param0->unk_00].unk_1C)(param0);

    ov80_021D0FF4(param0);
    return 7;
}
