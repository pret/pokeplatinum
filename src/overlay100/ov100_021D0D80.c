#include "overlay100/ov100_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"

#include "struct_defs/struct_02099F80.h"

#include "overlay100/ov100_021D13E4.h"
#include "overlay100/ov100_021D1C44.h"
#include "overlay100/ov100_021D2F0C.h"
#include "overlay100/ov100_021D46C8.h"
#include "overlay100/struct_ov100_021D46C8.h"
#include "overlay100/struct_ov100_021D4DD8.h"

#include "bg_window.h"
#include "camera.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sprite_system.h"
#include "system.h"
#include "unk_02024220.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay100);

typedef void *(*UnkFuncPtr_ov100_021D5130)(UnkStruct_ov100_021D4DD8 *);
typedef BOOL (*UnkFuncPtr_ov100_021D5130_1)(void *);
typedef BOOL (*UnkFuncPtr_ov100_021D5130_2)(void *);

static void ov100_021D0FA0(UnkStruct_ov100_021D46C8 *param0);
static void ov100_021D1034(UnkStruct_ov100_021D46C8 *param0);
static void ov100_021D111C(UnkStruct_ov100_021D46C8 *param0);
static void ov100_021D1208(BgConfig *param0);
static void ov100_021D13B4(void *param0);

int ov100_021D0D80(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov100_021D4DD8 *v0;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_111, 0xC0000);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov100_021D4DD8), HEAP_ID_111);
    memset(v0, 0, sizeof(UnkStruct_ov100_021D4DD8));
    v0->unk_D0 = ApplicationManager_Args(appMan);

    ov100_021D1034(&v0->unk_0C);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6 * 2, 1, HEAP_ID_111);
    SetVBlankCallback(ov100_021D13B4, v0);

    v0->unk_0C.unk_50.unk_00 = 31;
    v0->unk_0C.unk_50.unk_01 = 31;
    v0->unk_0C.unk_50.unk_02 = 31;
    v0->unk_0C.unk_C1 = 31;

    Sound_Set2PokemonCriesAllowed(1);

    {
        Window *v1 = &v0->unk_0C.unk_30;
        int v2 = Options_Frame(v0->unk_D0->options);

        Window_Init(v1);
        Window_Add(v0->unk_0C.unk_0C, v1, 1, 2, 19, 27, 4, 14, 1);
        Window_FillTilemap(v1, 0xFF);
        Window_CopyToVRAM(v1);

        LoadMessageBoxGraphics(v0->unk_0C.unk_0C, 1, 500, 15, v2, HEAP_ID_111);
        PaletteData_LoadBufferFromFileStart(v0->unk_0C.unk_10, 38, GetMessageBoxPaletteNARCMember(v2), 111, 0, 0x20, 15 * 16);
        PaletteData_LoadBufferFromFileStart(v0->unk_0C.unk_10, 14, 7, 111, 0, 0x20, 14 * 16);
        Window_DrawMessageBoxWithScrollCursor(v1, 0, 500, 15);

        ov100_021D4788(&v0->unk_0C);
    }

    return 1;
}

static const struct {
    UnkFuncPtr_ov100_021D5130 unk_00;
    UnkFuncPtr_ov100_021D5130_1 unk_04;
    UnkFuncPtr_ov100_021D5130_2 unk_08;
} Unk_ov100_021D5130[] = {
    { ov100_021D3620, ov100_021D39E4, ov100_021D3FD4 },
    { ov100_021D13E4, ov100_021D14A8, ov100_021D16C4 },
    { ov100_021D2340, ov100_021D2428, ov100_021D2C8C },
};

int ov100_021D0EA8(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov100_021D4DD8 *v0 = ApplicationManager_Data(appMan);

    switch (*param1) {
    case 0: {
        v0->unk_08 = Unk_ov100_021D5130[v0->unk_04].unk_00(v0);
        *param1 = 1;
    } break;
    case 1: {
        BOOL v1 = Unk_ov100_021D5130[v0->unk_04].unk_04(v0->unk_08);

        if (v1 == 0) {
            *param1 = 2;
        }
    } break;
    case 2: {
        BOOL v2 = Unk_ov100_021D5130[v0->unk_04].unk_08(v0->unk_08);

        if (v2 == 0) {
            if ((++v0->unk_04) != NELEMS(Unk_ov100_021D5130)) {
                *param1 = 0;
            } else {
                *param1 = 3;
            }
        }
    } break;
    case 3: {
        return 1;
    } break;
    default:
        GF_ASSERT(0);
        break;
    }

    SpriteSystem_DrawSprites(v0->unk_0C.unk_08);

    return 0;
}

int ov100_021D0F44(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov100_021D4DD8 *v0 = ApplicationManager_Data(appMan);

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    Window_EraseMessageBox(&v0->unk_0C.unk_30, 1);
    Window_ClearAndCopyToVRAM(&v0->unk_0C.unk_30);
    Window_Remove(&v0->unk_0C.unk_30);

    ov100_021D111C(&v0->unk_0C);
    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;

    GXLayers_SwapDisplay();
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_111);
    Sound_Set2PokemonCriesAllowed(0);

    return 1;
}

static void ov100_021D0FA0(UnkStruct_ov100_021D46C8 *param0)
{
    param0->unk_04 = SpriteSystem_Alloc(111);

    {
        const RenderOamTemplate v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        const CharTransferTemplateWithModes v1 = {
            48 + 48,
            1024 * 0x40,
            512 * 0x20,
            GX_OBJVRAMMODE_CHAR_1D_64K,
            GX_OBJVRAMMODE_CHAR_1D_32K
        };
        BOOL v2 = SpriteSystem_Init(param0->unk_04, &v0, &v1, 16 + 16);

        GF_ASSERT(v2);
    }

    {
        BOOL v3;
        const SpriteResourceCapacities v4 = {
            48 + 48,
            16 + 16,
            64,
            64,
            16,
            16,
        };

        param0->unk_08 = SpriteManager_New(param0->unk_04);

        v3 = SpriteSystem_InitSprites(param0->unk_04, param0->unk_08, 64 + 64);
        GF_ASSERT(v3);

        v3 = SpriteSystem_InitManagerWithCapacities(param0->unk_04, param0->unk_08, &v4);
        GF_ASSERT(v3);
    }
}

static void ov100_021D1034(UnkStruct_ov100_021D46C8 *param0)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    param0->unk_00 = NARC_ctor(NARC_INDEX_ARC__DEMO_TENGAN_GRA, HEAP_ID_111);
    param0->unk_0C = BgConfig_New(HEAP_ID_111);
    param0->unk_10 = PaletteData_New(HEAP_ID_111);
    param0->unk_14 = sub_02024220(HEAP_ID_111, 0, 1, 0, 4, NULL);
    param0->camera = Camera_Alloc(HEAP_ID_111);
    param0->unk_2C = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPEAR_PILLAR, HEAP_ID_111);

    PaletteData_SetAutoTransparent(param0->unk_10, 1);
    PaletteData_AllocBuffer(param0->unk_10, 0, 0x200, HEAP_ID_111);
    PaletteData_AllocBuffer(param0->unk_10, 1, 0x200, HEAP_ID_111);
    PaletteData_AllocBuffer(param0->unk_10, 2, 0x200, HEAP_ID_111);
    PaletteData_AllocBuffer(param0->unk_10, 3, 0x200, HEAP_ID_111);

    ov100_021D1208(param0->unk_0C);
    ov100_021D0FA0(param0);

    G3X_AlphaBlend(1);
    Heap_FndInitAllocatorForExpHeap(&param0->unk_1C, HEAP_ID_111, 32);
}

static void ov100_021D111C(UnkStruct_ov100_021D46C8 *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(param0->unk_0C, BG_LAYER_SUB_3);
    Heap_FreeToHeap(param0->unk_0C);

    PaletteData_FreeBuffer(param0->unk_10, 0);
    PaletteData_FreeBuffer(param0->unk_10, 1);
    PaletteData_FreeBuffer(param0->unk_10, 2);
    PaletteData_FreeBuffer(param0->unk_10, 3);
    PaletteData_Free(param0->unk_10);

    NARC_dtor(param0->unk_00);
    sub_020242C4(param0->unk_14);
    Camera_Delete(param0->camera);
    SpriteSystem_FreeResourcesAndManager(param0->unk_04, param0->unk_08);
    SpriteSystem_Free(param0->unk_04);
    MessageLoader_Free(param0->unk_2C);

    G3X_AlphaBlend(0);
}

static void ov100_021D1208(BgConfig *param0)
{
    GXLayers_DisableEngineALayers();

    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        SetAllGraphicsModes(&v0);
    }

    {
        UnkStruct_02099F80 v1 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_0_B,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v1);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        BgTemplate v2[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x2000,
                GX_BG_CHARBASE_0x10000,
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
                GX_BG_SCRBASE_0x2800,
                GX_BG_CHARBASE_0x14000,
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
                GX_BG_SCRBASE_0x3000,
                GX_BG_CHARBASE_0x18000,
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
                GX_BG_SCRBASE_0x3800,
                GX_BG_CHARBASE_0x18000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
        };

        Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_111);
        Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_111);
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_111);
        Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_111);
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v2[0], 0);
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v2[1], 0);
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v2[2], 0);
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v2[3], 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_1);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_3);
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
                GX_BG_SCRBASE_0x3000,
                GX_BG_CHARBASE_0x04000,
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
                GX_BG_SCRBASE_0x3800,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0,
            },
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v3[0], 0);
        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v3[1], 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_1);
    }

    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_111);
    Bg_ClearTilesRange(5, 32, 0, HEAP_ID_111);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov100_021D13B4(void *param0)
{
    UnkStruct_ov100_021D4DD8 *v0 = param0;

    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(v0->unk_0C.unk_10);
    Bg_RunScheduledUpdates(v0->unk_0C.unk_0C);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}
