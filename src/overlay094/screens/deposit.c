#include "overlay094/screens/deposit.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/species.h"
#include "generated/gender_ratios.h"
#include "generated/species_data_params.h"

#include "struct_decls/pokedexdata_decl.h"

#include "overlay094/application.h"
#include "overlay094/const_ov94_02245FD4.h"
#include "overlay094/const_ov94_02245FD8.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/screens/select_pokemon.h"
#include "overlay094/screens/wfc_init.h"
#include "overlay094/struct_ov94_02242AAC.h"

#include "bg_window.h"
#include "charcode_util.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "pokedex.h"
#include "pokemon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0202C858.h"
#include "unk_020393C8.h"

#include "res/text/bank/country_names.h"
#include "res/text/bank/gts.h"

typedef struct GTSLevelRangeMessage {
    int unk_00;
    s16 level;
    s16 level2;
} GTSLevelRangeMessage;

static void ov94_0224158C(GTSApplicationState *appState, int param1, int param2, int param3, u16 param4);
static void ov94_022415F8(BgConfig *bgConfig);
static void ov94_022416E0(BgConfig *bgConfig);
static void ov94_0224170C(GTSApplicationState *appState);
static void ov94_022417A0(GTSApplicationState *appState);
static void ov94_02241880(GTSApplicationState *appState);
static void ov94_022418B8(GTSApplicationState *appState);
static void ov94_02241920(GTSApplicationState *appState);
static int ov94_0224195C(GTSApplicationState *appState);
static int ov94_02241990(GTSApplicationState *appState);
static int ov94_02241A1C(GTSApplicationState *appState);
static int ov94_02241A58(GTSApplicationState *appState);
static int ov94_02241B2C(GTSApplicationState *appState);
static int ov94_02241BAC(GTSApplicationState *appState);
static int ov94_022420E4(GTSApplicationState *appState);
static int ov94_02242138(GTSApplicationState *appState);
static void ov94_022423FC(MessageLoader *gtsMessageLoader, StringTemplate *template, Window windows[], BoxPokemon *boxMon, GTSPokemonCriteria *criteria);
static int ov94_02241DA0(GTSApplicationState *appState);
static int ov94_02241D64(GTSApplicationState *appState);
static int ov94_02241D08(GTSApplicationState *appState);
static int ov94_02241E8C(GTSApplicationState *appState);
static int ov94_02241F28(GTSApplicationState *appState);
static int ov94_02241EE8(GTSApplicationState *appState);
static int ov94_02242040(GTSApplicationState *appState);
static int ov94_02242068(GTSApplicationState *appState);
static int ov94_0224208C(GTSApplicationState *appState);
static void ov94_02242668(GTSPokemonListing *listing, GTSApplicationState *appState);
static int ov94_02242718(StringList **stringList, MessageLoader *speciesMessageLoader, MessageLoader *gtsMessageLoader, u16 *species, u8 *unused4, int unused5, int charpad, Pokedex *pokedex);
static TextColor ov94_022421E8(int index, TextColor fallback);

static int (*Unk_ov94_0224695C[])(GTSApplicationState *) = {
    ov94_0224195C,
    ov94_02241990,
    ov94_022420E4,
    ov94_02241A1C,
    ov94_02241A58,
    ov94_02241B2C,
    ov94_02241BAC,
    ov94_02241D08,
    ov94_02241D64,
    ov94_02241DA0,
    ov94_02241E8C,
    ov94_02241EE8,
    ov94_02241F28,
    ov94_02242040,
    ov94_02242068,
    ov94_0224208C,
    ov94_02242138
};

static const u16 Unk_ov94_02245FE8[6][2] = {
    { 0x1, 0x4 },
    { 0x3, 0x6 },
    { 0x1, 0x8 },
    { 0x1, 0xD },
    { 0x3, 0xF },
    { 0x1, 0x11 }
};

static const GTSLevelRangeMessage gtsLevelPreferenceMessages[] = {
    { GTS_Text_LevelPreference_Any, 0, 0 },
    { GTS_Text_LevelPreference_UnderLevel10, 0, 9 },
    { GTS_Text_LevelPreference_Level10AndUp, 10, 0 },
    { GTS_Text_LevelPreference_Level20AndUp, 20, 0 },
    { GTS_Text_LevelPreference_Level30AndUp, 30, 0 },
    { GTS_Text_LevelPreference_Level40AndUp, 40, 0 },
    { GTS_Text_LevelPreference_Level50AndUp, 50, 0 },
    { GTS_Text_LevelPreference_Level60AndUp, 60, 0 },
    { GTS_Text_LevelPreference_Level70AndUp, 70, 0 },
    { GTS_Text_LevelPreference_Level80AndUp, 80, 0 },
    { GTS_Text_LevelPreference_Level90AndUp, 90, 0 },
    { GTS_Text_LevelPreference_Level100, 100, 100 },
    { GTS_Text_LevelPreference_Cancel, 0, 0 }
};

static const GTSLevelRangeMessage gtsLevelRangeMessages[] = {
    { GTS_Text_LevelRange_Any, 0, 0 },
    { GTS_Text_LevelRange_1to10, 1, 10 },
    { GTS_Text_LevelRange_11to20, 11, 20 },
    { GTS_Text_LevelRange_21to30, 21, 30 },
    { GTS_Text_LevelRange_31to40, 31, 40 },
    { GTS_Text_LevelRange_41to50, 41, 50 },
    { GTS_Text_LevelRange_51to60, 51, 60 },
    { GTS_Text_LevelRange_61to70, 61, 70 },
    { GTS_Text_LevelRange_71to80, 71, 80 },
    { GTS_Text_LevelRange_81to90, 81, 90 },
    { GTS_Text_LevelRange_91to100, 91, 100 },
    { GTS_Text_LevelRange_Cancel, 0, 0 }
};

__attribute__((aligned(4))) static const u16 gtsAvailableCountries[] = {
    Country_Text_Afghanistan,
    Country_Text_Albania,
    Country_Text_Algeria,
    Country_Text_Angola,
    Country_Text_AntiguaAndBarbuda,
    Country_Text_Argentina,
    Country_Text_Australia,
    Country_Text_Austria,
    Country_Text_Bahamas,
    Country_Text_Bahrain,
    Country_Text_Bangladesh,
    Country_Text_Barbados,
    Country_Text_Belgium,
    Country_Text_Belize,
    Country_Text_Benin,
    Country_Text_Bermuda,
    Country_Text_Bolivia,
    Country_Text_Botswana,
    Country_Text_Brazil,
    Country_Text_BritishVirginIslands,
    Country_Text_Bulgaria,
    Country_Text_Burundi,
    Country_Text_Cambodia,
    Country_Text_Cameroon,
    Country_Text_Canada,
    Country_Text_Chad,
    Country_Text_Chile,
    Country_Text_China,
    Country_Text_Colombia,
    Country_Text_Congo,
    Country_Text_CookIslands,
    Country_Text_CostaRica,
    Country_Text_Croatia,
    Country_Text_Cyprus,
    Country_Text_CzechRepublic,
    Country_Text_Denmark,
    Country_Text_Dominica,
    Country_Text_DominicanRepublic,
    Country_Text_Ecuador,
    Country_Text_Egypt,
    Country_Text_ElSalvador,
    Country_Text_Fiji,
    Country_Text_Finland,
    Country_Text_France,
    Country_Text_FrenchGuiana,
    Country_Text_Gabon,
    Country_Text_Germany,
    Country_Text_Ghana,
    Country_Text_Gibraltar,
    Country_Text_Greece,
    Country_Text_Greenland,
    Country_Text_Grenada,
    Country_Text_Guadeloupe,
    Country_Text_Guatemala,
    Country_Text_Guinea,
    Country_Text_Guyana,
    Country_Text_Haiti,
    Country_Text_Honduras,
    Country_Text_HongKong,
    Country_Text_Hungary,
    Country_Text_Iceland,
    Country_Text_India,
    Country_Text_Indonesia,
    Country_Text_Iraq,
    Country_Text_Ireland,
    Country_Text_Israel,
    Country_Text_Italy,
    Country_Text_Jamaica,
    Country_Text_Japan,
    Country_Text_Jordan,
    Country_Text_Kenya,
    Country_Text_Kuwait,
    Country_Text_Lebanon,
    Country_Text_Liberia,
    Country_Text_Libya,
    Country_Text_Luxembourg,
    Country_Text_Macau,
    Country_Text_Malaysia,
    Country_Text_Malta,
    Country_Text_Martinique,
    Country_Text_Mauritius,
    Country_Text_Mexico,
    Country_Text_Morocco,
    Country_Text_Myanmar,
    Country_Text_Netherlands,
    Country_Text_NewCaledonia,
    Country_Text_NewZealand,
    Country_Text_Nicaragua,
    Country_Text_Niger,
    Country_Text_Nigeria,
    Country_Text_Norway,
    Country_Text_Oman,
    Country_Text_Pakistan,
    Country_Text_Panama,
    Country_Text_PapuaNewGuinea,
    Country_Text_Peru,
    Country_Text_Philippines,
    Country_Text_Poland,
    Country_Text_Portugal,
    Country_Text_SouthKorea,
    Country_Text_Romania,
    Country_Text_Russia,
    Country_Text_Samoa,
    Country_Text_Senegal,
    Country_Text_SierraLeone,
    Country_Text_Singapore,
    Country_Text_Slovakia,
    Country_Text_Slovenia,
    Country_Text_SouthAfrica,
    Country_Text_Spain,
    Country_Text_SriLanka,
    Country_Text_Suriname,
    Country_Text_Swaziland,
    Country_Text_Sweden,
    Country_Text_Switzerland,
    Country_Text_Taiwan,
    Country_Text_Thailand,
    Country_Text_Togo,
    Country_Text_Tunisia,
    Country_Text_Turkey,
    Country_Text_Uganda,
    Country_Text_UAE,
    Country_Text_UK,
    Country_Text_Tanzania,
    Country_Text_USVirginIslands,
    Country_Text_USA,
    Country_Text_Uruguay,
    Country_Text_Vanuatu,
    Country_Text_Venezuela,
    Country_Text_Vietnam
};

const u32 Unk_ov94_02245FD4 = NELEMS(gtsAvailableCountries);

int GTSApplication_Deposit_Init(GTSApplicationState *appState, int unused1)
{
    ov94_022418B8(appState);
    ov94_022415F8(appState->bgConfig);
    ov94_0224170C(appState);
    ov94_022417A0(appState);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);

    ov94_02245934(appState);
    ov94_022422D4(appState->gtsMessageLoader, appState->speciesMessageLoader, appState->stringTemplate, &appState->unk_FCC[0], 0, 3, -1);
    ov94_022423FC(appState->gtsMessageLoader, appState->stringTemplate, &appState->unk_FCC[3], appState->unk_114, &appState->unk_B70);

    appState->currentScreenInstruction = 0;

    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_Deposit_Main(GTSApplicationState *appState, int unused1)
{
    NetworkIcon_SetStrength(GTSApplication_GetNetworkStrength());

    return (*Unk_ov94_0224695C[appState->currentScreenInstruction])(appState);
}

int GTSApplication_Deposit_Exit(GTSApplicationState *appState, int unused1)
{
    NetworkIcon_Destroy();

    ov94_02241920(appState);
    ov94_02241880(appState);
    ov94_022416E0(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return GTS_LOOP_STATE_INIT;
}

static void ov94_0224158C(GTSApplicationState *appState, int messageId, int textSpeed, int unused3, u16 unused4)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(appState->gtsMessageLoader, messageId);

    StringTemplate_Format(appState->stringTemplate, appState->genericMessageBuffer, strbuf);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->bottomInstructionWindow, 0, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->bottomInstructionWindow, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, textSpeed, NULL);

    Strbuf_Free(strbuf);
}

static void ov94_022415F8(BgConfig *bgConfig)
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

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &v0, 0);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);
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

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &v1, 0);
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

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &v2, 0);
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

        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &v3, 0);
        Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);
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

        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &v4, 0);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
}

static void ov94_022416E0(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void ov94_0224170C(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__WORLDTRADE, 1, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, 1 + (18 + 12), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 11, bgConfig, BG_LAYER_MAIN_1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 23, bgConfig, BG_LAYER_MAIN_1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
}

static void ov94_022417A0(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->unk_F7C, 0, 1, 1, 28, 2, 13, (1 + (18 + 12)) + 9);
    Window_FillTilemap(&appState->unk_F7C, 0x0);

    ov94_022458CC(&appState->unk_F7C, appState->title, 0, 1, 0, TEXT_COLOR(15, 14, 0));

    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, ((1 + (18 + 12)) + 9) + 28 * 2);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0x0);

    for (int i = 0; i < 6; i++) {
        Window_Add(appState->bgConfig, &appState->unk_FCC[i], 0, Unk_ov94_02245FE8[i][0], Unk_ov94_02245FE8[i][1], 11, 2, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + (11 * 2) * i);
        Window_FillTilemap(&appState->unk_FCC[i], 0x0);
        Window_CopyToVRAM(&appState->unk_FCC[i]);
    }
}

static void ov94_02241880(GTSApplicationState *appState)
{
    for (int i = 0; i < 6; i++) {
        Window_Remove(&appState->unk_FCC[i]);
    }

    Window_Remove(&appState->bottomInstructionWindow);
    Window_Remove(&appState->unk_F7C);
}

static void ov94_022418B8(GTSApplicationState *appState)
{
    appState->genericMessageBuffer = Strbuf_Init(90 * 2, HEAP_ID_62);
    appState->title = MessageLoader_GetNewStrbuf(appState->gtsMessageLoader, GTS_Text_DepositPokemon);
    appState->unk_10E4 = Heap_Alloc(HEAP_ID_62, sizeof(GTSApplicationState_sub3));

    MI_CpuClearFast(appState->unk_10E4, sizeof(GTSApplicationState_sub3));

    appState->unk_10E4->unk_18 = ov94_Pokedex_Alphabetical(62, 0, &appState->unk_10E4->unk_1C);
    appState->unk_10E4->unk_14 = ov94_02242548(62);

    ov94_02242AAC(&appState->unk_111C);
}

static void ov94_02241920(GTSApplicationState *appState)
{
    Heap_Free(appState->unk_10E4->unk_14);
    Heap_Free(appState->unk_10E4->unk_18);
    Heap_Free(appState->unk_10E4);
    Strbuf_Free(appState->genericMessageBuffer);
    Strbuf_Free(appState->title);
}

static int ov94_0224195C(GTSApplicationState *appState)
{
    if (IsScreenFadeDone()) {
        ov94_0224158C(appState, GTS_Text_PleaseChoosePokemon, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(appState, 16, 1);
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02241990(GTSApplicationState *appState)
{
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SELECT_POKEMON, SCREEN_ARGUMENT_5);
        appState->currentScreenInstruction = 2;
    }

    Window_Add(appState->bgConfig, &appState->unk_F9C[0], 0, 15, 5, 4, 13, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 11 * 2 * 6);
    Window_FillTilemap(&appState->unk_F9C[0], 0x0);

    Window_Add(appState->bgConfig, &appState->unk_F9C[1], 0, 21, 5, 10, 13, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 11 * 2 * 6) + 4 * 13);
    Window_FillTilemap(&appState->unk_F9C[1], 0x0);

    appState->currentScreenInstruction = 3;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02241A1C(GTSApplicationState *appState)
{
    appState->unk_10D8 = ov94_022426A8(appState, &appState->unk_10CC, &appState->unk_F9C[0], appState->gtsMessageLoader);
    appState->unk_108 = 0xffff;
    appState->currentScreenInstruction = 4;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02241A58(GTSApplicationState *appState)
{
    switch (ov94_02242A6C(appState->unk_10D8, &appState->unk_108)) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        ListMenu_Free(appState->unk_10D8, &appState->unk_10E4->unk_06, &appState->unk_10E4->unk_04);
        StringList_Free(appState->unk_10CC);
        appState->currentScreenInstruction = 5;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        break;
    case LIST_CANCEL:
        ListMenu_Free(appState->unk_10D8, &appState->unk_10E4->unk_06, &appState->unk_10E4->unk_04);
        StringList_Free(appState->unk_10CC);
        Window_EraseStandardFrame(&appState->unk_F9C[0], 0);
        Window_EraseMessageBox(&appState->bottomInstructionWindow, 0);
        Window_Remove(&appState->unk_F9C[0]);
        Window_Remove(&appState->unk_F9C[1]);
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SELECT_POKEMON, SCREEN_ARGUMENT_5);
        appState->currentScreenInstruction = 2;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        break;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02241B2C(GTSApplicationState *appState)
{
    appState->unk_10D8 = ov94_022427C0(appState, &appState->unk_10CC, &appState->unk_F9C[1], appState->gtsMessageLoader, appState->speciesMessageLoader, appState->unk_10E4, appState->playerData->pokedex);
    appState->unk_108 = 0xffff;
    appState->currentScreenInstruction = 6;

    return GTS_LOOP_STATE_MAIN;
}

int ov94_02241B80(GTSPokemonRequirements *requirements, int genderRatio)
{
    switch (genderRatio) {
    case GENDER_RATIO_MALE_ONLY:
        requirements->gender = GENDER_MALE + 1;
        return TRUE;
    case GENDER_RATIO_FEMALE_ONLY:
        requirements->gender = GENDER_FEMALE + 1;
        return TRUE;
    case GENDER_RATIO_NO_GENDER:
        requirements->gender = GENDER_NONE + 1;
        return TRUE;
    }

    return FALSE;
}

static int ov94_02241BAC(GTSApplicationState *appState)
{
    u32 input;
    switch (input = ov94_02242A6C(appState->unk_10D8, &appState->unk_108)) {
    case LIST_NOTHING_CHOSEN:
        break;
    case LIST_CANCEL:
        ListMenu_Free(appState->unk_10D8, &appState->unk_10E4->unk_0A, &appState->unk_10E4->unk_08);
        StringList_Free(appState->unk_10CC);
        Window_EraseStandardFrame(&appState->unk_F9C[1], 0);
        Window_Remove(&appState->unk_F9C[0]);
        Window_Remove(&appState->unk_F9C[1]);
        appState->currentScreenInstruction = 0;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov94_02242AC4(&appState->unk_111C, appState->unk_10E4->unk_06 + appState->unk_10E4->unk_04, appState->unk_10E4->unk_0A, appState->unk_10E4->unk_08);
        break;
    default:
        int gender;

        ListMenu_Free(appState->unk_10D8, &appState->unk_10E4->unk_0A, &appState->unk_10E4->unk_08);
        StringList_Free(appState->unk_10CC);
        Window_EraseStandardFrame(&appState->unk_F9C[0], 0);
        Window_EraseStandardFrame(&appState->unk_F9C[1], 0);
        Window_Remove(&appState->unk_F9C[0]);
        Window_Remove(&appState->unk_F9C[1]);
        appState->unk_B74.species = input;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        appState->unk_10E4->unk_20 = SpeciesData_GetSpeciesValue(input, SPECIES_DATA_GENDER_RATIO);

        if (ov94_02241B80(&appState->unk_B74, appState->unk_10E4->unk_20)) {
            appState->currentScreenInstruction = 10;
            gender = appState->unk_B74.gender;
        } else {
            appState->currentScreenInstruction = 7;
            gender = GENDER_NONE + 1;
        }

        ov94_022422D4(appState->gtsMessageLoader, appState->speciesMessageLoader, appState->stringTemplate, &appState->unk_FCC[0], appState->unk_B74.species, gender, -1);
        ov94_02242AC4(&appState->unk_111C, appState->unk_10E4->unk_06 + appState->unk_10E4->unk_04, appState->unk_10E4->unk_0A, appState->unk_10E4->unk_08);
        break;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02241D08(GTSApplicationState *appState)
{
    ov94_0224158C(appState, GTS_Text_PleaseChooseGender, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 16, 8);

    Window_Add(appState->bgConfig, &appState->unk_F9C[0], 0, 21, 10, 10, 8, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 11 * 2 * 6);
    Window_FillTilemap(&appState->unk_F9C[0], 0x0);

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02241D64(GTSApplicationState *appState)
{
    appState->unk_10D8 = ov94_02242840(&appState->unk_10CC, &appState->unk_F9C[0], appState->gtsMessageLoader);
    appState->unk_108 = 0xffff;
    appState->currentScreenInstruction = 9;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02241DA0(GTSApplicationState *appState)
{
    u32 input;

    switch (input = ov94_02242A6C(appState->unk_10D8, &appState->unk_108)) {
    case LIST_CANCEL:
        ListMenu_Free(appState->unk_10D8, NULL, NULL);
        StringList_Free(appState->unk_10CC);
        Window_EraseStandardFrame(&appState->unk_F9C[0], 0);
        Window_EraseMessageBox(&appState->bottomInstructionWindow, 0);
        Window_Remove(&appState->unk_F9C[0]);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        appState->currentScreenInstruction = 0;
        break;

    case GENDER_MALE:
    case GENDER_FEMALE:
    case GENDER_NONE:
        ListMenu_Free(appState->unk_10D8, NULL, NULL);
        StringList_Free(appState->unk_10CC);
        Window_EraseStandardFrame(&appState->unk_F9C[0], 0);
        Window_Remove(&appState->unk_F9C[0]);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        appState->unk_B74.gender = input + 1;
        appState->currentScreenInstruction = 10;
        ov94_022422D4(appState->gtsMessageLoader, appState->speciesMessageLoader, appState->stringTemplate, &appState->unk_FCC[0], appState->unk_B74.species, appState->unk_B74.gender, -1);
        break;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02241E8C(GTSApplicationState *appState)
{
    ov94_0224158C(appState, GTS_Text_PleaseChooseLevel, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 16, 11);

    Window_Add(appState->bgConfig, &appState->unk_F9C[0], 0, 15, 5, 16, 13, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 11 * 2 * 6);
    Window_FillTilemap(&appState->unk_F9C[0], 0x0);

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02241EE8(GTSApplicationState *appState)
{
    appState->unk_10D8 = ov94_022428B0(&appState->unk_10CC, &appState->unk_F9C[0], appState->gtsMessageLoader, 0);
    appState->unk_108 = 0xffff;
    appState->currentScreenInstruction = 12;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02241F28(GTSApplicationState *appState)
{
    u32 input;

    switch (input = ov94_02242A6C(appState->unk_10D8, &appState->unk_108)) {
    case LIST_NOTHING_CHOSEN:
        break;
    case LIST_CANCEL:
    case 12:
        ListMenu_Free(appState->unk_10D8, NULL, NULL);
        StringList_Free(appState->unk_10CC);
        Window_EraseStandardFrame(&appState->unk_F9C[0], 0);
        Window_EraseMessageBox(&appState->bottomInstructionWindow, 0);
        Window_Remove(&appState->unk_F9C[0]);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if (ov94_02241B80(&appState->unk_B74, appState->unk_10E4->unk_20)) {
            appState->currentScreenInstruction = 0;
        } else {
            appState->currentScreenInstruction = 7;
        }
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ListMenu_Free(appState->unk_10D8, NULL, NULL);
        StringList_Free(appState->unk_10CC);
        Window_EraseStandardFrame(&appState->unk_F9C[0], 0);
        Window_Remove(&appState->unk_F9C[0]);
        ov94_02242934(&appState->unk_B74, input, 0);
        appState->currentScreenInstruction = 13;
        ov94_022422D4(appState->gtsMessageLoader, appState->speciesMessageLoader, appState->stringTemplate, &appState->unk_FCC[0], appState->unk_B74.species, appState->unk_B74.gender, ov94_02242970(appState->unk_B74.level, appState->unk_B74.level2, 0));
        break;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02242040(GTSApplicationState *appState)
{
    ov94_0224158C(appState, GTS_Text_ConfirmCriteria, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 16, 14);

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_02242068(GTSApplicationState *appState)
{
    appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 15, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 11 * 2 * 6) + 16 * 13);
    appState->currentScreenInstruction = 15;

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_0224208C(GTSApplicationState *appState)
{
    int input = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (input != MENU_NOTHING_CHOSEN) {
        if (input == MENU_CANCELED) {
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SELECT_POKEMON, SCREEN_ARGUMENT_5);
            appState->currentScreenInstruction = 2;
        } else {
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_DEPOSIT_POKEMON);
            appState->currentScreenInstruction = 2;
            appState->fadeBothScreens = TRUE;
            ov94_02242668(&appState->receivedListing, appState);
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int ov94_022420E4(GTSApplicationState *appState)
{
    if (appState->nextScreen == GTS_SCREEN_WFC_INIT) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
        appState->fadeBothScreens = TRUE;
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    }

    appState->currentScreenInstruction = 0;

    return GTS_LOOP_STATE_FINISH;
}

static int ov94_02242138(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

static TextColor sGenderTextColors[] = {
    TEXT_COLOR(5, 6, 0),
    TEXT_COLOR(3, 4, 0)
};

void ov94_02242158(Window *window, MessageLoader *speciesMessageLoader, int messageId, int centered, int y, TextColor textColor)
{
    if (messageId != 0) {
        Strbuf *strbuf = MessageLoader_GetNewStrbuf(speciesMessageLoader, messageId);
        ov94_02245900(window, strbuf, 0, y, centered, textColor);
        Strbuf_Free(strbuf);
    }
}

void ov94_0224218C(Window *window, MessageLoader *countryMessageLoader, MessageLoader *gtsMessageLoader, int messageId, int centered, int y, TextColor textColor)
{
    Strbuf *strbuf;

    if (messageId != 0) {
        strbuf = MessageLoader_GetNewStrbuf(countryMessageLoader, messageId);
        ov94_02245900(window, strbuf, 0, y, centered, textColor);
        Strbuf_Free(strbuf);
    } else {
        strbuf = MessageLoader_GetNewStrbuf(gtsMessageLoader, GTS_Text_Any);
        ov94_02245900(window, strbuf, 0, y, centered, textColor);
        Strbuf_Free(strbuf);
    }
}

static TextColor ov94_022421E8(int index, TextColor fallback)
{
    if (index == 1) {
        return sGenderTextColors[GENDER_MALE];
    } else if (index == 2) {
        return sGenderTextColors[GENDER_FEMALE];
    }

    return fallback;
}

const int gGTSGenderPreferenceMessages[] = {
    GTS_Text_Either,
    GTS_Text_MaleIcon,
    GTS_Text_FemaleIcon,
    GTS_Text_Either
};

void ov94_02242204(Window *window, MessageLoader *gtsMessageLoader, int gender, int param3, int y, int x, TextColor fallback)
{
    if ((param3 == 0) && (gender == GENDER_NONE + 1)) {
        return;
    }

    Strbuf *strbuf = MessageLoader_GetNewStrbuf(gtsMessageLoader, gGTSGenderPreferenceMessages[gender]);

    if (x > 3) {
        ov94_02245900(window, strbuf, x, y, 0, ov94_022421E8(gender, fallback));
    } else {
        ov94_02245900(window, strbuf, 0, y, x, ov94_022421E8(gender, fallback));
    }

    Strbuf_Free(strbuf);
}

void ov94_0224226C(Window *window, MessageLoader *gtsMessageLoader, int messageIndex, int centered, int y, TextColor textColor, BOOL isRange, int x)
{

    if (messageIndex != -1) {
        const GTSLevelRangeMessage *messages;
        if (isRange == FALSE) {
            messages = gtsLevelPreferenceMessages;
        } else {
            messages = gtsLevelRangeMessages;
        }

        Strbuf *strbuf = MessageLoader_GetNewStrbuf(gtsMessageLoader, messages[messageIndex].unk_00);
        ov94_02245900(window, strbuf, x, y, centered, textColor);
        Strbuf_Free(strbuf);
    }
}

void ov94_022422B8(Window *window, MessageLoader *gtsMessageLoader, int messageIndex, int centered, int y, TextColor textColor, BOOL isRange)
{
    ov94_0224226C(window, gtsMessageLoader, messageIndex, centered, y, textColor, isRange, 0);
}

void ov94_022422D4(MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, StringTemplate *param2, Window windows[], int species, int gender, int levelRange)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(gtsMessageLoader, GTS_Text_Setup_Wanted);
    ov94_02245900(&windows[0], strbuf, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    for (int i = 1; i < 3; i++) {
        Window_FillTilemap(&windows[i], 0x0);
    }

    ov94_02242158(&windows[1], speciesMessageLoader, species, 0, 0, TEXT_COLOR(15, 2, 0));

    if ((gender == GENDER_MALE + 1) || (gender == GENDER_FEMALE + 1)) {
        ov94_02242204(&windows[1], gtsMessageLoader, gender, 0, 0, 70, TEXT_COLOR(15, 2, 0));
    }

    ov94_022422B8(&windows[2], gtsMessageLoader, levelRange, 2, 0, TEXT_COLOR(15, 2, 0), 0);
    Strbuf_Free(strbuf);
}

void ov94_02242368(MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, StringTemplate *param2, Window windows[], int species, int gender, int levelRange)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(gtsMessageLoader, GTS_Text_Setup_Wanted);
    ov94_02245900(&windows[0], strbuf, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    for (int i = 1; i < 3; i++) {
        Window_FillTilemap(&windows[i], 0x0);
    }

    ov94_02242158(&windows[1], speciesMessageLoader, species, 0, 0, TEXT_COLOR(15, 2, 0));

    if ((gender == GENDER_MALE + 1) || (gender == GENDER_FEMALE + 1)) {
        ov94_02242204(&windows[1], gtsMessageLoader, gender, 0, 0, 70, TEXT_COLOR(15, 2, 0));
    }

    ov94_022422B8(&windows[2], gtsMessageLoader, levelRange, 2, 0, TEXT_COLOR(15, 2, 0), 0);
    Strbuf_Free(strbuf);
}

static void ov94_022423FC(MessageLoader *gtsMessageLoader, StringTemplate *template, Window windows[], BoxPokemon *boxMon, GTSPokemonCriteria *criteria)
{
    Strbuf *offerStrbuf, *levelStrbuf; // compiler
    Strbuf *nicknameStrbuf = Strbuf_Init(10 + 1, HEAP_ID_62);
    Strbuf *genderStrbuf = Strbuf_Init(10 + 1, HEAP_ID_62);

    BoxPokemon_GetValue(boxMon, MON_DATA_NICKNAME_STRING, nicknameStrbuf);

    int gender = BoxPokemon_GetValue(boxMon, MON_DATA_GENDER, NULL) + 1;
    int level = BoxPokemon_GetLevel(boxMon);
    offerStrbuf = MessageLoader_GetNewStrbuf(gtsMessageLoader, GTS_Text_OfferPokemonHeader);

    StringTemplate_SetNumber(template, 3, level, 3, 0, 1);
    levelStrbuf = MessageUtil_ExpandedStrbuf(template, gtsMessageLoader, GTS_Text_LevelTemplate, HEAP_ID_62);

    if (gender != GENDER_NONE + 1) {
        MessageLoader_GetStrbuf(gtsMessageLoader, gGTSGenderPreferenceMessages[gender], genderStrbuf);
    }

    for (int i = 0; i < 3; i++) {
        Window_FillTilemap(&windows[i], 0x0);
    }

    ov94_02245900(&windows[0], offerStrbuf, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&windows[1], nicknameStrbuf, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&windows[2], levelStrbuf, 0, 0, 2, TEXT_COLOR(15, 2, 0));

    if (gender != GENDER_NONE + 1) {
        ov94_02245900(&windows[1], genderStrbuf, 70, 0, 0, sGenderTextColors[gender - 1]);
    }

    criteria->species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    criteria->gender = gender;
    criteria->level = level;

    Strbuf_Free(levelStrbuf);
    Strbuf_Free(genderStrbuf);
    Strbuf_Free(nicknameStrbuf);
    Strbuf_Free(offerStrbuf);
}

u16 *ov94_Pokedex_Alphabetical(int heapID, int unused, int *pokedexLength)
{
    u32 pokedexSize;
    u16 *pokedexAlphabetical = LoadMemberFromNARC_OutFileSize(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA, 13, 0, heapID, 0, &pokedexSize);
    *pokedexLength = pokedexSize / (sizeof(u16));

    return pokedexAlphabetical;
}

u8 *ov94_02242548(int heapID)
{
    u32 nationalDexSize, nationalDexLength;
    u8 *nationalDex = Heap_Alloc(HEAP_ID_62, NATIONAL_DEX_COUNT + 1);

    MI_CpuClearFast(nationalDex, NATIONAL_DEX_COUNT + 1);

    u16 *nationalDexAlphabetic = LoadMemberFromNARC_OutFileSize(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA, 12, 0, heapID, 0, &nationalDexSize);
    nationalDexLength = nationalDexSize / (sizeof(u16));

    for (int i = 0; i < nationalDexLength; i++) {
        if (nationalDexAlphabetic[i] < NATIONAL_DEX_COUNT + 1) {
            nationalDex[nationalDexAlphabetic[i]] = 1;
        }
    }

    Heap_Free(nationalDexAlphabetic);

    return nationalDex;
}

void ov94_022425A8(GTSPokemonListing *listing, GTSApplicationState *appState)
{
    if (GTSApplication_IsBoxIDParty(appState->selectedBoxId)) {
        Pokemon_SetShayminForm((Pokemon *)(appState->unk_114), SHAYMIN_FORM_LAND);

        MI_CpuCopyFast(appState->unk_114, listing->pokemon.bytes, Pokemon_StructSize());
    } else {
        BoxPokemon_SetShayminForm(appState->unk_114, SHAYMIN_FORM_LAND);
        Pokemon_FromBoxPokemon(appState->unk_114, (Pokemon *)listing->pokemon.bytes);
    }

    CharCode_CopyNumChars(listing->unk_10C, TrainerInfo_Name(appState->playerData->trainerInfo), 8);

    listing->unk_11C = TrainerInfo_ID_LowHalf(appState->playerData->trainerInfo);
    listing->trainerCountry = WiFiHistory_GetCountry(appState->playerData->wiFiHistory);
    listing->trainerRegion = WiFiHistory_GetRegion(appState->playerData->wiFiHistory);
    listing->unk_120 = TrainerInfo_Appearance(appState->playerData->trainerInfo);
    listing->unk_F6 = TrainerInfo_Gender(appState->playerData->trainerInfo);
    listing->unk_122 = GAME_VERSION;
    listing->trainerLanguage = GAME_LANGUAGE;
}

static void ov94_02242668(GTSPokemonListing *listing, GTSApplicationState *appState)
{
    ov94_022425A8(listing, appState);

    listing->unk_EC = appState->unk_B70;
    listing->unk_F0 = appState->unk_B74;
}

static const ListMenuTemplate sCharpadListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = NULL,
    .printCallback = NULL,
    .window = NULL,
    .count = 9,
    .maxDisplay = 6,
    .headerXOffset = 4,
    .textXOffset = 8,
    .cursorXOffset = 0,
    .yOffset = 2,
    .textColorFg = 1,
    .textColorBg = 15,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 16,
    .pagerMode = PAGER_MODE_LEFT_RIGHT_PAD,
    .fontID = FONT_SYSTEM,
    .cursorType = 0,
    .parent = NULL
};

ListMenu *ov94_022426A8(GTSApplicationState *appState, StringList **stringList, Window *window, MessageLoader *gtsMessageLoader)
{
    ListMenuTemplate template;

    *stringList = StringList_New(9, HEAP_ID_62);

    for (int i = 0; i < 9; i++) {
        StringList_AddFromMessageBank(*stringList, gtsMessageLoader, GTS_Text_CharPad_ABC + i, i + 1);
    }

    template = sCharpadListMenuTemplate;
    template.choices = *stringList;
    template.window = window;

    Window_DrawStandardFrame(window, 0, 1 + (18 + 12), 11);

    return ListMenu_New(&template, appState->unk_10E4->unk_06, appState->unk_10E4->unk_04, HEAP_ID_62);
}

static u16 sAlphabeticalSpeciesCharpadIndices[] = {
    0,
    87, // ABC
    136, // DEF
    191, // GHI
    235, // JKL
    303, // MNO
    360, // PQR
    457, // STU
    487, // VWX
    493 // YZ
};

static int ov94_02242718(StringList **stringList, MessageLoader *speciesMessageLoader, MessageLoader *gtsMessageLoader, u16 *species, u8 *unused4, int unused5, int charpad, Pokedex *pokedex)
{
    int i, seen = 0;
    int range = sAlphabeticalSpeciesCharpadIndices[charpad + 1] - sAlphabeticalSpeciesCharpadIndices[charpad];

    int start = sAlphabeticalSpeciesCharpadIndices[charpad];

    for (i = 0; i < range; i++) {
        if (Pokedex_HasSeenSpecies(pokedex, species[start + i])) {
            seen++;
        }
    }

    *stringList = StringList_New(seen + 1, HEAP_ID_62);

    for (i = 0; i < range; i++) {
        if (Pokedex_HasSeenSpecies(pokedex, species[start + i])) {
            StringList_AddFromMessageBank(*stringList, speciesMessageLoader, species[start + i], species[start + i]);
        }
    }

    StringList_AddFromMessageBank(*stringList, gtsMessageLoader, GTS_Text_Species_Cancel, LIST_CANCEL);

    return seen + 1;
}

ListMenu *ov94_022427C0(GTSApplicationState *appState, StringList **stringList, Window *window, MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, GTSApplicationState_sub3 *appSubState, Pokedex *pokedex)
{
    Window_FillTilemap(window, 0xf0f);

    int charpad = appSubState->unk_06 + appSubState->unk_04;
    int seen = ov94_02242718(stringList, speciesMessageLoader, gtsMessageLoader, appSubState->unk_18, appSubState->unk_14, appSubState->unk_1C, charpad, pokedex);

    ListMenuTemplate template = sCharpadListMenuTemplate;
    template.count = seen;
    template.choices = *stringList;
    template.window = window;

    Window_DrawStandardFrame(window, 0, 1 + (18 + 12), 11);

    return ListMenu_New(&template, appState->unk_111C.unk_04[charpad], appState->unk_111C.unk_16[charpad], HEAP_ID_62);
}

static sGenderSelectionOptions[][2] = {
    { GTS_Text_Either, 2 },
    { GTS_Text_MaleIcon, 0 },
    { GTS_Text_FemaleIcon, 1 },
    { GTS_Text_Species_Cancel, LIST_CANCEL }
};

ListMenu *ov94_02242840(StringList **stringList, Window *window, MessageLoader *gtsMessageLoader)
{
    *stringList = StringList_New(4, HEAP_ID_62);

    for (int i = 0; i < 4; i++) {
        StringList_AddFromMessageBank(*stringList, gtsMessageLoader, sGenderSelectionOptions[i][0], sGenderSelectionOptions[i][1]);
    }

    ListMenuTemplate template = sCharpadListMenuTemplate;
    template.count = 4;
    template.choices = *stringList;
    template.window = window;

    Window_DrawStandardFrame(window, 0, 1 + (18 + 12), 11);

    return ListMenu_New(&template, 0, 0, HEAP_ID_62);
}

ListMenu *ov94_022428B0(StringList **stringList, Window *window, MessageLoader *gtsMessageLoader, BOOL isRange)
{
    const GTSLevelRangeMessage *messages;
    int count;

    if (isRange == FALSE) {
        messages = gtsLevelPreferenceMessages;
        count = NELEMS(gtsLevelPreferenceMessages);
    } else {
        messages = gtsLevelRangeMessages;
        count = NELEMS(gtsLevelRangeMessages);
    }

    *stringList = StringList_New(count, HEAP_ID_62);

    for (int i = 0; i < count; i++) {
        StringList_AddFromMessageBank(*stringList, gtsMessageLoader, messages[i].unk_00, i);
    }

    ListMenuTemplate template = sCharpadListMenuTemplate;
    template.count = count;
    template.choices = *stringList;
    template.window = window;

    Window_DrawStandardFrame(window, 0, 1 + (18 + 12), 11);

    return ListMenu_New(&template, 0, 0, HEAP_ID_62);
}

void ov94_02242934(GTSPokemonRequirements *requirements, int levelIndex, BOOL isRange)
{
    const GTSLevelRangeMessage *messages;

    if (isRange == FALSE) {
        messages = gtsLevelPreferenceMessages;
        GF_ASSERT(levelIndex < (13 - 1)); // compiler
    } else {
        messages = gtsLevelRangeMessages;
        GF_ASSERT(levelIndex < (NELEMS(gtsLevelRangeMessages) - 1));
    }

    requirements->level = messages[levelIndex].level;
    requirements->level2 = messages[levelIndex].level2;
}

int ov94_02242970(int minLevel, int maxLevel, BOOL isRange)
{
    int i, count; // compiler
    const GTSLevelRangeMessage *messages;

    if (isRange == FALSE) {
        messages = gtsLevelPreferenceMessages;
        count = NELEMS(gtsLevelPreferenceMessages);
    } else {
        messages = gtsLevelRangeMessages;
        count = (NELEMS(gtsLevelRangeMessages));
    }

    for (i = 0; i < count; i++) {
        if ((messages[i].level == minLevel) && (messages[i].level2 == maxLevel)) {
            return i;
        }
    }

    return 0;
}

ListMenu *ov94_022429B4(StringList **stringList, Window *window, MessageLoader *countryMessageLoader, MessageLoader *gtsMessageLoader)
{
    int numOptions = NELEMS(gtsAvailableCountries) + 2;

    *stringList = StringList_New(numOptions, HEAP_ID_62);

    StringList_AddFromMessageBank(*stringList, gtsMessageLoader, GTS_Text_Any, 0);

    for (int i = 1; i < numOptions - 1; i++) {
        StringList_AddFromMessageBank(*stringList, countryMessageLoader, gtsAvailableCountries[i - 1], i);
    }

    StringList_AddFromMessageBank(*stringList, gtsMessageLoader, GTS_Text_Country_Cancel, numOptions - 1);

    ListMenuTemplate template = sCharpadListMenuTemplate;
    template.count = numOptions;
    template.choices = *stringList;
    template.window = window;

    Window_DrawStandardFrame(window, 1, 1 + (18 + 12), 11);

    return ListMenu_New(&template, 0, 0, HEAP_ID_62);
}

void ov94_02242A44(GTSApplicationState *appState, int selectedCountryIndex)
{
    if (selectedCountryIndex == 0) {
        appState->selectedCountryIndex = 0;
    } else if (selectedCountryIndex - 1 < NELEMS(gtsAvailableCountries)) {
        appState->selectedCountryIndex = gtsAvailableCountries[selectedCountryIndex - 1];
    }
}

u32 ov94_02242A6C(ListMenu *menu, u16 *input)
{
    u16 pos;
    u32 menuInput = ListMenu_ProcessInput(menu);

    ListMenu_CalcTrueCursorPos(menu, &pos);

    if (*input != pos) {
        if (*input != 0xffff) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        *input = pos;
    }

    return menuInput;
}

void ov94_02242AAC(UnkStruct_ov94_02242AAC *param0)
{
    for (int i = 0; i < 9; i++) {
        param0->unk_04[i] = 0;
        param0->unk_16[i] = 0;
    }

    param0->unk_00 = 0;
    param0->unk_02 = 0;
}

void ov94_02242AC4(UnkStruct_ov94_02242AAC *param0, int index, int param2, int param3)
{
    param0->unk_04[index] = param2;
    param0->unk_16[index] = param3;
}
