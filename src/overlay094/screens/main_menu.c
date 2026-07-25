#include "overlay094/screens/main_menu.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/application.h"
#include "overlay094/avatar.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/screens/wfc_init.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "network_icon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "string_gf.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"

#include "res/text/bank/gts.h"

static void GTSMainMenu_InitBgLayers(BgConfig *bgConfig);
static void GTSMainMenu_FreeBgLayers(BgConfig *bgConfig);
static void GTSMainMenu_InitGraphics(GTSApplicationState *appState);
static void GTSMainMenu_InitCursor(GTSApplicationState *appState);
static void GTSMainMenu_DeleteCursor(GTSApplicationState *appState);
static void GTSMainMenu_InitMenu(GTSApplicationState *appState);
static void GTSMainMenu_RemoveWindows(GTSApplicationState *appState);
static void GTSMainMenu_LoadTitle(GTSApplicationState *appState);
static void GTSMainMenu_CleanupStrings(GTSApplicationState *appState);
static int GTSMainMenu_WaitUntilFinishedMoving(GTSApplicationState *appState);
static int GTSMainMenu_QueueFadeIn(GTSApplicationState *appState);
static int GTSMainMenu_BeginFadeIn(GTSApplicationState *appState);
static int GTSMainMenu_WaitFadeIn1(GTSApplicationState *appState);
static int GTSMainMenu_WaitFadeIn2(GTSApplicationState *appState);
static int GTSMainMenu_SetupBottomWindowQuestion(GTSApplicationState *appState);
static int GTSMainMenu_HandleInput(GTSApplicationState *appState);
static int GTSMainMenu_FadeAndExit(GTSApplicationState *appState);
static int GTSMainMenu_ShowConfirmationMenu(GTSApplicationState *appState);
static int GTSMainMenu_HandleConfirmationMenu(GTSApplicationState *appState);
static int GTSMainMenu_WaitForTextPrinter(GTSApplicationState *appState);
static int GTSMainMenu_WaitForMessageWithDelay(GTSApplicationState *appState);
static int GTSMainMenu_BeginLogoutAnimation(GTSApplicationState *appState);
static int GTSMainMenu_WaitLogoutAnimation(GTSApplicationState *appState);
static void GTSMainMenu_RenderMenuButtons(GTSApplicationState *appState);
static void GTSMainMenu_SetBottomWindowText(GTSApplicationState *appState, int messageId, int textSpeed, int unused1, u16 unused2);
static void GTSMainMenu_ShowConfirmationWindow(GTSApplicationState *appState, int messageId, int textSpeed, int unused1, u16 unused2);
static void GTSMainMenu_HideLayersAndCursor(GTSApplicationState *appState);

static int (*sGTSMainMenuScreenStates[])(GTSApplicationState *) = {
    [GTS_MAINMENU_WAIT_UNTIL_FINISHED_MOVING] = GTSMainMenu_WaitUntilFinishedMoving,
    [GTS_MAINMENU_QUEUE_FADE_IN] = GTSMainMenu_QueueFadeIn,
    [GTS_MAINMENU_BEGIN_FADE_IN] = GTSMainMenu_BeginFadeIn,
    [GTS_MAINMENU_WAIT_FADE_IN_1] = GTSMainMenu_WaitFadeIn1,
    [GTS_MAINMENU_WAIT_FADE_IN_2] = GTSMainMenu_WaitFadeIn2,
    [GTS_MAINMENU_SETUP_BOTTOM_WINDOW_QUESTION] = GTSMainMenu_SetupBottomWindowQuestion,
    [GTS_MAINMENU_HANDLE_INPUT] = GTSMainMenu_HandleInput,
    [GTS_MAINMENU_BEGIN_LOGOUT_ANIM] = GTSMainMenu_BeginLogoutAnimation,
    [GTS_MAINMENU_WAIT_LOGOUT_ANIM] = GTSMainMenu_WaitLogoutAnimation,
    [GTS_MAINMENU_FADE_AND_EXIT] = GTSMainMenu_FadeAndExit,
    [GTS_MAINMENU_WAIT_FOR_TEXT_PRINTER] = GTSMainMenu_WaitForTextPrinter,
    [GTS_MAINMENU_WAIT_FOR_MESSAGE_WITH_DELAY] = GTSMainMenu_WaitForMessageWithDelay,
    [GTS_MAINMENU_SHOW_CONFIRMATION_MENU] = GTSMainMenu_ShowConfirmationMenu,
    [GTS_MAINMENU_HANDLE_CONFIRMATION_MENU] = GTSMainMenu_HandleConfirmationMenu
};

int GTSApplication_MainMenu_Init(GTSApplicationState *appState, int unused1)
{
    GTSMainMenu_LoadTitle(appState);
    GTSMainMenu_InitBgLayers(appState->bgConfig);
    GTSMainMenu_InitGraphics(appState);
    GTSMainMenu_InitMenu(appState);
    GTSMainMenu_InitCursor(appState);
    GTSApplication_InitNetworkIcon(appState);
    GTSMainMenu_RenderMenuButtons(appState);

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_23, SEQ_BLD_BLD_GTC, 1);

    if (appState->hasPlayerDescended == FALSE) {
        GTSMainMenu_HideLayersAndCursor(appState);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);

        appState->currentScreenInstruction = GTS_MAINMENU_WAIT_UNTIL_FINISHED_MOVING;
        appState->hasPlayerDescended = TRUE;

        GTSAvatar_BeginLoginAnimation(appState, TrainerInfo_Gender(appState->playerData->trainerInfo));
    } else {
        if (appState->fadeBothScreens == 1) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
        } else {
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
        }

        appState->currentScreenInstruction = GTS_MAINMENU_SETUP_BOTTOM_WINDOW_QUESTION;
    }

    appState->fadeBothScreens = 0;
    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_MainMenu_Main(GTSApplicationState *appState, int unused)
{
    NetworkIcon_SetStrength(GTSApplication_GetNetworkStrength());

    return (*sGTSMainMenuScreenStates[appState->currentScreenInstruction])(appState);
}

int GTSApplication_MainMenu_Exit(GTSApplicationState *appState, int unused)
{
    NetworkIcon_Destroy();

    GTSMainMenu_DeleteCursor(appState);
    GTSMainMenu_CleanupStrings(appState);
    GTSMainMenu_RemoveWindows(appState);
    GTSMainMenu_FreeBgLayers(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return GTS_LOOP_STATE_INIT;
}

static void GTSMainMenu_InitBgLayers(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate mainWindowTemplate = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &mainWindowTemplate, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate mainBgTemplate = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &mainBgTemplate, BG_TYPE_STATIC);

    BgTemplate mainBgOverlayTemplate = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &mainBgOverlayTemplate, BG_TYPE_STATIC);

    BgTemplate subWindowTemplate = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &subWindowTemplate, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate subBgTemplate = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &subBgTemplate, BG_TYPE_STATIC);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, HEAP_ID_62);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void GTSMainMenu_FreeBgLayers(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void GTSMainMenu_HideLayersAndCursor(GTSApplicationState *appState)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
    Sprite_SetDrawFlag(appState->cursorSprite, FALSE);
}

static void GTSMainMenu_InitGraphics(GTSApplicationState *appState)
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

    GTS_LoadSubScreenGraphics(appState);

    NARC_dtor(narc);
}

static const u16 sMainMenuCursorPositions[][2] = {
    { 50, 56 },
    { 50, 96 },
    { 50, 136 }
};

static void GTSMainMenu_InitCursor(GTSApplicationState *appState)
{
    AffineSpriteListTemplate template;

    GTSApplication_InitAffineTemplate(&template, appState, &appState->cursorSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

    template.position.x = FX32_ONE * sMainMenuCursorPositions[appState->mainMenuSelectedOption][0];
    template.position.y = FX32_ONE * sMainMenuCursorPositions[appState->mainMenuSelectedOption][1];

    appState->cursorSprite = SpriteList_AddAffine(&template);

    Sprite_SetAnimateFlag(appState->cursorSprite, TRUE);
    Sprite_SetAnim(appState->cursorSprite, 1);
}

static void GTSMainMenu_DeleteCursor(GTSApplicationState *appState)
{
    Sprite_Delete(appState->cursorSprite);
}

static void GTSMainMenu_InitMenu(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->titleWindow, 0, 1, 1, 28, 2, 13, (1 + (18 + 12)) + 9);
    Window_FillTilemap(&appState->titleWindow, 0x0);
    Text_AddPrinterWithParamsAndColor(&appState->titleWindow, FONT_MESSAGE, appState->title, 0, 2, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 4, 0), NULL);

    for (int i = 0; i < 3; i++) {
        Window_Add(appState->bgConfig, &appState->menuButtonWindows[i], 1, 9, 6 + i * 5, 15, 2, 13, (16 * 6 + 1) + (15 * 2) * i);
        Window_FillTilemap(&appState->menuButtonWindows[i], 0x0);
    }

    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, ((1 + (18 + 12)) + 9) + 28 * 2);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_Add(appState->bgConfig, &appState->confirmationWindow, 0, 2, 19, 27, 4, 13, (((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2);
    Window_FillTilemap(&appState->confirmationWindow, 0xf0f);
}

static void GTSMainMenu_RemoveWindows(GTSApplicationState *appState)
{
    Window_Remove(&appState->confirmationWindow);
    Window_Remove(&appState->bottomInstructionWindow);

    for (int i = 0; i < 3; i++) {
        Window_Remove(&appState->menuButtonWindows[i]);
    }

    Window_Remove(&appState->titleWindow);
}

static void GTSMainMenu_LoadTitle(GTSApplicationState *appState)
{
    appState->genericMessageBuffer = String_Init(90 * 2, HEAP_ID_62);
    appState->title = MessageLoader_GetNewString(appState->gtsMessageLoader, GTS_Text_MainMenu_Title);
}

static void GTSMainMenu_CleanupStrings(GTSApplicationState *appState)
{
    String_Free(appState->genericMessageBuffer);
    String_Free(appState->title);
}

static int GTSMainMenu_WaitUntilFinishedMoving(GTSApplicationState *appState)
{
    if (appState->hasAvatarFinishedMoving) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);

        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_CHECK_SERVER);

        appState->returnAfterNetworkScreen = GTS_SCREEN_MAIN_MENU;
        appState->currentScreenInstruction = GTS_MAINMENU_FADE_AND_EXIT;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSMainMenu_QueueFadeIn(GTSApplicationState *appState)
{
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 10, 2);
    return GTS_LOOP_STATE_MAIN;
}

static int GTSMainMenu_BeginFadeIn(GTSApplicationState *appState)
{
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
    appState->currentScreenInstruction = GTS_MAINMENU_WAIT_FADE_IN_1;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSMainMenu_WaitFadeIn1(GTSApplicationState *appState)
{
    if (IsScreenFadeDone()) {
        appState->currentScreenInstruction = GTS_MAINMENU_SETUP_BOTTOM_WINDOW_QUESTION;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSMainMenu_WaitFadeIn2(GTSApplicationState *appState)
{
    if (IsScreenFadeDone()) {
        appState->currentScreenInstruction = GTS_MAINMENU_SETUP_BOTTOM_WINDOW_QUESTION;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSMainMenu_SetupBottomWindowQuestion(GTSApplicationState *appState)
{
    GTSMainMenu_SetBottomWindowText(appState, GTS_Text_AreYouSeekingOrOfferingAPokemon, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 10, 6);
    Sprite_SetAnimateFlag(appState->cursorSprite, TRUE);
    GTSApplication_StartCountingBoxPokemon(appState);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSMainMenu_HandleInput(GTSApplicationState *appState)
{
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        GTSMainMenu_ShowConfirmationWindow(appState, GTS_Text_IsItOKToDisconnect, GTSApplication_GetTextFrameDelay(appState), 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, 10, 12);
        Sprite_SetAnimateFlag(appState->cursorSprite, FALSE);
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        switch (appState->mainMenuSelectedOption) {
        case GTS_MAIN_MENU_OPTION_DEPOSIT:
            if (appState->isPokemonListed == FALSE) {
                GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SELECT_POKEMON, SCREEN_ARGUMENT_5);
                appState->currentScreenInstruction = GTS_MAINMENU_FADE_AND_EXIT;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            } else {
                if (appState->networkTimer == 0) {
                    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_CHECK_SERVER);
                    appState->returnAfterNetworkScreen = GTS_SCREEN_LISTING;
                    appState->currentScreenInstruction = GTS_MAINMENU_FADE_AND_EXIT;
                    appState->networkTimer = (60 * 30);
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                } else {
                    Sprite_SetAnimateFlag(appState->cursorSprite, FALSE);
                    GTSMainMenu_SetBottomWindowText(appState, GTS_Text_PleaseWaitAWhile, TEXT_SPEED_FAST, 0, 0xf0f);
                    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 11, 5);
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                    appState->frameDelay = 0;
                }
            }
            break;
        case GTS_MAIN_MENU_OPTION_SEEK:
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SEARCH, SCREEN_ARGUMENT_0);
            appState->currentScreenInstruction = GTS_MAINMENU_FADE_AND_EXIT;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        case GTS_MAIN_MENU_OPTION_EXIT:
            GTSMainMenu_ShowConfirmationWindow(appState, GTS_Text_IsItOKToDisconnect, GTSApplication_GetTextFrameDelay(appState), 0, 0xf0f);
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

static int GTSMainMenu_BeginLogoutAnimation(GTSApplicationState *appState)
{
    GTSAvatar_BeginLogoutAnimation(appState, TrainerInfo_Gender(appState->playerData->trainerInfo));

    appState->currentScreenInstruction = GTS_MAINMENU_WAIT_LOGOUT_ANIM;
    appState->hasAvatarFinishedMoving = FALSE;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSMainMenu_WaitLogoutAnimation(GTSApplicationState *appState)
{
    if (appState->hasAvatarFinishedMoving) {
        appState->currentScreenInstruction = GTS_MAINMENU_FADE_AND_EXIT;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSMainMenu_FadeAndExit(GTSApplicationState *appState)
{
    if (appState->nextScreen == GTS_SCREEN_WFC_INIT) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    }

    appState->currentScreenInstruction = GTS_MAINMENU_WAIT_UNTIL_FINISHED_MOVING;

    return GTS_LOOP_STATE_FINISH;
}

static int GTSMainMenu_ShowConfirmationMenu(GTSApplicationState *appState)
{
    appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 27 * 4);
    appState->currentScreenInstruction = GTS_MAINMENU_HANDLE_CONFIRMATION_MENU;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSMainMenu_HandleConfirmationMenu(GTSApplicationState *appState)
{
    int input = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (input != MENU_NOTHING_CHOSEN) {
        if (input == MENU_CANCEL) {
            Window_EraseMessageBox(&appState->confirmationWindow, 1);
            Window_ClearAndCopyToVRAM(&appState->confirmationWindow);
            Sprite_SetAnimateFlag(appState->cursorSprite, TRUE);
            appState->currentScreenInstruction = GTS_MAINMENU_SETUP_BOTTOM_WINDOW_QUESTION;
        } else {
            Window_EraseMessageBox(&appState->confirmationWindow, 1);
            Window_ClearAndCopyToVRAM(&appState->confirmationWindow);
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_0);
            appState->currentScreenInstruction = GTS_MAINMENU_BEGIN_LOGOUT_ANIM;
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSMainMenu_WaitForTextPrinter(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSMainMenu_WaitForMessageWithDelay(GTSApplicationState *appState)
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

static void GTSMainMenu_RenderMenuButtons(GTSApplicationState *appState)
{
    int isPokemonListed = appState->isPokemonListed;

    for (int i = 0; i < 3; i++) {
        GTSApplication_MainMenu_RenderButton(&appState->menuButtonWindows[i], appState->gtsMessageLoader, sGTSMainMenuOptions[isPokemonListed][i], 0xf0f);
        Window_CopyToVRAM(&appState->menuButtonWindows[i]);
    }
}

static void GTSMainMenu_SetBottomWindowText(GTSApplicationState *appState, int messageId, int textSpeed, int unused1, u16 unused2)
{
    MessageLoader_GetString(appState->gtsMessageLoader, messageId, appState->genericMessageBuffer);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->bottomInstructionWindow, FALSE, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->bottomInstructionWindow, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, textSpeed, NULL);
}

static void GTSMainMenu_ShowConfirmationWindow(GTSApplicationState *appState, int messageId, int textSpeed, int unused1, u16 unused2)
{
    MessageLoader_GetString(appState->gtsMessageLoader, messageId, appState->genericMessageBuffer);
    Window_FillTilemap(&appState->confirmationWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->confirmationWindow, FALSE, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->confirmationWindow, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, textSpeed, NULL);
}

void GTSApplication_MainMenu_RenderButton(Window *window, MessageLoader *gtsMessageLoader, int messageId, u16 tile)
{
    String *string = MessageLoader_GetNewString(gtsMessageLoader, messageId);

    Window_FillTilemap(window, tile);
    Text_AddPrinterWithParams(window, FONT_MESSAGE, string, 0, 0, TEXT_SPEED_INSTANT, NULL);
    String_Free(string);
}

void GTS_LoadSubScreenGraphics(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__WORLDTRADE, 5, 4, 0, 16 * 16 * 2, HEAP_ID_62);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 15, bgConfig, 5, 0, 32 * 21 * 0x40, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 31, bgConfig, 5, 0, 32 * 24 * 2, 1, HEAP_ID_62);
}
