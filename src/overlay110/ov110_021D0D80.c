#include "overlay110/ov110_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202D750_decl.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_defs/battle_frontier.h"
#include "struct_defs/struct_0203E564.h"

#include "overlay110/ov110_021D2124.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_0202D05C.h"
#include "unk_0202FF4C.h"
#include "unk_020302D0.h"
#include "unk_02030494.h"
#include "unk_0203061C.h"
#include "unk_02030880.h"
#include "unk_0205DFC4.h"

typedef struct {
    ApplicationManager *appMan;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u16 unk_08;
    u16 unk_0A;
    BgConfig *unk_0C;
    Window unk_10[16];
    MessageLoader *unk_110;
    StringTemplate *unk_114;
    String *unk_118;
    String *unk_11C;
    PaletteData *unk_120;
    const Options *options;
    SaveData *saveData;
    BattleFrontier *frontier;
} UnkStruct_ov110_021D0F78;

int ov110_021D0D80(ApplicationManager *appMan, int *param1);
int ov110_021D0E9C(ApplicationManager *appMan, int *param1);
int ov110_021D0EF0(ApplicationManager *appMan, int *param1);
static BOOL ov110_021D0F78(UnkStruct_ov110_021D0F78 *param0);
static BOOL ov110_021D0FD0(UnkStruct_ov110_021D0F78 *param0);
static BOOL ov110_021D1000(UnkStruct_ov110_021D0F78 *param0);
static void ov110_021D1048(void *param0);
static void ov110_021D1078(void);
static void ov110_021D1098(BgConfig *param0);
static void ov110_021D1180(UnkStruct_ov110_021D0F78 *param0);
static void ov110_021D11CC(BgConfig *param0);
static void ov110_021D1200(UnkStruct_ov110_021D0F78 *param0, int *param1, int param2);
static u8 ov110_021D1208(u8 param0);
static void ov110_021D123C(UnkStruct_ov110_021D0F78 *param0, u32 param1);
static void ov110_021D128C(void);
static void ov110_021D12C0(UnkStruct_ov110_021D0F78 *param0, u32 param1);
static u8 ov110_021D1324(UnkStruct_ov110_021D0F78 *param0, Window *param1, int param2, u32 param3, u32 param4, u8 param5, u8 param6, u8 param7, u8 param8, u8 param9, int param10);
static u8 ov110_021D13CC(UnkStruct_ov110_021D0F78 *param0, Window *param1, int param2, u8 param3);
static void ov110_021D13F0(UnkStruct_ov110_021D0F78 *param0, u32 param1, s32 param2);
static void ov110_021D140C(UnkStruct_ov110_021D0F78 *param0);
static void ov110_021D1468(UnkStruct_ov110_021D0F78 *param0);
static void ov110_021D1650(UnkStruct_ov110_021D0F78 *param0);
static u32 ov110_021D17AC(UnkStruct_ov110_021D0F78 *param0, u8 param1);
static void ov110_021D1808(UnkStruct_ov110_021D0F78 *param0);
static void ov110_021D19B0(UnkStruct_ov110_021D0F78 *param0);
static void ov110_021D19F4(UnkStruct_ov110_021D0F78 *param0);
static u32 ov110_021D1BEC(UnkStruct_ov110_021D0F78 *param0);
static void ov110_021D1C40(UnkStruct_ov110_021D0F78 *param0);
static u32 ov110_021D1D68(UnkStruct_ov110_021D0F78 *param0);
static void ov110_021D1DBC(UnkStruct_ov110_021D0F78 *param0);
static void ov110_021D1ED8(UnkStruct_ov110_021D0F78 *param0);
static u32 ov110_021D20CC(UnkStruct_ov110_021D0F78 *param0, u8 param1);

int ov110_021D0D80(ApplicationManager *appMan, int *param1)
{
    int v0;
    UnkStruct_ov110_021D0F78 *v1;
    UnkStruct_0203E564 *v2;

    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_114, 0x20000);
    v1 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov110_021D0F78), HEAP_ID_114);
    memset(v1, 0, sizeof(UnkStruct_ov110_021D0F78));

    v1->appMan = appMan;
    v1->unk_0C = BgConfig_New(HEAP_ID_114);

    v2 = (UnkStruct_0203E564 *)ApplicationManager_Args(appMan);

    v1->saveData = v2->saveData;
    v1->frontier = SaveData_GetBattleFrontier(v1->saveData);
    v1->unk_05 = v2->unk_04;
    v1->unk_06 = v2->unk_05;
    v1->unk_08 = v2->unk_06;
    v1->options = SaveData_GetOptions(v1->saveData);

    ov110_021D1180(v1);

    v1->unk_110 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_TOWER_RECORDS, HEAP_ID_114);
    v1->unk_114 = StringTemplate_Default(HEAP_ID_114);
    v1->unk_118 = String_Init(800, HEAP_ID_114);
    v1->unk_11C = String_Init(800, HEAP_ID_114);

    Font_LoadTextPalette(0, 13 * 32, HEAP_ID_114);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, HEAP_ID_114);
    ov110_021D2124(v1->unk_0C, v1->unk_10, ov110_021D1208(v1->unk_06));
    SetVBlankCallback(ov110_021D1048, (void *)v1);
    (*param1) = 0;

    return 1;
}

int ov110_021D0E9C(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov110_021D0F78 *v0 = ApplicationManager_Data(appMan);

    switch (*param1) {
    case 0:
        if (ov110_021D0F78(v0) == 1) {
            ov110_021D1200(v0, param1, 1);
        }
        break;
    case 1:
        if (ov110_021D0FD0(v0) == 1) {
            ov110_021D1200(v0, param1, 2);
        }
        break;
    case 2:
        if (ov110_021D1000(v0) == 1) {
            return 1;
        }
    }

    return 0;
}

int ov110_021D0EF0(ApplicationManager *appMan, int *param1)
{
    int v0;
    UnkStruct_ov110_021D0F78 *v1 = ApplicationManager_Data(appMan);

    PaletteData_FreeBuffer(v1->unk_120, 2);
    PaletteData_FreeBuffer(v1->unk_120, 0);
    PaletteData_Free(v1->unk_120);

    v1->unk_120 = NULL;

    MessageLoader_Free(v1->unk_110);
    StringTemplate_Free(v1->unk_114);
    String_Free(v1->unk_118);
    String_Free(v1->unk_11C);

    ov110_021D216C(v1->unk_10, ov110_021D1208(v1->unk_06));
    ov110_021D11CC(v1->unk_0C);

    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_114);

    return 1;
}

static BOOL ov110_021D0F78(UnkStruct_ov110_021D0F78 *param0)
{
    switch (param0->unk_04) {
    case 0:
        param0->unk_04++;
        break;
    case 1:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1 * 3, HEAP_ID_114);
        ov110_021D140C(param0);
        param0->unk_04++;
        break;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov110_021D0FD0(UnkStruct_ov110_021D0F78 *param0)
{
    int v0;

    switch (param0->unk_04) {
    case 0:
        param0->unk_04++;
        break;
    case 1:

        if ((gSystem.heldKeys & PAD_BUTTON_A) || (gSystem.heldKeys & PAD_BUTTON_B)) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov110_021D1000(UnkStruct_ov110_021D0F78 *param0)
{
    int v0;

    switch (param0->unk_04) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_114);
        param0->unk_04++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }

        break;
    }

    return 0;
}

static void ov110_021D1048(void *param0)
{
    UnkStruct_ov110_021D0F78 *v0 = param0;

    if (v0->unk_120 != NULL) {
        PaletteData_CommitFadedBuffers(v0->unk_120);
    }

    Bg_RunScheduledUpdates(v0->unk_0C);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov110_021D1078(void)
{
    GXBanks v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
    return;
}

static void ov110_021D1098(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v1, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_114);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v2, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_114);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x3000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_2, &v3, 0);
        Bg_ClearTilesRange(6, 32, 0, HEAP_ID_114);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_2);
    }

    G2_SetBG0Priority(0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

    return;
}

static void ov110_021D1180(UnkStruct_ov110_021D0F78 *param0)
{
    ov110_021D1078();
    ov110_021D1098(param0->unk_0C);

    param0->unk_120 = PaletteData_New(HEAP_ID_114);

    PaletteData_AllocBuffer(param0->unk_120, 2, 32 * 16, HEAP_ID_114);
    PaletteData_AllocBuffer(param0->unk_120, 0, 32 * 16, HEAP_ID_114);

    ov110_021D123C(param0, 2);
    ov110_021D128C();
    ov110_021D12C0(param0, 6);

    return;
}

static void ov110_021D11CC(BgConfig *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);

    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_2);
    Heap_Free(param0);

    return;
}

static void ov110_021D1200(UnkStruct_ov110_021D0F78 *param0, int *param1, int param2)
{
    param0->unk_04 = 0;
    *param1 = param2;
    return;
}

static u8 ov110_021D1208(u8 param0)
{
    u8 v0 = 0;

    switch (param0) {
    case 2:
    case 3:
        v0 = 0;
        break;
    case 5:
        v0 = 1;
        break;
    case 4:
        v0 = 2;
        break;
    case 6:
        v0 = 3;
        break;
    case 1:
        v0 = 4;
        break;
    }

    return v0;
}

static void ov110_021D123C(UnkStruct_ov110_021D0F78 *param0, u32 param1)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_114);

    Graphics_LoadTilesToBgLayerFromOpenNARC(v0, 124, param0->unk_0C, param1, 0, 0, 1, HEAP_ID_114);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 123, param0->unk_0C, param1, 0, 0, 1, HEAP_ID_114);
    NARC_dtor(v0);

    return;
}

static void ov110_021D128C(void)
{
    void *v0;
    NNSG2dPaletteData *v1;

    v0 = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, 170, &v1, HEAP_ID_114);

    DC_FlushRange(v1->pRawData, sizeof(u16) * 16 * 2);
    GX_LoadBGPltt(v1->pRawData, 0, sizeof(u16) * 16 * 2);
    Heap_Free(v0);

    return;
}

static void ov110_021D12C0(UnkStruct_ov110_021D0F78 *param0, u32 param1)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__POKETCH, HEAP_ID_114);

    Graphics_LoadTilesToBgLayerFromOpenNARC(v0, 10, param0->unk_0C, param1, 0, 0, 1, HEAP_ID_114);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 11, param0->unk_0C, param1, 0, 0, 1, HEAP_ID_114);
    Graphics_LoadPaletteFromOpenNARC(v0, 12, 4, 0, 0x20, HEAP_ID_114);
    NARC_dtor(v0);

    return;
}

static u8 ov110_021D1324(UnkStruct_ov110_021D0F78 *param0, Window *param1, int param2, u32 param3, u32 param4, u8 param5, u8 param6, u8 param7, u8 param8, u8 param9, int param10)
{
    if (param9) {
        Window_FillTilemap(param1, param7);
    }
    MessageLoader_GetString(param0->unk_110, param2, param0->unk_11C);
    StringTemplate_Format(param0->unk_114, param0->unk_118, param0->unk_11C);

    switch (param10) {
    case 1:
        param3 -= (Font_CalcStringWidth(FONT_SYSTEM, param0->unk_118, 0) + 1) / 2;
        break;
    case 2:
        param3 -= Font_CalcStringWidth(FONT_SYSTEM, param0->unk_118, 0);
        break;
    }

    Text_AddPrinterWithParamsAndColor(param1, param8, param0->unk_118, param3, param4, TEXT_SPEED_INSTANT, TEXT_COLOR(param5, param6, param7), NULL);
}

static u8 ov110_021D13CC(UnkStruct_ov110_021D0F78 *param0, Window *param1, int param2, u8 param3)
{
    return ov110_021D1324(param0, param1, param2, 0, 0, 1, 2, 0, FONT_SYSTEM, param3, 0);
}

static void ov110_021D13F0(UnkStruct_ov110_021D0F78 *param0, u32 param1, s32 param2)
{
    StringTemplate_SetNumber(param0->unk_114, param1, param2, 4, 1, 1);
    return;
}

static void ov110_021D140C(UnkStruct_ov110_021D0F78 *param0)
{
    int v0;

    switch (param0->unk_06) {
    case 2:
    case 3:
        ov110_021D1468(param0);
        ov110_021D1650(param0);
        break;
    case 5:
        ov110_021D1808(param0);
        break;
    case 4:
        ov110_021D19F4(param0);
        break;
    case 6:
        ov110_021D1C40(param0);
        break;
    case 1:
        if ((param0->unk_05 == 0) || (param0->unk_05 == 1)) {
            ov110_021D1DBC(param0);
        } else {
            ov110_021D1ED8(param0);
        }
        break;
    default:
        ov110_021D1C40(param0);
        break;
    }

    return;
}

static void ov110_021D1468(UnkStruct_ov110_021D0F78 *param0)
{
    u8 v1;
    int v2;
    u32 v3;

    Window_FillTilemap(&param0->unk_10[0], 0);
    ov110_021D1324(param0, &param0->unk_10[0], 22, 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 0);

    if (param0->unk_05 == 0) {
        v2 = 26;
        v3 = 27 * 8;
    } else if (param0->unk_05 == 1) {
        v2 = 27;
        v3 = 27 * 8;
    } else {
        v2 = 28;
        v3 = 27 * 8;
    }

    ov110_021D1324(param0, &param0->unk_10[0], v2, v3, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[0]);

    ov110_021D13CC(param0, &param0->unk_10[1], 34, 1);
    ov110_021D1324(param0, &param0->unk_10[1], 36, 28 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[1]);

    ov110_021D13CC(param0, &param0->unk_10[2], ov110_021D17AC(param0, 0), 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E430(0, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[2], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E488(0, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[2], 40, 28 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[2]);

    ov110_021D13CC(param0, &param0->unk_10[3], 31, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E45C(0, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[3], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E4B4(0, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[3], 40, 28 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[3]);
}

static void ov110_021D1650(UnkStruct_ov110_021D0F78 *param0)
{
    ov110_021D13CC(param0, &param0->unk_10[4], 35, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[4]);

    ov110_021D13CC(param0, &param0->unk_10[5], ov110_021D17AC(param0, 1), 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E430(1, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[5], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E488(1, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[5], 40, 28 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[5]);

    ov110_021D13CC(param0, &param0->unk_10[6], 31, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E45C(1, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[6], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E4B4(1, param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[6], 40, 28 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[6]);
}

static u32 ov110_021D17AC(UnkStruct_ov110_021D0F78 *param0, u8 param1)
{
    u8 v0;
    u32 v1;

    if (param1 == 0) {
        v1 = 102;
    } else {
        v1 = 104;
    }

    if (param0->unk_05 == 3) {
        v0 = sub_02030698(SaveData_GetBattleFrontier(param0->saveData), v1, sub_0205E6A8(v1));
    } else {
        v0 = (u8)sub_020300E0(sub_020300F4(param0->saveData), 10, (param1 * 4) + param0->unk_05, NULL);
    }

    if (v0 == 1) {
        return 30;
    }

    return 29;
}

static void ov110_021D1808(UnkStruct_ov110_021D0F78 *param0)
{
    int v1;
    u32 v2;
    u16 v3;
    int v4;
    BattleFrontierStage *frontierStage;

    Window_FillTilemap(&param0->unk_10[0], 0);
    ov110_021D1324(param0, &param0->unk_10[0], 24, 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 0);

    if (param0->unk_05 == 0) {
        v1 = 26;
        v2 = 27 * 8;
    } else if (param0->unk_05 == 1) {
        v1 = 27;
        v2 = 27 * 8;
    } else {
        v1 = 28;
        v2 = 27 * 8;
    }

    ov110_021D1324(param0, &param0->unk_10[0], v1, v2, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[0]);

    ov110_021D19B0(param0);
    ov110_021D1324(param0, &param0->unk_10[1], 39, 0, 0, 1, 2, 0, FONT_SYSTEM, 0, 0);
    Window_ScheduleCopyToVRAM(&param0->unk_10[1]);

    ov110_021D13CC(param0, &param0->unk_10[2], 29, 1);

    if (param0->unk_08 != sub_02030698(SaveData_GetBattleFrontier(param0->saveData), sub_0205E55C(param0->unk_05), sub_0205E6A8(sub_0205E55C(param0->unk_05)))) {
        v3 = 0;
    } else {
        v3 = sub_02030698(param0->frontier, sub_0205E50C(param0->unk_05), 0xFF);
    }

    ov110_021D13F0(param0, 0, v3);
    ov110_021D1324(param0, &param0->unk_10[2], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[2]);

    ov110_021D13CC(param0, &param0->unk_10[3], 31, 1);
    frontierStage = sub_020308A0(param0->saveData, HEAP_ID_FIELD2, &v4);

    if (v4 != 1) {
        v3 = 0;
    } else {
        v3 = sub_020308BC(param0->saveData, frontierStage, sub_0205E584(param0->unk_05), param0->unk_08);
    }

    if (frontierStage != NULL) {
        Heap_Free(frontierStage);
    }

    ov110_021D13F0(param0, 0, v3);
    ov110_021D1324(param0, &param0->unk_10[3], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[3]);
}

static void ov110_021D19B0(UnkStruct_ov110_021D0F78 *param0)
{
    MessageLoader *v0;
    String *v1;

    v0 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_114);
    v1 = MessageLoader_GetNewString(v0, param0->unk_08);

    MessageLoader_Free(v0);
    StringTemplate_SetString(param0->unk_114, 0, v1, 0, 0, GAME_LANGUAGE);
    String_Free(v1);

    return;
}

static void ov110_021D19F4(UnkStruct_ov110_021D0F78 *param0)
{
    int v1;
    u32 v2;

    Window_FillTilemap(&param0->unk_10[0], 0);
    ov110_021D1324(param0, &param0->unk_10[0], 23, 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 0);

    if (param0->unk_05 == 0) {
        v1 = 26;
        v2 = 27 * 8;
    } else if (param0->unk_05 == 1) {
        v1 = 27;
        v2 = 27 * 8;
    } else {
        v1 = 28;
        v2 = 27 * 8;
    }

    ov110_021D1324(param0, &param0->unk_10[0], v1, v2, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[0]);

    ov110_021D1324(param0, &param0->unk_10[1], 37, 12 * 8, 0, 1, 2, 0, FONT_SYSTEM, 1, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[1]);

    ov110_021D13CC(param0, &param0->unk_10[2], ov110_021D1BEC(param0), 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E5E0(param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[2], 42, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    ov110_021D13F0(param0, 0, sub_02030698(SaveData_GetBattleFrontier(param0->saveData), sub_0205E630(param0->unk_05), sub_0205E6A8(sub_0205E630(param0->unk_05))));
    ov110_021D1324(param0, &param0->unk_10[2], 41, 28 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[2]);

    ov110_021D13CC(param0, &param0->unk_10[3], 31, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E608(param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[3], 42, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    ov110_021D13F0(param0, 0, sub_02030698(SaveData_GetBattleFrontier(param0->saveData), sub_0205E680(param0->unk_05), sub_0205E6A8(sub_0205E680(param0->unk_05))));
    ov110_021D1324(param0, &param0->unk_10[3], 41, 28 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[3]);
}

static u32 ov110_021D1BEC(UnkStruct_ov110_021D0F78 *param0)
{
    u8 v0;

    if (param0->unk_05 == 3) {
        v0 = sub_02030698(SaveData_GetBattleFrontier(param0->saveData), 108, sub_0205E6A8(108));
    } else {
        v0 = (u8)sub_02030470(sub_0203041C(param0->saveData), 9, param0->unk_05, 0, NULL);
    }

    if (v0 == 1) {
        return 30;
    }

    return 29;
}

static void ov110_021D1C40(UnkStruct_ov110_021D0F78 *param0)
{
    int v1;
    u32 v2;

    Window_FillTilemap(&param0->unk_10[0], 0);
    ov110_021D1324(param0, &param0->unk_10[0], 25, 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 0);

    if (param0->unk_05 == 0) {
        v1 = 26;
        v2 = 27 * 8;
    } else if (param0->unk_05 == 1) {
        v1 = 27;
        v2 = 27 * 8;
    } else {
        v1 = 28;
        v2 = 27 * 8;
    }

    ov110_021D1324(param0, &param0->unk_10[0], v1, v2, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[0]);

    ov110_021D13CC(param0, &param0->unk_10[1], ov110_021D1D68(param0), 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E700(param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[1], 43, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[1]);

    ov110_021D13CC(param0, &param0->unk_10[2], 31, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E728(param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[2], 43, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[2]);
}

static u32 ov110_021D1D68(UnkStruct_ov110_021D0F78 *param0)
{
    u8 v0;

    if (param0->unk_05 == 3) {
        v0 = sub_02030698(SaveData_GetBattleFrontier(param0->saveData), 110, sub_0205E6A8(110));
    } else {
        v0 = (u8)sub_02030600(sub_020305B8(param0->saveData), 8, param0->unk_05, 0, NULL);
    }

    if (v0 == 1) {
        return 30;
    }

    return 29;
}

static void ov110_021D1DBC(UnkStruct_ov110_021D0F78 *param0)
{
    int v1;
    u32 v2;

    Window_FillTilemap(&param0->unk_10[0], 0);
    ov110_021D1324(param0, &param0->unk_10[0], 21, 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 0);

    if (param0->unk_05 == 0) {
        v1 = 26;
        v2 = 27 * 8;
    } else {
        v1 = 27;
        v2 = 27 * 8;
    }

    ov110_021D1324(param0, &param0->unk_10[0], v1, v2, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[0]);

    ov110_021D13CC(param0, &param0->unk_10[2], ov110_021D20CC(param0, param0->unk_05), 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E750(param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[2], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[2]);

    ov110_021D13CC(param0, &param0->unk_10[3], 31, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E790(param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[3], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[3]);
}

static void ov110_021D1ED8(UnkStruct_ov110_021D0F78 *param0)
{
    Window_FillTilemap(&param0->unk_10[0], 0);
    ov110_021D1324(param0, &param0->unk_10[0], 21, 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 0);
    ov110_021D1324(param0, &param0->unk_10[0], 28, 27 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 2);
    Window_ScheduleCopyToVRAM(&param0->unk_10[0]);

    ov110_021D13CC(param0, &param0->unk_10[1], 32, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[1]);

    ov110_021D13CC(param0, &param0->unk_10[4], ov110_021D20CC(param0, param0->unk_05), 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E750(param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[4], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[4]);

    ov110_021D13CC(param0, &param0->unk_10[5], 31, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E790(param0->unk_05), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[5], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[5]);

    ov110_021D13CC(param0, &param0->unk_10[6], 33, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[6]);

    ov110_021D13CC(param0, &param0->unk_10[7], ov110_021D20CC(param0, 3), 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E750(3), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[7], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[7]);

    ov110_021D13CC(param0, &param0->unk_10[8], 31, 1);
    ov110_021D13F0(param0, 0, sub_02030698(param0->frontier, sub_0205E790(3), 0xFF));
    ov110_021D1324(param0, &param0->unk_10[8], 38, 14 * 8, 0, 1, 2, 0, FONT_SYSTEM, 0, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_10[8]);
}

static u32 ov110_021D20CC(UnkStruct_ov110_021D0F78 *param0, u8 param1)
{
    u16 v0;
    int v1;
    UnkStruct_0202D750 *v2;

    v2 = sub_0202D750(param0->saveData);

    switch (param1) {
    case 0:
        v0 = 8;
        break;
    case 1:
        v0 = 9;
        break;
    case 2:
        v0 = 10;
        break;
    case 3:
        v0 = 11;
        break;
    case 4:
        v0 = 12;
        break;
    case 6:
        v0 = 15;
        break;
    default:
        v0 = 8;
        break;
    }

    v1 = sub_0202D414(v2, v0, 0);

    if (v1 == 1) {
        return 30;
    }

    return 29;
}
