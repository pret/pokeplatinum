#include "overlay094/screens/main_menu.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/gts.h"

#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/ov94_02244950.h"

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

static void GTSApplication_MainMenu_InitBackground(BgConfig *param0);
static void GTSApplication_MainMenu_CleanupBackground(BgConfig *param0);
static void GTSApplication_MainMenu_InitGraphics(GTSApplicationState *param0);
static void GTSApplication_MainMenu_InitCursor(GTSApplicationState *param0);
static void GTSApplication_MainMenu_DeleteCursor(GTSApplicationState *param0);
static void GTSApplication_MainMenu_CreateMenu(GTSApplicationState *param0);
static void GTSApplication_MainMenu_CleanupWindows(GTSApplicationState *param0);
static void GTS_MainMenu_LoadTitle(GTSApplicationState *param0);
static void GTSApplication_MainMenu_CleanupStrings(GTSApplicationState *param0);
static int GTSApplication_MainMenu_WaitUntilFinishedMoving(GTSApplicationState *param0);
static int ov94_0223CB90(GTSApplicationState *param0);
static int ov94_0223CBA0(GTSApplicationState *param0);
static int ov94_0223CBC4(GTSApplicationState *param0);
static int ov94_0223CBD8(GTSApplicationState *param0);
static int ov94_0223CBEC(GTSApplicationState *param0);
static int ov94_0223CC28(GTSApplicationState *param0);
static int GTSApplication_MainMenu_FadeAndExit(GTSApplicationState *param0);
static int ov94_0223CE5C(GTSApplicationState *param0);
static int ov94_0223CE7C(GTSApplicationState *param0);
static int ov94_0223CEE8(GTSApplicationState *param0);
static int ov94_0223CF08(GTSApplicationState *param0);
static int ov94_0223CDD8(GTSApplicationState *param0);
static int ov94_0223CE00(GTSApplicationState *param0);
static void GTSApplication_MainMenu_RenderMenuButtons(GTSApplicationState *param0);
static void ov94_0223CF80(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4);
static void ov94_0223CFD8(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4);
static void ov94_0223C85C(GTSApplicationState *param0);

static int (*sGTSMainMenuScreenStates[])(GTSApplicationState *) = {
    GTSApplication_MainMenu_WaitUntilFinishedMoving, // GTSApplication_SetNextScreenWithArgument(appState, 7, 11);
    ov94_0223CB90, // set currentScreenInstruction to 10 and unk_30 to 2
    ov94_0223CBA0, // start screen fade, set currentScreenInstruction to 3
    ov94_0223CBC4, // set currentScreenInstruction to 5 when screen fade is done, return 3
    ov94_0223CBD8, // set currentScreenInstruction to 5 when screen fade is done, return 3
    ov94_0223CBEC, // are you seeking or offering a pokemon?
    ov94_0223CC28,
    ov94_0223CDD8,
    ov94_0223CE00,
    GTSApplication_MainMenu_FadeAndExit,
    ov94_0223CEE8,
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
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

        appState->currentScreenInstruction = 0;
        appState->hasPlayerDescended = TRUE;

        ov94_02243FA8(appState, TrainerInfo_Gender(appState->playerData->unk_1C));
    } else {
        if (appState->fadeBothScreens == 1) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);
        } else {
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);
        }

        appState->currentScreenInstruction = 5;
    }

    appState->fadeBothScreens = 0;
    return GTS_APPLICATION_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_MainMenu_Main(GTSApplicationState *appState, int unused1)
{
    SetNetworkIconStrength(GTSApplication_GetNetworkStrength());

    return (*sGTSMainMenuScreenStates[appState->currentScreenInstruction])(appState);
}

int GTSApplication_MainMenu_Exit(GTSApplicationState *appState, int unused1)
{
    DestroyNetworkIcon(); // ??

    GTSApplication_MainMenu_DeleteCursor(appState);
    GTSApplication_MainMenu_CleanupStrings(appState);
    GTSApplication_MainMenu_CleanupWindows(appState);
    GTSApplication_MainMenu_CleanupBackground(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return GTS_APPLICATION_LOOP_STATE_INIT;
}

static void GTSApplication_MainMenu_InitBackground(BgConfig *param0)
{
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
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v1, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v2, 0);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v3, 0);
    }

    {
        BgTemplate v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v4, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
    }

    {
        BgTemplate v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v5, 0);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void GTSApplication_MainMenu_CleanupBackground(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void ov94_0223C85C(GTSApplicationState *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    Sprite_SetDrawFlag(param0->cursorSprite, 0);
}

static void GTSApplication_MainMenu_InitGraphics(GTSApplicationState *param0)
{
    BgConfig *v0 = param0->bgConfig;
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(v1, 4, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, 1, 10, Options_Frame(param0->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, (1 + (18 + 12)), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 14, v0, 1, 0, 16 * 6 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 30, v0, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 29, v0, 2, 0, 32 * 24 * 2, 1, HEAP_ID_62);

    ov94_0223D068(param0);

    NARC_dtor(v1);
}

static const u16 sMainMenuCursorPositions[][2] = {
    { 0x32, 0x38 },
    { 0x32, 0x60 },
    { 0x32, 0x88 }
};

static void GTSApplication_MainMenu_InitCursor(GTSApplicationState *appState)
{
    AffineSpriteListTemplate template;

    GTSApplication_InitAffineTemplate(&template, appState, &appState->cursorSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

    template.position.x = FX32_ONE *sMainMenuCursorPositions[appState->unk_10C][0];
    template.position.y = FX32_ONE *sMainMenuCursorPositions[appState->unk_10C][1];

    appState->cursorSprite = SpriteList_AddAffine(&template);

    Sprite_SetAnimateFlag(appState->cursorSprite, 1);
    Sprite_SetAnim(appState->cursorSprite, 1);
}

static void GTSApplication_MainMenu_DeleteCursor(GTSApplicationState *appState)
{
    Sprite_Delete(appState->cursorSprite);
}

static void GTSApplication_MainMenu_CreateMenu(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->unk_F7C, 0, 1, 1, 28, 2, 13, ((1 + (18 + 12)) + 9));
    Window_FillTilemap(&appState->unk_F7C, 0x0);
    Text_AddPrinterWithParamsAndColor(&appState->unk_F7C, FONT_MESSAGE, appState->title, 0, 2, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 4, 0), NULL);

    {
        for (int i = 0; i < 3; i++) {
            Window_Add(appState->bgConfig, &appState->unk_F9C[i], 1, 9, 6 + i * 5, 15, 2, 13, (16 * 6 + 1) + (15 * 2) * i);
            Window_FillTilemap(&appState->unk_F9C[i], 0x0);
        }
    }

    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, (((1 + (18 + 12)) + 9) + 28 * 2));
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_Add(appState->bgConfig, &appState->unk_109C, 0, 2, 19, 27, 4, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2));
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
    appState->genericMessageBuffer = Strbuf_Init((90 * 2), HEAP_ID_62);
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
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        // this jumps us to screen #7 (network handler) with argument 11
        GTSApplication_SetNextScreenWithArgument(appState, 7, 11);

        appState->previousScreen = 1;
        appState->currentScreenInstruction = 9;
    }

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int ov94_0223CB90(GTSApplicationState *param0)
{
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 10, 2);
    return 3;
}

static int ov94_0223CBA0(GTSApplicationState *param0)
{
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);
    param0->currentScreenInstruction = 3;

    return 3;
}

static int ov94_0223CBC4(GTSApplicationState *param0)
{
    if (IsScreenFadeDone()) {
        param0->currentScreenInstruction = 5;
    }

    return 3;
}

static int ov94_0223CBD8(GTSApplicationState *param0)
{
    if (IsScreenFadeDone()) {
        param0->currentScreenInstruction = 5;
    }

    return 3;
}

static int ov94_0223CBEC(GTSApplicationState *param0)
{
    ov94_0223CF80(param0, GTS_Text_AreYouSeekingOrOfferingAPokemon, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 10, 6);
    Sprite_SetAnimateFlag(param0->cursorSprite, 1);
    GTSApplicationState_StartCountingBoxPokemon(param0);

    return 3;
}

static int ov94_0223CC28(GTSApplicationState *param0)
{
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        ov94_0223CFD8(param0, GTS_Text_IsItOKToDisconnect, GTSApplicationState_GetTextFrameDelay(param0), 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(param0, 10, 12);
        Sprite_SetAnimateFlag(param0->cursorSprite, 0);
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        switch (param0->unk_10C) {
        case 0: // deposit pokemon
            if (param0->isPokemonListed == 0) {
                GTSApplication_SetNextScreenWithArgument(param0, 5, 5);
                param0->currentScreenInstruction = 9;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            } else {
                if (param0->networkTimer == 0) {
                    GTSApplication_SetNextScreenWithArgument(param0, 7, 11);
                    param0->previousScreen = 2;
                    param0->currentScreenInstruction = 9;
                    param0->networkTimer = (60 * 30);
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                } else {
                    Sprite_SetAnimateFlag(param0->cursorSprite, 0);
                    ov94_0223CF80(param0, GTS_Text_PleaseWaitAWhile, TEXT_SPEED_FAST, 0, 0xf0f);
                    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 11, 5);
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                    param0->frameDelay = 0;
                }
            }
            break;
        case 1: // seek pokemon
            GTSApplication_SetNextScreenWithArgument(param0, 4, 0);
            param0->currentScreenInstruction = 9;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        case 2: // exit
            ov94_0223CFD8(param0, GTS_Text_IsItOKToDisconnect, GTSApplicationState_GetTextFrameDelay(param0), 0, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 10, 12);
            Sprite_SetAnimateFlag(param0->cursorSprite, 0);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        }
    } else if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (param0->unk_10C != 0) {
            param0->unk_10C--;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            GTSApplication_SetSpritePosition(param0->cursorSprite, sMainMenuCursorPositions[param0->unk_10C][0], sMainMenuCursorPositions[param0->unk_10C][1]);
        }
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (param0->unk_10C < 2) {
            param0->unk_10C++;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            GTSApplication_SetSpritePosition(param0->cursorSprite, sMainMenuCursorPositions[param0->unk_10C][0], sMainMenuCursorPositions[param0->unk_10C][1]);
        }
    }

    return 3;
}

static int ov94_0223CDD8(GTSApplicationState *param0)
{
    ov94_022440B8(param0, TrainerInfo_Gender(param0->playerData->unk_1C));

    param0->currentScreenInstruction = 8;
    param0->hasAvatarFinishedMoving = FALSE;

    return 3;
}

static int ov94_0223CE00(GTSApplicationState *param0)
{
    if (param0->hasAvatarFinishedMoving) {
        param0->currentScreenInstruction = 9;
    }

    return 3;
}

static int GTSApplication_MainMenu_FadeAndExit(GTSApplicationState *appState)
{
    if (appState->nextScreen == 0) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_62);
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_62);
    }

    appState->currentScreenInstruction = 0;

    return GTS_APPLICATION_LOOP_STATE_FINISH;
}

static int ov94_0223CE5C(GTSApplicationState *param0)
{
    param0->yesNoMenu = GTSApplication_CreateYesNoMenu(param0->bgConfig, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 27 * 4));
    param0->currentScreenInstruction = 13;

    return 3;
}

static int ov94_0223CE7C(GTSApplicationState *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->yesNoMenu, HEAP_ID_62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            Window_EraseMessageBox(&param0->unk_109C, 1);
            Window_ClearAndCopyToVRAM(&param0->unk_109C);
            Sprite_SetAnimateFlag(param0->cursorSprite, 1);
            param0->currentScreenInstruction = 5;
        } else {
            Window_EraseMessageBox(&param0->unk_109C, 1);
            Window_ClearAndCopyToVRAM(&param0->unk_109C);
            GTSApplication_SetNextScreenWithArgument(param0, 0, 0);
            param0->currentScreenInstruction = 7;
        }
    }

    return 3;
}

static int ov94_0223CEE8(GTSApplicationState *param0)
{
    if (Text_IsPrinterActive(param0->textPrinter) == 0) {
        param0->currentScreenInstruction = param0->nextScreenInstruction;
    }

    return 3;
}

static int ov94_0223CF08(GTSApplicationState *param0)
{
    if (Text_IsPrinterActive(param0->textPrinter) == 0) {
        param0->frameDelay++;

        if (param0->frameDelay > 45) {
            param0->frameDelay = 0;
            param0->currentScreenInstruction = param0->nextScreenInstruction;
        }
    }

    return 3;
}

static const int GTS_MAIN_MENU_OPTIONS[][3] = {
    { GTS_Text_DepositPokemon, GTS_Text_SeekPokemon, GTS_Text_Exit },
    { GTS_Text_Summary, GTS_Text_SeekPokemon, GTS_Text_Exit }
};

static void GTSApplication_MainMenu_RenderMenuButtons(GTSApplicationState *appState)
{
    int isPokemonListed = appState->isPokemonListed;

    for (int i = 0; i < 3; i++) {
        GTSApplication_MainMenu_RenderButton(&appState->unk_F9C[i], appState->gtsMessageLoader, GTS_MAIN_MENU_OPTIONS[isPokemonListed][i], 0xf0f);
        Window_CopyToVRAM(&appState->unk_F9C[i]);
    }
}

static void ov94_0223CF80(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    MessageLoader_GetStrbuf(param0->gtsMessageLoader, param1, param0->genericMessageBuffer);
    Window_FillTilemap(&param0->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->bottomInstructionWindow, 0, 1, 10);

    param0->textPrinter = Text_AddPrinterWithParams(&param0->bottomInstructionWindow, FONT_MESSAGE, param0->genericMessageBuffer, 0, 0, param2, NULL);
}

static void ov94_0223CFD8(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    MessageLoader_GetStrbuf(param0->gtsMessageLoader, param1, param0->genericMessageBuffer);
    Window_FillTilemap(&param0->unk_109C, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->unk_109C, 0, 1, 10);

    param0->textPrinter = Text_AddPrinterWithParams(&param0->unk_109C, FONT_MESSAGE, param0->genericMessageBuffer, 0, 0, param2, NULL);
}

void GTSApplication_MainMenu_RenderButton(Window *param0, MessageLoader *gtsMessageLoader, int param2, u16 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(gtsMessageLoader, param2);

    Window_FillTilemap(param0, param3);
    Text_AddPrinterWithParams(param0, FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Strbuf_Free(v0);
}

void ov94_0223D068(GTSApplicationState *param0)
{
    BgConfig *v0 = param0->bgConfig;

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__WORLDTRADE, 5, 4, 0, 16 * 16 * 2, HEAP_ID_62);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 15, v0, 5, 0, 32 * 21 * 0x40, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 31, v0, 5, 0, 32 * 24 * 2, 1, HEAP_ID_62);
}
