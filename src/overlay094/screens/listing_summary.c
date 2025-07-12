#include "overlay094/screens/listing_summary.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/gts.h"

#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/screens/deposit.h"
#include "overlay094/screens/summary.h"
#include "overlay094/screens/wfc_init.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "pokemon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_020393C8.h"

#include "res/text/bank/gts.h"

static void ov94_0223DD1C(BgConfig *bgConfig);
static void ov94_0223DDE0(BgConfig *bgConfig);
static void ov94_0223DE04(GTSApplicationState *appState);
static void ov94_0223DED8(GTSApplicationState *appState);
static void ov94_0223DFA4(GTSApplicationState *appState);
static void ov94_0223DFDC(GTSApplicationState *appState);
static void ov94_0223E074(GTSApplicationState *appState);
static void ov94_0223DE7C(GTSApplicationState *appState);
static void ov94_0223DEC8(GTSApplicationState *appState);
static int ov94_0223E09C(GTSApplicationState *appState);
static int ov94_0223E0A4(GTSApplicationState *appState);
static int ov94_0223E188(GTSApplicationState *appState);
static int ov94_0223E2E0(GTSApplicationState *appState);
static int ov94_0223E1B0(GTSApplicationState *appState);
static int ov94_0223E1D0(GTSApplicationState *appState);
static int ov94_0223E2D0(GTSApplicationState *appState);
static void ov94_0223E240(GTSApplicationState *appState);
static void ov94_0223E358(MessageLoader *messageLoader, Window windows[]);
static void ov94_0223E300(GTSApplicationState *appState, int messageId, int textSpeed, int unused3, u16 unused4);
static void ov94_0223E3B0(Window *window, MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, GTSPokemonRequirements *requirements);
static void ov94_0223E424(Window *window, Strbuf *countryStrbuf, Strbuf *cityStrbuf);

static int (*sGTSListingSummaryScreenStates[])(GTSApplicationState *wk) = {
    ov94_0223E09C,
    ov94_0223E0A4,
    ov94_0223E188,
    ov94_0223E2E0,
    ov94_0223E1B0,
    ov94_0223E1D0,
    ov94_0223E2D0
};

int GTSApplication_ListingSummary_Init(GTSApplicationState *appState, int unused1)
{

    ov94_0223DFDC(appState);
    ov94_0223DD1C(appState->bgConfig);
    ov94_0223DE04(appState);
    ov94_0223DED8(appState);
    ov94_0223DE7C(appState);
    ov94_0223D910(appState->gtsMessageLoader, appState->speciesMessageLoader, appState->stringTemplate, &appState->unk_FCC[0], Pokemon_GetBoxPokemon((Pokemon *)appState->searchResults[appState->selectedSearchResult].pokemon.bytes), &appState->searchResults[appState->selectedSearchResult].unk_EC);

    Pokemon *mon = (Pokemon *)appState->searchResults[appState->selectedSearchResult].pokemon.bytes;

    ov94_0223DA78(appState->gtsMessageLoader, &appState->unk_FCC[5], appState->searchResults[appState->selectedSearchResult].unk_10C, mon, &appState->unk_FCC[10]);
    ov94_0223DB2C((Pokemon *)appState->searchResults[appState->selectedSearchResult].pokemon.bytes);
    ov94_0223E358(appState->gtsMessageLoader, &appState->unk_FCC[7]);
    ov94_0223E240(appState);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

    appState->currentScreenInstruction = 0;
    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_ListingSummary_Main(GTSApplicationState *appState, int unused1)
{
    return (*sGTSListingSummaryScreenStates[appState->currentScreenInstruction])(appState);
}

int GTSApplication_ListingSummary_Exit(GTSApplicationState *appState, int unused1)
{
    ov94_0223DEC8(appState);
    ov94_0223E074(appState);
    ov94_0223DFA4(appState);
    ov94_0223DDE0(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return GTS_LOOP_STATE_INIT;
}

static void ov94_0223DD1C(BgConfig *bgConfig)
{
    {
        BgTemplate v0 = {
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

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &v0, 0);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v1 = {
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

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &v1, 0);
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
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &v2, 0);
        Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);
    }

    {
        BgTemplate v3 = {
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

        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &v3, 0);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
}

static void ov94_0223DDE0(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void ov94_0223DE04(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;

    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, (1 + (18 + 12)), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 17, bgConfig, 1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__WORLDTRADE, 7, 0, 0, 16 * 3 * 2, HEAP_ID_62);
}

static void ov94_0223DE7C(GTSApplicationState *appState)
{
    AffineSpriteListTemplate template;

    GTSApplication_InitAffineTemplate(&template, appState, &appState->cursorSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

    template.position.x = FX32_ONE * 208;
    template.position.y = FX32_ONE * 58;

    appState->unk_F30 = SpriteList_AddAffine(&template);

    Sprite_SetAnimateFlag(appState->unk_F30, 1);
    Sprite_SetAnim(appState->unk_F30, 37);
    sub_02039734();
}

static void ov94_0223DEC8(GTSApplicationState *appState)
{
    Sprite_Delete(appState->unk_F30);
}

static const int Unk_ov94_02245CC4[][4] = {
    { 0x1, 0x2, 0xA, 0x2 },
    { 0xC, 0x2, 0x8, 0x2 },
    { 0xE, 0x4, 0x7, 0x2 },
    { 0x1, 0x7, 0x6, 0x2 },
    { 0x7, 0x7, 0xB, 0x2 },
    { 0x2, 0xA, 0x9, 0x2 },
    { 0xC, 0xA, 0x8, 0x2 },
    { 0x3, 0xD, 0x9, 0x2 },
    { 0x10, 0xD, 0xD, 0x2 },
    { 0x2, 0xF, 0x1C, 0x5 },
    { 0x1, 0x5, 0x5, 0x2 },
    { 0x7, 0x5, 0x7, 0x2 }
};

static void ov94_0223DED8(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, ((1 + (18 + 12)) + 9));
    Window_FillTilemap(&appState->bottomInstructionWindow, 0x0);
    Window_Add(appState->bgConfig, &appState->unk_F9C[0], 0, 21, 15, (5 * 2), 4, 13, (((1 + (18 + 12)) + 9) + 27 * 2));

    {
        int v1 = ((((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4);

        for (int i = 0; i < NELEMS(Unk_ov94_02245CC4); i++) {
            Window_Add(appState->bgConfig, &appState->unk_FCC[i], 0, Unk_ov94_02245CC4[i][0], Unk_ov94_02245CC4[i][1], Unk_ov94_02245CC4[i][2], Unk_ov94_02245CC4[i][3], 13, v1);
            Window_FillTilemap(&appState->unk_FCC[i], 0x0);

            v1 += Unk_ov94_02245CC4[i][2] * Unk_ov94_02245CC4[i][3];
        }
    }
}

static void ov94_0223DFA4(GTSApplicationState *appState)
{
    Window_Remove(&appState->bottomInstructionWindow);
    Window_Remove(&appState->unk_F9C[0]);

    {
        for (int i = 0; i < NELEMS(Unk_ov94_02245CC4); i++) {
            Window_Remove(&appState->unk_FCC[i]);
        }
    }
}

static void ov94_0223DFDC(GTSApplicationState *appState)
{
    GTSPokemonListing *listing = &appState->searchResults[appState->selectedSearchResult];

    appState->genericMessageBuffer = Strbuf_Init((90 * 2), HEAP_ID_62);

    StringTemplate_ClearArgs(appState->stringTemplate);

    if (listing->trainerCountry != 0) {
        StringTemplate_SetCountryName(appState->stringTemplate, 8, listing->trainerCountry);
    }

    if (listing->trainerRegion != 0) {
        StringTemplate_SetCityName(appState->stringTemplate, 9, listing->trainerCountry, listing->trainerRegion);
    }

    appState->unk_BB4[0] = MessageUtil_ExpandedStrbuf(appState->stringTemplate, appState->gtsMessageLoader, Text_Gts_Template_Country, HEAP_ID_62);
    appState->unk_BB4[1] = MessageUtil_ExpandedStrbuf(appState->stringTemplate, appState->gtsMessageLoader, Text_Gts_Template_City, HEAP_ID_62);
}

static void ov94_0223E074(GTSApplicationState *appState)
{
    Strbuf_Free(appState->unk_BB4[0]);
    Strbuf_Free(appState->unk_BB4[1]);
    Strbuf_Free(appState->genericMessageBuffer);
}

static int ov94_0223E09C(GTSApplicationState *appState)
{
    appState->currentScreenInstruction = 1;
    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223E0A4(GTSApplicationState *appState)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        ov94_0223E300(appState, Gts_Text_TradeForThisPokemon, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, 3, 4);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        appState->currentScreenInstruction = 2;
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SEARCH, 0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (appState->unk_10E == 0) {
            appState->unk_10E = 1;
            appState->currentScreenInstruction = 6;

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (appState->unk_10E != 0) {
            appState->unk_10E = 0;
            appState->currentScreenInstruction = 6;

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    } else {
        int newSelectedResult = ov94_02244214(appState->unk_118);

        if ((newSelectedResult != appState->selectedSearchResult) && (newSelectedResult >= 0)) {
            Sprite_SetAnim(appState->avatarSprites[newSelectedResult + 1], 16 + newSelectedResult * 4);
            appState->currentScreenInstruction = 2;
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_LISTING_SUMMARY, 0);
            appState->selectedSearchResult = newSelectedResult;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223E188(GTSApplicationState *appState)
{
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

    appState->currentScreenInstruction = 0;
    return GTS_LOOP_STATE_FINISH;
}

static int ov94_0223E1B0(GTSApplicationState *appState)
{
    appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 15, ((((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4 + 262 + 64 + 36));
    appState->currentScreenInstruction = 5;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223E1D0(GTSApplicationState *appState)
{
    int v0 = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            appState->currentScreenInstruction = 2;
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SEARCH, 0);
            ov94_0223E358(appState->gtsMessageLoader, &appState->unk_FCC[7]);
            ov94_0223E240(appState);
        } else {
            appState->currentScreenInstruction = 2;
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SELECT_POKEMON, 6);
            ov94_0223E358(appState->gtsMessageLoader, &appState->unk_FCC[7]);
            ov94_0223E240(appState);
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static void ov94_0223E240(GTSApplicationState *appState)
{
    if (appState->unk_10E == 0) {
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 27, appState->bgConfig, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
        ov94_0223E3B0(&appState->unk_FCC[9], appState->gtsMessageLoader, appState->speciesMessageLoader, &appState->searchResults[appState->selectedSearchResult].unk_F0);
    } else {
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 28, appState->bgConfig, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
        ov94_0223E424(&appState->unk_FCC[9], appState->unk_BB4[0], appState->unk_BB4[1]);
    }
}

static int ov94_0223E2D0(GTSApplicationState *appState)
{
    ov94_0223E240(appState);
    appState->currentScreenInstruction = 1;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0223E2E0(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

static void ov94_0223E300(GTSApplicationState *appState, int messageId, int textSpeed, int unused3, u16 unused4)
{
    MessageLoader_GetStrbuf(appState->gtsMessageLoader, messageId, appState->genericMessageBuffer);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->bottomInstructionWindow, 0, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->bottomInstructionWindow, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, textSpeed, NULL);
}

static void ov94_0223E358(MessageLoader *messageLoader, Window windows[])
{
    Strbuf *wantedHeader = MessageLoader_GetNewStrbuf(messageLoader, Gts_Text_WantedPokemon);
    Strbuf *locationHeader = MessageLoader_GetNewStrbuf(messageLoader, Gts_Text_OTLocation);

    ov94_02245900(&windows[0], wantedHeader, 0, 2, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&windows[1], locationHeader, 0, 2, 1, TEXT_COLOR(15, 2, 0));

    Strbuf_Free(wantedHeader);
    Strbuf_Free(locationHeader);
}

static void ov94_0223E3B0(Window *window, MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, GTSPokemonRequirements *requirements)
{
    Window_FillTilemap(window, 0x0);

    ov94_02242158(window, speciesMessageLoader, requirements->species, 0, 3, TEXT_COLOR(15, 2, 0));
    ov94_02242204(window, gtsMessageLoader, requirements->gender, 0, 3, 70, TEXT_COLOR(15, 2, 0));
    ov94_0224226C(window + 1, gtsMessageLoader, ov94_02242970(requirements->level, requirements->level2, 0), 0, 19, TEXT_COLOR(15, 2, 0), 0, 8);
}

static void ov94_0223E424(Window *window, Strbuf *countryStrbuf, Strbuf *cityStrbuf)
{
    Window_FillTilemap(window, 0x0);

    if (countryStrbuf != NULL) {
        ov94_02245900(window, countryStrbuf, 0, 3, 0, TEXT_COLOR(15, 2, 0));
    }

    if (cityStrbuf != NULL) {
        ov94_02245900(window, cityStrbuf, 8, 19, 0, TEXT_COLOR(15, 2, 0));
    }
}
