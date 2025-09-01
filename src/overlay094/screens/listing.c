#include "overlay094/screens/listing.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/application.h"
#include "overlay094/const_ov94_02245FD8.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/screens/deposit.h"
#include "overlay094/screens/select_pokemon.h"
#include "overlay094/screens/wfc_init.h"

#include "bg_window.h"
#include "character_sprite.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "heap.h"
#include "item.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_020393C8.h"

#include "res/text/bank/gts.h"

static void ov94_0223D1D4(BgConfig *param0);
static void ov94_0223D2BC(BgConfig *param0);
static void ov94_0223D2E8(GTSApplicationState *param0);
static void ov94_0223D438(GTSApplicationState *param0);
static void ov94_0223D504(GTSApplicationState *param0);
static void ov94_0223D53C(GTSApplicationState *param0);
static void ov94_0223D57C(GTSApplicationState *param0);
static void ov94_0223D3DC(GTSApplicationState *param0);
static void ov94_0223D428(GTSApplicationState *param0);
static void ov94_0223DBBC(GTSApplicationState *param0);
static int ov94_0223D5B0(GTSApplicationState *param0);
static int ov94_0223D5B8(GTSApplicationState *param0);
static int ov94_0223D618(GTSApplicationState *param0);
static int ov94_0223D838(GTSApplicationState *param0);
static int ov94_0223D858(GTSApplicationState *param0);
static int ov94_0223D640(GTSApplicationState *param0);
static int ov94_0223D664(GTSApplicationState *param0);
static int ov94_0223D6B8(GTSApplicationState *param0);
static int ov94_0223D754(GTSApplicationState *param0);
static void ov94_0223D88C(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4, Pokemon *param5);

static int (*Unk_ov94_02246808[])(GTSApplicationState *) = {
    ov94_0223D5B0,
    ov94_0223D5B8,
    ov94_0223D618,
    ov94_0223D838,
    ov94_0223D858,
    ov94_0223D640,
    ov94_0223D664,
    ov94_0223D6B8,
    ov94_0223D754
};

int GTSApplication_Listing_Init(GTSApplicationState *appState, int unused)
{
    ov94_0223D53C(appState);
    ov94_0223D1D4(appState->bgConfig);
    ov94_0223D2E8(appState);
    ov94_0223D438(appState);
    ov94_0223D3DC(appState);
    ov94_0223D910(appState->gtsMessageLoader, appState->speciesMessageLoader, appState->stringTemplate, &appState->unk_FCC[0], Pokemon_GetBoxPokemon((Pokemon *)appState->receivedListing.pokemon.bytes), &appState->receivedListing.unk_EC);

    Pokemon *mon = (Pokemon *)appState->receivedListing.pokemon.bytes;

    ov94_0223DA78(appState->gtsMessageLoader, &appState->unk_FCC[5], appState->receivedListing.unk_10C, mon, &appState->unk_FCC[10]);
    ov94_02242368(appState->gtsMessageLoader, appState->speciesMessageLoader, appState->stringTemplate, &appState->unk_FCC[7], appState->receivedListing.unk_F0.species, appState->receivedListing.unk_F0.gender, ov94_02242970(appState->receivedListing.unk_F0.level, appState->receivedListing.unk_F0.level2, 0));
    ov94_0223DB2C((Pokemon *)appState->receivedListing.pokemon.bytes);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);

    appState->currentScreenInstruction = 0;

    return 2;
}

int GTSApplication_Listing_Main(GTSApplicationState *appState, int unused)
{
    return (*Unk_ov94_02246808[appState->currentScreenInstruction])(appState);
}

int GTSApplication_Listing_Exit(GTSApplicationState *appState, int unused)
{
    ov94_0223D428(appState);
    ov94_0223D57C(appState);
    ov94_0223D504(appState);
    ov94_0223D2BC(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return 1;
}

static void ov94_0223D1D4(BgConfig *param0)
{
    {
        BgTemplate v0 = {
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

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v0, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v1 = {
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

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v1, 0);
    }

    {
        BgTemplate v2 = {
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

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v2, 0);
    }

    {
        BgTemplate v3 = {
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

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v3, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
    }

    {
        BgTemplate v4 = {
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

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v4, 0);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
}

static void ov94_0223D2BC(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
}

static void ov94_0223D2E8(GTSApplicationState *param0)
{
    BgConfig *v0 = param0->bgConfig;
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(v1, 7, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Graphics_LoadPaletteFromOpenNARC(v1, 5, 4, 0, 16 * 8 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, 1, 10, Options_Frame(param0->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, 1 + (18 + 12), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 17, v0, 1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 25, v0, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 15, v0, 5, 0, 32 * 21 * 0x40, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 31, v0, 5, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    NARC_dtor(v1);
}

static void ov94_0223D3DC(GTSApplicationState *param0)
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

static void ov94_0223D428(GTSApplicationState *param0)
{
    Sprite_Delete(param0->unk_F30);
}

static const int Unk_ov94_02245B94[][4] = {
    { 0x1, 0x2, 0xA, 0x2 },
    { 0xC, 0x2, 0x8, 0x2 },
    { 0xE, 0x4, 0x7, 0x2 },
    { 0x1, 0x7, 0x6, 0x2 },
    { 0x7, 0x7, 0xB, 0x2 },
    { 0x2, 0xA, 0x9, 0x2 },
    { 0xC, 0xA, 0x8, 0x2 },
    { 0x2, 0xF, 0xC, 0x2 },
    { 0x4, 0x11, 0xA, 0x2 },
    { 0x10, 0x11, 0xC, 0x2 },
    { 0x1, 0x5, 0x5, 0x2 },
    { 0x7, 0x5, 0x7, 0x2 }
};

static void ov94_0223D438(GTSApplicationState *param0)
{
    Window_Add(param0->bgConfig, &param0->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, (1 + (18 + 12)) + 9);
    Window_FillTilemap(&param0->bottomInstructionWindow, 0x0);
    Window_Add(param0->bgConfig, &param0->unk_F9C[0], 0, 21, 15, 5 * 2, 4, 13, ((1 + (18 + 12)) + 9) + 27 * 2);

    {
        int v0, v1;

        v1 = ((((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4);

        for (v0 = 0; v0 < 10 + 2; v0++) {
            Window_Add(param0->bgConfig, &param0->unk_FCC[v0], 0, Unk_ov94_02245B94[v0][0], Unk_ov94_02245B94[v0][1], Unk_ov94_02245B94[v0][2], Unk_ov94_02245B94[v0][3], 13, v1);
            Window_FillTilemap(&param0->unk_FCC[v0], 0x0);

            v1 += Unk_ov94_02245B94[v0][2] * Unk_ov94_02245B94[v0][3];
        }
    }
}

static void ov94_0223D504(GTSApplicationState *param0)
{
    Window_Remove(&param0->bottomInstructionWindow);
    Window_Remove(&param0->unk_F9C[0]);

    {
        int v0;

        for (v0 = 0; v0 < 10 + 2; v0++) {
            Window_Remove(&param0->unk_FCC[v0]);
        }
    }
}

static void ov94_0223D53C(GTSApplicationState *param0)
{
    int v0;

    param0->genericMessageBuffer = Strbuf_Init(90 * 2, HEAP_ID_62);
    param0->title = MessageLoader_GetNewStrbuf(param0->gtsMessageLoader, GTS_Text_MainMenu_Title);

    for (v0 = 0; v0 < 10; v0++) {
        param0->unk_BB4[v0] = Strbuf_Init(10 * 2, HEAP_ID_62);
    }
}

static void ov94_0223D57C(GTSApplicationState *param0)
{
    int v0;

    for (v0 = 0; v0 < 10; v0++) {
        Strbuf_Free(param0->unk_BB4[v0]);
    }

    Strbuf_Free(param0->genericMessageBuffer);
    Strbuf_Free(param0->title);
}

static int ov94_0223D5B0(GTSApplicationState *param0)
{
    param0->currentScreenInstruction = 1;
    return 3;
}

static int ov94_0223D5B8(GTSApplicationState *param0)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        ov94_0223D88C(param0, GTS_Text_Selection_DoWhat, TEXT_SPEED_FAST, 0, 0xf0f, (Pokemon *)param0->receivedListing.pokemon.bytes);
        GTSApplication_SetCurrentAndNextScreenInstruction(param0, 3, 7);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        param0->currentScreenInstruction = 2;
        GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return 3;
}

static int ov94_0223D618(GTSApplicationState *param0)
{
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);

    param0->currentScreenInstruction = 0;
    return 4;
}

static int ov94_0223D640(GTSApplicationState *param0)
{
    param0->yesNoMenu = GTSApplication_CreateYesNoMenu(param0->bgConfig, 15, (((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4 + 200 + 12);
    param0->currentScreenInstruction = 6;

    return 3;
}

static int ov94_0223D664(GTSApplicationState *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->yesNoMenu, HEAP_ID_62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->currentScreenInstruction = 0;
            Window_EraseMessageBox(&param0->bottomInstructionWindow, 0);
        } else {
            param0->currentScreenInstruction = 2;
            param0->fadeBothScreens = 1;
            GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_TAKE_BACK_POKEMON);
        }

        ov94_0223DBBC(param0);
    }

    return 3;
}

static int ov94_0223D6B8(GTSApplicationState *param0)
{
    MenuTemplate v0;

    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = 2;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    param0->unk_10CC = StringList_New(2, HEAP_ID_62);

    StringList_AddFromMessageBank(param0->unk_10CC, param0->gtsMessageLoader, GTS_Text_MenuOption_TakeBack, 1);
    StringList_AddFromMessageBank(param0->unk_10CC, param0->gtsMessageLoader, GTS_Text_MenuOption_LeaveAsIs, 2);

    v0.choices = param0->unk_10CC;
    v0.window = &param0->unk_F9C[0];

    Window_DrawStandardFrame(&param0->unk_F9C[0], 0, 1 + (18 + 12), 11);

    param0->unk_10D4 = Menu_NewAndCopyToVRAM(&v0, 9, 0, 0, 62, PAD_BUTTON_B);
    param0->currentScreenInstruction = 8;

    return 3;
}

static int ov94_0223D754(GTSApplicationState *param0)
{
    switch (Menu_ProcessInput(param0->unk_10D4)) {
    case 1:
        Menu_Free(param0->unk_10D4, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);

        {
            Pokemon *v0 = (Pokemon *)param0->receivedListing.pokemon.bytes;

            if (Pokemon_IsHoldingMail(v0)) {
                if (Party_GetCurrentCount(param0->playerData->party) == MAX_PARTY_SIZE) {
                    ov94_0223D88C(param0, GTS_Text_Error_NoRoomInParty, TEXT_SPEED_FAST, 0, 0xf0f, v0);
                    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 3, 1);
                    return 3;
                }
            }

            ov94_0223D88C(param0, GTS_Text_WillYouTakeThis, TEXT_SPEED_FAST, 0, 0xf0f, v0);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 3, 5);
        }

        ov94_0223DBBC(param0);
        break;
    case 2:
    case 0xfffffffe:
        Menu_Free(param0->unk_10D4, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);

        param0->currentScreenInstruction = 2;

        GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
        ov94_0223DBBC(param0);
        break;
    }

    return 3;
}

static int ov94_0223D838(GTSApplicationState *param0)
{
    if (Text_IsPrinterActive(param0->textPrinter) == 0) {
        param0->currentScreenInstruction = param0->nextScreenInstruction;
    }

    return 3;
}

static int ov94_0223D858(GTSApplicationState *param0)
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

static void ov94_0223D88C(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4, Pokemon *param5)
{
    Strbuf *v0;

    StringTemplate_SetSpeciesName(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(param5));
    v0 = MessageLoader_GetNewStrbuf(param0->gtsMessageLoader, param1);
    StringTemplate_Format(param0->stringTemplate, param0->genericMessageBuffer, v0);
    Window_FillTilemap(&param0->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->bottomInstructionWindow, 0, 1, 10);

    param0->textPrinter = Text_AddPrinterWithParams(&param0->bottomInstructionWindow, FONT_MESSAGE, param0->genericMessageBuffer, 0, 0, param2, NULL);

    Strbuf_Free(v0);
}

static TextColor Unk_ov94_022467FC[] = {
    TEXT_COLOR(0, 0, 0),
    TEXT_COLOR(5, 6, 0),
    TEXT_COLOR(3, 4, 0)
};

void ov94_0223D910(MessageLoader *param0, MessageLoader *param1, StringTemplate *param2, Window param3[], BoxPokemon *boxMon, GTSPokemonCriteria *param5)
{
    Strbuf *v0, *v1, *v2, *v3;
    Strbuf *v4 = Strbuf_Init((10 + 1) * 2, HEAP_ID_62);
    Strbuf *v5 = Strbuf_Init((8 + 1) * 2, HEAP_ID_62);
    int gender, level, item, v9, species;

    BoxPokemon_GetValue(boxMon, MON_DATA_NICKNAME_STRING, v4);

    species = param5->species;
    gender = param5->gender;
    level = param5->level;
    item = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    v3 = MessageLoader_GetNewStrbuf(param0, GTS_Text_Item);
    v1 = MessageLoader_GetNewStrbuf(param0, gGTSGenderPreferenceMessages[gender]);

    StringTemplate_SetNumber(param2, 3, level, 3, 0, 1);

    v2 = MessageUtil_ExpandedStrbuf(param2, param0, GTS_Text_LevelTemplate, HEAP_ID_62);
    v0 = MessageLoader_GetNewStrbuf(param1, species);

    Item_LoadName(v5, item, HEAP_ID_62);

    for (v9 = 0; v9 < 5; v9++) {
        Window_FillTilemap(&param3[v9], 0x0);
    }

    ov94_02245900(&param3[0], v4, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    if (gender != GENDER_NONE + 1) {
        ov94_02245900(&param3[0], v1, 70, 0, 0, Unk_ov94_022467FC[gender]);
    }

    ov94_02245900(&param3[1], v0, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param3[2], v2, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param3[3], v3, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param3[4], v5, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    Strbuf_Free(v3);
    Strbuf_Free(v5);
    Strbuf_Free(v2);
    Strbuf_Free(v1);
    Strbuf_Free(v4);
    Strbuf_Free(v0);
}

void ov94_0223DA78(MessageLoader *param0, Window param1[], u16 *param2, Pokemon *param3, Window param4[])
{
    Strbuf *v0, *v1;
    Strbuf *v2, *v3;

    v0 = Strbuf_Init((7 + 1) * 2, HEAP_ID_62);
    v3 = Strbuf_Init((7 + 1) * 2, HEAP_ID_62);

    v1 = MessageLoader_GetNewStrbuf(param0, pl_msg_00000671_00048);
    Strbuf_CopyChars(v0, param2);

    v2 = MessageLoader_GetNewStrbuf(param0, pl_msg_00000671_00172);
    Pokemon_GetValue(param3, MON_DATA_OT_NAME_STRING, v3);

    ov94_02245900(&param1[0], v1, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param1[1], v0, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param4[0], v2, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param4[1], v3, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    Strbuf_Free(v1);
    Strbuf_Free(v0);
    Strbuf_Free(v2);
    Strbuf_Free(v3);
}

void ov94_0223DB2C(Pokemon *param0)
{
    PokemonSpriteTemplate v0;
    u8 *v1 = Heap_Alloc(HEAP_ID_62, 0x20 * 10 * 10);

    Pokemon_BuildSpriteTemplate(&v0, param0, 2);

    {
        int personality = Pokemon_GetValue(param0, MON_DATA_PERSONALITY, NULL);
        enum Species species = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);

        CharacterSprite_LoadPokemonSpriteRect(v0.narcID, v0.character, HEAP_ID_62, 0, 0, 10, 10, v1, personality, FALSE, FACE_FRONT, species);
    }

    DC_FlushRange(v1, 0x20 * 10 * 10);
    GX_LoadOBJ(v1, (18 * 32 + 16) * 32, 0x20 * 10 * 10);

    Graphics_LoadPalette(v0.narcID, v0.palette, 1, 0x20 * 13, 32, HEAP_ID_62);
    Heap_Free(v1);
}

static void ov94_0223DBBC(GTSApplicationState *param0)
{
    ov94_02242368(param0->gtsMessageLoader, param0->speciesMessageLoader, param0->stringTemplate, &param0->unk_FCC[7], param0->receivedListing.unk_F0.species, param0->receivedListing.unk_F0.gender, ov94_02242970(param0->receivedListing.unk_F0.level, param0->receivedListing.unk_F0.level2, 0));
}
