#include "overlay094/screens/main_menu.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/screens/wfc_init.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "strbuf.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020393C8.h"

#include "res/text/bank/gts.h"

static void GTSApplication_MainMenu_InitBackground(BgConfig *bgConfig);
static void GTSApplication_MainMenu_CleanupBackground(BgConfig *bgConfig);
static void GTSApplication_MainMenu_InitGraphics(GTSApplicationState *appState);
static void GTSApplication_MainMenu_InitCursor(GTSApplicationState *appState);
static void GTSApplication_MainMenu_DeleteCursor(GTSApplicationState *appState);
static void GTSApplication_MainMenu_CreateMenu(GTSApplicationState *appState);
static void GTSApplication_MainMenu_CleanupWindows(GTSApplicationState *appState);
static void GTS_MainMenu_LoadTitle(GTSApplicationState *appState);
static void GTSApplication_MainMenu_CleanupStrings(GTSApplicationState *appState);
static int GTSApplication_MainMenu_WaitUntilFinishedMoving(GTSApplicationState *appState);
static int ov94_0223CB90(GTSApplicationState *appState);
static int ov94_0223CBA0(GTSApplicationState *appState);
static int ov94_0223CBC4(GTSApplicationState *appState);
static int ov94_0223CBD8(GTSApplicationState *appState);
static int GTSApplication_MainMenu_SetupBottomWindowQuestion(GTSApplicationState *appState);
static int GTSApplication_MainMenu_HandleInput(GTSApplicationState *appState);
static int GTSApplication_MainMenu_FadeAndExit(GTSApplicationState *appState);
static int ov94_0223CE5C(GTSApplicationState *appState);
static int ov94_0223CE7C(GTSApplicationState *appState);
static int GTSApplication_MainMenu_WaitForTextPrinter(GTSApplicationState *appState);
static int ov94_0223CF08(GTSApplicationState *appState);
static int ov94_0223CDD8(GTSApplicationState *appState);
static int ov94_0223CE00(GTSApplicationState *appState);
static void GTSApplication_MainMenu_RenderMenuButtons(GTSApplicationState *appState);
static void GTSApplication_MainMenu_SetBottomWindowText(GTSApplicationState *appState, int messageId, int textSpeed, int unused3, u16 unused4);
static void ov94_0223CFD8(GTSApplicationState *appState, int messageId, int textSpeed, int unused3, u16 unused4);
static void ov94_0223C85C(GTSApplicationState *appState);

static int (*sGTSMainMenuScreenStates[])(GTSApplicationState *) = {
    GTSApplication_MainMenu_WaitUntilFinishedMoving, // GTSApplication_SetNextScreenWithArgument(appState, 7, 11); returns to #9
    ov94_0223CB90, // set currentScreenInstruction to 10 and unk_30 to 2
    ov94_0223CBA0, // start screen fade, set currentScreenInstruction to 3
    ov94_0223CBC4, // set currentScreenInstruction to 5 when screen fade is done, return 3
    ov94_0223CBD8, // set currentScreenInstruction to 5 when screen fade is done, return 3
    GTSApplication_MainMenu_SetupBottomWindowQuestion, // are you seeking or offering a pokemon?
    GTSApplication_MainMenu_HandleInput,
    ov94_0223CDD8,
    ov94_0223CE00,
    GTSApplication_MainMenu_FadeAndExit,
    GTSApplication_MainMenu_WaitForTextPrinter,
    ov94_0223CF08,
    ov94_0223CE5C,
    ov94_0223CE7C
};

int GTSApplication_MainMenu_Init(GTSApplicationState *appState, int unused1)
{
    GTS_MainMenu_LoadTitle(appState);
    GTSApplication_MainMenu_InitBackground(appState->bgConfig);
    GTSApplication_MainMenu_InitGraphics(appState);
    GTSApplication_MainMenu_CreateMenu(appState);
    GTSApplication_MainMenu_InitCursor(appState);
    ov94_02245934(appState); // some kind of networking init?
    GTSApplication_MainMenu_RenderMenuButtons(appState);

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_23, SEQ_BLD_BLD_GTC, 1);

    if (appState->hasPlayerDescended == FALSE) {
        ov94_0223C85C(appState);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);

        appState->currentScreenInstruction = 0;
        appState->hasPlayerDescended = TRUE;

        ov94_02243FA8(appState, TrainerInfo_Gender(appState->playerData->trainerInfo));
    } else {
        if (appState->fadeBothScreens == 1) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
        } else {
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
        }

        appState->currentScreenInstruction = 5;
    }

    appState->fadeBothScreens = 0;
    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_MainMenu_Main(GTSApplicationState *appState, int unused1)
{
    NetworkIcon_SetStrength(GTSApplication_GetNetworkStrength());

    return (*sGTSMainMenuScreenStates[appState->currentScreenInstruction])(appState);
}

int GTSApplication_MainMenu_Exit(GTSApplicationState *appState, int unused1)
{
    NetworkIcon_Destroy();

    GTSApplication_MainMenu_DeleteCursor(appState);
    GTSApplication_MainMenu_CleanupStrings(appState);
    GTSApplication_MainMenu_CleanupWindows(appState);
    GTSApplication_MainMenu_CleanupBackground(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return GTS_LOOP_STATE_INIT;
}

static void GTSApplication_MainMenu_InitBackground(BgConfig *bgConfig)
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
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x00000,
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
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &main1Template, BG_TYPE_STATIC);

    BgTemplate main2Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
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
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x10000,
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
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &sub1Template, BG_TYPE_STATIC);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, HEAP_ID_62);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void GTSApplication_MainMenu_CleanupBackground(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void ov94_0223C85C(GTSApplicationState *appState)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
    Sprite_SetDrawFlag(appState->cursorSprite, FALSE);
}

static void GTSApplication_MainMenu_InitGraphics(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(narc, 4, PAL_LOAD_MAIN_BG, 0, PALETTE_SIZE_BYTES * 3, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), HEAP_ID_62);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, 1 + (18 + 12), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 14, bgConfig, BG_LAYER_MAIN_1, 0, 16 * 6 * 0x20, TRUE, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 30, bgConfig, BG_LAYER_MAIN_1, 0, 32 * 24 * 2, TRUE, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 29, bgConfig, BG_LAYER_MAIN_2, 0, 32 * 24 * 2, TRUE, HEAP_ID_62);

    ov94_0223D068(appState);

    NARC_dtor(narc);
}

static const u16 sMainMenuCursorPositions[][2] = {
    { 50, 56 },
    { 50, 96 },
    { 50, 136 }
};

static void GTSApplication_MainMenu_InitCursor(GTSApplicationState *appState)
{
    AffineSpriteListTemplate template;

    GTSApplication_InitAffineTemplate(&template, appState, &appState->cursorSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

    template.position.x = FX32_ONE * sMainMenuCursorPositions[appState->mainMenuSelectedOption][0];
    template.position.y = FX32_ONE * sMainMenuCursorPositions[appState->mainMenuSelectedOption][1];

    appState->cursorSprite = SpriteList_AddAffine(&template);

    Sprite_SetAnimateFlag(appState->cursorSprite, TRUE);
    Sprite_SetAnim(appState->cursorSprite, 1);
}

static void GTSApplication_MainMenu_DeleteCursor(GTSApplicationState *appState)
{
    Sprite_Delete(appState->cursorSprite);
}

static void GTSApplication_MainMenu_CreateMenu(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->unk_F7C, 0, 1, 1, 28, 2, 13, (1 + (18 + 12)) + 9);
    Window_FillTilemap(&appState->unk_F7C, 0x0);
    Text_AddPrinterWithParamsAndColor(&appState->unk_F7C, FONT_MESSAGE, appState->title, 0, 2, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 4, 0), NULL);

    for (int i = 0; i < 3; i++) {
        Window_Add(appState->bgConfig, &appState->unk_F9C[i], 1, 9, 6 + i * 5, 15, 2, 13, (16 * 6 + 1) + (15 * 2) * i);
        Window_FillTilemap(&appState->unk_F9C[i], 0x0);
    }

    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, ((1 + (18 + 12)) + 9) + 28 * 2);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_Add(appState->bgConfig, &appState->unk_109C, 0, 2, 19, 27, 4, 13, (((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2);
    Window_FillTilemap(&appState->unk_109C, 0xf0f);
}

static void GTSApplication_MainMenu_CleanupWindows(GTSApplicationState *appState)
{
    Window_Remove(&appState->unk_109C);
    Window_Remove(&appState->bottomInstructionWindow);

    for (int i = 0; i < 3; i++) {
        Window_Remove(&appState->unk_F9C[i]);
    }

    Window_Remove(&appState->unk_F7C);
}

static void GTS_MainMenu_LoadTitle(GTSApplicationState *appState)
{
    appState->genericMessageBuffer = Strbuf_Init(90 * 2, HEAP_ID_62);
    appState->title = MessageLoader_GetNewStrbuf(appState->gtsMessageLoader, GTS_Text_MainMenu_Title);
}

static void GTSApplication_MainMenu_CleanupStrings(GTSApplicationState *appState)
{
    Strbuf_Free(appState->genericMessageBuffer);
    Strbuf_Free(appState->title);
}

static int GTSApplication_MainMenu_WaitUntilFinishedMoving(GTSApplicationState *appState)
{
    if (appState->hasAvatarFinishedMoving) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);

        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_CHECK_SERVER);

        appState->returnAfterNetworkScreen = GTS_SCREEN_MAIN_MENU;
        appState->currentScreenInstruction = 9;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223CB90(GTSApplicationState *appState)
{
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 10, 2);
    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223CBA0(GTSApplicationState *appState)
{
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
    appState->currentScreenInstruction = 3;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223CBC4(GTSApplicationState *appState)
{
    if (IsScreenFadeDone()) {
        appState->currentScreenInstruction = 5;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223CBD8(GTSApplicationState *appState)
{
    if (IsScreenFadeDone()) {
        appState->currentScreenInstruction = 5;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_MainMenu_SetupBottomWindowQuestion(GTSApplicationState *appState)
{
    GTSApplication_MainMenu_SetBottomWindowText(appState, GTS_Text_AreYouSeekingOrOfferingAPokemon, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 10, 6);
    Sprite_SetAnimateFlag(appState->cursorSprite, TRUE);
    GTSApplicationState_StartCountingBoxPokemon(appState);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_MainMenu_HandleInput(GTSApplicationState *appState)
{
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        ov94_0223CFD8(appState, GTS_Text_IsItOKToDisconnect, GTSApplicationState_GetTextFrameDelay(appState), 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, 10, 12);
        Sprite_SetAnimateFlag(appState->cursorSprite, FALSE);
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        switch (appState->mainMenuSelectedOption) {
        case 0: // deposit pokemon
            if (appState->isPokemonListed == FALSE) {
                GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SELECT_POKEMON, SCREEN_ARGUMENT_5);
                appState->currentScreenInstruction = 9;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            } else {
                if (appState->networkTimer == 0) {
                    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_CHECK_SERVER);
                    appState->returnAfterNetworkScreen = GTS_SCREEN_LISTING;
                    appState->currentScreenInstruction = 9;
                    appState->networkTimer = (60 * 30);
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                } else {
                    Sprite_SetAnimateFlag(appState->cursorSprite, FALSE);
                    GTSApplication_MainMenu_SetBottomWindowText(appState, GTS_Text_PleaseWaitAWhile, TEXT_SPEED_FAST, 0, 0xf0f);
                    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 11, 5);
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                    appState->frameDelay = 0;
                }
            }
            break;
        case 1: // seek pokemon
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SEARCH, SCREEN_ARGUMENT_0);
            appState->currentScreenInstruction = 9;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        case 2: // exit
            ov94_0223CFD8(appState, GTS_Text_IsItOKToDisconnect, GTSApplicationState_GetTextFrameDelay(appState), 0, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, 10, 12);
            Sprite_SetAnimateFlag(appState->cursorSprite, FALSE);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        }
    } else if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (appState->mainMenuSelectedOption != 0) {
            appState->mainMenuSelectedOption--;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            GTSApplication_SetSpritePosition(appState->cursorSprite, sMainMenuCursorPositions[appState->mainMenuSelectedOption][0], sMainMenuCursorPositions[appState->mainMenuSelectedOption][1]);
        }
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (appState->mainMenuSelectedOption < 2) {
            appState->mainMenuSelectedOption++;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            GTSApplication_SetSpritePosition(appState->cursorSprite, sMainMenuCursorPositions[appState->mainMenuSelectedOption][0], sMainMenuCursorPositions[appState->mainMenuSelectedOption][1]);
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223CDD8(GTSApplicationState *appState)
{
    ov94_022440B8(appState, TrainerInfo_Gender(appState->playerData->trainerInfo));

    appState->currentScreenInstruction = 8;
    appState->hasAvatarFinishedMoving = FALSE;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223CE00(GTSApplicationState *appState)
{
    if (appState->hasAvatarFinishedMoving) {
        appState->currentScreenInstruction = 9;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_MainMenu_FadeAndExit(GTSApplicationState *appState)
{
    if (appState->nextScreen == GTS_SCREEN_WFC_INIT) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    }

    appState->currentScreenInstruction = 0;

    return GTS_LOOP_STATE_FINISH;
}

static int ov94_0223CE5C(GTSApplicationState *appState)
{
    appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 27 * 4);
    appState->currentScreenInstruction = 13;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223CE7C(GTSApplicationState *appState)
{
    int input = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (input != 0xffffffff) {
        if (input == 0xfffffffe) {
            Window_EraseMessageBox(&appState->unk_109C, 1);
            Window_ClearAndCopyToVRAM(&appState->unk_109C);
            Sprite_SetAnimateFlag(appState->cursorSprite, TRUE);
            appState->currentScreenInstruction = 5;
        } else {
            Window_EraseMessageBox(&appState->unk_109C, 1);
            Window_ClearAndCopyToVRAM(&appState->unk_109C);
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_0);
            appState->currentScreenInstruction = 7;
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_MainMenu_WaitForTextPrinter(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223CF08(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->frameDelay++;

        if (appState->frameDelay > 45) {
            appState->frameDelay = 0;
            appState->currentScreenInstruction = appState->nextScreenInstruction;
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static const int sGTSMainMenuOptions[][3] = {
    { GTS_Text_DepositPokemon, GTS_Text_SeekPokemon, GTS_Text_Exit },
    { GTS_Text_Summary, GTS_Text_SeekPokemon, GTS_Text_Exit }
};

static void GTSApplication_MainMenu_RenderMenuButtons(GTSApplicationState *appState)
{
    int isPokemonListed = appState->isPokemonListed;

    for (int i = 0; i < 3; i++) {
        GTSApplication_MainMenu_RenderButton(&appState->unk_F9C[i], appState->gtsMessageLoader, sGTSMainMenuOptions[isPokemonListed][i], 0xf0f);
        Window_CopyToVRAM(&appState->unk_F9C[i]);
    }
}

static void GTSApplication_MainMenu_SetBottomWindowText(GTSApplicationState *appState, int messageId, int textSpeed, int unused3, u16 unused4)
{
    MessageLoader_GetStrbuf(appState->gtsMessageLoader, messageId, appState->genericMessageBuffer);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->bottomInstructionWindow, FALSE, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->bottomInstructionWindow, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, textSpeed, NULL);
}

static void ov94_0223CFD8(GTSApplicationState *appState, int messageId, int textSpeed, int unused3, u16 unused4)
{
    MessageLoader_GetStrbuf(appState->gtsMessageLoader, messageId, appState->genericMessageBuffer);
    Window_FillTilemap(&appState->unk_109C, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->unk_109C, FALSE, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->unk_109C, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, textSpeed, NULL);
}

void GTSApplication_MainMenu_RenderButton(Window *window, MessageLoader *gtsMessageLoader, int messageId, u16 tile)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(gtsMessageLoader, messageId);

    Window_FillTilemap(window, tile);
    Text_AddPrinterWithParams(window, FONT_MESSAGE, strbuf, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Strbuf_Free(strbuf);
}

void ov94_0223D068(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__WORLDTRADE, 5, 4, 0, 16 * 16 * 2, HEAP_ID_62);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 15, bgConfig, 5, 0, 32 * 21 * 0x40, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 31, bgConfig, 5, 0, 32 * 24 * 2, 1, HEAP_ID_62);
}
