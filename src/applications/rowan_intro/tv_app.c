#include <nitro.h>
#include <string.h>

#include "generated/text_banks.h"

#include "struct_defs/struct_02099F80.h"

#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "hardware_palette.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "palette.h"
#include "screen_fade.h"
#include "sound.h"
#include "strbuf.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/rowan_intro_tv_app.h"

enum RowanIntroTvAppState {
    RIT_APP_STATE_INIT = 0,
    RIT_APP_STATE_WAIT_AND_START_BGM,
    RIT_APP_STATE_WAIT_AND_START_FADE_IN,
    RIT_APP_STATE_WAIT_SCREEN_FADE,
    RIT_APP_STATE_DISPLAY_TEXT_WAIT_INPUT,
    RIT_APP_STATE_EXIT_AFTER_FADE,
};

enum RowanIntroTvState {
    RIT_STATE_INIT = 0,
    RIT_STATE_WAIT_BEFORE_INPUT,
    RIT_STATE_WAIT_INPUT,
    RIT_STATE_EXIT,
};

typedef struct {
    enum HeapId heapID;
    BgConfig *bgConfig;
    MessageLoader *msgLoader;
    enum RowanIntroTvState state;
    Window window;
    int crtOverlayPosition;
    int delayUpdateCounter;
} RowanIntroTv;

BOOL RowanIntroTv_Init(ApplicationManager *appMan, enum RowanIntroTvAppState *state);
BOOL RowanIntroTv_Main(ApplicationManager *appMan, enum RowanIntroTvAppState *state);
BOOL RowanIntroTv_Exit(ApplicationManager *appMan, enum RowanIntroTvAppState *state);
static void RowanIntroTv_VBlankCallback(void *uncastTv);
static void RowanIntroTv_InitGraphics(RowanIntroTv *tv);
static void RowanIntroTv_FreeGraphics(RowanIntroTv *tv);
static void RowanIntroTv_InitMessageStructs(RowanIntroTv *tv);
static void RowanIntroTv_FreeMessageStructs(RowanIntroTv *tv);
static BOOL RowanIntroTv_Run(RowanIntroTv *tv, int msgEntryID, int unused0, int unused1);
static void RowanIntroTv_ShiftCrtOverlay(RowanIntroTv *tv);

BOOL RowanIntroTv_Init(ApplicationManager *appMan, enum RowanIntroTvAppState *unusedState)
{
    RowanIntroTv *tv;
    // changing this to enum HeapId breaks the checksum.
    int heapID = HEAP_ID_ROWAN_INTRO_TV;

    Heap_Create(HEAP_ID_APPLICATION, heapID, 0x40000);

    tv = ApplicationManager_NewData(appMan, sizeof(RowanIntroTv), heapID);
    memset(tv, 0, sizeof(RowanIntroTv));

    tv->heapID = heapID;
    tv->delayUpdateCounter = 0;

    return TRUE;
}

BOOL RowanIntroTv_Main(ApplicationManager *appMan, enum RowanIntroTvAppState *state)
{
    RowanIntroTv *tv = ApplicationManager_Data(appMan);
    BOOL isFinished = FALSE;

    switch (*state) {
    case RIT_APP_STATE_INIT:
        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);

        SetVBlankCallback(NULL, NULL);
        SetHBlankCallback(NULL, NULL);

        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();
        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        SetAutorepeat(4, 8);

        RowanIntroTv_InitGraphics(tv);
        RowanIntroTv_InitMessageStructs(tv);

        SetVBlankCallback(RowanIntroTv_VBlankCallback, (void *)tv);
        GXLayers_TurnBothDispOn();

        {
            u16 *paletteAddress = (u16 *)GetHardwareMainBgPaletteAddress();

            BlendPalettes(paletteAddress, paletteAddress, 0xFFFC, 7, 0);
            GX_LoadBGPltt((const void *)paletteAddress, 0, 16 * 0x20);
        }

        tv->delayUpdateCounter = 2 * 30;
        *state = RIT_APP_STATE_WAIT_AND_START_BGM;
        break;
    case RIT_APP_STATE_WAIT_AND_START_BGM:
        if (tv->delayUpdateCounter) {
            tv->delayUpdateCounter--;
        } else {
            Sound_SetFieldBGM(SEQ_TV_HOUSOU);
            Sound_SetSceneAndPlayBGM(SOUND_SCENE_FIELD, SEQ_TV_HOUSOU, 1);

            tv->delayUpdateCounter = 3 * 30;
            *state = RIT_APP_STATE_WAIT_AND_START_FADE_IN;
        }
        break;
    case RIT_APP_STATE_WAIT_AND_START_FADE_IN:
        if (tv->delayUpdateCounter) {
            tv->delayUpdateCounter--;
        } else {
            tv->delayUpdateCounter = 0;
            StartScreenFade(
                FADE_BOTH_SCREENS,
                FADE_TYPE_BRIGHTNESS_IN,
                FADE_TYPE_BRIGHTNESS_IN,
                COLOR_BLACK,
                6,
                1,
                tv->heapID);
            *state = RIT_APP_STATE_WAIT_SCREEN_FADE;
        }
        break;
    case RIT_APP_STATE_WAIT_SCREEN_FADE:
        RowanIntroTv_ShiftCrtOverlay(tv);

        if (IsScreenFadeDone() == TRUE) {
            *state = RIT_APP_STATE_DISPLAY_TEXT_WAIT_INPUT;
        }
        break;
    case RIT_APP_STATE_DISPLAY_TEXT_WAIT_INPUT:
        RowanIntroTv_ShiftCrtOverlay(tv);

        if (RowanIntroTv_Run(tv, RowanIntroTv_TextId, 5 * 8, 6 * 8) == TRUE) {
            StartScreenFade(
                FADE_BOTH_SCREENS,
                FADE_TYPE_BRIGHTNESS_OUT,
                FADE_TYPE_BRIGHTNESS_OUT,
                COLOR_BLACK,
                6,
                1,
                tv->heapID);
            *state = RIT_APP_STATE_EXIT_AFTER_FADE;
        }
        break;
    case RIT_APP_STATE_EXIT_AFTER_FADE:
        RowanIntroTv_ShiftCrtOverlay(tv);

        if (IsScreenFadeDone() == TRUE) {
            RowanIntroTv_FreeMessageStructs(tv);
            RowanIntroTv_FreeGraphics(tv);
            SetVBlankCallback(NULL, NULL);

            isFinished = TRUE;
        }
        break;
    }

    return isFinished;
}

BOOL RowanIntroTv_Exit(ApplicationManager *appMan, enum RowanIntroTvAppState *unusedState)
{
    RowanIntroTv *tv = ApplicationManager_Data(appMan);
    enum HeapId heapID = tv->heapID;

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(heapID);

    return TRUE;
}

static void RowanIntroTv_VBlankCallback(void *uncastTv)
{
    RowanIntroTv *tv = uncastTv;
    Bg_RunScheduledUpdates(tv->bgConfig);
}

static void RowanIntroTv_InitGraphics(RowanIntroTv *tv)
{
    {
        UnkStruct_02099F80 banks = {
            .unk_00 = GX_VRAM_BG_256_AB,
            .unk_04 = GX_VRAM_BGEXTPLTT_NONE,
            .unk_08 = GX_VRAM_SUB_BG_NONE,
            .unk_0C = GX_VRAM_SUB_BGEXTPLTT_NONE,
            .unk_10 = GX_VRAM_OBJ_NONE,
            .unk_14 = GX_VRAM_OBJEXTPLTT_NONE,
            .unk_18 = GX_VRAM_SUB_OBJ_NONE,
            .unk_1C = GX_VRAM_SUB_OBJEXTPLTT_NONE,
            .unk_20 = GX_VRAM_TEX_NONE,
            .unk_24 = GX_VRAM_TEXPLTT_NONE
        };

        GXLayers_SetBanks(&banks);
    }

    {
        tv->bgConfig = BgConfig_New(tv->heapID);
    }
    {
        GraphicsModes graphicsModes = {
            .displayMode = GX_DISPMODE_GRAPHICS,
            .mainBgMode = GX_BGMODE_0,
            .subBgMode = GX_BGMODE_0,
            .bg0As2DOr3D = GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&graphicsModes);
    }
    {
        // changing to enum BgLayer breaks the checksum
        int bgLayer;
        int tilesNarcMemberIdx, tilemapNarcMemberIdx;
        {
            BgTemplate layerMain2Template = {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x0000,
                .charBase = GX_BG_CHARBASE_0x18000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 1,
                .areaOver = 0,
                .mosaic = FALSE,
            };

            bgLayer = BG_LAYER_MAIN_2;

            Bg_InitFromTemplate(tv->bgConfig, bgLayer, &layerMain2Template, BG_TYPE_STATIC);
            Bg_ClearTilesRange(bgLayer, 32, 0, tv->heapID);
            Bg_ClearTilemap(tv->bgConfig, bgLayer);
        }
        {
            BgTemplate layerMain0Template = {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x0800,
                .charBase = GX_BG_CHARBASE_0x14000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 1,
                .areaOver = 0,
                .mosaic = FALSE,
            };

            bgLayer = BG_LAYER_MAIN_0;
            tilesNarcMemberIdx = 1;
            tilemapNarcMemberIdx = 4;

            Bg_InitFromTemplate(tv->bgConfig, bgLayer, &layerMain0Template, BG_TYPE_STATIC);
            Graphics_LoadTilesToBgLayer(
                NARC_INDEX_DEMO__INTRO__INTRO_TV,
                tilesNarcMemberIdx,
                tv->bgConfig,
                bgLayer,
                0,
                0,
                FALSE,
                tv->heapID);
            Graphics_LoadTilemapToBgLayer(
                NARC_INDEX_DEMO__INTRO__INTRO_TV,
                tilemapNarcMemberIdx,
                tv->bgConfig,
                bgLayer,
                0,
                0,
                FALSE,
                tv->heapID);
        }
        {
            BgTemplate layerMain1Template = {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x1000,
                .charBase = GX_BG_CHARBASE_0x10000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 1,
                .areaOver = 0,
                .mosaic = FALSE,
            };

            bgLayer = BG_LAYER_MAIN_1;
            tilesNarcMemberIdx = 2;
            tilemapNarcMemberIdx = 5;

            Bg_InitFromTemplate(tv->bgConfig, bgLayer, &layerMain1Template, BG_TYPE_STATIC);
            Graphics_LoadTilesToBgLayer(
                NARC_INDEX_DEMO__INTRO__INTRO_TV,
                tilesNarcMemberIdx,
                tv->bgConfig,
                bgLayer,
                0,
                0,
                FALSE,
                tv->heapID);
            Graphics_LoadTilemapToBgLayer(
                NARC_INDEX_DEMO__INTRO__INTRO_TV,
                tilemapNarcMemberIdx,
                tv->bgConfig,
                bgLayer,
                0,
                0,
                FALSE,
                tv->heapID);
        }
        {
            BgTemplate layerMain3Template = {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_256,
                .screenBase = GX_BG_SCRBASE_0x1800,
                .charBase = GX_BG_CHARBASE_0x20000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 1,
                .areaOver = 0,
                .mosaic = FALSE,
            };

            bgLayer = BG_LAYER_MAIN_3;
            tilesNarcMemberIdx = 8;
            tilemapNarcMemberIdx = 7;

            Bg_InitFromTemplate(tv->bgConfig, bgLayer, &layerMain3Template, BG_TYPE_STATIC);
            Graphics_LoadTilesToBgLayer(
                NARC_INDEX_DEMO__INTRO__INTRO_TV,
                tilesNarcMemberIdx,
                tv->bgConfig,
                bgLayer,
                0,
                0,
                FALSE,
                tv->heapID);
            Graphics_LoadTilemapToBgLayer(
                NARC_INDEX_DEMO__INTRO__INTRO_TV,
                tilemapNarcMemberIdx,
                tv->bgConfig,
                bgLayer,
                0,
                0,
                FALSE,
                tv->heapID);
        }
    }
    Graphics_LoadPalette(NARC_INDEX_DEMO__INTRO__INTRO_TV, 6, PAL_LOAD_MAIN_BG, 0, 0, tv->heapID);
    Graphics_LoadPaletteWithSrcOffset(
        NARC_INDEX_DEMO__INTRO__INTRO_TV,
        9,
        PAL_LOAD_MAIN_BG,
        0x20 * 2,
        0x20 * 2,
        0x20 * 14,
        tv->heapID);
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, 1 * (2 * 16), tv->heapID);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 4, 12);
}

static void RowanIntroTv_FreeGraphics(RowanIntroTv *tv)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_0, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_0, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_1, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_3, FALSE);

    G2_BlendNone();

    Bg_FreeTilemapBuffer(tv->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(tv->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(tv->bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(tv->bgConfig, BG_LAYER_MAIN_2);
    Heap_Free(tv->bgConfig);
}

static void RowanIntroTv_InitMessageStructs(RowanIntroTv *tv)
{
    tv->msgLoader = MessageLoader_Init(
        MESSAGE_LOADER_NARC_HANDLE,
        NARC_INDEX_MSGDATA__PL_MSG,
        TEXT_BANK_ROWAN_INTRO_TV_APP,
        tv->heapID);

    Text_ResetAllPrinters();
    tv->state = 0;
}

static void RowanIntroTv_FreeMessageStructs(RowanIntroTv *tv)
{
    MessageLoader_Free(tv->msgLoader);
}

static const WindowTemplate sMessageWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_2,
    .tilemapLeft = 0,
    .tilemapTop = 0,
    .width = 0x20,
    .height = 0x18,
    .palette = 1,
    .baseTile = 1,
};

static BOOL RowanIntroTv_Run(RowanIntroTv *tv, int msgEntryID, int unused0, int unused1)
{
    BOOL isFinished = FALSE;
    switch (tv->state) {
    case RIT_STATE_INIT:
        Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
        Strbuf *tmpStrbuf = Strbuf_Init(0x400, tv->heapID);
        MessageLoader_GetStrbuf(tv->msgLoader, msgEntryID, tmpStrbuf);
        Window_AddFromTemplate(tv->bgConfig, &tv->window, &sMessageWindowTemplate);
        Window_FillRectWithColor(&tv->window, 0, 0, 0, 0x100, 0xc0);
        u32 xOffset = (0x100 - Font_CalcMaxLineWidth(FONT_SYSTEM, tmpStrbuf, 0)) / 2;
        u32 yOffset = (0xc0 - Strbuf_NumLines(tmpStrbuf) * 16) / 2;
        Text_AddPrinterWithParamsAndColor(
            &tv->window,
            FONT_SYSTEM,
            tmpStrbuf,
            xOffset,
            yOffset,
            TEXT_SPEED_INSTANT,
            TEXT_COLOR(15, 2, 0),
            NULL);
        Strbuf_Free(tmpStrbuf);
        Window_CopyToVRAM(&tv->window);
        Bg_ToggleLayer(BG_LAYER_MAIN_2, TRUE);
        tv->delayUpdateCounter = 240;
        tv->state = RIT_STATE_WAIT_BEFORE_INPUT;
        break;
    case RIT_STATE_WAIT_BEFORE_INPUT:
        if (tv->delayUpdateCounter) {
            tv->delayUpdateCounter--;
        } else {
            tv->state = RIT_STATE_WAIT_INPUT;
        }
        break;
    case RIT_STATE_WAIT_INPUT:
        if (JOY_NEW(PAD_BUTTON_A) == PAD_BUTTON_A || JOY_NEW(PAD_BUTTON_B) == PAD_BUTTON_B) {
            tv->state = RIT_STATE_EXIT;
        }
        break;
    case RIT_STATE_EXIT:
        Window_Remove(&tv->window);
        Bg_ClearTilemap(tv->bgConfig, BG_LAYER_MAIN_2);
        tv->state = RIT_STATE_INIT;
        isFinished = TRUE;
        break;
    }
    return isFinished;
}

static void RowanIntroTv_ShiftCrtOverlay(RowanIntroTv *tv)
{
    tv->crtOverlayPosition += 4;
    Bg_SetOffset(
        tv->bgConfig,
        BG_LAYER_MAIN_1,
        BG_OFFSET_UPDATE_SET_Y,
        tv->crtOverlayPosition >> 4);
}
