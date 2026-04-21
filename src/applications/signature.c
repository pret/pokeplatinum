#include "applications/signature.h"

#include <nitro.h>

#include "generated/game_records.h"
#include "generated/trainer_score_events.h"

#include "assert.h"
#include "bg_window.h"
#include "char_transfer.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "trainer_case.h"
#include "trainer_case_save_data.h"
#include "unk_02012744.h"
#include "vram_transfer.h"
#include "yes_no_touch_menu.h"

#include "res/graphics/signature_interface/signature_interface.naix"
#include "res/text/bank/drawing.h"

#define SIGNATURE_WINDOW_START_TILE_X 4
#define SIGNATURE_WINDOW_START_TILE_Y 9

#define DONE_BUTTON_WIDTH  8
#define DONE_BUTTON_HEIGHT 2

#define SIGNATURE_BASE_TILE_STANDARD_WINDOW_GRAPHICS (1 + SCROLLING_MESSAGE_BOX_TILE_COUNT)
#define SIGNATURE_BASE_TILE_MESSAGE_WINDOW           (SIGNATURE_BASE_TILE_STANDARD_WINDOW_GRAPHICS + STANDARD_WINDOW_TILE_COUNT)
#define SIGNATURE_BASE_TILE_BUTTON_WINDOW            (1 + SIGNATURE_WIDTH * SIGNATURE_HEIGHT)

#define SIGNATURE_OAM_MAIN_START 0
#define SIGNATURE_OAM_MAIN_COUNT 126
#define SIGNATURE_OAM_SUB_START  0
#define SIGNATURE_OAM_SUB_COUNT  126

#define SIGNATURE_OAM_AFFINE_MAIN_START 0
#define SIGNATURE_OAM_AFFINE_MAIN_COUNT 32
#define SIGNATURE_OAM_AFFINE_SUB_START  0
#define SIGNATURE_OAM_AFFINE_SUB_COUNT  32

enum SignatureAppSubstate {
    SIGNATURE_APP_SUBSTATE_0_UNUSED = 0,
    SIGNATURE_APP_SUBSTATE_MAIN,
    SIGNATURE_APP_SUBSTATE_DONE_PRESSED,
    SIGNATURE_APP_SUBSTATE_CONFIRM_DONE,
    SIGNATURE_APP_SUBSTATE_PROMPT_RESET,
    SIGNATURE_APP_SUBSTATE_OPEN_RESET_MENU,
    SIGNATURE_APP_SUBSTATE_CONFIRM_RESET,
};

enum DoneButtonAnim {
    DONE_BUTTON_ANIM_STATIC = 0,
    DONE_BUTTON_ANIM_PRESSED,
};

static void SignatureApp_VBlankCallback(void *bgConfig);
static void SignatureApp_SetVRAMBanks(void);
static void SignatureApp_InitBackgrounds(BgConfig *bgConfig);
static void SignatureApp_InitFields(SignatureApp *signatureApp);
static void SignatureApp_FreeMenuAndStrings(SignatureApp *signatureApp);
static void SignatureApp_TeardownBgs(BgConfig *bgConfig);
static void SignatureApp_DrawBackgrounds(SignatureApp *signatureApp, NARC *narc);
static void SignatureApp_InitCharPlttTransferBuffers(void);
static void SignatureApp_LoadButtonSpriteResources(SignatureApp *signatureApp, NARC *narc);
static void SignatureApp_InitButtonSprite(SignatureApp *signatureApp);
static void SignatureApp_InitWindows(SignatureApp *signatureApp, ApplicationManager *appMan);
static void SignatureApp_RemoveWindows(SignatureApp *signatureApp);
static int SignatureApp_MainLoop(SignatureApp *signatureApp, int state);
static int SignatureApp_OpenConfirmDoneMenu(SignatureApp *signatureApp, int state);
static int SignatureApp_ConfirmDone(SignatureApp *signatureApp, int state);
static int SignatureApp_PrintResetPrompt(SignatureApp *signatureApp, int state);
static int SignatureApp_OpenConfirmResetMenu(SignatureApp *signatureApp, int state);
static void SignatureApp_DrawSignature(Window *window, SignatureTouchDataBuffer touchData[], PreviousTouchDataBuffer *prevTouchData, BOOL allowWindowUpdate);
static void SignatureApp_Dummy2(SignatureApp *unused);
static void SignatureApp_GlowEffectUnused(u16 *degrees);
static void SignatureApp_Dummy3(Window *unused0, int unused1, TextColor unused2, SignatureApp *unused3);
static void SignatureApp_CopyTouchData(SignatureApp *signatureApp);
static void SignatureApp_PrintMessage(SignatureApp *signatureApp, int bankEntry);
static int SignatureApp_IsPrinterDone(int printerID);
static void SignatureApp_AnimateButtonsUnused(Sprite **buttonSprites, int pressedButtonIndex);
static void SignatureApp_AnimateDoneButton(Sprite **buttonSprite, BOOL isPressed);
static int SignatureApp_ConfirmReset(SignatureApp *signatureApp, int state);
static void SignatureApp_ConvertSignature4BppTo1Bpp(u8 *signature1BppOut, u8 *signature4Bpp);
static void SignatureApp_HandleDrawingSoundEffects(SignatureApp *signatureApp);
static void SignatureApp_PlayDrawingSoundEffect(DrawingState *drawingState);

static int (*sSubStateFuncs[])(SignatureApp *signatureApp, int state) = {
    [SIGNATURE_APP_SUBSTATE_0_UNUSED] = NULL,
    [SIGNATURE_APP_SUBSTATE_MAIN] = SignatureApp_MainLoop,
    [SIGNATURE_APP_SUBSTATE_DONE_PRESSED] = SignatureApp_OpenConfirmDoneMenu,
    [SIGNATURE_APP_SUBSTATE_CONFIRM_DONE] = SignatureApp_ConfirmDone,
    [SIGNATURE_APP_SUBSTATE_PROMPT_RESET] = SignatureApp_PrintResetPrompt,
    [SIGNATURE_APP_SUBSTATE_OPEN_RESET_MENU] = SignatureApp_OpenConfirmResetMenu,
    [SIGNATURE_APP_SUBSTATE_CONFIRM_RESET] = SignatureApp_ConfirmReset,
};

enum SignatureAppState {
    SIGNATURE_APP_STATE_INIT = 0,
    SIGNATURE_APP_STATE_FRAME_DELAY,
    SIGNATURE_APP_STATE_WAIT_FOR_FADE = 0,
    SIGNATURE_APP_STATE_MAIN,
    SIGNATURE_APP_STATE_EXIT_AFTER_FADE,
};

BOOL SignatureApp_Init(ApplicationManager *appMan, int *state)
{
    SignatureApp *signatureApp;

    switch (*state) {
    case SIGNATURE_APP_STATE_INIT:
        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_DRAWING, HEAP_SIZE_DRAWING);

        signatureApp = ApplicationManager_NewData(appMan, sizeof(SignatureApp), HEAP_ID_DRAWING);
        memset(signatureApp, 0, sizeof(SignatureApp));
        signatureApp->bgConfig = BgConfig_New(HEAP_ID_DRAWING);
        NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__MYSIGN, HEAP_ID_DRAWING);
        signatureApp->template = StringTemplate_Default(HEAP_ID_DRAWING);
        signatureApp->loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_DRAWING, HEAP_ID_DRAWING);

        SetAutorepeat(4, 8);
        SignatureApp_SetVRAMBanks();
        SignatureApp_InitBackgrounds(signatureApp->bgConfig);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 16, 1, HEAP_ID_DRAWING);

        SaveData *saveData = (SaveData *)ApplicationManager_Args(appMan);

        signatureApp->savedSignature = TrainerCaseSaveData_GetSignature(SaveData_GetTrainerCaseSaveData(saveData));
        signatureApp->records = SaveData_GetGameRecords((SaveData *)ApplicationManager_Args(appMan));
        signatureApp->options = SaveData_GetOptions((SaveData *)ApplicationManager_Args(appMan));

        SignatureApp_DrawBackgrounds(signatureApp, narc);

        EnableTouchPad();
        InitializeTouchPad(1);
        SetVBlankCallback(SignatureApp_VBlankCallback, signatureApp->bgConfig);
        Font_InitManager(FONT_SUBSCREEN, HEAP_ID_DRAWING);

        SignatureApp_InitFields(signatureApp);
        SignatureApp_InitCharPlttTransferBuffers();
        SignatureApp_LoadButtonSpriteResources(signatureApp, narc);
        SignatureApp_InitButtonSprite(signatureApp);
        SignatureApp_InitWindows(signatureApp, appMan);

        Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_56, SEQ_NONE, 0);
        GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
        NARC_dtor(narc);
        (*state)++;
        break;
    case SIGNATURE_APP_STATE_FRAME_DELAY:
        signatureApp = ApplicationManager_Data(appMan);
        *state = SIGNATURE_APP_STATE_WAIT_FOR_FADE;
        return TRUE;
    }

    return FALSE;
}

BOOL SignatureApp_Main(ApplicationManager *appMan, int *state)
{
    SignatureApp *signatureApp = ApplicationManager_Data(appMan);

    switch (*state) {
    case SIGNATURE_APP_STATE_WAIT_FOR_FADE:
        if (IsScreenFadeDone()) {
            *state = SIGNATURE_APP_STATE_MAIN;
        }

        break;
    case SIGNATURE_APP_STATE_MAIN:
        if (sSubStateFuncs[signatureApp->subState] != NULL) {
            *state = (*sSubStateFuncs[signatureApp->subState])(signatureApp, *state);
        }

        SignatureApp_GlowEffectUnused(&signatureApp->glowEffectDegreesUnused);
        break;
    case SIGNATURE_APP_STATE_EXIT_AFTER_FADE:
        if (IsScreenFadeDone()) {
            return TRUE;
        }

        break;
    }

    SpriteList_Update(signatureApp->spriteList);

    return FALSE;
}

BOOL SignatureApp_Exit(ApplicationManager *appMan, int *state)
{
    SignatureApp *signatureApp = ApplicationManager_Data(appMan);

    SignatureApp_ConvertSignature4BppTo1Bpp(signatureApp->savedSignature, signatureApp->signatureWindow.pixels);

    SetVBlankCallback(NULL, NULL);
    SpriteTransfer_ResetCharTransfer(signatureApp->spriteResources[0][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetCharTransfer(signatureApp->spriteResources[1][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(signatureApp->spriteResources[0][SPRITE_RESOURCE_PLTT]);
    SpriteTransfer_ResetPlttTransfer(signatureApp->spriteResources[1][SPRITE_RESOURCE_PLTT]);

    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < MAX_SPRITE_RESOURCE_GEN4; resourceType++) {
        SpriteResourceCollection_Delete(signatureApp->spriteResourceCollection[resourceType]);
    }

    SpriteList_Delete(signatureApp->spriteList);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();

    SignatureApp_RemoveWindows(signatureApp);
    Font_Free(FONT_SUBSCREEN);
    SignatureApp_TeardownBgs(signatureApp->bgConfig);
    DisableTouchPad();
    MessageLoader_Free(signatureApp->loader);
    StringTemplate_Free(signatureApp->template);
    SignatureApp_FreeMenuAndStrings(signatureApp);
    ApplicationManager_FreeData(appMan);

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_DRAWING);

    return TRUE;
}

static void SignatureApp_VBlankCallback(void *bgConfig)
{
    VramTransfer_Process();
    RenderOam_Transfer();
    Bg_RunScheduledUpdates((BgConfig *)bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SignatureApp_SetVRAMBanks(void)
{
    GXBanks banks = {
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

    GXLayers_SetBanks(&banks);
}

static void SignatureApp_InitBackgrounds(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate main0Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &main0Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate main1Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &main1Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate main2Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xd800,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &main2Template, BG_TYPE_STATIC);

    BgTemplate sub0Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &sub0Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate sub1Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &sub1Template, BG_TYPE_STATIC);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, TILE_SIZE_4BPP, 0, HEAP_ID_DRAWING);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, TILE_SIZE_4BPP, 0, HEAP_ID_DRAWING);
}

static void SignatureApp_InitFields(SignatureApp *signatureApp)
{
    for (int i = 0; i < DUMMY_COUNT; i++) {
        signatureApp->dummyStrings[i] = String_Init(TRAINER_NAME_LEN + 1, HEAP_ID_DRAWING);
        signatureApp->touchDataBuffers[i].bufferSize = 0;
        signatureApp->prevTouchData[i].bufferSize = 0;
    }

    signatureApp->buttonText = String_Init(10 * 2, HEAP_ID_DRAWING);
    signatureApp->descriptionText = String_Init(20 * 2, HEAP_ID_DRAWING);
    signatureApp->messageText = String_Init(40 * 2, HEAP_ID_DRAWING);
    signatureApp->brushTypeUnused = 0;
    signatureApp->subState = SIGNATURE_APP_SUBSTATE_MAIN;

    MessageLoader_GetString(signatureApp->loader, Drawing_Text_Done, signatureApp->buttonText);
    MessageLoader_GetString(signatureApp->loader, Drawing_Text_WriteYourAutograph, signatureApp->descriptionText);

    signatureApp->yesNoMenu = YesNoTouchMenu_New(HEAP_ID_DRAWING);

    MI_CpuClearFast(&signatureApp->drawingState, sizeof(DrawingState));
}

static void SignatureApp_FreeMenuAndStrings(SignatureApp *signatureApp)
{
    YesNoTouchMenu_Free(signatureApp->yesNoMenu);

    for (int i = 0; i < DUMMY_COUNT; i++) {
        String_Free(signatureApp->dummyStrings[i]);
    }

    String_Free(signatureApp->messageText);
    String_Free(signatureApp->descriptionText);
    String_Free(signatureApp->buttonText);
}

static void SignatureApp_TeardownBgs(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Heap_Free(bgConfig);
}

static void SignatureApp_DrawBackgrounds(SignatureApp *signatureApp, NARC *narc)
{
    BgConfig *bgConfig = signatureApp->bgConfig;

    Graphics_LoadPaletteFromOpenNARC(narc, bottom_screen_tiles_NCLR, PAL_LOAD_MAIN_BG, 0, PALETTE_SIZE_BYTES * 3, HEAP_ID_DRAWING);
    Graphics_LoadPaletteFromOpenNARC(narc, top_screen_tiles_NCLR, PAL_LOAD_SUB_BG, 0, PALETTE_SIZE_BYTES * 2, HEAP_ID_DRAWING);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), HEAP_ID_DRAWING);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_SUB_BG, PLTT_OFFSET(13), HEAP_ID_DRAWING);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, TILE_SIZE_4BPP, 0, HEAP_ID_DRAWING);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, bottom_screen_tiles_NCGR_lz, bgConfig, BG_LAYER_MAIN_2, 0, 32 * 8 * TILE_SIZE_4BPP, TRUE, HEAP_ID_DRAWING); // size here is way too big
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, bottom_screen_NSCR_lz, bgConfig, BG_LAYER_MAIN_2, 0, SCREEN_WIDTH_TILES * SCREEN_HEIGHT_TILES * sizeof(u16), TRUE, HEAP_ID_DRAWING);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, top_screen_tiles_NCGR_lz, bgConfig, BG_LAYER_SUB_1, 0, 32 * 8 * TILE_SIZE_4BPP, TRUE, HEAP_ID_DRAWING); // size here is way too big
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, top_screen_NSCR_lz, bgConfig, BG_LAYER_SUB_1, 0, SCREEN_WIDTH_TILES * SCREEN_HEIGHT_TILES * sizeof(u16), TRUE, HEAP_ID_DRAWING);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(signatureApp->options), HEAP_ID_DRAWING);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, SIGNATURE_BASE_TILE_STANDARD_WINDOW_GRAPHICS, 11, 0, HEAP_ID_DRAWING);
}

static void SignatureApp_InitCharPlttTransferBuffers(void)
{
    CharTransferTemplate template = {
        .maxTasks = 20,
        .sizeMain = 2048,
        .sizeSub = 2048,
        .heapID = HEAP_ID_DRAWING
    };

    CharTransfer_Init(&template);

    PlttTransfer_Init(20, HEAP_ID_DRAWING);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void SignatureApp_LoadButtonSpriteResources(SignatureApp *signatureApp, NARC *narc)
{
    NNS_G2dInitOamManagerModule();
    RenderOam_Init(
        SIGNATURE_OAM_MAIN_START,
        SIGNATURE_OAM_MAIN_COUNT,
        SIGNATURE_OAM_AFFINE_MAIN_START,
        SIGNATURE_OAM_AFFINE_MAIN_COUNT,
        SIGNATURE_OAM_SUB_START,
        SIGNATURE_OAM_SUB_COUNT,
        SIGNATURE_OAM_AFFINE_SUB_START,
        SIGNATURE_OAM_AFFINE_SUB_COUNT,
        HEAP_ID_DRAWING);

    signatureApp->spriteList = SpriteList_InitRendering(50, &signatureApp->g2DRenderer, HEAP_ID_DRAWING);

    SetSubScreenViewRect(&signatureApp->g2DRenderer, 0, 256 * FX32_ONE);

    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < MAX_SPRITE_RESOURCE_GEN4; resourceType++) {
        signatureApp->spriteResourceCollection[resourceType] = SpriteResourceCollection_New(2, resourceType, HEAP_ID_DRAWING);
    }

    signatureApp->spriteResources[0][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(signatureApp->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narc, done_button_NCGR_lz, TRUE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_DRAWING);
    signatureApp->spriteResources[0][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(signatureApp->spriteResourceCollection[SPRITE_RESOURCE_PLTT], narc, done_button_NCLR, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_DRAWING);
    signatureApp->spriteResources[0][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(signatureApp->spriteResourceCollection[SPRITE_RESOURCE_CELL], narc, done_button_cell_NCER_lz, TRUE, 0, SPRITE_RESOURCE_CELL, HEAP_ID_DRAWING);
    signatureApp->spriteResources[0][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(signatureApp->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narc, done_button_anim_NANR_lz, TRUE, 0, SPRITE_RESOURCE_ANIM, HEAP_ID_DRAWING);
    signatureApp->spriteResources[1][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(signatureApp->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narc, done_button_NCGR_lz, TRUE, 1, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_DRAWING);
    signatureApp->spriteResources[1][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(signatureApp->spriteResourceCollection[SPRITE_RESOURCE_PLTT], narc, done_button_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 3, HEAP_ID_DRAWING);
    signatureApp->spriteResources[1][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(signatureApp->spriteResourceCollection[SPRITE_RESOURCE_CELL], narc, done_button_cell_NCER_lz, TRUE, 1, SPRITE_RESOURCE_CELL, HEAP_ID_DRAWING);
    signatureApp->spriteResources[1][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(signatureApp->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narc, done_button_anim_NANR_lz, TRUE, 1, SPRITE_RESOURCE_ANIM, HEAP_ID_DRAWING);

    SpriteTransfer_RequestChar(signatureApp->spriteResources[0][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestChar(signatureApp->spriteResources[1][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttWholeRange(signatureApp->spriteResources[0][SPRITE_RESOURCE_PLTT]);
    SpriteTransfer_RequestPlttWholeRange(signatureApp->spriteResources[1][SPRITE_RESOURCE_PLTT]);
}

static const struct {
    u16 x;
    u16 y;
    u16 animID;
} sDoneButtonSpriteData[1] = {
    { .x = 224, .y = 175, .animID = DONE_BUTTON_ANIM_STATIC }
};

static void SignatureApp_InitButtonSprite(SignatureApp *signatureApp)
{
    SpriteResourcesHeader_Init(
        &signatureApp->dummyResourcesHeader,
        0,
        0,
        0,
        0,
        -1,
        -1,
        FALSE,
        0,
        signatureApp->spriteResourceCollection[SPRITE_RESOURCE_CHAR],
        signatureApp->spriteResourceCollection[SPRITE_RESOURCE_PLTT],
        signatureApp->spriteResourceCollection[SPRITE_RESOURCE_CELL],
        signatureApp->spriteResourceCollection[SPRITE_RESOURCE_ANIM],
        NULL,
        NULL);
    SpriteResourcesHeader_Init(
        &signatureApp->spriteResourcesHeader,
        1,
        1,
        1,
        1,
        -1,
        -1,
        FALSE,
        0,
        signatureApp->spriteResourceCollection[SPRITE_RESOURCE_CHAR],
        signatureApp->spriteResourceCollection[SPRITE_RESOURCE_PLTT],
        signatureApp->spriteResourceCollection[SPRITE_RESOURCE_CELL],
        signatureApp->spriteResourceCollection[SPRITE_RESOURCE_ANIM],
        NULL,
        NULL);

    AffineSpriteListTemplate template;

    template.list = signatureApp->spriteList;
    template.resourceData = &signatureApp->dummyResourcesHeader; // overwritten a few lines down
    template.position.z = 0;
    template.affineScale.x = FX32_ONE;
    template.affineScale.y = FX32_ONE;
    template.affineScale.z = FX32_ONE;
    template.affineZRotation = 0;
    template.priority = 1;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_DRAWING;
    template.resourceData = &signatureApp->spriteResourcesHeader;
    template.position.x = FX32_ONE * sDoneButtonSpriteData[0].x;
    template.position.y = FX32_ONE * sDoneButtonSpriteData[0].y;

    signatureApp->sprite[0] = SpriteList_AddAffine(&template);

    Sprite_SetAnimateFlag(signatureApp->sprite[0], TRUE);
    Sprite_SetAnim(signatureApp->sprite[0], sDoneButtonSpriteData[0].animID);
    Sprite_SetExplicitPalette(signatureApp->sprite[0], 0);

    Sprite_SetExplicitPriority(signatureApp->sprite[0], 2);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void *SignatureApp_PrintButtonText(Window *window, String *string, int yOffset, u8 fontID, TextColor color)
{
    int stringWidth = Font_CalcStringWidth(FONT_SUBSCREEN, string, 0);
    int xOffset = (window->width * TILE_WIDTH_PIXELS - stringWidth) / 2;

    Text_AddPrinterWithParamsAndColor(window, fontID, string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);

    return window->pixels;
}

static void SignatureApp_InitWindows(SignatureApp *signatureApp, ApplicationManager *appMan)
{
    Window_Add(signatureApp->bgConfig, &signatureApp->messageWindow, BG_LAYER_MAIN_0, 2, 1, MESSAGE_WINDOW_TILE_W, MESSAGE_WINDOW_TILE_H, 13, SIGNATURE_BASE_TILE_MESSAGE_WINDOW);
    Window_FillTilemap(&signatureApp->messageWindow, 15);
    Window_Add(signatureApp->bgConfig, &signatureApp->signatureWindow, BG_LAYER_MAIN_1, SIGNATURE_WINDOW_START_TILE_X, SIGNATURE_WINDOW_START_TILE_Y, SIGNATURE_WIDTH, SIGNATURE_HEIGHT, 1, 1);
    Window_FillTilemap(&signatureApp->signatureWindow, 2);
    Window_Add(signatureApp->bgConfig, &signatureApp->buttonWindow, BG_LAYER_MAIN_1, 26, 21, DONE_BUTTON_WIDTH, DONE_BUTTON_HEIGHT, 2, SIGNATURE_BASE_TILE_BUTTON_WINDOW);
    Window_FillTilemap(&signatureApp->buttonWindow, 0);

    void *pixels = SignatureApp_PrintButtonText(&signatureApp->buttonWindow, signatureApp->buttonText, 1, FONT_SUBSCREEN, TEXT_COLOR(14, 7, 2));

    DC_FlushRange(pixels, TILE_SIZE_4BPP * DONE_BUTTON_WIDTH * DONE_BUTTON_HEIGHT);

    for (int i = 0; i < 2; i++) {
        sub_02012C60(&signatureApp->buttonWindow, DONE_BUTTON_WIDTH / 2, DONE_BUTTON_HEIGHT, (DONE_BUTTON_WIDTH / 2) * i, 0, (char *)signatureApp->buttonPixelBuffer);
        DC_FlushRange(signatureApp->buttonPixelBuffer, TILE_SIZE_4BPP * (DONE_BUTTON_WIDTH / 2) * DONE_BUTTON_HEIGHT);
        GX_LoadOBJ(signatureApp->buttonPixelBuffer, i * TILE_SIZE_4BPP * (DONE_BUTTON_WIDTH / 2) * DONE_BUTTON_HEIGHT, TILE_SIZE_4BPP * (DONE_BUTTON_WIDTH / 2) * DONE_BUTTON_HEIGHT);
    }

    Window_Add(signatureApp->bgConfig, &signatureApp->descriptionWindow, BG_LAYER_MAIN_1, 2, 2, 28, 2, 13, SIGNATURE_BASE_TILE_BUTTON_WINDOW + DONE_BUTTON_WIDTH * DONE_BUTTON_HEIGHT);

    int stringWidth = Font_CalcStringWidth(FONT_MESSAGE, signatureApp->descriptionText, 0);
    int xOffset = (28 * TILE_WIDTH_PIXELS - stringWidth) / 2;

    Window_FillTilemap(&signatureApp->descriptionWindow, 0);
    Text_AddPrinterWithParamsAndColor(&signatureApp->descriptionWindow, FONT_MESSAGE, signatureApp->descriptionText, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    for (int i = 0; i < DUMMY_COUNT; i++) {
        Window_Add(signatureApp->bgConfig, &signatureApp->dummyWindows[i], BG_LAYER_SUB_0, 5, 3 + i * 4, 10, 2, 13, 1 + i * 20);
        Window_FillTilemap(&signatureApp->dummyWindows[i], 0);
    }

    SignatureApp_Dummy3(signatureApp->dummyWindows, 0, TEXT_COLOR(14, 13, 15), signatureApp);
}

static void SignatureApp_RemoveWindows(SignatureApp *signatureApp)
{
    for (int i = 0; i < DUMMY_COUNT; i++) {
        Window_Remove(&signatureApp->dummyWindows[i]);
    }

    Window_Remove(&signatureApp->descriptionWindow);
    Window_Remove(&signatureApp->buttonWindow);
    Window_Remove(&signatureApp->signatureWindow);
    Window_Remove(&signatureApp->messageWindow);
}

static void SignatureApp_Dummy(SignatureApp *unused)
{
    return;
}

static const TouchScreenRect sDoneTouchRect[] = {
    { .rect = { .top = 150, .bottom = 189, .left = 192, .right = 255 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 },
    // these never get read
    { .rect = { .top = 150, .bottom = 189, .left = 0, .right = 95 } },
    { .rect = { .top = 150, .bottom = 189, .left = 96, .right = 191 } }
};

static const TouchScreenRect sSignatureTouchRect[] = {
    { .rect = { .top = 72, .bottom = 136, .left = 32, .right = 224 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static void SignatureApp_HandleTouchInput(SignatureApp *signatureApp)
{
    int touchedIndex = TouchScreen_CheckRectanglePressed(sDoneTouchRect);

    if (touchedIndex != TOUCHSCREEN_INPUT_NONE) {
        if (touchedIndex == 0) {
            if (signatureApp->subState == SIGNATURE_APP_SUBSTATE_MAIN) {
                SignatureApp_PrintMessage(signatureApp, Drawing_Text_IsThisOK);
                signatureApp->subState = SIGNATURE_APP_SUBSTATE_DONE_PRESSED;
                SignatureApp_AnimateDoneButton(signatureApp->sprite, TRUE);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            }
        } else {
            // impossible to hit this case
            signatureApp->brushTypeUnused = touchedIndex;
            SignatureApp_AnimateButtonsUnused(signatureApp->sprite, touchedIndex);
        }
    }

    int heldIndex = TouchScreen_CheckRectangleHeld(sSignatureTouchRect);

    if (heldIndex != TOUCHSCREEN_INPUT_NONE) {
        SignatureApp_HandleDrawingSoundEffects(signatureApp);
    }

    TouchPadDataBuffer tpBuffer;

    if (WriteAutoSamplingDataToBuffer(&tpBuffer, TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ALL_DATA_WITHOUT_WRAPPING, 1) == AUTO_SAMPLING_OPERATION_RESULT_SUCCESS) {
        for (int i = 0; i < tpBuffer.bufferSize; i++) {
            signatureApp->touchDataBuffer.x[i] = tpBuffer.buffer[i].x;
            signatureApp->touchDataBuffer.y[i] = tpBuffer.buffer[i].y;
        }

        signatureApp->touchDataBuffer.bufferSize = tpBuffer.bufferSize;
        signatureApp->touchDataBuffer.brushTypeUnused = signatureApp->brushTypeUnused;
    }
}

static void SignatureApp_AnimateButtonsUnused(Sprite **buttonSprites, int pressedButtonIndex)
{
    for (int i = 0; i < 1; i++) {
        if (i == pressedButtonIndex) {
            Sprite_SetAnim(buttonSprites[i], sDoneButtonSpriteData[i].animID + 1);
        } else {
            Sprite_SetAnim(buttonSprites[i], sDoneButtonSpriteData[i].animID);
        }
    }
}

static void SignatureApp_AnimateDoneButton(Sprite **buttonSprite, BOOL isPressed)
{
    if (isPressed == TRUE) {
        Sprite_SetAnim(buttonSprite[0], sDoneButtonSpriteData[0].animID + 1);
    } else {
        Sprite_SetAnim(buttonSprite[0], sDoneButtonSpriteData[0].animID);
    }
}

static int SignatureApp_MainLoop(SignatureApp *signatureApp, int state)
{
    SignatureApp_HandleTouchInput(signatureApp);
    SignatureApp_Dummy3(signatureApp->dummyWindows, 0, TEXT_COLOR(14, 12, 15), signatureApp);
    SignatureApp_CopyTouchData(signatureApp);
    SignatureApp_Dummy2(signatureApp);
    SignatureApp_DrawSignature(&signatureApp->signatureWindow, signatureApp->touchDataBuffers, signatureApp->prevTouchData, TRUE);

    return state;
}

// this doesn't seem to do anything of value since it's only called in places where the signature can't be updated
static void SignatureApp_UpdateSignatureData(SignatureApp *signatureApp)
{
    SignatureApp_Dummy(signatureApp);
    SignatureApp_Dummy2(signatureApp);
    SignatureApp_DrawSignature(&signatureApp->signatureWindow, signatureApp->touchDataBuffers, signatureApp->prevTouchData, FALSE);
}

static void SignatureApp_OpenYesNoMenu(BgConfig *bgConfig, YesNoTouchMenu *menu)
{
    YesNoTouchMenuParams params;

    params.bgConfig = bgConfig;
    params.bgLayer = BG_LAYER_MAIN_0;
    params.baseTile = SIGNATURE_BASE_TILE_MESSAGE_WINDOW + MESSAGE_WINDOW_TILE_COUNT + 32;
    params.palette = 8;
    params.tilemapLeft = 25;
    params.tilemapTop = 6;

    YesNoTouchMenu_InitWithParams(menu, &params);
}

static int SignatureApp_OpenConfirmDoneMenu(SignatureApp *signatureApp, int state)
{
    if (SignatureApp_IsPrinterDone(signatureApp->printerID)) {
        SignatureApp_OpenYesNoMenu(signatureApp->bgConfig, signatureApp->yesNoMenu);

        signatureApp->subState = SIGNATURE_APP_SUBSTATE_CONFIRM_DONE;
    }

    SignatureApp_UpdateSignatureData(signatureApp);
    return state;
}

static int SignatureApp_ConfirmDone(SignatureApp *signatureApp, int state)
{
    int input = YesNoTouchMenu_ProcessInput(signatureApp->yesNoMenu);

    switch (input) {
    case YES_NO_TOUCH_MENU_YES:
        GameRecords_IncrementTrainerScore(signatureApp->records, TRAINER_SCORE_EVENT_SIGNED_TRAINER_CARD);
        GameRecords_IncrementRecordValue(signatureApp->records, RECORD_TIMES_SIGNED_TRAINER_CARD);
        Window_EraseMessageBox(&signatureApp->messageWindow, TRUE);
        YesNoTouchMenu_Reset(signatureApp->yesNoMenu);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 16, 1, HEAP_ID_DRAWING);
        return SIGNATURE_APP_STATE_EXIT_AFTER_FADE;
    case YES_NO_TOUCH_MENU_NO:
        signatureApp->subState = SIGNATURE_APP_SUBSTATE_PROMPT_RESET;
        SignatureApp_AnimateDoneButton(signatureApp->sprite, FALSE);
        Window_EraseMessageBox(&signatureApp->messageWindow, TRUE);
        YesNoTouchMenu_Reset(signatureApp->yesNoMenu);
        break;
    }

    signatureApp->touchDataBuffer.bufferSize = 0;
    SignatureApp_UpdateSignatureData(signatureApp);

    return state;
}

static int SignatureApp_ConfirmReset(SignatureApp *signatureApp, int state)
{
    int input = YesNoTouchMenu_ProcessInput(signatureApp->yesNoMenu);

    switch (input) {
    case YES_NO_TOUCH_MENU_YES:
        signatureApp->subState = SIGNATURE_APP_SUBSTATE_MAIN;
        Window_EraseMessageBox(&signatureApp->messageWindow, TRUE);
        YesNoTouchMenu_Reset(signatureApp->yesNoMenu);
        Window_FillTilemap(&signatureApp->signatureWindow, 2);
        Window_CopyToVRAM(&signatureApp->signatureWindow);
        break;
    case YES_NO_TOUCH_MENU_NO:
        signatureApp->subState = SIGNATURE_APP_SUBSTATE_MAIN;
        Window_EraseMessageBox(&signatureApp->messageWindow, TRUE);
        YesNoTouchMenu_Reset(signatureApp->yesNoMenu);
        break;
    }

    return state;
}

static int SignatureApp_PrintResetPrompt(SignatureApp *signatureApp, int state)
{
    SignatureApp_PrintMessage(signatureApp, Drawing_Text_RedoAutographPrompt);
    signatureApp->subState = SIGNATURE_APP_SUBSTATE_OPEN_RESET_MENU;
    SignatureApp_UpdateSignatureData(signatureApp);

    return state;
}

static int SignatureApp_OpenConfirmResetMenu(SignatureApp *signatureApp, int state)
{
    if (SignatureApp_IsPrinterDone(signatureApp->printerID)) {
        signatureApp->subState = SIGNATURE_APP_SUBSTATE_CONFIRM_RESET;
        SignatureApp_OpenYesNoMenu(signatureApp->bgConfig, signatureApp->yesNoMenu);
    }

    SignatureApp_UpdateSignatureData(signatureApp);
    return state;
}

// clang-format off
// because this is 4bpp and a width of 4 pixels is specified in DrawLine, the rightmost 2 columns in these entries are ignored
static const u8 sBrushData[2][8][16] = {
    {
        { // this entry is the only used one
            0x00, 0x00, 0x00, 0x00,
            0x10, 0x01, 0x00, 0x00,
            0x10, 0x01, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
        },
        {
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
        },
    },
    {
        {
            0x00, 0x00, 0x11, 0x11,
            0x10, 0x01, 0x10, 0x11,
            0x10, 0x01, 0x11, 0x11,
            0x00, 0x00, 0x00, 0x00,
        },
        {
            0x00, 0x00, 0x22, 0x22,
            0x20, 0x02, 0x22, 0x22,
            0x20, 0x02, 0x22, 0x22,
            0x00, 0x00, 0x00, 0x00,
        },
    },
};
// clang-format on

static void SignatureApp_BlitBitmapRect(Window *window, void *src, int srcX, int srcY, int srcWidth, int srcHeight, int destX, int destY, int destWidth, int destHeight)
{
    if (destX < 0) {
        int delta = -destX;

        if (delta > destWidth) {
            delta = destWidth;
        }

        destX = 0;
        srcX += delta;
        srcWidth -= delta;
        destWidth -= delta;
    }

    if (destY < 0) {
        int delta = -destY;

        if (delta > destHeight) {
            delta = destHeight;
        }

        destY = 0;
        srcY += delta;
        srcHeight -= delta;
        destHeight -= delta;
    }

    Window_BlitBitmapRect(window, src, srcX, srcY, srcWidth, srcHeight, destX, destY, destWidth, destHeight);
}

static void SignatureApp_DrawLine(Window *window, const u8 *src, int endX, int endY, int *startX, int *startY, int index, int prevBufferSize)
{
    int destX = *startX;
    int destY = *startY;
    int maxX = endX;
    int maxY = endY;

    if (index == 0 && prevBufferSize == 0) {
        *startX = endX;
        *startY = endY;
        return;
    }

    int xDistance = MATH_IAbs(maxX - destX);
    int yDistance = MATH_IAbs(maxY - destY);

    int tmp;

    if (xDistance > yDistance) {
        int deltaY;
        if (destX > maxX) {
            deltaY = destY > maxY ? 1 : -1;
            tmp = destX;
            destX = maxX;
            maxX = tmp;
            destY = maxY;
        } else {
            deltaY = destY < maxY ? 1 : -1;
        }

        SignatureApp_BlitBitmapRect(window, (void *)src, 0, 0, 4, 4, destX, destY, 4, 4);
        int distanceUntilYChange = xDistance >> 1;

        while (++destX <= maxX) {
            if ((distanceUntilYChange -= yDistance) < 0) {
                distanceUntilYChange += xDistance;
                destY += deltaY;
            }

            SignatureApp_BlitBitmapRect(window, (void *)src, 0, 0, 4, 4, destX, destY, 4, 4);
        }
    } else {
        int deltaX;
        if (destY > maxY) {
            deltaX = destX > maxX ? 1 : -1;
            tmp = destY;
            destY = maxY;
            maxY = tmp;
            destX = maxX;
        } else {
            deltaX = destX < maxX ? 1 : -1;
        }

        SignatureApp_BlitBitmapRect(window, (void *)src, 0, 0, 4, 4, destX, destY, 4, 4);
        int distanceUntilXChange = yDistance >> 1;

        while (++destY <= maxY) {
            if ((distanceUntilXChange -= xDistance) < 0) {
                distanceUntilXChange += yDistance;
                destX += deltaX;
            }

            SignatureApp_BlitBitmapRect(window, (void *)src, 0, 0, 4, 4, destX, destY, 4, 4);
        }
    }

    *startX = endX;
    *startY = endY;
}

static void SignatureApp_UpdatePreviousTouchData(SignatureTouchDataBuffer *touchData, PreviousTouchDataBuffer *prevTouchData)
{
    for (int i = 0; i < DUMMY_COUNT; i++) {
        prevTouchData[i].bufferSize = touchData[i].bufferSize;

        if (touchData[i].bufferSize != 0) {
            prevTouchData[i].lastX = touchData[i].x[touchData[i].bufferSize - 1];
            prevTouchData[i].lastY = touchData[i].y[touchData[i].bufferSize - 1];
        }
    }
}

static void SignatureApp_DrawSignature(Window *window, SignatureTouchDataBuffer touchData[], PreviousTouchDataBuffer *prevTouchData, BOOL allowWindowUpdate)
{
    int i;
    BOOL windowUpdate = FALSE;

    for (i = 0; i < DUMMY_COUNT; i++) {
        if (touchData[i].bufferSize != 0) {
            int prevX, prevY;
            if (prevTouchData[i].bufferSize) {
                prevX = prevTouchData[i].lastX - SIGNATURE_WINDOW_START_TILE_X * TILE_WIDTH_PIXELS;
                prevY = prevTouchData[i].lastY - SIGNATURE_WINDOW_START_TILE_Y * TILE_HEIGHT_PIXELS;
            }

            for (int j = 0; j < touchData[i].bufferSize; j++) {
                int x = touchData[i].x[j] - SIGNATURE_WINDOW_START_TILE_X * TILE_WIDTH_PIXELS;
                int y = touchData[i].y[j] - SIGNATURE_WINDOW_START_TILE_Y * TILE_HEIGHT_PIXELS;

                SignatureApp_DrawLine(window, sBrushData[0][touchData[i].brushTypeUnused], x, y, &prevX, &prevY, j, prevTouchData[i].bufferSize);

                windowUpdate = TRUE;
            }
        }
    }

    if (windowUpdate && allowWindowUpdate) {
        Window_CopyToVRAM(window);
    }

    SignatureApp_UpdatePreviousTouchData(touchData, prevTouchData);

    for (i = 0; i < DUMMY_COUNT; i++) {
        touchData[i].bufferSize = 0;
    }
}

static void SignatureApp_Dummy2(SignatureApp *unused)
{
    return;
}

// this causes a palette slot to slowly transition between red and yellow, but nothing actually reads from that slot
static void SignatureApp_GlowEffectUnused(u16 *degrees)
{
    *degrees += 20;

    if (*degrees > 360) {
        *degrees = 0;
    }

    int greenValue = CalcSineDegrees_Wraparound(*degrees) * 10 / FX32_ONE + 15;
    GXRgb rgb = GX_RGB(29, greenValue, 0);

    GX_LoadOBJPltt(&rgb, 12 * sizeof(u16), sizeof(GXRgb));
}

static void SignatureApp_Dummy3(Window *unused0, int unused1, TextColor unused2, SignatureApp *unused3)
{
    return;
}

static void SignatureApp_CopyTouchData(SignatureApp *signatureApp)
{
    signatureApp->touchDataBuffers[0] = signatureApp->touchDataBuffer;
}

static void SignatureApp_PrintMessage(SignatureApp *signatureApp, int bankEntry)
{
    String *fmtString = String_Init(40 * 2, HEAP_ID_DRAWING);

    MessageLoader_GetString(signatureApp->loader, bankEntry, fmtString);
    StringTemplate_Format(signatureApp->template, signatureApp->messageText, fmtString);
    String_Free(fmtString);
    Window_FillTilemap(&signatureApp->messageWindow, 15);
    Window_DrawMessageBoxWithScrollCursor(&signatureApp->messageWindow, FALSE, 1, 10);

    signatureApp->printerID = Text_AddPrinterWithParams(&signatureApp->messageWindow, FONT_MESSAGE, signatureApp->messageText, 0, 0, Options_TextFrameDelay(signatureApp->options), NULL);
}

static int SignatureApp_IsPrinterDone(int printerID)
{
    return !Text_IsPrinterActive(printerID);
}

static void SignatureApp_ConvertSignature4BppTo1Bpp(u8 *signature1BppOut, u8 *signature4Bpp)
{
    int bytesWritten = 0;
    int bitIndex = 0;
    *signature1BppOut = 0;

    for (int i = 0; i < SIGNATURE_WIDTH * SIGNATURE_HEIGHT * TILE_SIZE_4BPP; i++) {
        int pixel = signature4Bpp[i] & 0xF;

        if (pixel == 1) {
            *signature1BppOut |= (1 << bitIndex);
        }

        bitIndex++;
        pixel = signature4Bpp[i] >> 4;

        if (pixel == 1) {
            *signature1BppOut |= (1 << bitIndex);
        }

        bitIndex++;

        if (bitIndex == 8) {
            bytesWritten++;
            signature1BppOut++;
            *signature1BppOut = 0;
            bitIndex = 0;
        }

        // should be checking for SIGNATURE_WIDTH * SIGNATURE_HEIGHT * TILE_SIZE_1BPP here, but this check doesn't do anything either way
        if (bytesWritten >= SIGNATURE_WIDTH * SIGNATURE_HEIGHT * TILE_SIZE_4BPP) {
            GF_ASSERT(FALSE);
        }
    }
}

static void SignatureApp_HandleDrawingSoundEffects(SignatureApp *signatureApp)
{
    int distance;

    if (gSystem.touchX != (u16)TOUCHSCREEN_INPUT_NONE && gSystem.touchY != (u16)TOUCHSCREEN_INPUT_NONE && signatureApp->lastTouchedX != (u16)TOUCHSCREEN_INPUT_NONE && signatureApp->lastTouchedY != (u16)TOUCHSCREEN_INPUT_NONE) {
        if (signatureApp->lastTouchedX > gSystem.touchX) {
            distance = signatureApp->lastTouchedX - gSystem.touchX;
            signatureApp->drawingState.currentXDirection = -1;
        } else {
            distance = gSystem.touchX - signatureApp->lastTouchedX;
            signatureApp->drawingState.currentXDirection = 1;
        }

        if (3 <= distance && distance <= 40) {
            if (signatureApp->lastTouchedY > gSystem.touchY) {
                distance = signatureApp->lastTouchedY - gSystem.touchY;
                signatureApp->drawingState.currentYDirection = -1;
            } else {
                distance = gSystem.touchY - signatureApp->lastTouchedY;
                signatureApp->drawingState.currentYDirection = 1;
            }

            if (distance <= 40) {
                SignatureApp_PlayDrawingSoundEffect(&signatureApp->drawingState);
            }
        } else if (distance <= 40) {
            if (signatureApp->lastTouchedY > gSystem.touchY) {
                distance = signatureApp->lastTouchedY - gSystem.touchY;
                signatureApp->drawingState.currentYDirection = -1;
            } else {
                distance = gSystem.touchY - signatureApp->lastTouchedY;
                signatureApp->drawingState.currentYDirection = 1;
            }

            if (3 <= distance && distance <= 40) {
                SignatureApp_PlayDrawingSoundEffect(&signatureApp->drawingState);
            }
        }
    }

    signatureApp->lastTouchedX = gSystem.touchX;
    signatureApp->lastTouchedY = gSystem.touchY;
}

static void SignatureApp_PlayDrawingSoundEffect(DrawingState *drawingState)
{
    if (drawingState->previousXDirection == 0 && drawingState->previousYDirection == 0) {
        if (!Sound_IsEffectPlaying(SEQ_SE_DP_KYU01)) {
            Sound_PlayEffect(SEQ_SE_DP_KYU01);
        }
    }

    if (drawingState->previousXDirection * drawingState->currentXDirection < 0 || drawingState->previousYDirection * drawingState->currentYDirection < 0) {
        if (!Sound_IsEffectPlaying(SEQ_SE_DP_KYU01)) {
            Sound_PlayEffect(SEQ_SE_DP_KYU01);
        }
    }

    drawingState->previousXDirection = drawingState->currentXDirection;
    drawingState->previousYDirection = drawingState->currentYDirection;
    drawingState->currentXDirection = 0;
    drawingState->currentYDirection = 0;
}
