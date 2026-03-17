#include "overlay101/ov101_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"

#include "struct_defs/struct_0203E348.h"

#include "overlay101/ov101_021D1A28.h"
#include "overlay101/ov101_021D59AC.h"
#include "overlay101/ov101_021D7E48.h"
#include "overlay101/struct_ov101_021D13C8.h"
#include "overlay101/struct_ov101_021D148C.h"
#include "overlay101/struct_ov101_021D1894.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "enums.h"
#include "font.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "overworld_anim_manager.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "vram_transfer.h"

typedef struct {
    UnkStruct_0203E348 *unk_00;
    UnkStruct_ov101_021D13C8 *unk_04;
} UnkStruct_ov101_021D0F3C;

static void ov101_021D0F3C(UnkStruct_ov101_021D0F3C *param0, UnkStruct_ov101_021D13C8 *param1);
static UnkStruct_ov101_021D13C8 *ov101_021D0F6C(UnkStruct_0203E348 *param0);
static void ov101_021D0F94(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D0F9C(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D107C(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D1098(void);
static void ov101_021D10B8(BgConfig *param0);
static void ov101_021D11A4(BgConfig *param0);
static void ov101_021D11D0(void);
static void ov101_021D121C(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D150C(void);
static void ov101_021D1544(void);
static void ov101_021D1550(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D15A4(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D15BC(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D1868(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D186C(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D1884(UnkStruct_ov101_021D13C8 *param0);
static int ov101_021D18B4(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D18C0(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D18E4(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D18F4(SysTask *param0, void *param1);
static void ov101_021D197C(void *param0);
static void ov101_021D19BC(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D19D4(UnkStruct_ov101_021D13C8 *param0);
static const WindowTemplate Unk_ov101_021D8588[1];
static void ov101_021D1458(UnkStruct_ov101_021D13C8 *param0);

int ov101_021D0D80(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov101_021D0F3C *v0;
    UnkStruct_ov101_021D13C8 *v1;
    UnkStruct_0203E348 *v2;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_79, 0x80000);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov101_021D0F3C), HEAP_ID_79);
    memset(v0, 0, sizeof(UnkStruct_ov101_021D0F3C));
    v2 = ApplicationManager_Args(appMan);
    v0->unk_00 = v2;
    v1 = ov101_021D0F6C(v0->unk_00);
    v0->unk_04 = v1;

    ov101_021D19BC(v1);
    ov101_021D186C(v1);
    ov101_021D0F9C(v1);
    ov101_021D121C(v1);
    ov101_021D13C8(v1);
    ov101_021D150C();
    ov101_021D1550(v1);
    ov101_021D1A28(v1);
    ov101_021D59AC(v1);
    ov101_021D5AF0(v1);
    ov101_021D5C28(v1);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_66, SEQ_NONE, 0);
    ov101_021D18C0(v1);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 8, 1, HEAP_ID_79);

    return 1;
}

int ov101_021D0E40(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov101_021D0F3C *v0 = ApplicationManager_Data(appMan);
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_04;

    switch (*param1) {
    case 0:
        if (IsScreenFadeDone()) {
            (*param1)++;
        }
        break;
    case 1:
        if (ov101_021D1AAC(v1) == 1) {
            (*param1)++;
            StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 8, 1, HEAP_ID_79);
            ov101_021D1894(v1, UnkEnum_ov101_021D1894_00);
        }
        break;
    case 2:
        if (IsScreenFadeDone() == FALSE) {
            break;
        }
        (*param1)++;
    case 3:
        if (ov101_021D18B4(v1) == 0) {
            return 1;
        }
    }

    OverworldAnimManagerList_Render(v1->unk_44C);
    ov101_021D80D4(v1->unk_450);

    return 0;
}

int ov101_021D0EE4(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov101_021D0F3C *v0 = ApplicationManager_Data(appMan);
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_04;

    SetVBlankCallback(NULL, NULL);

    ov101_021D0F3C(v0, v1);

    ov101_021D1884(v1);
    ov101_021D107C(v1);
    ov101_021D1458(v1);

    ov101_021D1A4C(v1);
    ov101_021D18E4(v1);

    ov101_021D19D4(v1);
    ov101_021D0F94(v1);

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_79);

    return 1;
}

static void ov101_021D0F3C(UnkStruct_ov101_021D0F3C *param0, UnkStruct_ov101_021D13C8 *param1)
{
    u32 v0 = param1->unk_60;

    if (v0 > 50000) {
        v0 = 50000;
    }

    (*param0->unk_00->unk_00) = v0;
    param0->unk_00->unk_0C = param1->unk_20;

    if (param0->unk_00->records != NULL) {
        GameRecords_AddToRecordValue(param0->unk_00->records, RECORD_UNK_014, param1->unk_0C);
    }
}

static UnkStruct_ov101_021D13C8 *ov101_021D0F6C(UnkStruct_0203E348 *param0)
{
    UnkStruct_ov101_021D13C8 *v0 = ov101_021D1998(sizeof(UnkStruct_ov101_021D13C8));

    v0->unk_60 = *(param0->unk_00);
    v0->unk_88 = param0->unk_04;
    v0->msgBoxFrame = param0->msgBoxFrame;

    return v0;
}

static void ov101_021D0F94(UnkStruct_ov101_021D13C8 *param0)
{
    Heap_Free(param0);
}

static void ov101_021D0F9C(UnkStruct_ov101_021D13C8 *param0)
{
    param0->unk_43C = BgConfig_New(HEAP_ID_79);

    ov101_021D1098();
    ov101_021D10B8(param0->unk_43C);
    ov101_021D11D0();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    G2_SetBG0Priority(0);
    G2_SetBG1Priority(1);
    G2_SetBG2Priority(2);
    G2_SetBG3Priority(3);
    G2S_SetBG0Priority(0);
    G2S_SetBG1Priority(1);
    G2S_SetBG2Priority(2);
    G2S_SetBG3Priority(3);
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_OBJ, 8, 9);

    SetVBlankCallback(ov101_021D197C, param0);
}

static void ov101_021D107C(UnkStruct_ov101_021D13C8 *param0)
{
    ov101_021D11A4(param0->unk_43C);
    ov101_021D15A4(param0);
    ov101_021D1544();
}

static void ov101_021D1098(void)
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
}

static void ov101_021D10B8(BgConfig *param0)
{
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
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
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_79);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0800,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v2, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_1);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x14000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v3, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
    }

    {
        BgTemplate v4 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1800,
            .charBase = GX_BG_CHARBASE_0x20000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_3, &v4, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_3);
    }
}

static void ov101_021D11A4(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_3);
    Heap_Free(param0);
}

static void ov101_021D11D0(void)
{
    GX_SetVisibleWnd(GX_WNDMASK_W0);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWnd0Position(0, 0, 255, 255);
}

static void ov101_021D121C(UnkStruct_ov101_021D13C8 *param0)
{
    void *v0 = ov101_021D19E4(param0, 3, 0);

    NNS_G2dGetUnpackedPaletteData(v0, &param0->unk_448);
    Bg_LoadPalette(1, param0->unk_448->pRawData, 32 * 13, 32 * 0);
    Heap_Free(v0);

    v0 = ov101_021D19E4(param0, 0, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_444);
    Bg_LoadTiles(param0->unk_43C, 1, param0->unk_444->pRawData, param0->unk_444->szByte, 32 * 0);
    Heap_Free(v0);

    v0 = ov101_021D19E4(param0, 1, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_440);
    Bg_LoadTilemapBuffer(param0->unk_43C, 1, (void *)param0->unk_440->rawData, param0->unk_440->szByte);
    Bg_CopyTilemapBufferToVRAM(param0->unk_43C, 1);
    Heap_Free(v0);

    v0 = ov101_021D19E4(param0, 8, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_444);
    Bg_LoadTiles(param0->unk_43C, 2, param0->unk_444->pRawData, param0->unk_444->szByte, 32 * 0);
    Heap_Free(v0);

    v0 = ov101_021D19E4(param0, 9, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_440);
    Bg_LoadTilemapBuffer(param0->unk_43C, 2, (void *)param0->unk_440->rawData, param0->unk_440->szByte);
    Bg_CopyTilemapBufferToVRAM(param0->unk_43C, 2);
    Heap_Free(v0);

    v0 = ov101_021D19E4(param0, 3, 0);
    NNS_G2dGetUnpackedPaletteData(v0, &param0->unk_448);
    Bg_LoadPalette(7, param0->unk_448->pRawData, 32 * 13, 32 * 0);
    Heap_Free(v0);

    v0 = ov101_021D19E4(param0, 2, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_444);
    Bg_LoadTiles(param0->unk_43C, 7, param0->unk_444->pRawData, param0->unk_444->szByte, 0);
    Heap_Free(v0);

    v0 = ov101_021D19E4(param0, 4, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_440);
    Bg_LoadTilemapBuffer(param0->unk_43C, 7, (void *)param0->unk_440->rawData, param0->unk_440->szByte);
    Bg_CopyTilemapBufferToVRAM(param0->unk_43C, 7);
    Heap_Free(v0);
}

void ov101_021D13C8(UnkStruct_ov101_021D13C8 *param0)
{
    int v0;
    UnkStruct_ov101_021D148C *v1 = &param0->unk_408;

    LoadStandardWindowGraphics(param0->unk_43C, BG_LAYER_MAIN_0, 1, 15, 0, HEAP_ID_79);
    LoadMessageBoxGraphics(param0->unk_43C, BG_LAYER_MAIN_0, 1 + (18 + 12), 14, param0->msgBoxFrame, HEAP_ID_79);
    Font_LoadScreenIndicatorsPalette(0, 15 * 32, HEAP_ID_79);

    v1->unk_00 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0544, HEAP_ID_79);
    v1->unk_04 = StringTemplate_Default(HEAP_ID_79);

    for (v0 = 0; v0 < 1; v0++) {
        Window_AddFromTemplate(param0->unk_43C, &v1->unk_08[v0], &Unk_ov101_021D8588[v0]);
    }

    v1->unk_18 = String_Init(256, HEAP_ID_79);
}

void ov101_021D1458(UnkStruct_ov101_021D13C8 *param0)
{
    int v0;
    UnkStruct_ov101_021D148C *v1 = &param0->unk_408;

    for (v0 = 0; v0 < 1; v0++) {
        Window_ClearAndCopyToVRAM(&v1->unk_08[v0]);
        Window_Remove(&v1->unk_08[v0]);
    }

    MessageLoader_Free(v1->unk_00);
    StringTemplate_Free(v1->unk_04);
    String_Free(v1->unk_18);
}

void ov101_021D148C(UnkStruct_ov101_021D13C8 *param0, u32 param1)
{
    UnkStruct_ov101_021D148C *v0 = &param0->unk_408;

    Window_DrawMessageBoxWithScrollCursor(&v0->unk_08[0], 1, 1 + (18 + 12), 14);
    Window_FillTilemap(&v0->unk_08[0], 15);
    MessageLoader_GetString(v0->unk_00, param1, v0->unk_18);
    Text_AddPrinterWithParams(&v0->unk_08[0], FONT_MESSAGE, v0->unk_18, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(&v0->unk_08[0]);
}

void ov101_021D14E4(UnkStruct_ov101_021D13C8 *param0)
{
    UnkStruct_ov101_021D148C *v0 = &param0->unk_408;

    Window_EraseMessageBox(&v0->unk_08[0], 1);
    Window_FillTilemap(&v0->unk_08[0], 0);
    Window_ScheduleCopyToVRAM(&v0->unk_08[0]);
}

static void ov101_021D150C(void)
{
    CharTransferTemplate v0 = {
        32, 0x4000, 0x4000, 79
    };

    CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K);
    PlttTransfer_Init(16, HEAP_ID_79);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void ov101_021D1544(void)
{
    CharTransfer_Free();
    PlttTransfer_Free();
}

static void ov101_021D1550(UnkStruct_ov101_021D13C8 *param0)
{
    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, 79);
    param0->unk_450 = ov101_021D7E48(HEAP_ID_79, 64, 32, 64, 16, 64, 32, 11, 8, 11, 11);
    ov101_021D15BC(param0);
}

static void ov101_021D15A4(UnkStruct_ov101_021D13C8 *param0)
{
    ov101_021D1868(param0);
    ov101_021D7FB4(param0->unk_450);
    RenderOam_Free();
}

static void ov101_021D15BC(UnkStruct_ov101_021D13C8 *param0)
{
    ov101_021D80E4(param0->unk_450, NNS_G2D_VRAM_TYPE_2DMAIN, param0->unk_438, 11, 0);
    ov101_021D80E4(param0->unk_450, NNS_G2D_VRAM_TYPE_2DMAIN, param0->unk_438, 21, 1);
    ov101_021D80E4(param0->unk_450, NNS_G2D_VRAM_TYPE_2DSUB, param0->unk_438, 68, 6);
    ov101_021D80E4(param0->unk_450, NNS_G2D_VRAM_TYPE_2DSUB, param0->unk_438, 71, 7);
    ov101_021D80E4(param0->unk_450, NNS_G2D_VRAM_TYPE_2DSUB, param0->unk_438, 64, 8);
    ov101_021D80E4(param0->unk_450, NNS_G2D_VRAM_TYPE_2DSUB, param0->unk_438, 60, 9);

    ov101_021D81B4(param0->unk_450, NNS_G2D_VRAM_TYPE_2DBOTH, param0->unk_438, 10, 0);
    ov101_021D81B4(param0->unk_450, NNS_G2D_VRAM_TYPE_2DMAIN, param0->unk_438, 20, 1);
    ov101_021D81B4(param0->unk_450, NNS_G2D_VRAM_TYPE_2DSUB, param0->unk_438, 67, 6);
    ov101_021D81B4(param0->unk_450, NNS_G2D_VRAM_TYPE_2DSUB, param0->unk_438, 63, 7);

    ov101_021D8288(param0->unk_450, param0->unk_438, 12, 0);
    ov101_021D8288(param0->unk_450, param0->unk_438, 22, 1);
    ov101_021D8288(param0->unk_450, param0->unk_438, 69, 6);
    ov101_021D8288(param0->unk_450, param0->unk_438, 72, 7);
    ov101_021D8288(param0->unk_450, param0->unk_438, 65, 8);
    ov101_021D8288(param0->unk_450, param0->unk_438, 61, 9);

    ov101_021D82F0(param0->unk_450, param0->unk_438, 13, 0);
    ov101_021D82F0(param0->unk_450, param0->unk_438, 23, 1);
    ov101_021D82F0(param0->unk_450, param0->unk_438, 70, 6);
    ov101_021D82F0(param0->unk_450, param0->unk_438, 73, 7);
    ov101_021D82F0(param0->unk_450, param0->unk_438, 66, 8);
    ov101_021D82F0(param0->unk_450, param0->unk_438, 62, 9);

    ov101_021D814C(param0->unk_450, 0);
    ov101_021D814C(param0->unk_450, 1);
    ov101_021D814C(param0->unk_450, 6);
    ov101_021D814C(param0->unk_450, 7);
    ov101_021D814C(param0->unk_450, 8);
    ov101_021D814C(param0->unk_450, 9);
    ov101_021D8180(param0->unk_450, 0);
    ov101_021D8180(param0->unk_450, 1);
    ov101_021D8180(param0->unk_450, 6);
    ov101_021D8180(param0->unk_450, 7);
    ov101_021D8180(param0->unk_450, 8);
    ov101_021D8180(param0->unk_450, 9);

    ov101_021D8220(param0->unk_450, 0);
    ov101_021D8220(param0->unk_450, 1);
    ov101_021D8220(param0->unk_450, 6);
    ov101_021D8220(param0->unk_450, 7);
    ov101_021D8254(param0->unk_450, 0);
    ov101_021D8254(param0->unk_450, 1);
    ov101_021D8254(param0->unk_450, 6);
    ov101_021D8254(param0->unk_450, 7);
}

static void ov101_021D1868(UnkStruct_ov101_021D13C8 *param0)
{
    return;
}

static void ov101_021D186C(UnkStruct_ov101_021D13C8 *param0)
{
    param0->unk_44C = OverworldAnimManagerList_New(HEAP_ID_79, 128);
}

static void ov101_021D1884(UnkStruct_ov101_021D13C8 *param0)
{
    OverworldAnimManagerList_FinishAndFree(param0->unk_44C);
}

void ov101_021D1894(UnkStruct_ov101_021D13C8 *param0, UnkEnum_ov101_021D1894 param1)
{
    UnkStruct_ov101_021D1894 *v0 = &param0->unk_424;

    if ((v0->unk_08 == param1) || (v0->unk_0C == param1)) {
        return;
    }

    v0->unk_0C = param1;
    v0->unk_00 = 1;
    v0->unk_04 = 1;
}

static int ov101_021D18B4(UnkStruct_ov101_021D13C8 *param0)
{
    UnkStruct_ov101_021D1894 *v0 = &param0->unk_424;
    return v0->unk_04;
}

static void ov101_021D18C0(UnkStruct_ov101_021D13C8 *param0)
{
    UnkStruct_ov101_021D1894 *v0 = &param0->unk_424;

    v0->unk_08 = UnkEnum_ov101_021D1894_00;
    v0->unk_0C = UnkEnum_ov101_021D1894_03;
    v0->unk_10 = SysTask_Start(ov101_021D18F4, param0, 144);
}

static void ov101_021D18E4(UnkStruct_ov101_021D13C8 *param0)
{
    SysTask_Done(param0->unk_424.unk_10);
}

static void ov101_021D18F4(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D13C8 *v0 = param1;
    UnkStruct_ov101_021D1894 *v1 = &v0->unk_424;

    switch (v1->unk_00) {
    case 0:
        break;
    case 1:
        switch (v1->unk_08) {
        case UnkEnum_ov101_021D1894_00:
            Sound_SetBGMPlayerPaused(PLAYER_FIELD, TRUE);
            break;
        case UnkEnum_ov101_021D1894_01:
            Sound_StopBGM(SEQ_SLOT_ATARI, 0);
            break;
        case UnkEnum_ov101_021D1894_02:
            Sound_StopBGM(SEQ_SLOT_OOATARI, 0);
            break;
        }

        v1->unk_00++;
        break;
    case 2:
        switch (v1->unk_0C) {
        case UnkEnum_ov101_021D1894_00:
            Sound_SetBGMPlayerPaused(PLAYER_FIELD, FALSE);
            break;
        case UnkEnum_ov101_021D1894_01:
            Sound_PlayBasicBGM(SEQ_SLOT_ATARI);
            break;
        case UnkEnum_ov101_021D1894_02:
            Sound_PlayBasicBGM(SEQ_SLOT_OOATARI);
            break;
        }

        v1->unk_08 = v1->unk_0C;
        v1->unk_0C = UnkEnum_ov101_021D1894_03;
        v1->unk_04 = 0;
        v1->unk_00 = 0;
    }
}

static void ov101_021D197C(void *param0)
{
    UnkStruct_ov101_021D13C8 *v0 = param0;

    VramTransfer_Process();
    RenderOam_Transfer();
    Bg_RunScheduledUpdates(v0->unk_43C);
}

void *ov101_021D1998(u32 param0)
{
    void *v0 = Heap_Alloc(HEAP_ID_79, param0);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param0);

    return v0;
}

static void ov101_021D19BC(UnkStruct_ov101_021D13C8 *param0)
{
    param0->unk_438 = NARC_ctor(NARC_INDEX_DATA__SLOT, HEAP_ID_79);
}

static void ov101_021D19D4(UnkStruct_ov101_021D13C8 *param0)
{
    NARC_dtor(param0->unk_438);
}

void *ov101_021D19E4(UnkStruct_ov101_021D13C8 *param0, u32 param1, int param2)
{
    void *v0;
    u32 v1 = NARC_GetMemberSize(param0->unk_438, param1);

    if (param2 == 1) {
        v0 = Heap_Alloc(HEAP_ID_79, v1);
    } else {
        v0 = Heap_AllocAtEnd(HEAP_ID_79, v1);
    }

    GF_ASSERT(v0 != NULL);
    NARC_ReadWholeMember(param0->unk_438, param1, v0);

    return v0;
}

static const WindowTemplate Unk_ov101_021D8588[1] = {
    { 0x0, 0x2, 0x13, 0x1A, 0x4, 0xF, 0x3D }
};
