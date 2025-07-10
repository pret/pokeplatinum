#include "overlay094/ov94_0223DC04.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/ov94_0223D0C4.h"
#include "overlay094/ov94_022414B8.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/ov94_02244950.h"
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

static void ov94_0223DD1C(BgConfig *param0);
static void ov94_0223DDE0(BgConfig *param0);
static void ov94_0223DE04(GTSApplicationState *param0);
static void ov94_0223DED8(GTSApplicationState *param0);
static void ov94_0223DFA4(GTSApplicationState *param0);
static void ov94_0223DFDC(GTSApplicationState *param0);
static void ov94_0223E074(GTSApplicationState *param0);
static void ov94_0223DE7C(GTSApplicationState *param0);
static void ov94_0223DEC8(GTSApplicationState *param0);
static int ov94_0223E09C(GTSApplicationState *param0);
static int ov94_0223E0A4(GTSApplicationState *param0);
static int ov94_0223E188(GTSApplicationState *param0);
static int ov94_0223E2E0(GTSApplicationState *param0);
static int ov94_0223E1B0(GTSApplicationState *param0);
static int ov94_0223E1D0(GTSApplicationState *param0);
static int ov94_0223E2D0(GTSApplicationState *param0);
static void ov94_0223E240(GTSApplicationState *param0);
static void ov94_0223E358(MessageLoader *param0, Window param1[]);
static void ov94_0223E300(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4);
static void ov94_0223E3B0(Window *param0, MessageLoader *gtsMessageLoader, MessageLoader *param2, GTSPokemonRequirements *param3);
static void ov94_0223E424(Window *param0, Strbuf *param1, Strbuf *param2);

static int (*Unk_ov94_0224682C[])(GTSApplicationState *wk) = {
    ov94_0223E09C,
    ov94_0223E0A4,
    ov94_0223E188,
    ov94_0223E2E0,
    ov94_0223E1B0,
    ov94_0223E1D0,
    ov94_0223E2D0
};

int ov94_0223DC04(GTSApplicationState *param0, int param1)
{
    Pokemon *v0;

    ov94_0223DFDC(param0);
    ov94_0223DD1C(param0->bgConfig);
    ov94_0223DE04(param0);
    ov94_0223DED8(param0);
    ov94_0223DE7C(param0);
    ov94_0223D910(param0->gtsMessageLoader, param0->speciesMessageLoader, param0->stringTemplate, &param0->unk_FCC[0], Pokemon_GetBoxPokemon((Pokemon *)param0->searchResults[param0->selectedSearchResult].pokemon.bytes), &param0->searchResults[param0->selectedSearchResult].unk_EC);

    v0 = (Pokemon *)param0->searchResults[param0->selectedSearchResult].pokemon.bytes;

    ov94_0223DA78(param0->gtsMessageLoader, &param0->unk_FCC[5], param0->searchResults[param0->selectedSearchResult].unk_10C, v0, &param0->unk_FCC[10]);
    ov94_0223DB2C((Pokemon *)param0->searchResults[param0->selectedSearchResult].pokemon.bytes);
    ov94_0223E358(param0->gtsMessageLoader, &param0->unk_FCC[7]);
    ov94_0223E240(param0);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

    param0->currentScreenInstruction = 0;
    return 2;
}

int ov94_0223DCE4(GTSApplicationState *param0, int param1)
{
    int v0 = (*Unk_ov94_0224682C[param0->currentScreenInstruction])(param0);
    return v0;
}

int ov94_0223DCF8(GTSApplicationState *param0, int param1)
{
    ov94_0223DEC8(param0);
    ov94_0223E074(param0);
    ov94_0223DFA4(param0);
    ov94_0223DDE0(param0->bgConfig);
    GTSApplication_MoveToNextScreen(param0);

    return 1;
}

static void ov94_0223DD1C(BgConfig *param0)
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

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v0, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
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

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v1, 0);
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

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v2, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
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

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v3, 0);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
}

static void ov94_0223DDE0(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
}

static void ov94_0223DE04(GTSApplicationState *param0)
{
    BgConfig *v0 = param0->bgConfig;

    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, 1, 10, Options_Frame(param0->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, (1 + (18 + 12)), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 17, v0, 1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__WORLDTRADE, 7, 0, 0, 16 * 3 * 2, HEAP_ID_62);
}

static void ov94_0223DE7C(GTSApplicationState *param0)
{
    AffineSpriteListTemplate v0;

    GTSApplication_InitAffineTemplate(&v0, param0, &param0->cursorSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0.position.x = FX32_ONE * 208;
    v0.position.y = FX32_ONE * 58;

    param0->unk_F30 = SpriteList_AddAffine(&v0);

    Sprite_SetAnimateFlag(param0->unk_F30, 1);
    Sprite_SetAnim(param0->unk_F30, 37);
    sub_02039734();
}

static void ov94_0223DEC8(GTSApplicationState *param0)
{
    Sprite_Delete(param0->unk_F30);
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

static void ov94_0223DED8(GTSApplicationState *param0)
{
    Window_Add(param0->bgConfig, &param0->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, ((1 + (18 + 12)) + 9));
    Window_FillTilemap(&param0->bottomInstructionWindow, 0x0);
    Window_Add(param0->bgConfig, &param0->unk_F9C[0], 0, 21, 15, (5 * 2), 4, 13, (((1 + (18 + 12)) + 9) + 27 * 2));

    {
        int v0, v1;

        v1 = ((((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4);

        for (v0 = 0; v0 < NELEMS(Unk_ov94_02245CC4); v0++) {
            Window_Add(param0->bgConfig, &param0->unk_FCC[v0], 0, Unk_ov94_02245CC4[v0][0], Unk_ov94_02245CC4[v0][1], Unk_ov94_02245CC4[v0][2], Unk_ov94_02245CC4[v0][3], 13, v1);
            Window_FillTilemap(&param0->unk_FCC[v0], 0x0);

            v1 += Unk_ov94_02245CC4[v0][2] * Unk_ov94_02245CC4[v0][3];
        }
    }
}

static void ov94_0223DFA4(GTSApplicationState *param0)
{
    Window_Remove(&param0->bottomInstructionWindow);
    Window_Remove(&param0->unk_F9C[0]);

    {
        int v0;

        for (v0 = 0; v0 < NELEMS(Unk_ov94_02245CC4); v0++) {
            Window_Remove(&param0->unk_FCC[v0]);
        }
    }
}

static void ov94_0223DFDC(GTSApplicationState *param0)
{
    int v0;
    MessageLoader *v1;
    GTSPokemonListing *v2 = &param0->searchResults[param0->selectedSearchResult];

    param0->genericMessageBuffer = Strbuf_Init((90 * 2), HEAP_ID_62);

    StringTemplate_ClearArgs(param0->stringTemplate);

    if (v2->trainerCountry != 0) {
        StringTemplate_SetCountryName(param0->stringTemplate, 8, v2->trainerCountry);
    }

    if (v2->trainerRegion != 0) {
        StringTemplate_SetCityName(param0->stringTemplate, 9, v2->trainerCountry, v2->trainerRegion);
    }

    param0->unk_BB4[0] = MessageUtil_ExpandedStrbuf(param0->stringTemplate, param0->gtsMessageLoader, 79, HEAP_ID_62);
    param0->unk_BB4[1] = MessageUtil_ExpandedStrbuf(param0->stringTemplate, param0->gtsMessageLoader, 80, HEAP_ID_62);
}

static void ov94_0223E074(GTSApplicationState *param0)
{
    int v0;

    Strbuf_Free(param0->unk_BB4[0]);
    Strbuf_Free(param0->unk_BB4[1]);
    Strbuf_Free(param0->genericMessageBuffer);
}

static int ov94_0223E09C(GTSApplicationState *param0)
{
    param0->currentScreenInstruction = 1;
    return 3;
}

static int ov94_0223E0A4(GTSApplicationState *param0)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        ov94_0223E300(param0, 16, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(param0, 3, 4);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        param0->currentScreenInstruction = 2;
        GTSApplication_SetNextScreenWithArgument(param0, 4, 0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->unk_10E == 0) {
            param0->unk_10E = 1;
            param0->currentScreenInstruction = 6;

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (param0->unk_10E != 0) {
            param0->unk_10E = 0;
            param0->currentScreenInstruction = 6;

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    } else {
        int v0 = ov94_02244214(param0->unk_118);

        if (1) {
            if ((v0 != param0->selectedSearchResult) && (v0 >= 0)) {
                Sprite_SetAnim(param0->avatarSprites[v0 + 1], 16 + v0 * 4);
                param0->currentScreenInstruction = 2;
                GTSApplication_SetNextScreenWithArgument(param0, 3, 0);
                param0->selectedSearchResult = v0;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }
        }
    }

    return 3;
}

static int ov94_0223E188(GTSApplicationState *param0)
{
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

    param0->currentScreenInstruction = 0;
    return 4;
}

static int ov94_0223E1B0(GTSApplicationState *param0)
{
    param0->yesNoMenu = GTSApplication_CreateYesNoMenu(param0->bgConfig, 15, ((((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4 + 262 + 64 + 36));
    param0->currentScreenInstruction = 5;

    return 3;
}

static int ov94_0223E1D0(GTSApplicationState *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->yesNoMenu, HEAP_ID_62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->currentScreenInstruction = 2;
            GTSApplication_SetNextScreenWithArgument(param0, 4, 0);
            ov94_0223E358(param0->gtsMessageLoader, &param0->unk_FCC[7]);
            ov94_0223E240(param0);
        } else {
            param0->currentScreenInstruction = 2;
            GTSApplication_SetNextScreenWithArgument(param0, 5, 6);
            ov94_0223E358(param0->gtsMessageLoader, &param0->unk_FCC[7]);
            ov94_0223E240(param0);
        }
    }

    return 3;
}

static void ov94_0223E240(GTSApplicationState *param0)
{
    if (param0->unk_10E == 0) {
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 27, param0->bgConfig, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
        ov94_0223E3B0(&param0->unk_FCC[9], param0->gtsMessageLoader, param0->speciesMessageLoader, &param0->searchResults[param0->selectedSearchResult].unk_F0);
    } else {
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 28, param0->bgConfig, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
        ov94_0223E424(&param0->unk_FCC[9], param0->unk_BB4[0], param0->unk_BB4[1]);
    }
}

static int ov94_0223E2D0(GTSApplicationState *param0)
{
    ov94_0223E240(param0);
    param0->currentScreenInstruction = 1;

    return 3;
}

static int ov94_0223E2E0(GTSApplicationState *param0)
{
    if (Text_IsPrinterActive(param0->textPrinter) == 0) {
        param0->currentScreenInstruction = param0->nextScreenInstruction;
    }

    return 3;
}

static void ov94_0223E300(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    MessageLoader_GetStrbuf(param0->gtsMessageLoader, param1, param0->genericMessageBuffer);
    Window_FillTilemap(&param0->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->bottomInstructionWindow, 0, 1, 10);

    param0->textPrinter = Text_AddPrinterWithParams(&param0->bottomInstructionWindow, FONT_MESSAGE, param0->genericMessageBuffer, 0, 0, param2, NULL);
}

static void ov94_0223E358(MessageLoader *param0, Window param1[])
{
    Strbuf *v0, *v1;

    v0 = MessageLoader_GetNewStrbuf(param0, 74);
    v1 = MessageLoader_GetNewStrbuf(param0, 78);

    ov94_02245900(&param1[0], v0, 0, 2, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param1[1], v1, 0, 2, 1, TEXT_COLOR(15, 2, 0));

    Strbuf_Free(v0);
    Strbuf_Free(v1);
}

static void ov94_0223E3B0(Window *param0, MessageLoader *gtsMessageLoader, MessageLoader *param2, GTSPokemonRequirements *param3)
{
    Window_FillTilemap(param0, 0x0);

    ov94_02242158(param0, param2, param3->species, 0, 3, TEXT_COLOR(15, 2, 0));
    ov94_02242204(param0, gtsMessageLoader, param3->gender, 0, 3, 70, TEXT_COLOR(15, 2, 0));
    ov94_0224226C(param0 + 1, gtsMessageLoader, ov94_02242970(param3->level, param3->level2, 0), 0, 19, TEXT_COLOR(15, 2, 0), 0, 8);
}

static void ov94_0223E424(Window *param0, Strbuf *param1, Strbuf *param2)
{
    Window_FillTilemap(param0, 0x0);

    if (param1 != NULL) {
        ov94_02245900(param0, param1, 0, 3, 0, TEXT_COLOR(15, 2, 0));
    }

    if (param2 != NULL) {
        ov94_02245900(param0, param2, 8, 19, 0, TEXT_COLOR(15, 2, 0));
    }
}
