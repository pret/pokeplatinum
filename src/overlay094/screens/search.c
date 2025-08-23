#include "overlay094/screens/search.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "overlay094/application.h"
#include "overlay094/const_ov94_02245FD4.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/networking.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/screens/deposit.h"
#include "overlay094/screens/wfc_init.h"
#include "overlay094/struct_ov94_0223BA24.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "global_trade.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_list.h"
#include "system.h"
#include "text.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

#include "res/text/bank/gts.h"

static void ov94_0223E598(BgConfig *param0);
static void ov94_0223E684(BgConfig *param0);
static void ov94_0223E6B8(GTSApplicationState *param0);
static void ov94_0223E770(GTSApplicationState *param0);
static void ov94_0223E7C4(GTSApplicationState *param0);
static void ov94_0223E7D4(GTSApplicationState *param0);
static void ov94_0223E968(GTSApplicationState *param0);
static void ov94_0223E9B8(GTSApplicationState *param0);
static void ov94_0223EA20(GTSApplicationState *param0);
static int ov94_0223EA5C(GTSApplicationState *param0);
static int ov94_0223EA84(GTSApplicationState *param0);
static int ov94_0223EBCC(GTSApplicationState *param0);
static int ov94_0223ECD4(GTSApplicationState *param0);
static int ov94_0223ED94(GTSApplicationState *param0);
static int ov94_0223EE40(GTSApplicationState *param0);
static int ov94_0223EF94(GTSApplicationState *param0);
static void ov94_0223EFAC(GTSApplicationState *param0);
static int ov94_0223F0A8(GTSApplicationState *param0);
static int ov94_0223F0D0(GTSApplicationState *param0);
static int ov94_0223F154(GTSApplicationState *param0);
static int ov94_0223F190(GTSApplicationState *param0);
static int ov94_0223F25C(GTSApplicationState *param0);
static int ov94_0223F2B0(GTSApplicationState *param0);
static int ov94_0223F41C(GTSApplicationState *param0);
static int ov94_0223F474(GTSApplicationState *param0);
static int ov94_0223F4B0(GTSApplicationState *param0);
static int ov94_0223F5A0(GTSApplicationState *param0);
static int ov94_0223F5F8(GTSApplicationState *param0);
static int ov94_0223F638(GTSApplicationState *param0);
static int ov94_0223F728(GTSApplicationState *param0);
static int ov94_0223F780(GTSApplicationState *param0);
static int ov94_0223F7C0(GTSApplicationState *param0);
static int ov94_0223F8B4(GTSApplicationState *param0);
static int ov94_0223F8D8(GTSApplicationState *param0);
static int ov94_0223F920(GTSApplicationState *param0);
static int ov94_0223F928(GTSApplicationState *param0);
static int ov94_0223F950(GTSApplicationState *param0);
static int ov94_0223EE9C(GTSApplicationState *param0);
static void ov94_0223F9A4(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4);
static int ov94_0223EEE0(GTSApplicationState *param0);
static int ov94_0223EF1C(GTSApplicationState *param0);
static int ov94_0223EF58(GTSApplicationState *param0);
static void ov94_0223F9FC(Window *param0, Window *param1, MessageLoader *gtsMessageLoader);
static int GTS_IsTradeTimestampRecent(GTSApplicationState *param0, int param1);
static int ov94_0223FB0C(const GTSPokemonRequirements *param0, const GTSPokemonRequirements *param1, int param2, int param3);
static int ov94_0223F970(GTSApplicationState *param0);

static int (*Unk_ov94_02246860[])(GTSApplicationState *) = {
    ov94_0223EA5C,
    ov94_0223EA84,
    ov94_0223F0A8,
    ov94_0223F0D0,
    ov94_0223F154,
    ov94_0223F190,
    ov94_0223F25C,
    ov94_0223F2B0,
    ov94_0223F41C,
    ov94_0223F474,
    ov94_0223F4B0,
    ov94_0223F5A0,
    ov94_0223F5F8,
    ov94_0223F638,
    ov94_0223F728,
    ov94_0223F780,
    ov94_0223F7C0,
    ov94_0223EBCC,
    ov94_0223ECD4,
    ov94_0223ED94,
    ov94_0223EE40,
    ov94_0223EE9C,
    ov94_0223EEE0,
    ov94_0223F950,
    ov94_0223F970,
    ov94_0223F8B4,
    ov94_0223F8D8,
    ov94_0223F920,
    ov94_0223F928,
    ov94_0223EF1C,
    ov94_0223EF58
};

static u16 Unk_ov94_02246848[][2] = {
    { 0x14, 0x2F },
    { 0x14, 0x47 },
    { 0x14, 0x5F },
    { 0x14, 0x77 },
    { 0xB0, 0x38 },
    { 0xB0, 0x60 }
};

int GTSApplication_Search_Init(GTSApplicationState *param0, int param1)
{
    ov94_0223E9B8(param0);
    ov94_0223E598(param0->bgConfig);
    ov94_0223E6B8(param0);
    ov94_0223E7D4(param0);
    ov94_0223E770(param0);
    ov94_0223F9FC(&param0->unk_FCC[0], &param0->unk_10AC[0], param0->gtsMessageLoader);
    ov94_02242158(&param0->unk_FCC[1], param0->speciesMessageLoader, param0->unk_B7A.species, 0, 0, TEXT_COLOR(1, 2, 0));
    ov94_02242204(&param0->unk_FCC[3], param0->gtsMessageLoader, param0->unk_B7A.gender, 1, 0, 0, TEXT_COLOR(1, 2, 0));
    ov94_022422B8(&param0->unk_FCC[5], param0->gtsMessageLoader, ov94_02242970(param0->unk_B7A.level, param0->unk_B7A.level2, 1), 0, 0, TEXT_COLOR(1, 2, 0), 1);
    ov94_0224218C(&param0->unk_10AC[1], param0->countryMessageLoader, param0->gtsMessageLoader, param0->selectedCountryIndex, 0, 0, TEXT_COLOR(1, 2, 0));

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
    param0->currentScreenInstruction = 0;

    return 2;
}

int GTSApplication_Search_Main(GTSApplicationState *param0, int param1)
{
    int v0 = (*Unk_ov94_02246860[param0->currentScreenInstruction])(param0);
    return v0;
}

int GTSApplication_Search_Exit(GTSApplicationState *param0, int param1)
{
    ov94_0223E7C4(param0);
    ov94_0223EA20(param0);
    ov94_0223E968(param0);
    ov94_0223E684(param0->bgConfig);
    GTSApplication_MoveToNextScreen(param0);

    return 1;
}

static void ov94_0223E598(BgConfig *param0)
{
    {
        BgTemplate v0 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x04000,
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
            .screenBase = GX_BG_SCRBASE_0x0800,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v1, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_1);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x14000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v2, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1800,
            .charBase = GX_BG_CHARBASE_0x1c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v3, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_3);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
}

static void ov94_0223E684(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_3);
}

static void ov94_0223E6B8(GTSApplicationState *param0)
{
    BgConfig *v0 = param0->bgConfig;
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(v1, 3, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Graphics_LoadPaletteFromOpenNARC(v1, 5, 4, 0, 16 * 8 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, 1, 10, Options_Frame(param0->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, 1 + (18 + 12), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 13, v0, 1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 26, v0, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    NARC_dtor(v1);
}

static void ov94_0223E770(GTSApplicationState *param0)
{
    AffineSpriteListTemplate v0;

    GTSApplication_InitAffineTemplate(&v0, param0, &param0->cursorSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0.position.x = FX32_ONE;
    v0.position.y = FX32_ONE;

    param0->cursorSprite = SpriteList_AddAffine(&v0);

    Sprite_SetAnimateFlag(param0->cursorSprite, 1);
    Sprite_SetAnim(param0->cursorSprite, 0);
    Sprite_SetExplicitPriority(param0->cursorSprite, 1);
    sub_02039734();
}

static void ov94_0223E7C4(GTSApplicationState *param0)
{
    Sprite_Delete(param0->cursorSprite);
}

static const u16 Unk_ov94_02245D94[6][2] = {
    { 0x3, 0x5 },
    { 0x9, 0x5 },
    { 0x3, 0x8 },
    { 0x9, 0x8 },
    { 0x3, 0xB },
    { 0x9, 0xB }
};

static const u16 Unk_ov94_02245D84[][2] = {
    { 0x16, 0x6 },
    { 0x16, 0xB }
};

static const u16 Unk_ov94_02245D8C[][2] = {
    { 0x3, 0xE },
    { 0x2, 0x10 }
};

static void ov94_0223E7D4(GTSApplicationState *param0)
{
    Window_Add(param0->bgConfig, &param0->unk_F7C, 0, 1, 1, 28, 2, 13, (1 + (18 + 12)) + 9);
    Window_FillTilemap(&param0->unk_F7C, 0x0);

    ov94_022458CC(&param0->unk_F7C, param0->title, 0, 1, 0, TEXT_COLOR(15, 13, 0));

    Window_Add(param0->bgConfig, &param0->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, ((1 + (18 + 12)) + 9) + 28 * 2);
    Window_FillTilemap(&param0->bottomInstructionWindow, 0x0);

    {
        int v0, v1;

        for (v0 = 0; v0 < 6; v0++) {
            Window_Add(param0->bgConfig, &param0->unk_FCC[v0], 3, Unk_ov94_02245D94[v0][0], Unk_ov94_02245D94[v0][1], 11, 2, 13, 1 + (11 * 2) * v0);
            Window_FillTilemap(&param0->unk_FCC[v0], 0x0);
        }

        for (v0 = 0; v0 < 2; v0++) {
            Window_Add(param0->bgConfig, &param0->unk_FCC[6 + v0], 2, Unk_ov94_02245D84[v0][0], Unk_ov94_02245D84[v0][1], 8, 2, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + (8 * 2) * v0);
            Window_FillTilemap(&param0->unk_FCC[6 + v0], 0x0);
        }

        for (v0 = 0; v0 < 2; v0++) {
            Window_Add(param0->bgConfig, &param0->unk_10AC[v0], 3, Unk_ov94_02245D8C[v0][0], Unk_ov94_02245D8C[v0][1], 28, 2, 13, (1 + 11 * 2 * 6) + (28 * 2) * v0);
            Window_FillTilemap(&param0->unk_10AC[v0], 0x0);
        }
    }
}

static void ov94_0223E968(GTSApplicationState *param0)
{
    Window_Remove(&param0->bottomInstructionWindow);
    Window_Remove(&param0->unk_F7C);

    {
        int v0;

        for (v0 = 0; v0 < 8; v0++) {
            Window_Remove(&param0->unk_FCC[v0]);
        }

        for (v0 = 0; v0 < 2; v0++) {
            Window_Remove(&param0->unk_10AC[v0]);
        }
    }
}

static void ov94_0223E9B8(GTSApplicationState *param0)
{
    int v0;

    param0->genericMessageBuffer = Strbuf_Init(90 * 2, HEAP_ID_62);
    param0->title = MessageLoader_GetNewStrbuf(param0->gtsMessageLoader, GTS_Text_SeekPokemon);
    param0->unk_10E4 = Heap_AllocFromHeap(HEAP_ID_62, sizeof(GTSApplicationState_sub3));

    MI_CpuClearFast(param0->unk_10E4, sizeof(GTSApplicationState_sub3));

    param0->unk_10E4->unk_18 = ov94_Pokedex_Alphabetical(62, 0, &param0->unk_10E4->unk_1C);
    param0->unk_10E4->unk_14 = ov94_02242548(62);

    ov94_02242AAC(&param0->unk_111C);
}

static void ov94_0223EA20(GTSApplicationState *param0)
{
    Heap_Free(param0->unk_10E4->unk_14);
    Heap_Free(param0->unk_10E4->unk_18);
    Heap_Free(param0->unk_10E4);
    Strbuf_Free(param0->genericMessageBuffer);
    Strbuf_Free(param0->title);
}

static int ov94_0223EA5C(GTSApplicationState *param0)
{
    ov94_0223F9A4(param0, 8, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 1);

    return 3;
}

static int ov94_0223EA84(GTSApplicationState *param0)
{
    ov94_0223EFAC(param0);

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        int v0 = ov94_0223EF94(param0);

        switch (v0) {
        case 0:
            param0->currentScreenInstruction = 3;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        case 1:
            if (param0->unk_B7A.species != 0) {
                param0->unk_10E4->unk_20 = SpeciesData_GetSpeciesValue(param0->unk_B7A.species, SPECIES_DATA_GENDER_RATIO);

                if (ov94_02241B80(&param0->unk_B7A, param0->unk_10E4->unk_20)) {
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    return 3;
                }
            }
            param0->currentScreenInstruction = 8;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        case 2:
            param0->currentScreenInstruction = 11;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        case 3:
            param0->currentScreenInstruction = 14;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        case 4:
            param0->currentScreenInstruction = 17;
            break;
        case 5:
            ov94_0223F9A4(param0, 15, TEXT_SPEED_FAST, 0, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 25);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        }
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        ov94_0223F9A4(param0, 15, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 25);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else {
        int v1 = ov94_02244214(param0->unk_118);

        if (param0->unk_10F2) {
            if (v1 >= 0) {
                Sprite_SetAnim(param0->avatarSprites[v1 + 1], 16 + v1 * 4);
                param0->currentScreenInstruction = 2;
                GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_SEARCH_LISTING, SCREEN_ARGUMENT_0);
                param0->selectedSearchResult = v1;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }
        }
    }

    return 3;
}

static int ov94_0223EBCC(GTSApplicationState *param0)
{
    if (param0->unk_B7A.species == SPECIES_NONE) {
        ov94_0223F9A4(param0, 12, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 1);
        Sound_PlayEffect(SEQ_SE_DP_BOX03);
    } else {
        if (ov94_0223FB0C(&param0->unk_B7A, &param0->unk_B80, param0->selectedCountryIndex, param0->unk_B88)) {
            ov94_0223F9A4(param0, 33, TEXT_SPEED_FAST, 0, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 1);
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
        } else {
            Sound_PlayEffect(SEQ_SE_DP_Z_SEARCH);

            ov94_0223F9A4(param0, 13, TEXT_SPEED_FAST, 0, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 18);
            ov94_022442E4(param0);
        }
    }

    return 3;
}

static int GTS_IsTradeTimestampRecent(GTSApplicationState *appState, int bySearching)
{
    u32 datestamp;
    RTCDate date, currentDate;
    RTCTime v3;

    if (bySearching == 1) {
        datestamp = GlobalTrade_GetSearchTradeDatestamp(appState->playerData->globalTrade);
    } else {
        datestamp = GlobalTrade_GetDepositTradeDatestamp(appState->playerData->globalTrade);
    }

    Date_Decode(datestamp, &date);
    DWC_GetDateTime(&currentDate, &v3);

    int diff = RTC_ConvertDateToDay(&currentDate) - RTC_ConvertDateToDay(&date);

    if ((diff >= 0) && (diff < 3)) {
        return TRUE;
    }

    return FALSE;
}

static int ov94_0223ECD4(GTSApplicationState *param0)
{
    GTSPokemonRequirements v0;
    int v1 = 3;

    if (GTS_IsTradeTimestampRecent(param0, 1)) {
        v1 += 2;
    }

    if (GTS_IsTradeTimestampRecent(param0, 0)) {
        v1 += 2;
    }

    if (param0->selectedCountryIndex == 0) {
        GTSNetworking_Search(&param0->unk_B7A, v1, param0->searchResults);
    } else {
        UnkStruct_ov94_0223BA24 v2;

        MI_CpuClear8(&v2, sizeof(UnkStruct_ov94_0223BA24));

        v2.species = param0->unk_B7A.species;
        v2.gender = param0->unk_B7A.gender;
        v2.level = param0->unk_B7A.level;
        v2.level2 = param0->unk_B7A.level2;
        v2.unk_05 = param0->unk_B7A.unk_05;
        v2.unk_06 = v1;
        v2.unk_07 = param0->selectedCountryIndex;

        ov94_0223BA24(&v2, param0->searchResults);
    }

    param0->unk_B80 = param0->unk_B7A;
    param0->unk_B88 = param0->selectedCountryIndex;
    param0->networkTimeoutCounter = 0;
    param0->currentScreenInstruction = 19;
    param0->unk_10F2 = 0;

    return 3;
}

static int ov94_0223ED94(GTSApplicationState *param0)
{
    int v0 = GTSNetworking_RequestComplete();

    if (v0) {
        s32 v1 = GTSNetworking_GetErrorCode();

        param0->networkTimeoutCounter = 0;

        switch (v1) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            param0->unk_118 = v1;
            Sound_StopEffect(1535, 0);
            ov94_02244234(param0, v1, 1);
            param0->currentScreenInstruction = 20;
            break;
        case -2:
        case -14:
            param0->currentScreenInstruction = 29;
            break;
        case -13:
            NetworkError_DisplayGTSCriticalError();
            break;
        case -15:
        case -12:
            param0->currentScreenInstruction = 22;
            break;
        default:
            break;
        }
    } else {
        param0->networkTimeoutCounter++;

        if (param0->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return 3;
}

static int ov94_0223EE40(GTSApplicationState *param0)
{
    if (param0->unk_118 == 0) {
        ov94_0223F9A4(param0, 14, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 1);
        Sound_PlayEffect(SEQ_SE_DP_BOX03);
    } else {
        ov94_0223F9A4(param0, 30, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 21);
        param0->frameDelay = 0;
    }

    return 3;
}

static int ov94_0223EE9C(GTSApplicationState *param0)
{
    param0->frameDelay++;

    if (param0->frameDelay > 45) {
        ov94_0223F9A4(param0, 32, TEXT_SPEED_FAST, 0, 0xf0f);
        GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 1);
        param0->unk_10F2 = 1;
    }

    return 3;
}

static int ov94_0223EEE0(GTSApplicationState *param0)
{
    param0->unk_B80.species = SPECIES_NONE;

    ov94_0223F9A4(param0, 38, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 1);
    Sound_PlayEffect(SEQ_SE_DP_BOX03);

    return 3;
}

static int ov94_0223EF1C(GTSApplicationState *param0)
{
    ov94_0223F9A4(param0, 147, TEXT_SPEED_NORMAL, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 24, 30);
    param0->frameDelay = 0;
    Sound_PlayEffect(SEQ_SE_DP_BOX03);

    return 3;
}

static int ov94_0223EF58(GTSApplicationState *param0)
{
    ov94_0223F9A4(param0, 152, TEXT_SPEED_NORMAL, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 24, 2);
    GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_0);
    Sound_PlayEffect(SEQ_SE_DP_BOX03);

    return 3;
}

static int ov94_0223EF94(GTSApplicationState *param0)
{
    int v0;

    if (param0->unk_10E4->unk_24 == 0) {
        v0 = param0->unk_10E4->unk_28;
    } else {
        v0 = param0->unk_10E4->unk_2C + 4;
    }

    return v0;
}

static void ov94_0223EFAC(GTSApplicationState *param0)
{
    int v0;

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (param0->unk_10E4->unk_24 == 0) {
            if (param0->unk_10E4->unk_28 > 0) {
                param0->unk_10E4->unk_28--;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }
        } else {
            if (param0->unk_10E4->unk_2C != 0) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }

            param0->unk_10E4->unk_2C = 0;
        }
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (param0->unk_10E4->unk_24 == 0) {
            if (param0->unk_10E4->unk_28 < 3) {
                param0->unk_10E4->unk_28++;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }
        } else {
            if (param0->unk_10E4->unk_2C != 1) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }

            param0->unk_10E4->unk_2C = 1;
        }
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->unk_10E4->unk_24 != 1) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        param0->unk_10E4->unk_24 = 1;
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (param0->unk_10E4->unk_24 != 0) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        param0->unk_10E4->unk_24 = 0;
    }

    {
        VecFx32 v1;

        v1.x = FX32_ONE * Unk_ov94_02246848[ov94_0223EF94(param0)][0];
        v1.y = FX32_ONE * Unk_ov94_02246848[ov94_0223EF94(param0)][1];

        Sprite_SetPosition(param0->cursorSprite, &v1);
    }
}

static int ov94_0223F0A8(GTSApplicationState *param0)
{
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);

    param0->currentScreenInstruction = 0;

    return 4;
}

static int ov94_0223F0D0(GTSApplicationState *param0)
{
    ov94_0223F9A4(param0, 9, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 4);

    Window_Add(param0->bgConfig, &param0->unk_F9C[0], 0, 15, 5, 4, 13, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2);
    Window_FillTilemap(&param0->unk_F9C[0], 0x0);

    Window_Add(param0->bgConfig, &param0->unk_F9C[1], 0, 21, 5, 10, 13, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2) + 4 * 13);
    Window_FillTilemap(&param0->unk_F9C[1], 0x0);

    return 3;
}

static int ov94_0223F154(GTSApplicationState *param0)
{
    param0->unk_10D8 = ov94_022426A8(param0, &param0->unk_10CC, &param0->unk_F9C[0], param0->gtsMessageLoader);
    param0->unk_108 = 0xffff;
    param0->currentScreenInstruction = 5;

    return 3;
}

static int ov94_0223F190(GTSApplicationState *param0)
{
    switch (ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        ListMenu_Free(param0->unk_10D8, &param0->unk_10E4->unk_06, &param0->unk_10E4->unk_04);
        StringList_Free(param0->unk_10CC);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->currentScreenInstruction = 6;
        break;
    case 0xfffffffe:
        ListMenu_Free(param0->unk_10D8, &param0->unk_10E4->unk_06, &param0->unk_10E4->unk_04);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseMessageBox(&param0->bottomInstructionWindow, 0);
        Window_Remove(&param0->unk_F9C[0]);
        Window_Remove(&param0->unk_F9C[1]);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->currentScreenInstruction = 0;
        break;
    }

    return 3;
}

static int ov94_0223F25C(GTSApplicationState *param0)
{
    param0->unk_10D8 = ov94_022427C0(param0, &param0->unk_10CC, &param0->unk_F9C[1], param0->gtsMessageLoader, param0->speciesMessageLoader, param0->unk_10E4, param0->playerData->pokedex);
    param0->unk_108 = 0xffff;
    param0->currentScreenInstruction = 7;

    return 3;
}

static int ov94_0223F2B0(GTSApplicationState *param0)
{
    u32 v0;

    switch (v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        ListMenu_Free(param0->unk_10D8, &param0->unk_10E4->unk_0A, &param0->unk_10E4->unk_08);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[1], 0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->currentScreenInstruction = 4;
        ov94_02242AC4(&param0->unk_111C, param0->unk_10E4->unk_06 + param0->unk_10E4->unk_04, param0->unk_10E4->unk_0A, param0->unk_10E4->unk_08);
        break;
    default:
        ListMenu_Free(param0->unk_10D8, &param0->unk_10E4->unk_0A, &param0->unk_10E4->unk_08);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseStandardFrame(&param0->unk_F9C[1], 0);
        Window_Remove(&param0->unk_F9C[0]);
        Window_Remove(&param0->unk_F9C[1]);

        param0->unk_B7A.species = v0;
        param0->currentScreenInstruction = 0;

        Sound_PlayEffect(SEQ_SE_CONFIRM);
        Window_FillTilemap(&param0->unk_FCC[1], 0x0);

        ov94_02242158(&param0->unk_FCC[1], param0->speciesMessageLoader, v0, 0, 0, TEXT_COLOR(1, 2, 0));
        param0->unk_10E4->unk_20 = SpeciesData_GetSpeciesValue(v0, SPECIES_DATA_GENDER_RATIO);
        ov94_02242AC4(&param0->unk_111C, param0->unk_10E4->unk_06 + param0->unk_10E4->unk_04, param0->unk_10E4->unk_0A, param0->unk_10E4->unk_08);

        if (ov94_02241B80(&param0->unk_B7A, param0->unk_10E4->unk_20)) {
            Window_FillTilemap(&param0->unk_FCC[3], 0x0);
            ov94_02242204(&param0->unk_FCC[3], param0->gtsMessageLoader, param0->unk_B7A.gender, 1, 0, 0, TEXT_COLOR(1, 2, 0));
        }
        break;
    }

    return 3;
}

static int ov94_0223F41C(GTSApplicationState *param0)
{
    ov94_0223F9A4(param0, 10, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 9);

    Window_Add(param0->bgConfig, &param0->unk_F9C[0], 0, 21, 10, 10, 8, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2);
    Window_FillTilemap(&param0->unk_F9C[0], 0x0);

    return 3;
}

static int ov94_0223F474(GTSApplicationState *param0)
{
    param0->unk_10D8 = ov94_02242840(&param0->unk_10CC, &param0->unk_F9C[0], param0->gtsMessageLoader);
    param0->unk_108 = 0xffff;
    param0->currentScreenInstruction = 10;

    return 3;
}

static int ov94_0223F4B0(GTSApplicationState *param0)
{
    u32 v0;

    switch (v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 0xfffffffe:
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseMessageBox(&param0->bottomInstructionWindow, 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->currentScreenInstruction = 0;
        break;
    case 0:
    case 1:
    case 2:
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        param0->unk_B7A.gender = v0 + 1;
        param0->currentScreenInstruction = 0;

        Window_FillTilemap(&param0->unk_FCC[3], 0x0);
        ov94_02242204(&param0->unk_FCC[3], param0->gtsMessageLoader, param0->unk_B7A.gender, 1, 0, 0, TEXT_COLOR(1, 2, 0));
        break;
    }

    return 3;
}

static int ov94_0223F5A0(GTSApplicationState *param0)
{
    ov94_0223F9A4(param0, 11, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 12);

    Window_Add(param0->bgConfig, &param0->unk_F9C[0], 0, 15, 5, 16, 13, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2);
    Window_FillTilemap(&param0->unk_F9C[0], 0x0);

    return 3;
}

static int ov94_0223F5F8(GTSApplicationState *param0)
{
    param0->unk_10D8 = ov94_022428B0(&param0->unk_10CC, &param0->unk_F9C[0], param0->gtsMessageLoader, 1);
    param0->unk_108 = 0xffff;
    param0->currentScreenInstruction = 13;

    return 3;
}

static int ov94_0223F638(GTSApplicationState *param0)
{
    u32 v0;

    switch (v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
    case 11:
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseMessageBox(&param0->bottomInstructionWindow, 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->currentScreenInstruction = 0;
        break;
    default:
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ov94_02242934(&param0->unk_B7A, v0, 1);

        param0->currentScreenInstruction = 0;

        Window_FillTilemap(&param0->unk_FCC[5], 0x0);
        ov94_022422B8(&param0->unk_FCC[5], param0->gtsMessageLoader, v0, 0, 0, TEXT_COLOR(1, 2, 0), 1);
        break;
    }

    return 3;
}

static int ov94_0223F728(GTSApplicationState *param0)
{
    ov94_0223F9A4(param0, 169, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 15);

    Window_Add(param0->bgConfig, &param0->unk_F9C[0], 0, 2, 5, 28, 13, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2);
    Window_FillTilemap(&param0->unk_F9C[0], 0x0);

    return 3;
}

static int ov94_0223F780(GTSApplicationState *param0)
{
    param0->unk_10D8 = ov94_022429B4(&param0->unk_10CC, &param0->unk_F9C[0], param0->countryMessageLoader, param0->gtsMessageLoader);
    param0->unk_108 = 0xffff;
    param0->currentScreenInstruction = 16;

    return 3;
}

static int ov94_0223F7C0(GTSApplicationState *param0)
{
    u32 v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108);

    if (v0 == 0xffffffff) {
        (void)0;
    } else if ((v0 == 0xfffffffe) || (v0 == (Unk_ov94_02245FD4 + 1))) {
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseMessageBox(&param0->bottomInstructionWindow, 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->currentScreenInstruction = 0;
    } else {
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        ov94_02242A44(param0, v0);
        param0->currentScreenInstruction = 0;
        Window_FillTilemap(&param0->unk_10AC[1], 0x0);
        ov94_0224218C(&param0->unk_10AC[1], param0->countryMessageLoader, param0->gtsMessageLoader, param0->selectedCountryIndex, 0, 0, TEXT_COLOR(1, 2, 0));
    }

    return 3;
}

static int ov94_0223F8B4(GTSApplicationState *param0)
{
    param0->yesNoMenu = GTSApplication_CreateYesNoMenu(param0->bgConfig, 15, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2) + 16 * 13);
    param0->currentScreenInstruction = 26;

    return 3;
}

static int ov94_0223F8D8(GTSApplicationState *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->yesNoMenu, HEAP_ID_62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->currentScreenInstruction = 0;
        } else {
            param0->currentScreenInstruction = 2;
            GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
            ov94_022442E4(param0);
            param0->unk_118 = 0;
        }
    }

    return 3;
}

static int ov94_0223F920(GTSApplicationState *param0)
{
    param0->currentScreenInstruction = 1;
    return 3;
}

static int ov94_0223F928(GTSApplicationState *param0)
{
    ov94_0223F9A4(param0, 146, TEXT_SPEED_FAST, 0, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 23, 1);

    return 3;
}

static int ov94_0223F950(GTSApplicationState *param0)
{
    if (Text_IsPrinterActive(param0->textPrinter) == 0) {
        param0->currentScreenInstruction = param0->nextScreenInstruction;
    }

    return 3;
}

static int ov94_0223F970(GTSApplicationState *param0)
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

static void ov94_0223F9A4(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    MessageLoader_GetStrbuf(param0->gtsMessageLoader, param1, param0->genericMessageBuffer);
    Window_FillTilemap(&param0->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->bottomInstructionWindow, 0, 1, 10);

    param0->textPrinter = Text_AddPrinterWithParams(&param0->bottomInstructionWindow, FONT_MESSAGE, param0->genericMessageBuffer, 0, 0, param2, NULL);
}

static void ov94_0223F9FC(Window *param0, Window *param1, MessageLoader *gtsMessageLoader)
{
    Strbuf *v0, *v1, *v2;

    v0 = MessageLoader_GetNewStrbuf(gtsMessageLoader, GTS_Text_Criteria_Pokemon);
    ov94_02245900(&param0[0], v0, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Strbuf_Free(v0);

    v2 = MessageLoader_GetNewStrbuf(gtsMessageLoader, GTS_Text_Criteria_Gender);
    ov94_02245900(&param0[2], v2, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Strbuf_Free(v2);

    v1 = MessageLoader_GetNewStrbuf(gtsMessageLoader, GTS_Text_Criteria_Level);
    ov94_02245900(&param0[4], v1, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(gtsMessageLoader, GTS_Text_Criteria_Location);
    ov94_02245900(&param1[0], v1, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Strbuf_Free(v1);

    v0 = MessageLoader_GetNewStrbuf(gtsMessageLoader, GTS_Text_Criteria_Search);

    {
        int v3 = Font_CalcCenterAlignment(FONT_SYSTEM, v0, 0, param0[6].width * 8);
        ov94_02245900(&param0[6], v0, v3, 0, 0, TEXT_COLOR(1, 2, 0));
    }

    Strbuf_Free(v0);

    v0 = MessageLoader_GetNewStrbuf(gtsMessageLoader, GTS_Text_Criteria_Back);

    {
        int v4 = Font_CalcCenterAlignment(FONT_SYSTEM, v0, 0, param0[7].width * 8);
        ov94_02245900(&param0[7], v0, v4, 0, 0, TEXT_COLOR(1, 2, 0));
    }

    Strbuf_Free(v0);
}

static int ov94_0223FB0C(const GTSPokemonRequirements *param0, const GTSPokemonRequirements *param1, int param2, int param3)
{
    return (param0->species == param1->species)
        && (param0->gender == param1->gender)
        && (param0->level == param1->level)
        && (param0->level2 == param1->level2)
        && (param2 == param3);
}
