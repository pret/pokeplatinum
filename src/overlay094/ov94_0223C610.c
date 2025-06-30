#include "overlay094/ov94_0223C610.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/gts_application_state.h"
#include "overlay094/ov94_0223BCB0.h"
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

static void ov94_0223C720(BgConfig *param0);
static void ov94_0223C830(BgConfig *param0);
static void ov94_0223C888(GTSApplicationState *param0);
static void ov94_0223C950(GTSApplicationState *param0);
static void ov94_0223C9B0(GTSApplicationState *param0);
static void ov94_0223C9C0(GTSApplicationState *param0);
static void ov94_0223CAC8(GTSApplicationState *param0);
static void GTS_MainMenu_LoadTitle(GTSApplicationState *param0);
static void ov94_0223CB34(GTSApplicationState *param0);
static int ov94_0223CB50(GTSApplicationState *param0);
static int ov94_0223CB90(GTSApplicationState *param0);
static int ov94_0223CBA0(GTSApplicationState *param0);
static int ov94_0223CBC4(GTSApplicationState *param0);
static int ov94_0223CBD8(GTSApplicationState *param0);
static int ov94_0223CBEC(GTSApplicationState *param0);
static int ov94_0223CC28(GTSApplicationState *param0);
static int ov94_0223CE14(GTSApplicationState *param0);
static int ov94_0223CE5C(GTSApplicationState *param0);
static int ov94_0223CE7C(GTSApplicationState *param0);
static int ov94_0223CEE8(GTSApplicationState *param0);
static int ov94_0223CF08(GTSApplicationState *param0);
static int ov94_0223CDD8(GTSApplicationState *param0);
static int ov94_0223CE00(GTSApplicationState *param0);
static void ov94_0223CF3C(GTSApplicationState *param0);
static void ov94_0223CF80(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4);
static void ov94_0223CFD8(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4);
static void ov94_0223C85C(GTSApplicationState *param0);

static int (*Unk_ov94_022467C4[])(GTSApplicationState *) = {
    ov94_0223CB50,
    ov94_0223CB90, // set currentScreenInstruction to 10 and unk_30 to 2
    ov94_0223CBA0, // start screen fade, set currentScreenInstruction to 3
    ov94_0223CBC4, // set currentScreenInstruction to 5 when screen fade is done, return 3
    ov94_0223CBD8, // set currentScreenInstruction to 5 when screen fade is done, return 3
    ov94_0223CBEC, // are you seeking or offering a pokemon?
    ov94_0223CC28,
    ov94_0223CDD8,
    ov94_0223CE00,
    ov94_0223CE14,
    ov94_0223CEE8,
    ov94_0223CF08,
    ov94_0223CE5C,
    ov94_0223CE7C
};

int ov94_0223C610(GTSApplicationState *param0, int param1)
{
    GTS_MainMenu_LoadTitle(param0);
    ov94_0223C720(param0->bgConfig);
    ov94_0223C888(param0);
    ov94_0223C9C0(param0);
    ov94_0223C950(param0);
    ov94_02245934(param0);
    ov94_0223CF3C(param0);

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_23, SEQ_BLD_BLD_GTC, 1);

    if (param0->unk_34 == 0) {
        ov94_0223C85C(param0);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

        param0->currentScreenInstruction = 0;
        param0->unk_34 = 1;

        ov94_02243FA8(param0, TrainerInfo_Gender(param0->unk_00->unk_1C));
    } else {
        if (param0->unk_1110 == 1) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);
        } else {
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);
        }

        param0->currentScreenInstruction = 5;
    }

    param0->unk_1110 = 0;
    return 2;
}

int ov94_0223C6D4(GTSApplicationState *param0, int param1)
{
    int v0;

    sub_020397B0(GTSApplication_GetNetworkStrength());

    v0 = (*Unk_ov94_022467C4[param0->currentScreenInstruction])(param0);
    return v0;
}

int ov94_0223C6F4(GTSApplicationState *param0, int param1)
{
    sub_02039794();

    ov94_0223C9B0(param0);
    ov94_0223CB34(param0);
    ov94_0223CAC8(param0);
    ov94_0223C830(param0->bgConfig);
    GTSApplication_MoveToNextScreen(param0);

    return 1;
}

static void ov94_0223C720(BgConfig *param0)
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

static void ov94_0223C830(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
}

static void ov94_0223C85C(GTSApplicationState *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    Sprite_SetDrawFlag(param0->unk_E20, 0);
}

static void ov94_0223C888(GTSApplicationState *param0)
{
    BgConfig *v0 = param0->bgConfig;
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(v1, 4, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, 1, 10, Options_Frame(param0->unk_00->options), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, (1 + (18 + 12)), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 14, v0, 1, 0, 16 * 6 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 30, v0, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 29, v0, 2, 0, 32 * 24 * 2, 1, HEAP_ID_62);

    ov94_0223D068(param0);

    NARC_dtor(v1);
}

static const u16 Unk_ov94_02245A48[][2] = {
    { 0x32, 0x38 },
    { 0x32, 0x60 },
    { 0x32, 0x88 }
};

static void ov94_0223C950(GTSApplicationState *param0)
{
    AffineSpriteListTemplate v0;

    ov94_0223C300(&v0, param0, &param0->unk_DB4, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0.position.x = FX32_ONE * Unk_ov94_02245A48[param0->unk_10C][0];
    v0.position.y = FX32_ONE * Unk_ov94_02245A48[param0->unk_10C][1];

    param0->unk_E20 = SpriteList_AddAffine(&v0);

    Sprite_SetAnimateFlag(param0->unk_E20, 1);
    Sprite_SetAnim(param0->unk_E20, 1);
}

static void ov94_0223C9B0(GTSApplicationState *param0)
{
    Sprite_Delete(param0->unk_E20);
}

static void ov94_0223C9C0(GTSApplicationState *param0)
{
    Window_Add(param0->bgConfig, &param0->unk_F7C, 0, 1, 1, 28, 2, 13, ((1 + (18 + 12)) + 9));
    Window_FillTilemap(&param0->unk_F7C, 0x0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_F7C, FONT_MESSAGE, param0->title, 0, 2, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 4, 0), NULL);

    {
        int v0;

        for (v0 = 0; v0 < 3; v0++) {
            Window_Add(param0->bgConfig, &param0->unk_F9C[v0], 1, 9, 6 + v0 * 5, 15, 2, 13, (16 * 6 + 1) + (15 * 2) * v0);
            Window_FillTilemap(&param0->unk_F9C[v0], 0x0);
        }
    }

    Window_Add(param0->bgConfig, &param0->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, (((1 + (18 + 12)) + 9) + 28 * 2));
    Window_FillTilemap(&param0->bottomInstructionWindow, 0xf0f);
    Window_Add(param0->bgConfig, &param0->unk_109C, 0, 2, 19, 27, 4, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2));
    Window_FillTilemap(&param0->unk_109C, 0xf0f);
}

static void ov94_0223CAC8(GTSApplicationState *param0)
{
    int v0;

    Window_Remove(&param0->unk_109C);
    Window_Remove(&param0->bottomInstructionWindow);

    for (v0 = 0; v0 < 3; v0++) {
        Window_Remove(&param0->unk_F9C[v0]);
    }

    Window_Remove(&param0->unk_F7C);
}

static void GTS_MainMenu_LoadTitle(GTSApplicationState *param0)
{
    param0->genericMessageBuffer = Strbuf_Init((90 * 2), HEAP_ID_62);
    param0->title = MessageLoader_GetNewStrbuf(param0->gtsMessageLoader, GTS_Text_MainMenu_Title);
}

static void ov94_0223CB34(GTSApplicationState *param0)
{
    Strbuf_Free(param0->genericMessageBuffer);
    Strbuf_Free(param0->title);
}

static int ov94_0223CB50(GTSApplicationState *param0)
{
    if (param0->unk_10F0) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        ov94_Setunk_18Andunk_24(param0, 7, 11);

        param0->unk_1C = 1;
        param0->currentScreenInstruction = 9;
    }

    return 3;
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
    Sprite_SetAnimateFlag(param0->unk_E20, 1);
    GTSApplicationState_StartCountingBoxPokemon(param0);

    return 3;
}

static int ov94_0223CC28(GTSApplicationState *param0)
{
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        ov94_0223CFD8(param0, GTS_Text_IsItOKToDisconnect, ov94_0223C4D4(param0), 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(param0, 10, 12);
        Sprite_SetAnimateFlag(param0->unk_E20, 0);
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        switch (param0->unk_10C) {
        case 0: // deposit pokemon
            if (param0->isPokemonListed == 0) {
                ov94_Setunk_18Andunk_24(param0, 5, 5);
                param0->currentScreenInstruction = 9;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            } else {
                if (param0->networkTimer == 0) {
                    ov94_Setunk_18Andunk_24(param0, 7, 11);
                    param0->unk_1C = 2;
                    param0->currentScreenInstruction = 9;
                    param0->networkTimer = (60 * 30);
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                } else {
                    Sprite_SetAnimateFlag(param0->unk_E20, 0);
                    ov94_0223CF80(param0, GTS_Text_PleaseWaitAWhile, TEXT_SPEED_FAST, 0, 0xf0f);
                    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 11, 5);
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                    param0->frameDelay = 0;
                }
            }
            break;
        case 1: // seek pokemon
            ov94_Setunk_18Andunk_24(param0, 4, 0);
            param0->currentScreenInstruction = 9;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        case 2: // exit
            ov94_0223CFD8(param0, GTS_Text_IsItOKToDisconnect, ov94_0223C4D4(param0), 0, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 10, 12);
            Sprite_SetAnimateFlag(param0->unk_E20, 0);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        }
    } else if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (param0->unk_10C != 0) {
            param0->unk_10C--;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov94_0223C3FC(param0->unk_E20, Unk_ov94_02245A48[param0->unk_10C][0], Unk_ov94_02245A48[param0->unk_10C][1]);
        }
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (param0->unk_10C < 2) {
            param0->unk_10C++;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov94_0223C3FC(param0->unk_E20, Unk_ov94_02245A48[param0->unk_10C][0], Unk_ov94_02245A48[param0->unk_10C][1]);
        }
    }

    return 3;
}

static int ov94_0223CDD8(GTSApplicationState *param0)
{
    ov94_022440B8(param0, TrainerInfo_Gender(param0->unk_00->unk_1C));

    param0->currentScreenInstruction = 8;
    param0->unk_10F0 = 0;

    return 3;
}

static int ov94_0223CE00(GTSApplicationState *param0)
{
    if (param0->unk_10F0) {
        param0->currentScreenInstruction = 9;
    }

    return 3;
}

static int ov94_0223CE14(GTSApplicationState *param0)
{
    if (param0->unk_18 == 0) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_62);
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_62);
    }

    param0->currentScreenInstruction = 0;

    return 4;
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
            Sprite_SetAnimateFlag(param0->unk_E20, 1);
            param0->currentScreenInstruction = 5;
        } else {
            Window_EraseMessageBox(&param0->unk_109C, 1);
            Window_ClearAndCopyToVRAM(&param0->unk_109C);
            ov94_Setunk_18Andunk_24(param0, 0, 0);
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

static void ov94_0223CF3C(GTSApplicationState *param0)
{
    int v0;
    int v1 = param0->isPokemonListed;

    for (v0 = 0; v0 < 3; v0++) {
        ov94_GTS_MainMenu_RenderButton(&param0->unk_F9C[v0], param0->gtsMessageLoader, GTS_MAIN_MENU_OPTIONS[v1][v0], 0xf0f);
        Window_CopyToVRAM(&param0->unk_F9C[v0]);
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

void ov94_GTS_MainMenu_RenderButton(Window *param0, MessageLoader *gtsMessageLoader, int param2, u16 param3)
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
