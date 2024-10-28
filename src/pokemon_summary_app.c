#include "pokemon_summary_app.h"

#include <nitro.h>
#include <string.h>

#include "constants/flavor.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/string.h"
#include "consts/sdat.h"
#include "consts/species.h"

#include "struct_defs/struct_02099F80.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "narc.h"
#include "overlay_manager.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_summary_app.h"
#include "render_window.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "unk_0200762C.h"
#include "unk_0200C440.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02015F84.h"
#include "unk_02017728.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_020393C8.h"
#include "unk_0208C098.h"
#include "unk_0208EA44.h"
#include "unk_0208FCF8.h"
#include "unk_020916B4.h"
#include "unk_020920C0.h"
#include "unk_020923C0.h"
#include "unk_02094EDC.h"
#include "unk_020989DC.h"
#include "vars_flags.h"

#include "constdata/const_020F410C.h"

#define HEAP_ALLOCATION_SIZE 0x40000

static int PokemonSummaryScreen_Init(OverlayManager *ovyManager, int *state);
static int PokemonSummaryScreen_Main(OverlayManager *ovyManager, int *state);
static int PokemonSummaryScreen_Exit(OverlayManager *ovyManager, int *state);
static int sub_0208C9C8(PokemonSummaryScreen *param0);
static int sub_0208CA00(PokemonSummaryScreen *param0);
static int sub_0208CB38(PokemonSummaryScreen *param0);
static int sub_0208CB4C(PokemonSummaryScreen *param0);
static int sub_0208CB60(PokemonSummaryScreen *param0);
static int sub_0208CB74(PokemonSummaryScreen *param0);
static int sub_0208CB88(PokemonSummaryScreen *param0);
static int sub_0208CC6C(PokemonSummaryScreen *param0);
static int sub_0208CD44(PokemonSummaryScreen *param0);
static int sub_0208CE54(PokemonSummaryScreen *param0);
static int sub_0208CE70(PokemonSummaryScreen *param0);
static int sub_0208CE84(PokemonSummaryScreen *param0);
static int sub_0208CE98(PokemonSummaryScreen *param0);
static int sub_0208CF0C(PokemonSummaryScreen *param0);
static int sub_0208CF78(PokemonSummaryScreen *param0);
static int sub_0208D114(PokemonSummaryScreen *param0);
static int sub_0208D164(PokemonSummaryScreen *param0);
static u8 sub_0208D17C(PokemonSummaryScreen *param0);
static u8 ScreenTransitionIsDone(PokemonSummaryScreen *param0);
static void SetVRAMBanks(void);
static void SetupBgs(BgConfig *param0);
static void TeardownBgs(BgConfig *param0);
static void sub_0208C7AC(PokemonSummaryScreen *param0, NARC *param1);
static void sub_0208C86C(void);
static void PokemonSummaryScreenVBlank(void *param0);
static void InitializeStringsAndCopyOTName(PokemonSummaryScreen *param0);
static void FreeStrings(PokemonSummaryScreen *param0);
static void sub_0208D1A4(PokemonSummaryScreen *param0);
static void SetMonDataFromBoxMon(PokemonSummaryScreen *param0, BoxPokemon *param1, PokemonSummaryMonData *param2);
static void SetMonData(PokemonSummaryScreen *param0, Pokemon *param1, PokemonSummaryMonData *param2);
static void sub_0208D678(PokemonSummaryScreen *param0);
static void sub_0208D618(PokemonSummaryScreen *param0);
static void sub_0208D7EC(PokemonSummaryScreen *param0, u8 param1);
static void sub_0208D898(PokemonSummaryScreen *param0, s8 param1);
static u8 sub_0208D920(PokemonSummaryScreen *param0);
static void sub_0208D748(PokemonSummaryScreen *param0);
static void sub_0208D948(PokemonSummaryScreen *param0);
static void sub_0208D9D0(PokemonSummaryScreen *param0);
static void sub_0208DA84(PokemonSummaryScreen *param0);
static void sub_0208DB10(PokemonSummaryScreen *param0, s8 param1);
static s8 sub_0208DBC4(PokemonSummaryScreen *param0, s8 param1);
static s8 sub_0208DC1C(PokemonSummaryScreen *param0, s8 param1);
static s8 sub_0208DC84(PokemonSummaryScreen *param0, s8 param1);
static s8 sub_0208DCE0(PokemonSummaryScreen *param0, s8 param1);
static u8 sub_0208DD8C(PokemonSummaryScreen *param0);
static u8 sub_0208DEA4(PokemonSummaryScreen *param0);
static u8 sub_0208DF94(PokemonSummaryScreen *param0, s8 param1);
static void sub_0208DFF4(PokemonSummaryScreen *param0);
static void sub_0208E0DC(PokemonSummaryScreen *param0);
static void sub_0208E190(PokemonSummaryScreen *param0);
static void sub_0208E07C(PokemonSummaryScreen *param0, u32 param1);
static void sub_0208E0B8(PokemonSummaryScreen *param0, u32 param1);
static void sub_0208E4EC(PokemonSummaryScreen *param0);
static void sub_0208E508(PokemonSummaryScreen *param0);
static u8 sub_0208E208(PokemonSummaryScreen *param0);
static u8 sub_0208E308(PokemonSummaryScreen *param0);
static void sub_0208E498(PokemonSummaryScreen *param0, u32 param1);
static void sub_0208E46C(PokemonSummaryScreen *param0);
static u8 sub_0208E57C(PokemonSummaryScreen *param0);
static u8 sub_0208E6A8(PokemonSummaryScreen *param0);
static void sub_0208E794(PokemonSummaryScreen *param0, s8 param1);
u8 PokemonSummary_RibbonAt(PokemonSummaryScreen *param0, u8 param1);
static int sub_0208E958(PokemonSummaryScreen *param0);

const OverlayManagerTemplate Unk_020F410C = {
    PokemonSummaryScreen_Init,
    PokemonSummaryScreen_Main,
    PokemonSummaryScreen_Exit,
    FS_OVERLAY_ID_NONE
};

BOOL PokemonSummary_ShowContestData(SaveData *saveData)
{
    return SystemFlag_CheckContestHallVisited(SaveData_GetVarsFlags(saveData));
}

static int PokemonSummaryScreen_Init(OverlayManager *ovyManager, int *state)
{
    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    SetAutorepeat(4, 8);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKEMON_SUMMARY_SCREEN, HEAP_ALLOCATION_SIZE);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PST_GRA, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    PokemonSummaryScreen *summaryScreen = OverlayManager_NewData(ovyManager, sizeof(PokemonSummaryScreen), HEAP_ID_POKEMON_SUMMARY_SCREEN);

    memset(summaryScreen, 0, sizeof(PokemonSummaryScreen));

    summaryScreen->data = OverlayManager_Args(ovyManager);
    summaryScreen->bgConfig = BgConfig_New(HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->monSpriteData.animationSys = sub_02015F84(HEAP_ID_POKEMON_SUMMARY_SCREEN, 1, 1);
    summaryScreen->narcPlPokeData = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    Font_UseImmediateGlyphAccess(FONT_SYSTEM, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    sub_0201E3D8();
    sub_0201E450(4);
    sub_0208D748(summaryScreen);
    SetVRAMBanks();
    SetupBgs(summaryScreen->bgConfig);
    sub_0208C7AC(summaryScreen, narc);
    sub_0208C86C();
    sub_020916B4(summaryScreen);
    InitializeStringsAndCopyOTName(summaryScreen);
    sub_0208D1A4(summaryScreen);
    sub_0208EA44(summaryScreen);
    sub_0208EB64(summaryScreen);
    sub_02091F8C(summaryScreen);
    sub_0208EE3C(summaryScreen);
    sub_0208EE9C(summaryScreen);
    sub_0208FCF8(summaryScreen);
    sub_0208D678(summaryScreen);
    sub_020920C0(summaryScreen);
    sub_020917E0(summaryScreen);
    SetMainCallback(PokemonSummaryScreenVBlank, summaryScreen);
    GXLayers_TurnBothDispOn();
    sub_02004550(61, 0, 0);
    DrawWifiConnectionIcon();
    NARC_dtor(narc);

    return TRUE;
}

static int PokemonSummaryScreen_Main(OverlayManager *ovyManager, int *state)
{
    PokemonSummaryScreen *summaryScreen = OverlayManager_Data(ovyManager);

    switch (*state) {
    case 0:
        sub_0208C120(0, 19);
        *state = 1;
        break;
    case 1:
        *state = sub_0208C9C8(summaryScreen);
        break;
    case 2:
        *state = sub_0208CA00(summaryScreen);
        break;
    case 3:
        *state = sub_0208CB38(summaryScreen);
        break;
    case 4:
        *state = sub_0208CB4C(summaryScreen);
        break;
    case 5:
        *state = sub_0208CB60(summaryScreen);
        break;
    case 6:
        *state = sub_0208CB74(summaryScreen);
        break;
    case 7:
        *state = sub_0208CB88(summaryScreen);
        break;
    case 8:
        *state = sub_0208CC6C(summaryScreen);
        break;
    case 9:
        *state = sub_0208CD44(summaryScreen);
        break;
    case 10:
        *state = sub_0208CE54(summaryScreen);
        break;
    case 11:
        *state = sub_0208CE70(summaryScreen);
        break;
    case 12:
        *state = sub_0208CE84(summaryScreen);
        break;
    case 13:
        *state = sub_0208CE98(summaryScreen);
        break;
    case 14:
        *state = sub_0208CF0C(summaryScreen);
        break;
    case 15:
        *state = sub_0208CF78(summaryScreen);
        break;
    case 16:
        *state = sub_0208D114(summaryScreen);
        break;
    case 17:
        *state = sub_0208D164(summaryScreen);
        break;
    case 18:
        *state = sub_0208D17C(summaryScreen);
        break;
    case 19:
        if (ScreenTransitionIsDone(summaryScreen) == TRUE) {
            return TRUE;
        }
        break;
    }

    sub_0208EB14(summaryScreen);
    sub_0208F3B0(summaryScreen);
    sub_0208FB30(summaryScreen);
    sub_0200C7EC(summaryScreen->gfxHandler);
    sub_02091750(summaryScreen);

    return FALSE;
}

static int PokemonSummaryScreen_Exit(OverlayManager *ovyManager, int *state)
{
    PokemonSummaryScreen *summaryScreen = OverlayManager_Data(ovyManager);

    SetMainCallback(NULL, NULL);
    sub_020917B0(summaryScreen);
    sub_0208EAF4(summaryScreen);
    sub_0208FE88(summaryScreen);
    TeardownBgs(summaryScreen->bgConfig);
    sub_0201E530();
    VRAMTransferManager_Destroy();
    FreeStrings(summaryScreen);
    NARC_dtor(summaryScreen->narcPlPokeData);
    Font_UseLazyGlyphAccess(FONT_SYSTEM);

    G2_BlendNone();

    OverlayManager_FreeData(ovyManager);
    Heap_Destroy(HEAP_ID_POKEMON_SUMMARY_SCREEN);

    return TRUE;
}

static void PokemonSummaryScreenVBlank(void *data)
{
    PokemonSummaryScreen *summaryScreen = data;

    Bg_RunScheduledUpdates(summaryScreen->bgConfig);
    sub_02008A94(summaryScreen->monSpriteData.spriteManager);
    sub_0201DCAC();
    OAMManager_ApplyAndResetBuffers();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetVRAMBanks(void)
{
    UnkStruct_02099F80 banks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_B,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&banks);
}

static void SetupBgs(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgMain1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .dummy = 0,
        .mosaic = FALSE
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgMain1, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate bgMain2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x2000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xd800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .dummy = 0,
        .mosaic = FALSE
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgMain2, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleScroll(bgConfig, BG_LAYER_MAIN_2, 0, 136);

    BgTemplate bgMain3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xd000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .dummy = 0,
        .mosaic = FALSE
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgMain3, BG_TYPE_STATIC);

    BgTemplate bgSub0 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .dummy = 0,
        .mosaic = FALSE
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &bgSub0, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate bgSub1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .dummy = 0,
        .mosaic = FALSE
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &bgSub1, BG_TYPE_STATIC);

    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, HEAP_ID_POKEMON_SUMMARY_SCREEN);
}

static void TeardownBgs(BgConfig *bgConfig)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);

    Heap_FreeToHeapExplicit(HEAP_ID_POKEMON_SUMMARY_SCREEN, bgConfig);
}

// ravetodo LoadBgTiles?
static void sub_0208C7AC(PokemonSummaryScreen *summaryScreen, NARC *narc)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 0, summaryScreen->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 3, summaryScreen->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    Graphics_LoadPaletteFromOpenNARC(narc, 1, PAL_LOAD_MAIN_BG, 0, 0, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 11, summaryScreen->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 2, summaryScreen->bgConfig, BG_LAYER_SUB_0, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 16, summaryScreen->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 15, summaryScreen->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    Graphics_LoadPaletteFromOpenNARC(narc, 14, PAL_LOAD_SUB_BG, 0, 0, HEAP_ID_POKEMON_SUMMARY_SCREEN);
}

// ravetodo SetBlendAlpha?
static void sub_0208C86C(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 23, 8);
}

// ravetodo review
static void InitializeStringsAndCopyOTName(PokemonSummaryScreen *summaryScreen)
{
    summaryScreen->msgLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, 455, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->ribbonLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, 535, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->unk_684 = sub_0200C440(1, 2, 0, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->strFormatter = StringTemplate_Default(HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->monData.speciesName = Strbuf_Init(12, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->monData.nickname = Strbuf_Init(12, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->monData.OTName = Strbuf_Init(TRAINER_NAME_LEN + 1, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->strbuf = Strbuf_Init(128, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->moveNameLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, 647, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->playerName = Strbuf_Init(TRAINER_NAME_LEN + 1, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    if (summaryScreen->data->OTName != NULL) {
        Strbuf_CopyChars(summaryScreen->playerName, summaryScreen->data->OTName);
    }
}

// ravetodo review
static void FreeStrings(PokemonSummaryScreen *summaryScreen)
{
    MessageLoader_Free(summaryScreen->moveNameLoader);
    MessageLoader_Free(summaryScreen->ribbonLoader);
    MessageLoader_Free(summaryScreen->msgLoader);
    sub_0200C560(summaryScreen->unk_684);
    StringTemplate_Free(summaryScreen->strFormatter);
    Strbuf_Free(summaryScreen->monData.speciesName);
    Strbuf_Free(summaryScreen->monData.nickname);
    Strbuf_Free(summaryScreen->monData.OTName);
    Strbuf_Free(summaryScreen->strbuf);
    Strbuf_Free(summaryScreen->playerName);
}

static int sub_0208C9C8(PokemonSummaryScreen *summaryScreen)
{
    if (IsScreenTransitionDone() == TRUE) {
        sub_02092028(summaryScreen);
        sub_0208D618(summaryScreen);

        if (summaryScreen->data->mode == 2) {
            return 9;
        } else if (summaryScreen->data->mode == 4) {
            return 15;
        } else {
            return 2;
        }
    }

    return 1;
}

static int sub_0208CA00(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->subscreenExit == TRUE) {
        summaryScreen->data->returnMode = 1;
        return 18;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) {
        sub_0208D898(summaryScreen, -1);
        return 2;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        sub_0208D898(summaryScreen, 1);
        return 2;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
        sub_0208DB10(summaryScreen, -1);
        return 2;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
        sub_0208DB10(summaryScreen, 1);
        return 2;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        summaryScreen->data->returnMode = 1;
        return 18;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        if (summaryScreen->data->mode == 3 && summaryScreen->page == 4) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            return sub_0208E958(summaryScreen);
        }

        if (summaryScreen->page == 3) {
            Sound_PlayEffect(SEQ_SE_DP_SYU01);
            summaryScreen->subscreen = 0;
            return 3;
        } else if (summaryScreen->page == 5) {
            Sound_PlayEffect(SEQ_SE_DP_SYU01);
            summaryScreen->subscreen = 0;
            return 5;
        } else if (summaryScreen->page == 6) {
            if (summaryScreen->ribbonMax != 0) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                summaryScreen->subscreen = 0;
                return 11;
            }
        } else if (summaryScreen->page == 7) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            summaryScreen->data->returnMode = 1;
            return 18;
        }
    }

    if (sub_0208D920(summaryScreen) == 1) {
        summaryScreen->subscreen = 2;
        return 14;
    }

    return 2;
}

static int sub_0208CB38(PokemonSummaryScreen *summaryScreen)
{
    if (sub_0208DD8C(summaryScreen) == TRUE) {
        return 7;
    }

    return 3;
}

static int sub_0208CB4C(PokemonSummaryScreen *summaryScreen)
{
    if (sub_0208DEA4(summaryScreen) == TRUE) {
        return 2;
    }

    return 4;
}

static int sub_0208CB60(PokemonSummaryScreen *summaryScreen)
{
    if (sub_0208E208(summaryScreen) == TRUE) {
        return 7;
    }

    return 5;
}

static int sub_0208CB74(PokemonSummaryScreen *summaryScreen)
{
    if (sub_0208E308(summaryScreen) == TRUE) {
        return 2;
    }

    return 6;
}

static int sub_0208CB88(PokemonSummaryScreen *summaryScreen)
{
    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        if (sub_0208DF94(summaryScreen, -1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_0208DFF4(summaryScreen);
        }

        return 7;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (sub_0208DF94(summaryScreen, 1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_0208DFF4(summaryScreen);
        }

        return 7;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        if (summaryScreen->cursor == 4) {
            Sound_PlayEffect(SEQ_SE_DP_SYU01);
            summaryScreen->subscreen = 0;

            if (summaryScreen->page == 3) {
                return 4;
            } else {
                return 6;
            }
        } else if (summaryScreen->data->mode != 1) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            sub_0208F310(summaryScreen);
            summaryScreen->cursorTmp = summaryScreen->cursor;
            return 8;
        }
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_DP_SYU01);
        summaryScreen->subscreen = 0;

        if (summaryScreen->page == 3) {
            return 4;
        } else {
            return 6;
        }
    }

    return 7;
}

static int sub_0208CC6C(PokemonSummaryScreen *summaryScreen)
{
    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        if (sub_0208DF94(summaryScreen, -1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_0208DFF4(summaryScreen);
        }

        return 8;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (sub_0208DF94(summaryScreen, 1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_0208DFF4(summaryScreen);
        }

        return 8;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        CellActor_SetDrawFlag(summaryScreen->unk_41C[10], FALSE);

        if (summaryScreen->cursor != 4 && summaryScreen->cursor != summaryScreen->cursorTmp) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            sub_0208E0DC(summaryScreen);
            sub_0208F22C(summaryScreen, summaryScreen->cursor, summaryScreen->cursorTmp);
            sub_02091474(summaryScreen);
            sub_0208DFF4(summaryScreen);
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        }

        return 7;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        CellActor_SetDrawFlag(summaryScreen->unk_41C[10], FALSE);
        return 7;
    }

    return 8;
}

static int sub_0208CD44(PokemonSummaryScreen *summaryScreen)
{
    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        sub_0208D898(summaryScreen, -1);
        return 9;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        sub_0208D898(summaryScreen, 1);
        return 9;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        if (sub_0208DF94(summaryScreen, -1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_0208DFF4(summaryScreen);
        }

        return 9;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (sub_0208DF94(summaryScreen, 1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_0208DFF4(summaryScreen);
        }

        return 9;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);

        if (summaryScreen->cursor != 4) {
            if (Item_IsHMMove(summaryScreen->monData.moves[summaryScreen->cursor]) == 1 && summaryScreen->data->move != 0) {
                SpriteActor_DrawSprite(summaryScreen->unk_41C[18], 0);
                sub_0208E46C(summaryScreen);
                sub_020914F8(summaryScreen);
                return 10;
            }
        }

        summaryScreen->data->selectedSlot = summaryScreen->cursor;
        summaryScreen->data->returnMode = 0;
        return 18;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        summaryScreen->data->selectedSlot = 4;
        summaryScreen->data->returnMode = 1;
        return 18;
    }

    return 9;
}

static int sub_0208CE54(PokemonSummaryScreen *summaryScreen)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        sub_0208DFF4(summaryScreen);
        return 9;
    }

    return 10;
}

static int sub_0208CE70(PokemonSummaryScreen *summaryScreen)
{
    if (sub_0208E57C(summaryScreen) == TRUE) {
        return 13;
    }

    return 11;
}

static int sub_0208CE84(PokemonSummaryScreen *summaryScreen)
{
    if (sub_0208E6A8(summaryScreen) == TRUE) {
        return 2;
    }

    return 12;
}

static int sub_0208CE98(PokemonSummaryScreen *summaryScreen)
{
    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) {
        sub_0208E794(summaryScreen, -1);
        return 13;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        sub_0208E794(summaryScreen, 1);
        return 13;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
        sub_0208E794(summaryScreen, -4);
        return 13;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
        sub_0208E794(summaryScreen, 4);
        return 13;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        summaryScreen->subscreen = 0;
        return 12;
    }

    return 13;
}

static int sub_0208CF0C(PokemonSummaryScreen *summaryScreen)
{
    if (sub_0209228C(summaryScreen) == TRUE) {
        return summaryScreen->subscreen;
    }

    if (summaryScreen->buttonState == 1) {
        u8 v0 = sub_020923A4(summaryScreen, summaryScreen->buttonPos);

        if (v0 == 7) {
            summaryScreen->subscreenExit = TRUE;
        }

        if (summaryScreen->monData.isEgg == TRUE) {
            if (v0 == 1 || v0 == 7) {
                sub_0208D7EC(summaryScreen, v0);
            }
        } else {
            sub_0208D7EC(summaryScreen, v0);
        }
    }

    return 14;
}

static int sub_0208CF78(PokemonSummaryScreen *summaryScreen)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        BoxPokemon *boxMon;
        Pokemon *mon;
        u8 monValue;

        if (summaryScreen->data->dataType == 2) {
            boxMon = PokemonSummary_MonData(summaryScreen);
            mon = Pokemon_New(HEAP_ID_POKEMON_SUMMARY_SCREEN);
            Pokemon_FromBoxPokemon(boxMon, mon);
        } else {
            mon = PokemonSummary_MonData(summaryScreen);
        }

        sub_02098EF8(summaryScreen->data->poffin, mon);

        summaryScreen->subscreen = 0;

        monValue = summaryScreen->monData.cool;
        summaryScreen->monData.cool = (u8)Pokemon_GetValue(mon, MON_DATA_COOL, NULL);

        if (monValue != summaryScreen->monData.cool) {
            summaryScreen->subscreen |= 1;
        }

        monValue = summaryScreen->monData.beauty;
        summaryScreen->monData.beauty = (u8)Pokemon_GetValue(mon, MON_DATA_BEAUTY, NULL);

        if (monValue != summaryScreen->monData.beauty) {
            summaryScreen->subscreen |= 2;
        }

        monValue = summaryScreen->monData.cute;
        summaryScreen->monData.cute = (u8)Pokemon_GetValue(mon, MON_DATA_CUTE, NULL);

        if (monValue != summaryScreen->monData.cute) {
            summaryScreen->subscreen |= 4;
        }

        monValue = summaryScreen->monData.smart;
        summaryScreen->monData.smart = (u8)Pokemon_GetValue(mon, MON_DATA_SMART, NULL);

        if (monValue != summaryScreen->monData.smart) {
            summaryScreen->subscreen |= 8;
        }

        monValue = summaryScreen->monData.tough;
        summaryScreen->monData.tough = (u8)Pokemon_GetValue(mon, MON_DATA_TOUGH, NULL);

        if (monValue != summaryScreen->monData.tough) {
            summaryScreen->subscreen |= 16;
        }

        summaryScreen->monData.sheen = (u8)Pokemon_GetValue(mon, MON_DATA_SHEEN, NULL);

        if (summaryScreen->data->dataType == 2) {
            Heap_FreeToHeap(mon);
        }

        Font_LoadScreenIndicatorsPalette(0, 14 * 32, HEAP_ID_POKEMON_SUMMARY_SCREEN);
        LoadMessageBoxGraphics(summaryScreen->bgConfig, BG_LAYER_MAIN_1, (1024 - (18 + 12)), 13, Options_Frame(summaryScreen->data->options), HEAP_ID_POKEMON_SUMMARY_SCREEN);

        if (summaryScreen->subscreen == 0) {
            sub_02091610(summaryScreen, 0xfe);
            return 17;
        } else {
            sub_02091D50(summaryScreen);
            sub_0208F34C(summaryScreen);
            sub_0208F6A4(summaryScreen);
            return 16;
        }
    }

    return 15;
}

static int sub_0208D114(PokemonSummaryScreen *summaryScreen)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        for (u8 i = 0; i < 5; i++) {
            if (summaryScreen->subscreen & (1 << i)) {
                sub_02091610(summaryScreen, i);
                summaryScreen->subscreen ^= (1 << i);

                if (summaryScreen->subscreen == 0) {
                    return 17;
                }
                break;
            }
        }
    }

    return 16;
}

static int sub_0208D164(PokemonSummaryScreen *dummy)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return 18;
    }

    return 17;
}

static u8 sub_0208D17C(PokemonSummaryScreen *dummy)
{
    sub_0208C120(1, 19);
    return 19;
}

static u8 ScreenTransitionIsDone(PokemonSummaryScreen *dummy)
{
    return IsScreenTransitionDone() == TRUE;
}

static void sub_0208D1A4(PokemonSummaryScreen *summaryScreen)
{
    void *monData = PokemonSummary_MonData(summaryScreen);

    if (summaryScreen->data->dataType == 2) {
        SetMonDataFromBoxMon(summaryScreen, monData, &summaryScreen->monData);
    } else {
        SetMonData(summaryScreen, monData, &summaryScreen->monData);
    }
}

static void SetMonDataFromBoxMon(PokemonSummaryScreen *summaryScreen, BoxPokemon *boxMon, PokemonSummaryMonData *monData)
{
    Pokemon *mon = Pokemon_New(HEAP_ID_POKEMON_SUMMARY_SCREEN);

    Pokemon_FromBoxPokemon(boxMon, mon);
    SetMonData(summaryScreen, mon, monData);
    Heap_FreeToHeap(mon);
}

// ravetodo entry IDs
static void SetMonData(PokemonSummaryScreen *summaryScreen, Pokemon *mon, PokemonSummaryMonData *monData)
{
    BOOL reencrypt = Pokemon_EnterDecryptionContext(mon);
    monData->species = (u16)Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, 11, summaryScreen->strbuf);
    StringTemplate_SetSpeciesName(summaryScreen->strFormatter, 0, boxMon);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->monData.speciesName, summaryScreen->strbuf);

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, 0, summaryScreen->strbuf);
    StringTemplate_SetNickname(summaryScreen->strFormatter, 0, boxMon);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->monData.nickname, summaryScreen->strbuf);

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, 14, summaryScreen->strbuf);
    StringTemplate_SetOTName(summaryScreen->strFormatter, 0, boxMon);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->monData.OTName, summaryScreen->strbuf);

    monData->heldItem = (u16)Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    monData->level = (u8)Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
    monData->isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);

    if (Pokemon_GetValue(mon, MON_DATA_NIDORAN_HAS_NICKNAME, NULL) == TRUE && monData->isEgg == FALSE) {
        monData->showGender = FALSE;
    } else {
        monData->showGender = TRUE;
    }

    monData->gender = Pokemon_GetGender(mon);
    monData->caughtBall = (u8)Pokemon_GetValue(mon, MON_DATA_POKEBALL, NULL);
    monData->type1 = (u8)Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL);
    monData->type2 = (u8)Pokemon_GetValue(mon, MON_DATA_TYPE_2, NULL);
    monData->OTID = Pokemon_GetValue(mon, MON_DATA_OT_ID, NULL);
    monData->curExp = Pokemon_GetValue(mon, MON_DATA_EXP, NULL);
    monData->OTGender = (u8)Pokemon_GetValue(mon, MON_DATA_OT_GENDER, NULL);
    monData->curLevelExp = Pokemon_GetSpeciesBaseExpAt(monData->species, monData->level);

    if (monData->level == MAX_POKEMON_LEVEL) {
        monData->nextLevelExp = monData->curLevelExp;
    } else {
        monData->nextLevelExp = Pokemon_GetSpeciesBaseExpAt(monData->species, monData->level + 1);
    }

    monData->curHP = (u16)Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);
    monData->maxHP = (u16)Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
    monData->attack = (u16)Pokemon_GetValue(mon, MON_DATA_ATK, NULL);
    monData->defense = (u16)Pokemon_GetValue(mon, MON_DATA_DEF, NULL);
    monData->spAttack = (u16)Pokemon_GetValue(mon, MON_DATA_SP_ATK, NULL);
    monData->spDefense = (u16)Pokemon_GetValue(mon, MON_DATA_SP_DEF, NULL);
    monData->speed = (u16)Pokemon_GetValue(mon, MON_DATA_SPEED, NULL);
    monData->ability = (u8)Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);
    monData->nature = Pokemon_GetNature(mon);

    u16 i;
    u8 maxPP;
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        monData->moves[i] = (u16)Pokemon_GetValue(mon, MON_DATA_MOVE1 + i, NULL);
        monData->curPP[i] = (u8)Pokemon_GetValue(mon, MON_DATA_MOVE1_CUR_PP + i, NULL);
        maxPP = (u8)Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + i, NULL);
        monData->maxPP[i] = MoveTable_CalcMaxPP(monData->moves[i], maxPP);
    }

    monData->cool = (u8)Pokemon_GetValue(mon, MON_DATA_COOL, NULL);
    monData->beauty = (u8)Pokemon_GetValue(mon, MON_DATA_BEAUTY, NULL);
    monData->cute = (u8)Pokemon_GetValue(mon, MON_DATA_CUTE, NULL);
    monData->smart = (u8)Pokemon_GetValue(mon, MON_DATA_SMART, NULL);
    monData->tough = (u8)Pokemon_GetValue(mon, MON_DATA_TOUGH, NULL);
    monData->sheen = (u8)Pokemon_GetValue(mon, MON_DATA_SHEEN, NULL);
    monData->preferredFlavor = FLAVOR_MAX;

    for (i = 0; i < FLAVOR_MAX; i++) {
        if (Pokemon_GetFlavorAffinity(mon, i) == 1) {
            monData->preferredFlavor = i;
            break;
        }
    }

    monData->markings = Pokemon_GetValue(mon, MON_DATA_MARKS, NULL);
    monData->form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    monData->status = PokemonSummary_StatusIconAnimIdx(mon);

    if (Pokemon_CanSpreadPokerus(mon) == TRUE) {
        monData->pokerus = 2;
    } else if (Pokemon_InfectedWithPokerus(mon) == TRUE) {
        monData->pokerus = 1;

        if (monData->status == 7) {
            monData->status = 0;
        }
    } else {
        monData->pokerus = 0;
    }

    if (Pokemon_IsShiny(mon) == TRUE) {
        monData->isShiny = TRUE;
    } else {
        monData->isShiny = FALSE;
    }

    monData->ribbons[0] = 0;
    monData->ribbons[1] = 0;
    monData->ribbons[2] = 0;
    monData->ribbons[3] = 0;
    summaryScreen->ribbonMax = 0;

    for (i = 0; i < 80; i++) {
        if (Pokemon_GetValue(mon, sub_020923C0(i, 0), NULL) != 0) {
            monData->ribbons[i / 32] |= (1 << (i & 0x1f));
            summaryScreen->ribbonMax++;
        }
    }

    Pokemon_ExitDecryptionContext(mon, reencrypt);
}
// ravetodo PlayMonCry?
static void sub_0208D618(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->monData.isEgg != FALSE) {
        return;
    }

    u8 cryDelay;
    PokeSprite_LoadCryDelay(summaryScreen->narcPlPokeData, &cryDelay, summaryScreen->monData.species, 1);

    if (summaryScreen->monData.species == SPECIES_CHATOT) {
        Sound_PlayDelayedChatotCry(summaryScreen->data->chatotCry, 0, 100, 0, cryDelay);
    } else {
        sub_0200590C(summaryScreen->monData.species, cryDelay, summaryScreen->monData.form);
    }
}

// ravetodo switchmon or something?
static void sub_0208D678(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->data->mode) {
    case 0:
    case 1:
        if (summaryScreen->monData.isEgg == FALSE) {
            summaryScreen->page = 0;
        } else {
            summaryScreen->page = 1;
        }
        break;
    case 2:
        summaryScreen->page = 3;
        break;
    case 3:
    case 4:
        summaryScreen->page = 4;
        break;
    }

    sub_0208F6DC(summaryScreen, NULL);
    sub_0208ECF4(summaryScreen);
    sub_0208EF58(summaryScreen);
    sub_0208FA04(summaryScreen);
    sub_0208EDC4(summaryScreen);
    sub_0208F574(summaryScreen);
    sub_0208F34C(summaryScreen);
    sub_0208FD40(summaryScreen);
    sub_020904C4(summaryScreen);
    sub_0208D948(summaryScreen);
    sub_020919E8(summaryScreen);

    if (summaryScreen->data->mode == 2) {
        sub_0208E190(summaryScreen);
    }
}

void PokemonSummary_FlagVisiblePages(PokemonSummary *summary, const u8 *param1)
{
    u8 v0;

    summary->pageFlag = 0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param1[v0] == 8) {
            break;
        }

        summary->pageFlag |= (1 << param1[v0]);
    }
}

static void sub_0208D748(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->data->contest == 1) {
        return;
    }

    if (summaryScreen->data->pageFlag & (1 << 4)) {
        summaryScreen->data->pageFlag ^= (1 << 4);
    }

    if (summaryScreen->data->pageFlag & (1 << 5)) {
        summaryScreen->data->pageFlag ^= (1 << 5);
    }

    if (summaryScreen->data->pageFlag & (1 << 6)) {
        summaryScreen->data->pageFlag ^= (1 << 6);
    }
}

u8 PokemonSummary_PageIsVisble(PokemonSummaryScreen *summaryScreen, u32 page)
{
    if (summaryScreen->monData.isEgg != 0 && page != 1 && page != 7) {
        return 0;
    }

    return summaryScreen->data->pageFlag & (1 << page);
}

// ravetodo enum
u8 PokemonSummary_CountVisiblePages(PokemonSummaryScreen *summaryScreen)
{
    u8 page;
    u8 countVisible = 0;

    for (page = 0; page < 8; page++) {
        if (summaryScreen->data->pageFlag & (1 << page)) {
            countVisible++;
        }
    }

    return countVisible;
}

// ravetodo switchpage?
static void sub_0208D7EC(PokemonSummaryScreen *summaryScreen, u8 page)
{
    if (summaryScreen->page == page) {
        return;
    }

    if (summaryScreen->data->mode == 2) {
        sub_0208E4EC(summaryScreen);
    }

    sub_0208FE34(summaryScreen);
    summaryScreen->page = page;
    sub_0208F6DC(summaryScreen, NULL);

    sub_0208ECF4(summaryScreen);
    sub_0208EDC4(summaryScreen);
    sub_0208EF58(summaryScreen);
    sub_0208FA04(summaryScreen);
    sub_0208F34C(summaryScreen);
    sub_0208FD40(summaryScreen);
    sub_0208FB54(summaryScreen, 0);

    Bg_FillTilemapRect(summaryScreen->bgConfig, 1, 0, 14, 4, 19, 20, 0);
    Bg_CopyTilemapBufferToVRAM(summaryScreen->bgConfig, BG_LAYER_MAIN_1);
    sub_020904C4(summaryScreen);
    sub_0208D948(summaryScreen);
    sub_020919E8(summaryScreen);

    if (summaryScreen->data->mode == 2) {
        sub_0208E508(summaryScreen);
    }
}

static void sub_0208D898(PokemonSummaryScreen *param0, s8 param1)
{
    s8 v0 = param0->page;

    while (TRUE) {
        v0 += param1;

        if (v0 < 0) {
            v0 = 7;
        } else if (v0 > 7) {
            v0 = 0;
        }

        if (param0->monData.isEgg == 0) {
            if ((param0->data->pageFlag & (1 << v0)) != 0) {
                break;
            }
        } else {
            if (((param0->data->pageFlag & (1 << v0)) != 0) && ((v0 == 1) || (v0 == 7))) {
                break;
            }
        }
    }

    if (v0 == param0->page) {
        return;
    }

    Sound_PlayEffect(1505);
    sub_0209219C(param0);
    sub_0208FB54(param0, 0);
    sub_0208D7EC(param0, v0);
}

static u8 sub_0208D920(PokemonSummaryScreen *param0)
{
    u8 v0 = sub_020921E4(param0);

    if (v0 == 0xff) {
        return 0;
    }

    param0->buttonCount = 0;
    param0->buttonPos = v0;
    param0->buttonState = 0;

    return 1;
}

static void sub_0208D948(PokemonSummaryScreen *param0)
{
    {
        NNSG2dScreenData *v0;
        void *v1;
        u32 v2;

        if ((param0->data->mode == 2) && (param0->data->move != 0)) {
            if (param0->page == 3) {
                v2 = 12;
            } else {
                v2 = 13;
            }
        } else {
            v2 = 3 + param0->page;
        }

        v1 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_GRAPHIC__PL_PST_GRA, v2, 19);
        NNS_G2dGetUnpackedScreenData(v1, &v0);

        Bg_LoadToTilemapRect(param0->bgConfig, 3, v0->rawData, 0, 0, 32, 32);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, 3);
        Heap_FreeToHeap(v1);
    }

    if (param0->page == 0) {
        sub_0208DA84(param0);
    } else if (param0->page == 2) {
        sub_0208D9D0(param0);
    }
}

static void sub_0208D9D0(PokemonSummaryScreen *param0)
{
    u16 v0;
    u16 v1;
    u8 v2;
    u8 v3;

    switch (HealthBar_Color(param0->monData.curHP, param0->monData.maxHP, 48)) {
    case 4:
    case 3:
    case 0:
        v0 = 0xc0 | 0xa000;
        break;
    case 2:
        v0 = 0xe0 | 0xa000;
        break;
    case 1:
        v0 = 0x100 | 0xa000;
        break;
    }

    v2 = App_PixelCount(param0->monData.curHP, param0->monData.maxHP, 48);

    for (v3 = 0; v3 < 6; v3++) {
        if (v2 >= 8) {
            v1 = v0 + 8;
        } else {
            v1 = v0 + v2;
        }

        Bg_FillTilemapRect(param0->bgConfig, 3, v1, 24 + v3, 6, 1, 1, 17);

        if (v2 < 8) {
            v2 = 0;
        } else {
            v2 -= 8;
        }
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, 3);
}

static void sub_0208DA84(PokemonSummaryScreen *param0)
{
    u32 v0;
    u32 v1;
    u16 v2;
    u8 v3;
    u8 v4;

    if (param0->monData.level < 100) {
        v0 = param0->monData.nextLevelExp - param0->monData.curLevelExp;
        v1 = param0->monData.curExp - param0->monData.curLevelExp;
    } else {
        v0 = 0;
        v1 = 0;
    }

    v3 = App_PixelCount(v1, v0, 56);

    for (v4 = 0; v4 < 7; v4++) {
        if (v3 >= 8) {
            v2 = 0xac + 8;
        } else {
            v2 = 0xac + v3;
        }

        Bg_FillTilemapRect(param0->bgConfig, 3, v2, 23 + v4, 23, 1, 1, 17);

        if (v3 < 8) {
            v3 = 0;
        } else {
            v3 -= 8;
        }
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, 3);
}

static void sub_0208DB10(PokemonSummaryScreen *param0, s8 param1)
{
    s8 v0 = sub_0208DBC4(param0, param1);

    if (v0 == -1) {
        return;
    }

    param0->data->pos = (u8)v0;

    sub_0208D1A4(param0);
    sub_0208D618(param0);
    sub_0208FEA4(param0);
    sub_0208FF3C(param0);
    sub_0208FFE0(param0);

    if (param0->page == 0) {
        sub_0208DA84(param0);
    } else if (param0->page == 2) {
        sub_0208D9D0(param0);
    } else if (param0->page == 4) {
        sub_02091D50(param0);
    }

    sub_02092098(param0);
    sub_0208F6DC(param0, NULL);
    sub_0208ECF4(param0);
    sub_0208EDC4(param0);
    sub_0208F16C(param0);
    sub_0208EF58(param0);
    sub_0208FA04(param0);
    sub_0208F71C(param0);
    sub_0208EE3C(param0);
    sub_0208EE9C(param0);
    sub_0208F34C(param0);
    sub_0208F574(param0);
    sub_020904C4(param0);
}

static s8 sub_0208DBC4(PokemonSummaryScreen *param0, s8 param1)
{
    switch (param0->data->dataType) {
    case 0:
        return sub_0208DC1C(param0, param1);
    case 1:
        return sub_0208DC84(param0, param1);
    case 2:
        return sub_0208DCE0(param0, param1);
    }

    return -1;
}

static BOOL sub_0208DBF4(PokemonSummaryScreen *param0)
{
    if (param0->data->mode == 3) {
        return 0;
    }

    if ((param0->page != 1) && (param0->page != 7)) {
        return 0;
    }

    return 1;
}

static s8 sub_0208DC1C(PokemonSummaryScreen *param0, s8 param1)
{
    Pokemon *v0;
    s8 v1;

    v1 = (s8)param0->data->pos;
    v0 = (Pokemon *)param0->data->monData;

    while (TRUE) {
        v1 += param1;

        if ((v1 < 0) || (v1 >= param0->data->max)) {
            return -1;
        }

        v0 = (Pokemon *)((u32)param0->data->monData + Pokemon_GetStructSize() * v1);

        if (Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL) != 0) {
            if (Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL) != 0) {
                if (sub_0208DBF4(param0) == 1) {
                    break;
                }
            } else {
                break;
            }
        }
    }

    return v1;
}

static s8 sub_0208DC84(PokemonSummaryScreen *param0, s8 param1)
{
    Pokemon *v0;
    s8 v1;

    v1 = (s8)param0->data->pos;

    while (TRUE) {
        v1 += param1;

        if ((v1 < 0) || (v1 >= param0->data->max)) {
            return -1;
        }

        v0 = Party_GetPokemonBySlotIndex(param0->data->monData, v1);

        if (Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL) != 0) {
            if (Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL) != 0) {
                if (sub_0208DBF4(param0) == 1) {
                    break;
                }
            } else {
                break;
            }
        }
    }

    return v1;
}

static s8 sub_0208DCE0(PokemonSummaryScreen *param0, s8 param1)
{
    BoxPokemon *v0;
    s8 v1;

    v1 = (s8)param0->data->pos;
    v0 = (BoxPokemon *)param0->data->monData;

    while (TRUE) {
        v1 += param1;

        if ((v1 < 0) || (v1 >= param0->data->max)) {
            return -1;
        }

        v0 = (BoxPokemon *)((u32)param0->data->monData + BoxPokemon_GetStructSize() * v1);

        if (BoxPokemon_GetValue(v0, MON_DATA_SPECIES, NULL) != 0) {
            if (BoxPokemon_GetValue(v0, MON_DATA_IS_EGG, NULL) != 0) {
                if (sub_0208DBF4(param0) == 1) {
                    break;
                }
            } else {
                break;
            }
        }
    }

    return v1;
}

void *PokemonSummary_MonData(PokemonSummaryScreen *param0)
{
    switch (param0->data->dataType) {
    case 0:
        return (void *)((u32)param0->data->monData + (Pokemon_GetStructSize() * param0->data->pos));
    case 1:
        return (void *)Party_GetPokemonBySlotIndex(param0->data->monData, param0->data->pos);
    case 2:
        return (void *)((u32)param0->data->monData + (BoxPokemon_GetStructSize() * param0->data->pos));
    }

    return NULL;
}

static u8 sub_0208DD8C(PokemonSummaryScreen *param0)
{
    switch (param0->subscreen) {
    case 0:
        Bg_ScheduleScroll(param0->bgConfig, 2, 0, 136);
        Bg_ScheduleScroll(param0->bgConfig, 2, 3, 0);
        sub_0208EE10(param0, 0);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[33]);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[6]);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[32]);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[35]);
        sub_0208F6DC(param0, NULL);

        param0->cursor = 0;
        param0->subscreen = 1;
        break;
    case 1: {
        int v0 = Bg_GetXOffset(param0->bgConfig, 2);

        if (v0 <= 64) {
            Bg_ScheduleScroll(param0->bgConfig, 2, 0, 0);
            param0->subscreen = 2;
        } else {
            Bg_ScheduleScroll(param0->bgConfig, 2, 2, 64);
        }
    } break;
    case 2:
        sub_02091420(param0);

        if (param0->data->mode != 1) {
            sub_02090064(param0, 152);
            sub_0208F6DC(param0, &param0->staticWindows[35]);
        }

        sub_0208DFF4(param0);
        SpriteActor_DrawSprite(param0->unk_41C[11], 1);
        sub_0208F7A4(param0);

        if (param0->monData.type1 != param0->monData.type2) {
            SpriteActor_DrawSprite(param0->unk_41C[12], 1);
        }

        CellActor_SetDrawFlag(param0->unk_41C[9], 1);
        return 1;
    }

    return 0;
}

static u8 sub_0208DEA4(PokemonSummaryScreen *param0)
{
    switch (param0->subscreen) {
    case 0:
        SpriteActor_DrawSprite(param0->unk_41C[11], 0);
        SpriteActor_DrawSprite(param0->unk_41C[12], 0);
        SpriteActor_DrawSprite(param0->unk_41C[18], 0);
        SpriteActor_DrawSprite(param0->unk_41C[19], 0);
        CellActor_SetDrawFlag(param0->unk_41C[9], 0);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[35]);
        sub_0208F6DC(param0, NULL);
        sub_0209145C(param0);
        sub_020913D8(param0);
        param0->subscreen = 1;
        break;
    case 1: {
        int v0 = Bg_GetXOffset(param0->bgConfig, 2);

        if (v0 >= 128) {
            Bg_ScheduleScroll(param0->bgConfig, 2, 0, 136);
            param0->subscreen = 2;
        } else {
            Bg_ScheduleScroll(param0->bgConfig, 2, 1, 64);
        }
    } break;
    case 2:
        Window_ScheduleCopyToVRAM(&param0->staticWindows[33]);
        Window_ScheduleCopyToVRAM(&param0->staticWindows[6]);
        Window_ScheduleCopyToVRAM(&param0->staticWindows[32]);
        sub_02090064(param0, 129);
        sub_0208EE10(param0, 1);
        sub_0208F6DC(param0, &param0->staticWindows[35]);
        return 1;
    }

    return 0;
}

static u8 sub_0208DF94(PokemonSummaryScreen *summaryScreen, s8 param1)
{
    s8 v0 = summaryScreen->cursor;

    while (TRUE) {
        v0 += param1;

        if (v0 < 0) {
            v0 = 4;
        } else if (v0 == 5) {
            v0 = 0;
        }

        if (summaryScreen->monData.moves[v0] != 0 || v0 == 4) {
            break;
        }
    }

    if (v0 != summaryScreen->cursor) {
        summaryScreen->cursor = v0;
        return TRUE;
    }

    return FALSE;
}

static void sub_0208DFF4(PokemonSummaryScreen *param0)
{
    sub_0208F2E8(param0);

    if (param0->cursor == 4) {
        if (param0->data->move != 0) {
            if (param0->page == 3) {
                sub_0208E07C(param0, param0->data->move);
            } else {
                sub_0208E0B8(param0, param0->data->move);
            }
        } else {
            if (param0->page == 3) {
                sub_0208E07C(param0, 0xffffffff);
            } else {
                sub_0208E0B8(param0, 0xffffffff);
            }
        }
    } else {
        if (param0->page == 3) {
            sub_0208E07C(param0, param0->monData.moves[param0->cursor]);
        } else {
            sub_0208E0B8(param0, param0->monData.moves[param0->cursor]);
        }
    }
}

static void sub_0208E07C(PokemonSummaryScreen *param0, u32 param1)
{
    if (param1 == 0xffffffff) {
        sub_020913D8(param0);
        SpriteActor_DrawSprite(param0->unk_41C[18], 0);
    } else {
        sub_020912A4(param0, param1);
        sub_0208F294(param0, param1);
        SpriteActor_DrawSprite(param0->unk_41C[18], 1);
    }
}

static void sub_0208E0B8(PokemonSummaryScreen *param0, u32 param1)
{
    sub_0208E498(param0, param1);

    if (param1 == 0xffffffff) {
        sub_020915F4(param0);
    } else {
        sub_02091570(param0, param1);
    }
}

static void sub_0208E0DC(PokemonSummaryScreen *param0)
{
    void *v0;
    u16 v1;
    u8 v2;
    u8 v3;

    v0 = PokemonSummary_MonData(param0);

    if (param0->data->dataType == 2) {
        BoxPokemon_SwapMoveSlots(v0, param0->cursor, param0->cursorTmp);
    } else {
        Pokemon_SwapMoveSlots(v0, param0->cursor, param0->cursorTmp);
    }

    v1 = param0->monData.moves[param0->cursor];
    param0->monData.moves[param0->cursor] = param0->monData.moves[param0->cursorTmp];
    param0->monData.moves[param0->cursorTmp] = v1;

    v2 = param0->monData.curPP[param0->cursor];
    param0->monData.curPP[param0->cursor] = param0->monData.curPP[param0->cursorTmp];
    param0->monData.curPP[param0->cursorTmp] = v2;

    v3 = param0->monData.maxPP[param0->cursor];
    param0->monData.maxPP[param0->cursor] = param0->monData.maxPP[param0->cursorTmp];
    param0->monData.maxPP[param0->cursorTmp] = v3;
}

static void sub_0208E190(PokemonSummaryScreen *param0)
{
    Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[33]);
    Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[6]);
    Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[32]);

    Bg_ScheduleScroll(param0->bgConfig, 2, 0, 0);

    sub_02091420(param0);
    sub_0208DFF4(param0);

    SpriteActor_DrawSprite(param0->unk_41C[11], 1);
    sub_0208F7A4(param0);

    if (param0->monData.type1 != param0->monData.type2) {
        SpriteActor_DrawSprite(param0->unk_41C[12], 1);
    }

    CellActor_SetDrawFlag(param0->unk_41C[9], 1);
}

static u8 sub_0208E208(PokemonSummaryScreen *param0)
{
    switch (param0->subscreen) {
    case 0:
        Bg_ScheduleScroll(param0->bgConfig, 2, 0, 136);
        Bg_ScheduleScroll(param0->bgConfig, 2, 3, 256);
        sub_0208E498(param0, 0xffffffff);
        sub_0208EE10(param0, 0);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[33]);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[6]);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[32]);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[35]);
        sub_0208F6DC(param0, NULL);
        param0->cursor = 0;
        param0->subscreen = 1;
        break;
    case 1: {
        int v0 = Bg_GetXOffset(param0->bgConfig, 2);

        if (v0 <= 64) {
            Bg_ScheduleScroll(param0->bgConfig, 2, 0, 0);
            param0->subscreen = 2;
        } else {
            Bg_ScheduleScroll(param0->bgConfig, 2, 2, 64);
        }
    } break;
    case 2:
        sub_02091420(param0);

        if (param0->data->mode != 1) {
            sub_02090064(param0, 152);
            sub_0208F6DC(param0, &param0->staticWindows[35]);
        }

        sub_0208DFF4(param0);
        sub_0208F7A4(param0);
        sub_0208F844(param0);
        CellActor_SetDrawFlag(param0->unk_41C[9], 1);

        return 1;
    }

    return 0;
}

static u8 sub_0208E308(PokemonSummaryScreen *param0)
{
    switch (param0->subscreen) {
    case 0:
        sub_0208F964(param0);
        SpriteActor_DrawSprite(param0->unk_41C[19], 0);
        sub_0208E498(param0, 0xffffffff);
        CellActor_SetDrawFlag(param0->unk_41C[9], 0);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[35]);
        sub_0208F6DC(param0, NULL);
        sub_0209145C(param0);
        sub_020915F4(param0);
        param0->subscreen = 1;
        break;
    case 1: {
        int v0 = Bg_GetXOffset(param0->bgConfig, 2);

        if (v0 >= 128) {
            Bg_ScheduleScroll(param0->bgConfig, 2, 0, 136);
            param0->subscreen = 2;
        } else {
            Bg_ScheduleScroll(param0->bgConfig, 2, 1, 64);
        }
    } break;
    case 2:
        Window_ScheduleCopyToVRAM(&param0->staticWindows[33]);
        Window_ScheduleCopyToVRAM(&param0->staticWindows[6]);
        Window_ScheduleCopyToVRAM(&param0->staticWindows[32]);
        sub_02090064(param0, 158);
        sub_0208EE10(param0, 1);
        sub_0208F6DC(param0, &param0->staticWindows[35]);
        return 1;
    }

    return 0;
}

static void sub_0208E3DC(PokemonSummaryScreen *param0, u16 param1, u8 param2)
{
    Bg_FillTilemapRect(param0->bgConfig, 2, param1, 2 + param2 * 2, (32 + 15), 1, 1, 16);
    Bg_FillTilemapRect(param0->bgConfig, 2, param1 + 1, 2 + param2 * 2 + 1, (32 + 15), 1, 1, 16);
    Bg_FillTilemapRect(param0->bgConfig, 2, param1 + 32, 2 + param2 * 2, (32 + 15) + 1, 1, 1, 16);
    Bg_FillTilemapRect(param0->bgConfig, 2, param1 + 33, 2 + param2 * 2 + 1, (32 + 15) + 1, 1, 1, 16);
}

static void sub_0208E46C(PokemonSummaryScreen *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 6; v0++) {
        sub_0208E3DC(param0, 0x12e, v0);
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, 2);
}

static void sub_0208E498(PokemonSummaryScreen *param0, u32 param1)
{
    u32 v0;
    u16 v1;
    s8 v2;

    sub_0208E46C(param0);

    if (param1 != 0xffffffff) {
        v0 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_CONTEST_EFFECT);
        v2 = sub_02095734(v0) / 10;

        for (v1 = 0; v1 < v2; v1++) {
            sub_0208E3DC(param0, 0x12c, v1);
        }
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, 2);
}

static void sub_0208E4EC(PokemonSummaryScreen *param0)
{
    if (param0->page == 3) {
        sub_020913D8(param0);
    } else {
        sub_020915F4(param0);
    }
}

static void sub_0208E508(PokemonSummaryScreen *param0)
{
    sub_02091420(param0);
    sub_0208DFF4(param0);
    sub_0208F7A4(param0);

    if (param0->page == 3) {
        sub_0208F964(param0);
        SpriteActor_DrawSprite(param0->unk_41C[11], 1);

        if (param0->monData.type1 != param0->monData.type2) {
            SpriteActor_DrawSprite(param0->unk_41C[12], 1);
        }

        Bg_ScheduleScroll(param0->bgConfig, 2, 3, 0);
    } else {
        sub_0208F844(param0);
        Bg_ScheduleScroll(param0->bgConfig, 2, 3, 256);
    }
}

static u8 sub_0208E57C(PokemonSummaryScreen *param0)
{
    switch (param0->subscreen) {
    case 0:
        Bg_ScheduleScroll(param0->bgConfig, 2, 0, 256);
        Bg_ScheduleScroll(param0->bgConfig, 2, 3, 0);

        sub_0208EE10(param0, 0);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[6]);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[32]);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[30]);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[35]);
        Window_ClearAndScheduleCopyToVRAM(&param0->extraWindows[0]);
        sub_0208F6DC(param0, NULL);

        param0->ribbonPos = 0;
        param0->ribbonState = 0;
        param0->subscreen = 1;
        break;
    case 1: {
        int v0 = Bg_GetYOffset(param0->bgConfig, 2);

        if (v0 >= 48) {
            Bg_ScheduleScroll(param0->bgConfig, 2, 3, 56);
            param0->subscreen = 2;
        } else {
            Bg_ScheduleScroll(param0->bgConfig, 2, 4, 16);
        }
    } break;
    case 2:
        sub_02090064(param0, 181);
        sub_0208F6DC(param0, &param0->staticWindows[35]);
        CellActor_SetDrawFlag(param0->unk_41C[67], 1);
        CellActor_SetDrawFlag(param0->unk_41C[70], 1);
        CellActor_SetDrawFlag(param0->unk_41C[63], 0);
        CellActor_SetDrawFlag(param0->unk_41C[64], 0);
        CellActor_SetDrawFlag(param0->unk_41C[65], 0);
        CellActor_SetDrawFlag(param0->unk_41C[66], 0);
        sub_0208E794(param0, 0);

        return 1;
    }

    return 0;
}

static u8 sub_0208E6A8(PokemonSummaryScreen *param0)
{
    switch (param0->subscreen) {
    case 0:
        param0->ribbonPos = 0;
        param0->ribbonState = 0;
        Window_ClearAndScheduleCopyToVRAM(&param0->extraWindows[1]);
        Window_ClearAndScheduleCopyToVRAM(&param0->extraWindows[2]);
        Window_ClearAndScheduleCopyToVRAM(&param0->extraWindows[3]);
        Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[35]);
        sub_0208F6DC(param0, NULL);
        sub_0208FA04(param0);
        param0->subscreen = 1;
        break;
    case 1: {
        int v0 = Bg_GetYOffset(param0->bgConfig, 2);

        if (v0 <= 8) {
            Bg_ScheduleScroll(param0->bgConfig, 2, 3, 0);
            param0->subscreen = 2;
        } else {
            Bg_ScheduleScroll(param0->bgConfig, 2, 5, 16);
        }
    } break;
    case 2:
        Window_ScheduleCopyToVRAM(&param0->staticWindows[6]);
        Window_ScheduleCopyToVRAM(&param0->staticWindows[32]);
        Window_ScheduleCopyToVRAM(&param0->staticWindows[30]);
        Window_ScheduleCopyToVRAM(&param0->staticWindows[35]);
        Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);
        sub_02090064(param0, 180);
        sub_0208EE10(param0, 1);
        sub_0208F6DC(param0, &param0->staticWindows[35]);

        return 1;
    }

    return 0;
}

static void sub_0208E794(PokemonSummaryScreen *param0, s8 param1)
{
    u8 v0;
    u8 v1;

    v0 = param0->ribbonPos;
    v1 = param0->ribbonState;

    if (param1 == 1) {
        if ((param0->ribbonPos & 3) == 3) {
            return;
        }

        if ((param0->ribbonState * 4 + param0->ribbonPos + 1) < param0->ribbonMax) {
            param0->ribbonPos += 1;
        }
    } else if (param1 == -1) {
        if ((param0->ribbonPos & 3) == 0) {
            return;
        }

        param0->ribbonPos -= 1;
    } else if (param1 == 4) {
        if (param0->ribbonPos < 4) {
            if ((param0->ribbonState * 4 + param0->ribbonPos + 4) >= param0->ribbonMax) {
                if ((param0->ribbonMax > 4) && ((param0->ribbonMax % 4) != 0)) {
                    param0->ribbonPos = param0->ribbonMax % 4 + 3;
                }
            } else {
                param0->ribbonPos += 4;
            }
        } else {
            if ((param0->ribbonState * 4 + 8) < param0->ribbonMax) {
                param0->ribbonState++;

                if ((param0->ribbonState * 4 + param0->ribbonPos) >= param0->ribbonMax) {
                    param0->ribbonPos = param0->ribbonMax % 4 + 3;
                }
            }
        }
    } else if (param1 == -4) {
        if (param0->ribbonPos >= 4) {
            param0->ribbonPos -= 4;
        } else if (param0->ribbonState != 0) {
            param0->ribbonState--;
        }
    }

    if ((v0 != param0->ribbonPos) || (v1 != param0->ribbonState)) {
        Sound_PlayEffect(1500);
    }

    param0->ribbonNum = PokemonSummary_RibbonAt(param0, param0->ribbonPos);

    sub_0208FB00(param0);

    if (v1 != param0->ribbonState) {
        sub_0208FAA4(param0);
    }

    sub_020910E4(param0);
    sub_02090F84(param0);

    if (param0->ribbonState != 0) {
        CellActor_SetDrawFlag(param0->unk_41C[68], 1);
    } else {
        CellActor_SetDrawFlag(param0->unk_41C[68], 0);
    }

    if ((param0->ribbonState * 4 + 8) < param0->ribbonMax) {
        CellActor_SetDrawFlag(param0->unk_41C[69], 1);
    } else {
        CellActor_SetDrawFlag(param0->unk_41C[69], 0);
    }
}

u8 PokemonSummary_RibbonAt(PokemonSummaryScreen *param0, u8 param1)
{
    u16 v0;
    u8 v1, v2;

    v1 = param1 + param0->ribbonState * 4;
    v2 = 0;

    for (v0 = 0; v0 < 80; v0++) {
        if ((param0->monData.ribbons[v0 / 32] & (1 << (v0 & 0x1f))) != 0) {
            if (v1 == v2) {
                return (u8)v0;
            }

            v2++;
        }
    }

    return 0;
}

static int sub_0208E958(PokemonSummaryScreen *param0)
{
    if (param0->monData.sheen == 255) {
        Font_LoadScreenIndicatorsPalette(0, 14 * 32, 19);
        LoadMessageBoxGraphics(param0->bgConfig, 1, (1024 - (18 + 12)), 13, Options_Frame(param0->data->options), 19);
        sub_02091610(param0, 0xff);
        param0->data->returnMode = 1;

        return 17;
    }

    param0->data->returnMode = 0;
    return 18;
}

void PokemonSummary_SetPlayerProfile(PokemonSummary *summary, const TrainerInfo *trainerInfo)
{
    summary->OTName = TrainerInfo_Name(trainerInfo);
    summary->OTID = TrainerInfo_ID(trainerInfo);
    summary->OTGender = (u8)TrainerInfo_Gender(trainerInfo);
}

u32 PokemonSummary_StatusIconChar(void)
{
    return 64;
}

u32 PokemonSummary_StatusIconPltt(void)
{
    return 65;
}

u32 PokemonSummary_StatusIconCell(void)
{
    return 63;
}

u32 PokemonSummary_StatusIconAnim(void)
{
    return 62;
}

u32 PokemonSummary_StatusIconAnimIdx(Pokemon *param0)
{
    u32 v0 = Pokemon_GetValue(param0, MON_DATA_STATUS_CONDITION, NULL);

    if (Pokemon_GetValue(param0, MON_DATA_CURRENT_HP, NULL) == 0) {
        return 6;
    } else if ((v0 & (0x8 | 0x80)) != 0) {
        return 4;
    } else if ((v0 & 0x7) != 0) {
        return 3;
    } else if ((v0 & 0x10) != 0) {
        return 5;
    } else if ((v0 & 0x20) != 0) {
        return 2;
    } else if ((v0 & 0x40) != 0) {
        return 1;
    }

    return 7;
}
