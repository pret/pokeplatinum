#include "applications/pokemon_summary_screen/main.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/condition.h"
#include "constants/flavor.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/string.h"
#include "generated/species.h"

#include "struct_defs/struct_02099F80.h"

#include "applications/pokemon_summary_screen/3d_anim.h"
#include "applications/pokemon_summary_screen/main.h"
#include "applications/pokemon_summary_screen/sprites.h"
#include "applications/pokemon_summary_screen/subscreen.h"
#include "applications/pokemon_summary_screen/window.h"

#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "ribbon.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_chatot.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "system.h"
#include "system_flags.h"
#include "touch_pad.h"
#include "trainer_info.h"
#include "unk_02015F84.h"
#include "unk_020393C8.h"
#include "unk_0208C098.h"
#include "unk_02094EDC.h"
#include "unk_020989DC.h"
#include "vars_flags.h"
#include "vram_transfer.h"

#include "constdata/const_020F410C.h"
#include "res/graphics/pokemon_summary_screen/pl_pst_gra.naix.h"
#include "res/text/bank/pokemon_summary_screen.h"

enum SummaryState {
    SUMMARY_STATE_TRANSITION_IN = 0,
    SUMMARY_STATE_WAIT_TRANSITION,
    SUMMARY_STATE_HANDLE_INPUT,
    SUMMARY_STATE_SETUP_BATTLE_MOVE_INFO,
    SUMMARY_STATE_HIDE_BATTLE_MOVE_INFO,
    SUMMARY_STATE_SETUP_CONTEST_MOVE_INFO,
    SUMMARY_STATE_HIDE_CONTEST_MOVE_INFO,
    SUMMARY_STATE_MOVE_DETAILS,
    SUMMARY_STATE_MOVE_SWAP,
    SUMMARY_STATE_SELECT_MOVE,
    SUMMARY_STATE_WAIT_HM_MSG_INPUT,
    SUMMARY_STATE_SETUP_RIBBON_INFO,
    SUMMARY_STATE_HIDE_RIBBON_INFO,
    SUMMARY_STATE_RIBBON_SELECT,
    SUMMARY_STATE_SUBSCREEN_INPUT,
    SUMMARY_STATE_SETUP_POFFIN_FEED,
    SUMMARY_STATE_PRINT_CONTEST_STAT_MSGS,
    SUMMARY_STATE_WAIT_FINISH_POFFIN_FEED,
    SUMMARY_STATE_TRANSITION_OUT,
    SUMMARY_STATE_WAIT_EXIT,
};

enum SummaryPageState {
    PAGE_STATE_INITIAL = 0,
    PAGE_STATE_SCROLLING,
    PAGE_STATE_SCROLL_FINISHED,
};

#define SUMMARY_STRBUF_LEN 128

// also used by pageState, specifically for the condition page
#define STAT_INCREASE_NONE 0
#define COOL_INCREASED     (1 << 0)
#define BEAUTY_INCREASED   (1 << 1)
#define CUTE_INCREASED     (1 << 2)
#define SMART_INCREASED    (1 << 3)
#define TOUGH_INCREASED    (1 << 4)

#define HEAP_ALLOCATION_SIZE 0x40000

#define SUMMARY_MOVE_NONE -1

#define POINTS_PER_APPEAL_HEART 10
#define MAX_APPEAL_HEARTS       6
#define EMPTY_HEART_BASE_TILE   0x12E
#define FILLED_HEART_BASE_TILE  0x12C
#define APPEAL_HEARTS_Y         47

#define HEALTHBAR_BASE_X           24
#define HEALTHBAR_Y                6
#define GREEN_HEALTHBAR_BASE_TILE  0xC0
#define YELLOW_HEALTHBAR_BASE_TILE 0xE0
#define RED_HEALTHBAR_BASE_TILE    0x100
#define HEALTHBAR_TILES_MAX        6
#define PALETTE_SLOT_10_MASK       0xA000

#define EXPBAR_BASE_X    23
#define EXPBAR_Y         23
#define EXPBAR_BASE_TILE 0xAC
#define EXPBAR_TILES_MAX 7

#define MOVE_INFO_SCROLL_INCREMENT 64

#define RIBBON_INFO_SCROLL_INCREMENT 16

static int PokemonSummaryScreen_Init(ApplicationManager *appMan, int *state);
static int PokemonSummaryScreen_Main(ApplicationManager *appMan, int *state);
static int PokemonSummaryScreen_Exit(ApplicationManager *appMan, int *state);
static int WaitSummaryScreenTransition(PokemonSummaryScreen *summaryScreen);
static int HandleInput_Main(PokemonSummaryScreen *summaryScreen);
static int WaitSetupBattleMoveInfo(PokemonSummaryScreen *summaryScreen);
static int WaitHideBattleMoveInfo(PokemonSummaryScreen *summaryScreen);
static int WaitSetupContestMoveInfo(PokemonSummaryScreen *summaryScreen);
static int WaitHideContestMoveInfo(PokemonSummaryScreen *summaryScreen);
static int HandleInput_MoveDetails(PokemonSummaryScreen *summaryScreen);
static int HandleInput_MoveSwap(PokemonSummaryScreen *summaryScreen);
static int HandleInput_SelectMove(PokemonSummaryScreen *summaryScreen);
static int WaitForHMMsgInput(PokemonSummaryScreen *summaryScreen);
static int WaitSetupRibbonInfo(PokemonSummaryScreen *summaryScreen);
static int WaitHideRibbonInfo(PokemonSummaryScreen *summaryScreen);
static int HandleInput_RibbonSelect(PokemonSummaryScreen *summaryScreen);
static int HandleInput_Subscreen(PokemonSummaryScreen *summaryScreen);
static int SetupPoffinFeedConditionPage(PokemonSummaryScreen *summaryScreen);
static int PrintContestStatChangeMsgs(PokemonSummaryScreen *summaryScreen);
static int WaitForPoffinFeedMsgInput(PokemonSummaryScreen *dummy);
static u8 SummaryScreenTransitionOut(PokemonSummaryScreen *dummy);
static u8 ScreenTransitionIsDone(PokemonSummaryScreen *dummy);
static void SetVRAMBanks(void);
static void SetupBgs(BgConfig *bgConfig);
static void TeardownBgs(BgConfig *bgConfig);
static void LoadBgGraphics(PokemonSummaryScreen *summaryScreen, NARC *narc);
static void SetAlphaBlending(void);
static void PokemonSummaryScreenVBlank(void *data);
static void InitializeStringsAndCopyOTName(PokemonSummaryScreen *summaryScreen);
static void FreeStrings(PokemonSummaryScreen *summaryScreen);
static void SetMonData(PokemonSummaryScreen *summaryScreen);
static void SetMonDataFromBoxMon(PokemonSummaryScreen *summaryScreen, BoxPokemon *boxMon, PokemonSummaryMonData *monData);
static void SetMonDataFromMon(PokemonSummaryScreen *summaryScreen, Pokemon *mon, PokemonSummaryMonData *monData);
static void SetupInitialPageGfx(PokemonSummaryScreen *summaryScreen);
static void PlayMonCry(PokemonSummaryScreen *summaryScreen);
static void SetupPageFromSubscreenButton(PokemonSummaryScreen *summaryScreen, u8 page);
static void ChangePage(PokemonSummaryScreen *summaryScreen, s8 delta);
static u8 CheckSubscreenPressAndSetButton(PokemonSummaryScreen *summaryScreen);
static void TryHideContestPages(PokemonSummaryScreen *summaryScreen);
static void LoadCurrentPageTilemap(PokemonSummaryScreen *summaryScreen);
static void DrawHealthBar(PokemonSummaryScreen *summaryScreen);
static void DrawExperienceProgressBar(PokemonSummaryScreen *summaryScreen);
static void ChangeSummaryMon(PokemonSummaryScreen *summaryScreen, s8 delta);
static s8 TryAdvanceSummaryMonIndex(PokemonSummaryScreen *summaryScreen, s8 delta);
static s8 TryAdvanceMonIndex(PokemonSummaryScreen *summaryScreen, s8 delta);
static s8 TryAdvancePartyMonIndex(PokemonSummaryScreen *summaryScreen, s8 delta);
static s8 TryAdvanceBoxMonIndex(PokemonSummaryScreen *summaryScreen, s8 delta);
static u8 SetupBattleMoveInfo(PokemonSummaryScreen *summaryScreen);
static u8 HideBattleMoveInfo(PokemonSummaryScreen *summaryScreen);
static u8 TryChangeSelectedMove(PokemonSummaryScreen *summaryScreen, s8 delta);
static void UpdateMoveAttributes(PokemonSummaryScreen *summaryScreen);
static void SwapSelectedMoves(PokemonSummaryScreen *summaryScreen);
static void SetupMoveInfoNoTransition(PokemonSummaryScreen *summaryScreen);
static void UpdateBattleMoveAttributes(PokemonSummaryScreen *summaryScreen, u32 move);
static void UpdateContestMoveAttributes(PokemonSummaryScreen *summaryScreen, u32 move);
static void ClearMoveInfoWindows(PokemonSummaryScreen *summaryScreen);
static void SetupMoveInfoFromSubscreenButton(PokemonSummaryScreen *summaryScreen);
static u8 SetupContestMoveInfo(PokemonSummaryScreen *summaryScreen);
static u8 HideContestMoveInfo(PokemonSummaryScreen *summaryScreen);
static void UpdateAppealHearts(PokemonSummaryScreen *summaryScreen, u32 move);
static void DrawEmptyHearts(PokemonSummaryScreen *summaryScreen);
static u8 SetupRibbonInfo(PokemonSummaryScreen *summaryScreen);
static u8 HideRibbonInfo(PokemonSummaryScreen *summaryScreen);
static void ChangeSelectedRibbon(PokemonSummaryScreen *summaryScreen, s8 delta);
static int TryFeedPoffin(PokemonSummaryScreen *summaryScreen);

const ApplicationManagerTemplate gPokemonSummaryScreenApp = {
    PokemonSummaryScreen_Init,
    PokemonSummaryScreen_Main,
    PokemonSummaryScreen_Exit,
    FS_OVERLAY_ID_NONE
};

BOOL PokemonSummaryScreen_ShowContestData(SaveData *saveData)
{
    return SystemFlag_CheckContestHallVisited(SaveData_GetVarsFlags(saveData));
}

static int PokemonSummaryScreen_Init(ApplicationManager *appMan, int *state)
{
    SetVBlankCallback(NULL, NULL);
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
    PokemonSummaryScreen *summaryScreen = ApplicationManager_NewData(appMan, sizeof(PokemonSummaryScreen), HEAP_ID_POKEMON_SUMMARY_SCREEN);

    memset(summaryScreen, 0, sizeof(PokemonSummaryScreen));

    summaryScreen->data = ApplicationManager_Args(appMan);
    summaryScreen->bgConfig = BgConfig_New(HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->monSprite.animationSys = sub_02015F84(HEAP_ID_POKEMON_SUMMARY_SCREEN, 1, 1);
    summaryScreen->narcPlPokeData = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    Font_UseImmediateGlyphAccess(FONT_SYSTEM, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    EnableTouchPad();
    InitializeTouchPad(4);
    TryHideContestPages(summaryScreen);
    SetVRAMBanks();
    SetupBgs(summaryScreen->bgConfig);
    LoadBgGraphics(summaryScreen, narc);
    SetAlphaBlending();
    PokemonSummaryScreen_Setup3DGfx(summaryScreen);
    InitializeStringsAndCopyOTName(summaryScreen);
    SetMonData(summaryScreen);
    PokemonSummaryScreen_InitSpriteResources(summaryScreen);
    PokemonSummaryScreen_SetDefaultSpriteStates(summaryScreen);
    PokemonSummaryScreen_LoadMonSprite(summaryScreen);
    PokemonSummaryScreen_SetCaughtBallGfx(summaryScreen);
    PokemonSummaryScreen_UpdateStatusIcon(summaryScreen);
    PokemonSummaryScreen_DrawStaticWindows(summaryScreen);
    SetupInitialPageGfx(summaryScreen);
    PokemonSummaryScreen_SetSubscreenType(summaryScreen);
    PokemonSummaryScreen_SetupCamera(summaryScreen);
    SetVBlankCallback(PokemonSummaryScreenVBlank, summaryScreen);
    GXLayers_TurnBothDispOn();
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_61, SEQ_NONE, 0);
    NetworkIcon_Init();
    NARC_dtor(narc);

    return TRUE;
}

static int PokemonSummaryScreen_Main(ApplicationManager *appMan, int *state)
{
    PokemonSummaryScreen *summaryScreen = ApplicationManager_Data(appMan);

    switch (*state) {
    case SUMMARY_STATE_TRANSITION_IN:
        App_StartScreenFade(FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
        *state = SUMMARY_STATE_WAIT_TRANSITION;
        break;
    case SUMMARY_STATE_WAIT_TRANSITION:
        *state = WaitSummaryScreenTransition(summaryScreen);
        break;
    case SUMMARY_STATE_HANDLE_INPUT:
        *state = HandleInput_Main(summaryScreen);
        break;
    case SUMMARY_STATE_SETUP_BATTLE_MOVE_INFO:
        *state = WaitSetupBattleMoveInfo(summaryScreen);
        break;
    case SUMMARY_STATE_HIDE_BATTLE_MOVE_INFO:
        *state = WaitHideBattleMoveInfo(summaryScreen);
        break;
    case SUMMARY_STATE_SETUP_CONTEST_MOVE_INFO:
        *state = WaitSetupContestMoveInfo(summaryScreen);
        break;
    case SUMMARY_STATE_HIDE_CONTEST_MOVE_INFO:
        *state = WaitHideContestMoveInfo(summaryScreen);
        break;
    case SUMMARY_STATE_MOVE_DETAILS:
        *state = HandleInput_MoveDetails(summaryScreen);
        break;
    case SUMMARY_STATE_MOVE_SWAP:
        *state = HandleInput_MoveSwap(summaryScreen);
        break;
    case SUMMARY_STATE_SELECT_MOVE:
        *state = HandleInput_SelectMove(summaryScreen);
        break;
    case SUMMARY_STATE_WAIT_HM_MSG_INPUT:
        *state = WaitForHMMsgInput(summaryScreen);
        break;
    case SUMMARY_STATE_SETUP_RIBBON_INFO:
        *state = WaitSetupRibbonInfo(summaryScreen);
        break;
    case SUMMARY_STATE_HIDE_RIBBON_INFO:
        *state = WaitHideRibbonInfo(summaryScreen);
        break;
    case SUMMARY_STATE_RIBBON_SELECT:
        *state = HandleInput_RibbonSelect(summaryScreen);
        break;
    case SUMMARY_STATE_SUBSCREEN_INPUT:
        *state = HandleInput_Subscreen(summaryScreen);
        break;
    case SUMMARY_STATE_SETUP_POFFIN_FEED:
        *state = SetupPoffinFeedConditionPage(summaryScreen);
        break;
    case SUMMARY_STATE_PRINT_CONTEST_STAT_MSGS:
        *state = PrintContestStatChangeMsgs(summaryScreen);
        break;
    case SUMMARY_STATE_WAIT_FINISH_POFFIN_FEED:
        *state = WaitForPoffinFeedMsgInput(summaryScreen);
        break;
    case SUMMARY_STATE_TRANSITION_OUT:
        *state = SummaryScreenTransitionOut(summaryScreen);
        break;
    case SUMMARY_STATE_WAIT_EXIT:
        if (ScreenTransitionIsDone(summaryScreen) == TRUE) {
            return TRUE;
        }
        break;
    }

    PokemonSummaryScreen_UpdateArrowAndTapAnims(summaryScreen);
    PokemonSummaryScreen_DrawSheenSprites(summaryScreen);
    PokemonSummaryScreen_UpdateRibbonFlashAnim(summaryScreen);
    SpriteSystem_DrawSprites(summaryScreen->spriteMan);
    PokemonSummaryScreen_Update3DGfx(summaryScreen);

    return FALSE;
}

static int PokemonSummaryScreen_Exit(ApplicationManager *appMan, int *state)
{
    PokemonSummaryScreen *summaryScreen = ApplicationManager_Data(appMan);

    SetVBlankCallback(NULL, NULL);
    PokemonSummaryScreen_FreeCameraAndMonSprite(summaryScreen);
    PokemonSummaryScreen_FreeSpriteResources(summaryScreen);
    PokemonSummaryScreen_RemoveWindows(summaryScreen);
    TeardownBgs(summaryScreen->bgConfig);
    DisableTouchPad();
    VramTransfer_Free();
    FreeStrings(summaryScreen);
    NARC_dtor(summaryScreen->narcPlPokeData);
    Font_UseLazyGlyphAccess(FONT_SYSTEM);

    G2_BlendNone();

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_POKEMON_SUMMARY_SCREEN);

    return TRUE;
}

static void PokemonSummaryScreenVBlank(void *data)
{
    PokemonSummaryScreen *summaryScreen = data;

    Bg_RunScheduledUpdates(summaryScreen->bgConfig);
    PokemonSpriteManager_UpdateCharAndPltt(summaryScreen->monSprite.spriteManager);
    VramTransfer_Process();
    SpriteSystem_TransferOam();

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
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_3D,
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
        .mosaic = FALSE
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgMain2, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleScroll(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 136);

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

    Heap_FreeExplicit(HEAP_ID_POKEMON_SUMMARY_SCREEN, bgConfig);
}

static void LoadBgGraphics(PokemonSummaryScreen *summaryScreen, NARC *narc)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, tiles_main_NCGR, summaryScreen->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, page_info_NSCR, summaryScreen->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    Graphics_LoadPaletteFromOpenNARC(narc, tiles_main_NCLR, PAL_LOAD_MAIN_BG, 0, 0, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, move_info_NSCR, summaryScreen->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, sub_buttons_NCGR, summaryScreen->bgConfig, BG_LAYER_SUB_0, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, tiles_sub_NCGR, summaryScreen->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, tiles_sub_NSCR, summaryScreen->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    Graphics_LoadPaletteFromOpenNARC(narc, tiles_sub_NCLR, PAL_LOAD_SUB_BG, 0, 0, HEAP_ID_POKEMON_SUMMARY_SCREEN);
}

static void SetAlphaBlending(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 23, 8);
}

static void InitializeStringsAndCopyOTName(PokemonSummaryScreen *summaryScreen)
{
    summaryScreen->msgLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_SUMMARY_SCREEN, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->ribbonLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_RIBBON_NAMES, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->unk_684 = FontSpecialChars_Init(1, 2, 0, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->strFormatter = StringTemplate_Default(HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->monData.speciesName = Strbuf_Init(MON_NAME_LEN + 2, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->monData.nickname = Strbuf_Init(MON_NAME_LEN + 2, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->monData.OTName = Strbuf_Init(TRAINER_NAME_LEN + 1, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->strbuf = Strbuf_Init(SUMMARY_STRBUF_LEN, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->moveNameLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->playerName = Strbuf_Init(TRAINER_NAME_LEN + 1, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    if (summaryScreen->data->OTName != NULL) {
        Strbuf_CopyChars(summaryScreen->playerName, summaryScreen->data->OTName);
    }
}

static void FreeStrings(PokemonSummaryScreen *summaryScreen)
{
    MessageLoader_Free(summaryScreen->moveNameLoader);
    MessageLoader_Free(summaryScreen->ribbonLoader);
    MessageLoader_Free(summaryScreen->msgLoader);
    FontSpecialChars_Free(summaryScreen->unk_684);
    StringTemplate_Free(summaryScreen->strFormatter);
    Strbuf_Free(summaryScreen->monData.speciesName);
    Strbuf_Free(summaryScreen->monData.nickname);
    Strbuf_Free(summaryScreen->monData.OTName);
    Strbuf_Free(summaryScreen->strbuf);
    Strbuf_Free(summaryScreen->playerName);
}

static int WaitSummaryScreenTransition(PokemonSummaryScreen *summaryScreen)
{
    if (IsScreenFadeDone() == TRUE) {
        PokemonSummaryScreen_LoadMonAnimation(summaryScreen);
        PlayMonCry(summaryScreen);

        if (summaryScreen->data->mode == SUMMARY_MODE_SELECT_MOVE) {
            return SUMMARY_STATE_SELECT_MOVE;
        } else if (summaryScreen->data->mode == SUMMARY_MODE_SHOW_CONDITION_CHANGE) {
            return SUMMARY_STATE_SETUP_POFFIN_FEED;
        } else {
            return SUMMARY_STATE_HANDLE_INPUT;
        }
    }

    return SUMMARY_STATE_WAIT_TRANSITION;
}

static int HandleInput_Main(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->subscreenExit == TRUE) {
        summaryScreen->data->returnMode = SUMMARY_RETURN_CANCEL;
        return SUMMARY_STATE_TRANSITION_OUT;
    }

    if (JOY_REPEAT(PAD_KEY_LEFT)) {
        ChangePage(summaryScreen, -1);
        return SUMMARY_STATE_HANDLE_INPUT;
    }

    if (JOY_REPEAT(PAD_KEY_RIGHT)) {
        ChangePage(summaryScreen, 1);
        return SUMMARY_STATE_HANDLE_INPUT;
    }

    if (JOY_REPEAT(PAD_KEY_UP)) {
        ChangeSummaryMon(summaryScreen, -1);
        return SUMMARY_STATE_HANDLE_INPUT;
    }

    if (JOY_REPEAT(PAD_KEY_DOWN)) {
        ChangeSummaryMon(summaryScreen, 1);
        return SUMMARY_STATE_HANDLE_INPUT;
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        summaryScreen->data->returnMode = SUMMARY_RETURN_CANCEL;
        return SUMMARY_STATE_TRANSITION_OUT;
    }

    if (JOY_NEW(PAD_BUTTON_A)) {
        if (summaryScreen->data->mode == SUMMARY_MODE_FEED_POFFIN && summaryScreen->page == SUMMARY_MODE_SHOW_CONDITION_CHANGE) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            return TryFeedPoffin(summaryScreen);
        }

        if (summaryScreen->page == SUMMARY_PAGE_BATTLE_MOVES) {
            Sound_PlayEffect(SEQ_SE_DP_SYU01);
            summaryScreen->pageState = PAGE_STATE_INITIAL;
            return SUMMARY_STATE_SETUP_BATTLE_MOVE_INFO;
        } else if (summaryScreen->page == SUMMARY_PAGE_CONTEST_MOVES) {
            Sound_PlayEffect(SEQ_SE_DP_SYU01);
            summaryScreen->pageState = PAGE_STATE_INITIAL;
            return SUMMARY_STATE_SETUP_CONTEST_MOVE_INFO;
        } else if (summaryScreen->page == SUMMARY_PAGE_RIBBONS) {
            if (summaryScreen->ribbonMax != 0) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                summaryScreen->pageState = PAGE_STATE_INITIAL;
                return SUMMARY_STATE_SETUP_RIBBON_INFO;
            }
        } else if (summaryScreen->page == SUMMARY_PAGE_EXIT) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            summaryScreen->data->returnMode = SUMMARY_RETURN_CANCEL;
            return SUMMARY_STATE_TRANSITION_OUT;
        }
    }

    if (CheckSubscreenPressAndSetButton(summaryScreen) == TRUE) {
        summaryScreen->pageState = PAGE_STATE_SCROLL_FINISHED;
        return SUMMARY_STATE_SUBSCREEN_INPUT;
    }

    return SUMMARY_STATE_HANDLE_INPUT;
}

static int WaitSetupBattleMoveInfo(PokemonSummaryScreen *summaryScreen)
{
    if (SetupBattleMoveInfo(summaryScreen) == TRUE) {
        return SUMMARY_STATE_MOVE_DETAILS;
    }

    return SUMMARY_STATE_SETUP_BATTLE_MOVE_INFO;
}

static int WaitHideBattleMoveInfo(PokemonSummaryScreen *summaryScreen)
{
    if (HideBattleMoveInfo(summaryScreen) == TRUE) {
        return SUMMARY_STATE_HANDLE_INPUT;
    }

    return SUMMARY_STATE_HIDE_BATTLE_MOVE_INFO;
}

static int WaitSetupContestMoveInfo(PokemonSummaryScreen *summaryScreen)
{
    if (SetupContestMoveInfo(summaryScreen) == TRUE) {
        return SUMMARY_STATE_MOVE_DETAILS;
    }

    return SUMMARY_STATE_SETUP_CONTEST_MOVE_INFO;
}

static int WaitHideContestMoveInfo(PokemonSummaryScreen *summaryScreen)
{
    if (HideContestMoveInfo(summaryScreen) == TRUE) {
        return SUMMARY_STATE_HANDLE_INPUT;
    }

    return SUMMARY_STATE_HIDE_CONTEST_MOVE_INFO;
}

static int HandleInput_MoveDetails(PokemonSummaryScreen *summaryScreen)
{
    if (JOY_NEW(PAD_KEY_UP)) {
        if (TryChangeSelectedMove(summaryScreen, -1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UpdateMoveAttributes(summaryScreen);
        }

        return SUMMARY_STATE_MOVE_DETAILS;
    }

    if (JOY_NEW(PAD_KEY_DOWN)) {
        if (TryChangeSelectedMove(summaryScreen, 1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UpdateMoveAttributes(summaryScreen);
        }

        return SUMMARY_STATE_MOVE_DETAILS;
    }

    if (JOY_NEW(PAD_BUTTON_A)) {
        if (summaryScreen->cursor == LEARNED_MOVES_MAX) {
            Sound_PlayEffect(SEQ_SE_DP_SYU01);
            summaryScreen->pageState = PAGE_STATE_INITIAL;

            if (summaryScreen->page == SUMMARY_PAGE_BATTLE_MOVES) {
                return SUMMARY_STATE_HIDE_BATTLE_MOVE_INFO;
            } else {
                return SUMMARY_STATE_HIDE_CONTEST_MOVE_INFO;
            }
        } else if (summaryScreen->data->mode != SUMMARY_MODE_LOCK_MOVES) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            PokemonSummaryScreen_SetMoveSelector2Pos(summaryScreen);
            summaryScreen->cursorTmp = summaryScreen->cursor;
            return SUMMARY_STATE_MOVE_SWAP;
        }
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_DP_SYU01);
        summaryScreen->pageState = PAGE_STATE_INITIAL;

        if (summaryScreen->page == SUMMARY_PAGE_BATTLE_MOVES) {
            return SUMMARY_STATE_HIDE_BATTLE_MOVE_INFO;
        } else {
            return SUMMARY_STATE_HIDE_CONTEST_MOVE_INFO;
        }
    }

    return SUMMARY_STATE_MOVE_DETAILS;
}

static int HandleInput_MoveSwap(PokemonSummaryScreen *summaryScreen)
{
    if (JOY_NEW(PAD_KEY_UP)) {
        if (TryChangeSelectedMove(summaryScreen, -1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UpdateMoveAttributes(summaryScreen);
        }

        return SUMMARY_STATE_MOVE_SWAP;
    }

    if (JOY_NEW(PAD_KEY_DOWN)) {
        if (TryChangeSelectedMove(summaryScreen, 1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UpdateMoveAttributes(summaryScreen);
        }

        return SUMMARY_STATE_MOVE_SWAP;
    }

    if (JOY_NEW(PAD_BUTTON_A)) {
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_2], FALSE);

        if (summaryScreen->cursor != LEARNED_MOVES_MAX && summaryScreen->cursor != summaryScreen->cursorTmp) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            SwapSelectedMoves(summaryScreen);
            PokemonSummaryScreen_SwapMoveTypeIcons(summaryScreen, summaryScreen->cursor, summaryScreen->cursorTmp);
            PokemonSummaryScreen_SwapMoveNameAndPP(summaryScreen);
            UpdateMoveAttributes(summaryScreen);
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        }

        return SUMMARY_STATE_MOVE_DETAILS;
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_2], FALSE);
        return SUMMARY_STATE_MOVE_DETAILS;
    }

    return SUMMARY_STATE_MOVE_SWAP;
}

static int HandleInput_SelectMove(PokemonSummaryScreen *summaryScreen)
{
    if (JOY_NEW(PAD_KEY_LEFT)) {
        ChangePage(summaryScreen, -1);
        return SUMMARY_STATE_SELECT_MOVE;
    }

    if (JOY_NEW(PAD_KEY_RIGHT)) {
        ChangePage(summaryScreen, 1);
        return SUMMARY_STATE_SELECT_MOVE;
    }

    if (JOY_NEW(PAD_KEY_UP)) {
        if (TryChangeSelectedMove(summaryScreen, -1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UpdateMoveAttributes(summaryScreen);
        }

        return SUMMARY_STATE_SELECT_MOVE;
    }

    if (JOY_NEW(PAD_KEY_DOWN)) {
        if (TryChangeSelectedMove(summaryScreen, 1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UpdateMoveAttributes(summaryScreen);
        }

        return SUMMARY_STATE_SELECT_MOVE;
    }

    if (JOY_NEW(PAD_BUTTON_A)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);

        if (summaryScreen->cursor != LEARNED_MOVES_MAX) {
            if (Item_IsHMMove(summaryScreen->monData.moves[summaryScreen->cursor]) == TRUE && summaryScreen->data->move != MOVE_NONE) {
                Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_CATEGORY_ICON], FALSE);
                DrawEmptyHearts(summaryScreen);
                PokemonSummaryScreen_PrintHMMovesCantBeForgotten(summaryScreen);
                return SUMMARY_STATE_WAIT_HM_MSG_INPUT;
            }
        }

        summaryScreen->data->selectedMoveSlot = summaryScreen->cursor;
        summaryScreen->data->returnMode = SUMMARY_RETURN_SELECT;
        return SUMMARY_STATE_TRANSITION_OUT;
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        summaryScreen->data->selectedMoveSlot = LEARNED_MOVES_MAX;
        summaryScreen->data->returnMode = SUMMARY_RETURN_CANCEL;
        return SUMMARY_STATE_TRANSITION_OUT;
    }

    return SUMMARY_STATE_SELECT_MOVE;
}

static int WaitForHMMsgInput(PokemonSummaryScreen *summaryScreen)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        UpdateMoveAttributes(summaryScreen);
        return SUMMARY_STATE_SELECT_MOVE;
    }

    return SUMMARY_STATE_WAIT_HM_MSG_INPUT;
}

static int WaitSetupRibbonInfo(PokemonSummaryScreen *summaryScreen)
{
    if (SetupRibbonInfo(summaryScreen) == TRUE) {
        return SUMMARY_STATE_RIBBON_SELECT;
    }

    return SUMMARY_STATE_SETUP_RIBBON_INFO;
}

static int WaitHideRibbonInfo(PokemonSummaryScreen *summaryScreen)
{
    if (HideRibbonInfo(summaryScreen) == TRUE) {
        return SUMMARY_STATE_HANDLE_INPUT;
    }

    return SUMMARY_STATE_HIDE_RIBBON_INFO;
}

static int HandleInput_RibbonSelect(PokemonSummaryScreen *summaryScreen)
{
    if (JOY_REPEAT(PAD_KEY_LEFT)) {
        ChangeSelectedRibbon(summaryScreen, -1);
        return SUMMARY_STATE_RIBBON_SELECT;
    }

    if (JOY_REPEAT(PAD_KEY_RIGHT)) {
        ChangeSelectedRibbon(summaryScreen, 1);
        return SUMMARY_STATE_RIBBON_SELECT;
    }

    if (JOY_REPEAT(PAD_KEY_UP)) {
        ChangeSelectedRibbon(summaryScreen, -1 * RIBBONS_PER_ROW);
        return SUMMARY_STATE_RIBBON_SELECT;
    }

    if (JOY_REPEAT(PAD_KEY_DOWN)) {
        ChangeSelectedRibbon(summaryScreen, RIBBONS_PER_ROW);
        return SUMMARY_STATE_RIBBON_SELECT;
    }

    if (JOY_NEW(PAD_BUTTON_B | PAD_BUTTON_A)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        summaryScreen->pageState = PAGE_STATE_INITIAL;
        return SUMMARY_STATE_HIDE_RIBBON_INFO;
    }

    return SUMMARY_STATE_RIBBON_SELECT;
}

static int HandleInput_Subscreen(PokemonSummaryScreen *summaryScreen)
{
    if (PokemonSummaryScreen_DrawSubscreenButtonAnim(summaryScreen) == TRUE) {
        return summaryScreen->pageState;
    }

    if (summaryScreen->buttonState == SUMMARY_BUTTON_STATE_SETUP_PAGE) {
        u8 page = PokemonSummaryScreen_GetSubscreenButtonPage(summaryScreen, summaryScreen->buttonCurrent);

        if (page == SUMMARY_PAGE_EXIT) {
            summaryScreen->subscreenExit = TRUE;
        }

        if (summaryScreen->monData.isEgg == TRUE) {
            if (page == SUMMARY_PAGE_MEMO || page == SUMMARY_PAGE_EXIT) {
                SetupPageFromSubscreenButton(summaryScreen, page);
            }
        } else {
            SetupPageFromSubscreenButton(summaryScreen, page);
        }
    }

    return SUMMARY_STATE_SUBSCREEN_INPUT;
}

static int SetupPoffinFeedConditionPage(PokemonSummaryScreen *summaryScreen)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        BoxPokemon *boxMon;
        Pokemon *mon;

        if (summaryScreen->data->dataType == SUMMARY_DATA_BOX_MON) {
            boxMon = PokemonSummaryScreen_MonData(summaryScreen);
            mon = Pokemon_New(HEAP_ID_POKEMON_SUMMARY_SCREEN);
            Pokemon_FromBoxPokemon(boxMon, mon);
        } else {
            mon = PokemonSummaryScreen_MonData(summaryScreen);
        }

        sub_02098EF8(summaryScreen->data->poffin, mon);

        summaryScreen->pageState = STAT_INCREASE_NONE;

        u8 monValue = summaryScreen->monData.cool;
        summaryScreen->monData.cool = Pokemon_GetValue(mon, MON_DATA_COOL, NULL);

        if (monValue != summaryScreen->monData.cool) {
            summaryScreen->pageState |= COOL_INCREASED;
        }

        monValue = summaryScreen->monData.beauty;
        summaryScreen->monData.beauty = Pokemon_GetValue(mon, MON_DATA_BEAUTY, NULL);

        if (monValue != summaryScreen->monData.beauty) {
            summaryScreen->pageState |= BEAUTY_INCREASED;
        }

        monValue = summaryScreen->monData.cute;
        summaryScreen->monData.cute = Pokemon_GetValue(mon, MON_DATA_CUTE, NULL);

        if (monValue != summaryScreen->monData.cute) {
            summaryScreen->pageState |= CUTE_INCREASED;
        }

        monValue = summaryScreen->monData.smart;
        summaryScreen->monData.smart = Pokemon_GetValue(mon, MON_DATA_SMART, NULL);

        if (monValue != summaryScreen->monData.smart) {
            summaryScreen->pageState |= SMART_INCREASED;
        }

        monValue = summaryScreen->monData.tough;
        summaryScreen->monData.tough = Pokemon_GetValue(mon, MON_DATA_TOUGH, NULL);

        if (monValue != summaryScreen->monData.tough) {
            summaryScreen->pageState |= TOUGH_INCREASED;
        }

        summaryScreen->monData.sheen = Pokemon_GetValue(mon, MON_DATA_SHEEN, NULL);

        if (summaryScreen->data->dataType == SUMMARY_DATA_BOX_MON) {
            Heap_Free(mon);
        }

        Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(14), HEAP_ID_POKEMON_SUMMARY_SCREEN);
        LoadMessageBoxGraphics(summaryScreen->bgConfig, BG_LAYER_MAIN_1, 1024 - (18 + 12), 13, Options_Frame(summaryScreen->data->options), HEAP_ID_POKEMON_SUMMARY_SCREEN);

        if (summaryScreen->pageState == STAT_INCREASE_NONE) {
            PokemonSummaryScreen_PrintPoffinFeedMsg(summaryScreen, SUMMARY_MSG_NOTHING_CHANGED);
            return SUMMARY_STATE_WAIT_FINISH_POFFIN_FEED;
        } else {
            PokemonSummaryScreen_InitMaxAndDeltaConditionRects(summaryScreen);
            PokemonSummaryScreen_InitSheenSprites(summaryScreen);
            PokemonSummaryScreen_UpdateConditionArrowSprites(summaryScreen);
            return SUMMARY_STATE_PRINT_CONTEST_STAT_MSGS;
        }
    }

    return SUMMARY_STATE_SETUP_POFFIN_FEED;
}

static int PrintContestStatChangeMsgs(PokemonSummaryScreen *summaryScreen)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        for (u8 i = 0; i < CONTEST_TYPE_MAX; i++) {
            if (summaryScreen->pageState & (1 << i)) {
                PokemonSummaryScreen_PrintPoffinFeedMsg(summaryScreen, i);
                summaryScreen->pageState ^= (1 << i);

                if (summaryScreen->pageState == STAT_INCREASE_NONE) {
                    return SUMMARY_STATE_WAIT_FINISH_POFFIN_FEED;
                }
                break;
            }
        }
    }

    return SUMMARY_STATE_PRINT_CONTEST_STAT_MSGS;
}

static int WaitForPoffinFeedMsgInput(PokemonSummaryScreen *dummy)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        return SUMMARY_STATE_TRANSITION_OUT;
    }

    return SUMMARY_STATE_WAIT_FINISH_POFFIN_FEED;
}

static u8 SummaryScreenTransitionOut(PokemonSummaryScreen *dummy)
{
    App_StartScreenFade(TRUE, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    return SUMMARY_STATE_WAIT_EXIT;
}

static u8 ScreenTransitionIsDone(PokemonSummaryScreen *dummy)
{
    return IsScreenFadeDone() == TRUE;
}

static void SetMonData(PokemonSummaryScreen *summaryScreen)
{
    void *monData = PokemonSummaryScreen_MonData(summaryScreen);

    if (summaryScreen->data->dataType == SUMMARY_DATA_BOX_MON) {
        SetMonDataFromBoxMon(summaryScreen, monData, &summaryScreen->monData);
    } else {
        SetMonDataFromMon(summaryScreen, monData, &summaryScreen->monData);
    }
}

static void SetMonDataFromBoxMon(PokemonSummaryScreen *summaryScreen, BoxPokemon *boxMon, PokemonSummaryMonData *monData)
{
    Pokemon *mon = Pokemon_New(HEAP_ID_POKEMON_SUMMARY_SCREEN);

    Pokemon_FromBoxPokemon(boxMon, mon);
    SetMonDataFromMon(summaryScreen, mon, monData);
    Heap_Free(mon);
}

static void SetMonDataFromMon(PokemonSummaryScreen *summaryScreen, Pokemon *mon, PokemonSummaryMonData *monData)
{
    BOOL reencrypt = Pokemon_EnterDecryptionContext(mon);
    monData->species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_SpeciesNameTemplate, summaryScreen->strbuf);
    StringTemplate_SetSpeciesName(summaryScreen->strFormatter, 0, boxMon);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->monData.speciesName, summaryScreen->strbuf);

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_NicknameTemplate, summaryScreen->strbuf);
    StringTemplate_SetNickname(summaryScreen->strFormatter, 0, boxMon);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->monData.nickname, summaryScreen->strbuf);

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_OtnameTemplate, summaryScreen->strbuf);
    StringTemplate_SetOTName(summaryScreen->strFormatter, 0, boxMon);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->monData.OTName, summaryScreen->strbuf);

    monData->heldItem = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    monData->level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
    monData->isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);

    if (Pokemon_GetValue(mon, MON_DATA_NO_PRINT_GENDER, NULL) == TRUE && monData->isEgg == FALSE) {
        monData->hideGender = FALSE;
    } else {
        monData->hideGender = TRUE;
    }

    monData->gender = Pokemon_GetGender(mon);
    monData->caughtBall = Pokemon_GetValue(mon, MON_DATA_POKEBALL, NULL);
    monData->type1 = Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL);
    monData->type2 = Pokemon_GetValue(mon, MON_DATA_TYPE_2, NULL);
    monData->OTID = Pokemon_GetValue(mon, MON_DATA_OT_ID, NULL);
    monData->curExp = Pokemon_GetValue(mon, MON_DATA_EXPERIENCE, NULL);
    monData->OTGender = Pokemon_GetValue(mon, MON_DATA_OT_GENDER, NULL);
    monData->curLevelExp = Pokemon_GetSpeciesBaseExpAt(monData->species, monData->level);

    if (monData->level == MAX_POKEMON_LEVEL) {
        monData->nextLevelExp = monData->curLevelExp;
    } else {
        monData->nextLevelExp = Pokemon_GetSpeciesBaseExpAt(monData->species, monData->level + 1);
    }

    monData->curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
    monData->maxHP = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
    monData->attack = Pokemon_GetValue(mon, MON_DATA_ATK, NULL);
    monData->defense = Pokemon_GetValue(mon, MON_DATA_DEF, NULL);
    monData->spAttack = Pokemon_GetValue(mon, MON_DATA_SP_ATK, NULL);
    monData->spDefense = Pokemon_GetValue(mon, MON_DATA_SP_DEF, NULL);
    monData->speed = Pokemon_GetValue(mon, MON_DATA_SPEED, NULL);
    monData->ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);
    monData->nature = Pokemon_GetNature(mon);

    u16 i;
    u8 maxPP;
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        monData->moves[i] = Pokemon_GetValue(mon, MON_DATA_MOVE1 + i, NULL);
        monData->curPP[i] = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP + i, NULL);
        maxPP = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + i, NULL);
        monData->maxPP[i] = MoveTable_CalcMaxPP(monData->moves[i], maxPP);
    }

    monData->cool = Pokemon_GetValue(mon, MON_DATA_COOL, NULL);
    monData->beauty = Pokemon_GetValue(mon, MON_DATA_BEAUTY, NULL);
    monData->cute = Pokemon_GetValue(mon, MON_DATA_CUTE, NULL);
    monData->smart = Pokemon_GetValue(mon, MON_DATA_SMART, NULL);
    monData->tough = Pokemon_GetValue(mon, MON_DATA_TOUGH, NULL);
    monData->sheen = Pokemon_GetValue(mon, MON_DATA_SHEEN, NULL);
    monData->preferredFlavor = FLAVOR_MAX;

    for (i = 0; i < FLAVOR_MAX; i++) {
        if (Pokemon_GetFlavorAffinity(mon, i) == 1) {
            monData->preferredFlavor = i;
            break;
        }
    }

    monData->markings = Pokemon_GetValue(mon, MON_DATA_MARKINGS, NULL);
    monData->form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    monData->status = PokemonSummaryScreen_StatusIconAnimIdx(mon);

    if (Pokemon_HasCuredPokerus(mon) == TRUE) {
        monData->pokerus = SUMMARY_POKERUS_CURED;
    } else if (Pokemon_InfectedWithPokerus(mon) == TRUE) {
        monData->pokerus = SUMMARY_POKERUS_INFECTED;

        if (monData->status == SUMMARY_CONDITION_NONE) {
            monData->status = SUMMARY_CONDITION_POKERUS;
        }
    } else {
        monData->pokerus = SUMMARY_POKERUS_NONE;
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

    for (i = 0; i < RIBBON_MAX; i++) {
        if (Pokemon_GetValue(mon, Ribbon_GetData(i, RIBBON_DATA_MON_DATA_PARAM), NULL) != 0) {
            monData->ribbons[i / 32] |= (1 << (i & 0x1F));
            summaryScreen->ribbonMax++;
        }
    }

    Pokemon_ExitDecryptionContext(mon, reencrypt);
}

static void PlayMonCry(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->monData.isEgg != FALSE) {
        return;
    }

    u8 cryDelay;
    PokemonSprite_LoadCryDelay(summaryScreen->narcPlPokeData, &cryDelay, summaryScreen->monData.species, 1);

    if (summaryScreen->monData.species == SPECIES_CHATOT) {
        Sound_PlayDelayedChatotCry(summaryScreen->data->chatotCry, 0, 100, 0, cryDelay);
    } else {
        Sound_PlayDelayedPokemonCry(summaryScreen->monData.species, cryDelay, summaryScreen->monData.form);
    }
}

static void SetupInitialPageGfx(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->data->mode) {
    case SUMMARY_MODE_NORMAL:
    case SUMMARY_MODE_LOCK_MOVES:
        if (summaryScreen->monData.isEgg == FALSE) {
            summaryScreen->page = SUMMARY_PAGE_INFO;
        } else {
            summaryScreen->page = SUMMARY_PAGE_MEMO;
        }
        break;
    case SUMMARY_MODE_SELECT_MOVE:
        summaryScreen->page = SUMMARY_PAGE_BATTLE_MOVES;
        break;
    case SUMMARY_MODE_FEED_POFFIN:
    case SUMMARY_MODE_SHOW_CONDITION_CHANGE:
        summaryScreen->page = SUMMARY_PAGE_CONDITION;
        break;
    }

    PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, NULL);
    PokemonSummaryScreen_UpdatePageTabSprites(summaryScreen);
    PokemonSummaryScreen_UpdateTypeIcons(summaryScreen);
    PokemonSummaryScreen_UpdateRibbonSprites(summaryScreen);
    PokemonSummaryScreen_SetPageArrowsPos(summaryScreen);
    PokemonSummaryScreen_UpdateMiscMonDataSprites(summaryScreen);
    PokemonSummaryScreen_InitSheenSprites(summaryScreen);
    PokemonSummaryScreen_AddExtraWindows(summaryScreen);
    PokemonSummaryScreen_DrawExtraWindows(summaryScreen);
    LoadCurrentPageTilemap(summaryScreen);
    PokemonSummaryScreen_InitConditionRects(summaryScreen);

    if (summaryScreen->data->mode == SUMMARY_MODE_SELECT_MOVE) {
        SetupMoveInfoNoTransition(summaryScreen);
    }
}

void PokemonSummaryScreen_FlagVisiblePages(PokemonSummary *summary, const u8 *pages)
{
    summary->pageFlags = 0;

    for (u8 i = 0; i < SUMMARY_PAGE_MAX; i++) {
        if (pages[i] == SUMMARY_PAGE_MAX) {
            break;
        }

        summary->pageFlags |= (1 << pages[i]);
    }
}

static void TryHideContestPages(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->data->showContest == TRUE) {
        return;
    }

    if (summaryScreen->data->pageFlags & (1 << SUMMARY_PAGE_CONDITION)) {
        summaryScreen->data->pageFlags ^= (1 << SUMMARY_PAGE_CONDITION);
    }

    if (summaryScreen->data->pageFlags & (1 << SUMMARY_PAGE_CONTEST_MOVES)) {
        summaryScreen->data->pageFlags ^= (1 << SUMMARY_PAGE_CONTEST_MOVES);
    }

    if (summaryScreen->data->pageFlags & (1 << SUMMARY_PAGE_RIBBONS)) {
        summaryScreen->data->pageFlags ^= (1 << SUMMARY_PAGE_RIBBONS);
    }
}

u8 PokemonSummaryScreen_PageIsVisble(PokemonSummaryScreen *summaryScreen, u32 page)
{
    if (summaryScreen->monData.isEgg != FALSE && page != SUMMARY_PAGE_MEMO && page != SUMMARY_PAGE_EXIT) {
        return FALSE;
    }

    return summaryScreen->data->pageFlags & (1 << page);
}

u8 PokemonSummaryScreen_CountVisiblePages(PokemonSummaryScreen *summaryScreen)
{
    u8 page;
    u8 countVisible = 0;

    for (page = 0; page < SUMMARY_PAGE_MAX; page++) {
        if (summaryScreen->data->pageFlags & (1 << page)) {
            countVisible++;
        }
    }

    return countVisible;
}

static void SetupPageFromSubscreenButton(PokemonSummaryScreen *summaryScreen, u8 page)
{
    if (summaryScreen->page == page) {
        return;
    }

    // this code path is never reached because the select move mode
    // doesn't handle subscreen input
    if (summaryScreen->data->mode == SUMMARY_MODE_SELECT_MOVE) {
        ClearMoveInfoWindows(summaryScreen);
    }

    PokemonSummaryScreen_RemoveExtraWindows(summaryScreen);
    summaryScreen->page = page;
    PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, NULL);

    PokemonSummaryScreen_UpdatePageTabSprites(summaryScreen);
    PokemonSummaryScreen_SetPageArrowsPos(summaryScreen);
    PokemonSummaryScreen_UpdateTypeIcons(summaryScreen);
    PokemonSummaryScreen_UpdateRibbonSprites(summaryScreen);
    PokemonSummaryScreen_InitSheenSprites(summaryScreen);
    PokemonSummaryScreen_AddExtraWindows(summaryScreen);
    PokemonSummaryScreen_UpdateConditionFlashSprites(summaryScreen, FALSE);

    Bg_FillTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_1, 0, 14, 4, 19, 20, 0);
    Bg_CopyTilemapBufferToVRAM(summaryScreen->bgConfig, BG_LAYER_MAIN_1);
    PokemonSummaryScreen_DrawExtraWindows(summaryScreen);
    LoadCurrentPageTilemap(summaryScreen);
    PokemonSummaryScreen_InitConditionRects(summaryScreen);

    // this code path is also never reached
    if (summaryScreen->data->mode == SUMMARY_MODE_SELECT_MOVE) {
        SetupMoveInfoFromSubscreenButton(summaryScreen);
    }
}

static void ChangePage(PokemonSummaryScreen *summaryScreen, s8 delta)
{
    s8 page = summaryScreen->page;

    while (TRUE) {
        page += delta;

        if (page < SUMMARY_PAGE_INFO) {
            page = SUMMARY_PAGE_EXIT;
        } else if (page > SUMMARY_PAGE_EXIT) {
            page = SUMMARY_PAGE_INFO;
        }

        if (summaryScreen->monData.isEgg == FALSE) {
            if ((summaryScreen->data->pageFlags & (1 << page)) != 0) {
                break;
            }
        } else {
            if ((summaryScreen->data->pageFlags & (1 << page)) != 0
                && (page == SUMMARY_PAGE_MEMO || page == SUMMARY_PAGE_EXIT)) {
                break;
            }
        }
    }

    if (page == summaryScreen->page) {
        return;
    }

    Sound_PlayEffect(SEQ_SE_DP_SELECT5);
    PokemonSummaryScreen_UpdateSubscreenButtonGfx(summaryScreen);
    PokemonSummaryScreen_UpdateConditionFlashSprites(summaryScreen, FALSE);
    SetupPageFromSubscreenButton(summaryScreen, page);
}

static u8 CheckSubscreenPressAndSetButton(PokemonSummaryScreen *summaryScreen)
{
    u8 button = PokemonSummaryScreen_CheckSubscreenButtonPress(summaryScreen);

    if (button == SUMMARY_SUBSCREEN_BUTTON_NONE) {
        return FALSE;
    }

    summaryScreen->buttonAnimFrame = 0;
    summaryScreen->buttonCurrent = button;
    summaryScreen->buttonState = SUMMARY_BUTTON_STATE_INIT_ANIM;

    return TRUE;
}

static void LoadCurrentPageTilemap(PokemonSummaryScreen *summaryScreen)
{
    u32 memberIndex;
    if (summaryScreen->data->mode == SUMMARY_MODE_SELECT_MOVE && summaryScreen->data->move != MOVE_NONE) {
        if (summaryScreen->page == SUMMARY_PAGE_BATTLE_MOVES) {
            memberIndex = page_battle_moves_select_mode_NSCR;
        } else {
            memberIndex = page_contest_moves_select_mode_NSCR;
        }
    } else {
        memberIndex = page_info_NSCR + summaryScreen->page;
    }

    void *memberBuffer = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_GRAPHIC__PL_PST_GRA, memberIndex, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    NNSG2dScreenData *tilemap;
    NNS_G2dGetUnpackedScreenData(memberBuffer, &tilemap);

    Bg_LoadToTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_3, tilemap->rawData, 0, 0, 32, 32);
    Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_MAIN_3);
    Heap_Free(memberBuffer);

    if (summaryScreen->page == SUMMARY_PAGE_INFO) {
        DrawExperienceProgressBar(summaryScreen);
    } else if (summaryScreen->page == SUMMARY_PAGE_SKILLS) {
        DrawHealthBar(summaryScreen);
    }
}

static void DrawHealthBar(PokemonSummaryScreen *summaryScreen)
{
    u16 baseTile;

    switch (HealthBar_Color(summaryScreen->monData.curHP, summaryScreen->monData.maxHP, 48)) {
    case BARCOLOR_MAX:
    case BARCOLOR_GREEN:
    case BARCOLOR_EMPTY:
        baseTile = GREEN_HEALTHBAR_BASE_TILE | PALETTE_SLOT_10_MASK;
        break;
    case BARCOLOR_YELLOW:
        baseTile = YELLOW_HEALTHBAR_BASE_TILE | PALETTE_SLOT_10_MASK;
        break;
    case BARCOLOR_RED:
        baseTile = RED_HEALTHBAR_BASE_TILE | PALETTE_SLOT_10_MASK;
        break;
    }

    u8 pixelCount = App_PixelCount(summaryScreen->monData.curHP, summaryScreen->monData.maxHP, 48);
    u16 tile;

    for (u8 i = 0; i < HEALTHBAR_TILES_MAX; i++) {
        if (pixelCount >= 8) {
            tile = baseTile + 8;
        } else {
            tile = baseTile + pixelCount;
        }

        Bg_FillTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_3, tile, HEALTHBAR_BASE_X + i, HEALTHBAR_Y, 1, 1, TILEMAP_FILL_VAL_INCLUDES_PALETTE);

        if (pixelCount < 8) {
            pixelCount = 0;
        } else {
            pixelCount -= 8;
        }
    }

    Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_MAIN_3);
}

static void DrawExperienceProgressBar(PokemonSummaryScreen *summaryScreen)
{
    u32 maxExp;
    u32 curExp;

    if (summaryScreen->monData.level < MAX_POKEMON_LEVEL) {
        maxExp = summaryScreen->monData.nextLevelExp - summaryScreen->monData.curLevelExp;
        curExp = summaryScreen->monData.curExp - summaryScreen->monData.curLevelExp;
    } else {
        maxExp = 0;
        curExp = 0;
    }

    u8 pixelCount = App_PixelCount(curExp, maxExp, 56);
    u16 tile;

    for (u8 i = 0; i < EXPBAR_TILES_MAX; i++) {
        if (pixelCount >= 8) {
            tile = EXPBAR_BASE_TILE + 8;
        } else {
            tile = EXPBAR_BASE_TILE + pixelCount;
        }

        Bg_FillTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_3, tile, EXPBAR_BASE_X + i, EXPBAR_Y, 1, 1, TILEMAP_FILL_VAL_INCLUDES_PALETTE);

        if (pixelCount < 8) {
            pixelCount = 0;
        } else {
            pixelCount -= 8;
        }
    }

    Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_MAIN_3);
}

static void ChangeSummaryMon(PokemonSummaryScreen *summaryScreen, s8 delta)
{
    s8 monIndex = TryAdvanceSummaryMonIndex(summaryScreen, delta);

    if (monIndex == -1) {
        return;
    }

    summaryScreen->data->monIndex = monIndex;

    SetMonData(summaryScreen);
    PlayMonCry(summaryScreen);
    PokemonSummaryScreen_PrintNicknameAndGender(summaryScreen);
    PokemonSummaryScreen_PrintLevel(summaryScreen);
    PokemonSummaryScreen_PrintItemName(summaryScreen);

    if (summaryScreen->page == SUMMARY_PAGE_INFO) {
        DrawExperienceProgressBar(summaryScreen);
    } else if (summaryScreen->page == SUMMARY_PAGE_SKILLS) {
        DrawHealthBar(summaryScreen);
    } else if (summaryScreen->page == SUMMARY_PAGE_CONDITION) {
        PokemonSummaryScreen_InitMaxAndDeltaConditionRects(summaryScreen);
    }

    PokemonSummaryScreen_ChangeMonSprite(summaryScreen);
    PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, NULL);
    PokemonSummaryScreen_UpdatePageTabSprites(summaryScreen);
    PokemonSummaryScreen_SetPageArrowsPos(summaryScreen);
    PokemonSummaryScreen_SetMonTypeIcons(summaryScreen);
    PokemonSummaryScreen_UpdateTypeIcons(summaryScreen);
    PokemonSummaryScreen_UpdateRibbonSprites(summaryScreen);
    PokemonSummaryScreen_SetMonIcon(summaryScreen);
    PokemonSummaryScreen_SetCaughtBallGfx(summaryScreen);
    PokemonSummaryScreen_UpdateStatusIcon(summaryScreen);
    PokemonSummaryScreen_InitSheenSprites(summaryScreen);
    PokemonSummaryScreen_UpdateMiscMonDataSprites(summaryScreen);
    PokemonSummaryScreen_DrawExtraWindows(summaryScreen);
}

static s8 TryAdvanceSummaryMonIndex(PokemonSummaryScreen *summaryScreen, s8 delta)
{
    switch (summaryScreen->data->dataType) {
    case SUMMARY_DATA_MON:
        return TryAdvanceMonIndex(summaryScreen, delta);
    case SUMMARY_DATA_PARTY_MON:
        return TryAdvancePartyMonIndex(summaryScreen, delta);
    case SUMMARY_DATA_BOX_MON:
        return TryAdvanceBoxMonIndex(summaryScreen, delta);
    }

    return -1;
}

static BOOL CanAdvanceToEgg(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->data->mode == SUMMARY_MODE_FEED_POFFIN) {
        return FALSE;
    }

    if (summaryScreen->page != SUMMARY_PAGE_MEMO && summaryScreen->page != SUMMARY_PAGE_EXIT) {
        return FALSE;
    }

    return TRUE;
}

static s8 TryAdvanceMonIndex(PokemonSummaryScreen *summaryScreen, s8 delta)
{
    s8 monIndex = (s8)summaryScreen->data->monIndex;
    Pokemon *mon = (Pokemon *)summaryScreen->data->monData;

    while (TRUE) {
        monIndex += delta;

        if (monIndex < 0 || monIndex >= summaryScreen->data->monMax) {
            return -1;
        }

        mon = (Pokemon *)((u32)summaryScreen->data->monData + Pokemon_GetStructSize() * monIndex);

        if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) != SPECIES_NONE) {
            if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) != FALSE) {
                if (CanAdvanceToEgg(summaryScreen) == TRUE) {
                    break;
                }
            } else {
                break;
            }
        }
    }

    return monIndex;
}

static s8 TryAdvancePartyMonIndex(PokemonSummaryScreen *summaryScreen, s8 delta)
{
    s8 monIndex = summaryScreen->data->monIndex;

    while (TRUE) {
        monIndex += delta;

        if (monIndex < 0 || monIndex >= summaryScreen->data->monMax) {
            return -1;
        }

        Pokemon *mon = Party_GetPokemonBySlotIndex(summaryScreen->data->monData, monIndex);

        if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) != SPECIES_NONE) {
            if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) != FALSE) {
                if (CanAdvanceToEgg(summaryScreen) == TRUE) {
                    break;
                }
            } else {
                break;
            }
        }
    }

    return monIndex;
}

static s8 TryAdvanceBoxMonIndex(PokemonSummaryScreen *summaryScreen, s8 delta)
{
    s8 monIndex = summaryScreen->data->monIndex;
    BoxPokemon *boxMon = (BoxPokemon *)summaryScreen->data->monData;

    while (TRUE) {
        monIndex += delta;

        if (monIndex < 0 || monIndex >= summaryScreen->data->monMax) {
            return -1;
        }

        boxMon = (BoxPokemon *)(summaryScreen->data->monData + BoxPokemon_GetStructSize() * monIndex);

        if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL) != SPECIES_NONE
            && (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == FALSE || CanAdvanceToEgg(summaryScreen) == TRUE)) {
            break;
        }
    }

    return monIndex;
}

void *PokemonSummaryScreen_MonData(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->data->dataType) {
    case SUMMARY_DATA_MON:
        return summaryScreen->data->monData + (Pokemon_GetStructSize() * summaryScreen->data->monIndex);
    case SUMMARY_DATA_PARTY_MON:
        return Party_GetPokemonBySlotIndex(summaryScreen->data->monData, summaryScreen->data->monIndex);
    case SUMMARY_DATA_BOX_MON:
        return summaryScreen->data->monData + (BoxPokemon_GetStructSize() * summaryScreen->data->monIndex);
    }

    return NULL;
}

static u8 SetupBattleMoveInfo(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->pageState) {
    case PAGE_STATE_INITIAL:
        Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 136);
        Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);
        PokemonSummaryScreen_UpdatePageArrows(summaryScreen, FALSE);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_MON_LEVEL]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_ITEM]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_ITEM_NAME]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, NULL);

        summaryScreen->cursor = 0;
        summaryScreen->pageState = PAGE_STATE_SCROLLING;
        break;
    case PAGE_STATE_SCROLLING: {
        int xOffset = Bg_GetXOffset(summaryScreen->bgConfig, BG_LAYER_MAIN_2);

        if (xOffset <= MOVE_INFO_SCROLL_INCREMENT) {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 0);
            summaryScreen->pageState = PAGE_STATE_SCROLL_FINISHED;
        } else {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SUB_X, MOVE_INFO_SCROLL_INCREMENT);
        }
    } break;
    case PAGE_STATE_SCROLL_FINISHED:
        PokemonSummaryScreen_ShowMove5OrCancel(summaryScreen);

        if (summaryScreen->data->mode != SUMMARY_MODE_LOCK_MOVES) {
            PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_MoveSwitch);
            PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, &summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        }

        UpdateMoveAttributes(summaryScreen);
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_1], TRUE);
        PokemonSummaryScreen_ShowMonIcon(summaryScreen);

        if (summaryScreen->monData.type1 != summaryScreen->monData.type2) {
            Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_2], TRUE);
        }

        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_1], TRUE);
        return TRUE;
    }

    return FALSE;
}

static u8 HideBattleMoveInfo(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->pageState) {
    case PAGE_STATE_INITIAL:
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_1], FALSE);
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_2], FALSE);
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_CATEGORY_ICON], FALSE);
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_ICON], FALSE);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_1], FALSE);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, NULL);
        PokemonSummaryScreen_HideMoveCancelText(summaryScreen);
        PokemonSummaryScreen_ClearBattleAttributeWindows(summaryScreen);
        summaryScreen->pageState = PAGE_STATE_SCROLLING;
        break;
    case PAGE_STATE_SCROLLING: {
        int xOffset = Bg_GetXOffset(summaryScreen->bgConfig, BG_LAYER_MAIN_2);

        if (xOffset >= MOVE_INFO_SCROLL_INCREMENT * 2) {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 136);
            summaryScreen->pageState = PAGE_STATE_SCROLL_FINISHED;
        } else {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_ADD_X, MOVE_INFO_SCROLL_INCREMENT);
        }
    } break;
    case PAGE_STATE_SCROLL_FINISHED:
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_MON_LEVEL]);
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_ITEM]);
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_ITEM_NAME]);
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_SelectBattleMoveInfo);
        PokemonSummaryScreen_UpdatePageArrows(summaryScreen, TRUE);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, &summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        return TRUE;
    }

    return FALSE;
}

static u8 TryChangeSelectedMove(PokemonSummaryScreen *summaryScreen, s8 delta)
{
    s8 moveIndex = summaryScreen->cursor;

    while (TRUE) {
        moveIndex += delta;

        if (moveIndex < 0) {
            moveIndex = LEARNED_MOVES_MAX;
        } else if (moveIndex == LEARNED_MOVES_MAX + 1) {
            moveIndex = 0;
        }

        if (summaryScreen->monData.moves[moveIndex] != 0 || moveIndex == LEARNED_MOVES_MAX) {
            break;
        }
    }

    if (moveIndex != summaryScreen->cursor) {
        summaryScreen->cursor = moveIndex;
        return TRUE;
    }

    return FALSE;
}

static void UpdateMoveAttributes(PokemonSummaryScreen *summaryScreen)
{
    PokemonSummaryScreen_UpdateMoveSelectorPos(summaryScreen);

    if (summaryScreen->cursor == LEARNED_MOVES_MAX) {
        if (summaryScreen->data->move != MOVE_NONE) {
            if (summaryScreen->page == SUMMARY_PAGE_BATTLE_MOVES) {
                UpdateBattleMoveAttributes(summaryScreen, summaryScreen->data->move);
            } else {
                UpdateContestMoveAttributes(summaryScreen, summaryScreen->data->move);
            }
        } else {
            if (summaryScreen->page == SUMMARY_PAGE_BATTLE_MOVES) {
                UpdateBattleMoveAttributes(summaryScreen, SUMMARY_MOVE_NONE);
            } else {
                UpdateContestMoveAttributes(summaryScreen, SUMMARY_MOVE_NONE);
            }
        }
    } else {
        if (summaryScreen->page == SUMMARY_PAGE_BATTLE_MOVES) {
            UpdateBattleMoveAttributes(summaryScreen, summaryScreen->monData.moves[summaryScreen->cursor]);
        } else {
            UpdateContestMoveAttributes(summaryScreen, summaryScreen->monData.moves[summaryScreen->cursor]);
        }
    }
}

static void UpdateBattleMoveAttributes(PokemonSummaryScreen *summaryScreen, u32 move)
{
    if (move == SUMMARY_MOVE_NONE) {
        PokemonSummaryScreen_ClearBattleAttributeWindows(summaryScreen);
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_CATEGORY_ICON], FALSE);
    } else {
        PokemonSummaryScreen_PrintBattleMoveAttributes(summaryScreen, move);
        PokemonSummaryScreen_UpdateMoveCategoryIcon(summaryScreen, move);
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_CATEGORY_ICON], TRUE);
    }
}

static void UpdateContestMoveAttributes(PokemonSummaryScreen *summaryScreen, u32 move)
{
    UpdateAppealHearts(summaryScreen, move);

    if (move == SUMMARY_MOVE_NONE) {
        PokemonSummaryScreen_ClearContestAttributeWindows(summaryScreen);
    } else {
        PokemonSummaryScreen_PrintContestMoveAttributes(summaryScreen, move);
    }
}

static void SwapSelectedMoves(PokemonSummaryScreen *summaryScreen)
{
    void *monData = PokemonSummaryScreen_MonData(summaryScreen);

    if (summaryScreen->data->dataType == SUMMARY_DATA_BOX_MON) {
        BoxPokemon_SwapMoveSlots(monData, summaryScreen->cursor, summaryScreen->cursorTmp);
    } else {
        Pokemon_SwapMoveSlots(monData, summaryScreen->cursor, summaryScreen->cursorTmp);
    }

    u16 move = summaryScreen->monData.moves[summaryScreen->cursor];
    summaryScreen->monData.moves[summaryScreen->cursor] = summaryScreen->monData.moves[summaryScreen->cursorTmp];
    summaryScreen->monData.moves[summaryScreen->cursorTmp] = move;

    u8 curPP = summaryScreen->monData.curPP[summaryScreen->cursor];
    summaryScreen->monData.curPP[summaryScreen->cursor] = summaryScreen->monData.curPP[summaryScreen->cursorTmp];
    summaryScreen->monData.curPP[summaryScreen->cursorTmp] = curPP;

    u8 maxPP = summaryScreen->monData.maxPP[summaryScreen->cursor];
    summaryScreen->monData.maxPP[summaryScreen->cursor] = summaryScreen->monData.maxPP[summaryScreen->cursorTmp];
    summaryScreen->monData.maxPP[summaryScreen->cursorTmp] = maxPP;
}

static void SetupMoveInfoNoTransition(PokemonSummaryScreen *summaryScreen)
{
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_MON_LEVEL]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_ITEM]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_ITEM_NAME]);

    Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 0);

    PokemonSummaryScreen_ShowMove5OrCancel(summaryScreen);
    UpdateMoveAttributes(summaryScreen);

    Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_1], TRUE);
    PokemonSummaryScreen_ShowMonIcon(summaryScreen);

    if (summaryScreen->monData.type1 != summaryScreen->monData.type2) {
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_2], TRUE);
    }

    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_1], TRUE);
}

static u8 SetupContestMoveInfo(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->pageState) {
    case PAGE_STATE_INITIAL:
        Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 136);
        Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 256);
        UpdateAppealHearts(summaryScreen, SUMMARY_MOVE_NONE);
        PokemonSummaryScreen_UpdatePageArrows(summaryScreen, FALSE);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_MON_LEVEL]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_ITEM]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_ITEM_NAME]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, NULL);
        summaryScreen->cursor = 0;
        summaryScreen->pageState = PAGE_STATE_SCROLLING;
        break;
    case PAGE_STATE_SCROLLING: {
        int xOffset = Bg_GetXOffset(summaryScreen->bgConfig, BG_LAYER_MAIN_2);

        if (xOffset <= MOVE_INFO_SCROLL_INCREMENT) {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 0);
            summaryScreen->pageState = PAGE_STATE_SCROLL_FINISHED;
        } else {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SUB_X, MOVE_INFO_SCROLL_INCREMENT);
        }
    } break;
    case PAGE_STATE_SCROLL_FINISHED:
        PokemonSummaryScreen_ShowMove5OrCancel(summaryScreen);

        if (summaryScreen->data->mode != SUMMARY_MODE_LOCK_MOVES) {
            PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_MoveSwitch);
            PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, &summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        }

        UpdateMoveAttributes(summaryScreen);
        PokemonSummaryScreen_ShowMonIcon(summaryScreen);
        PokemonSummaryScreen_DrawContestStatDots(summaryScreen);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_1], TRUE);

        return TRUE;
    }

    return FALSE;
}

static u8 HideContestMoveInfo(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->pageState) {
    case PAGE_STATE_INITIAL:
        PokemonSummaryScreen_HideContestStatDots(summaryScreen);
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_ICON], FALSE);
        UpdateAppealHearts(summaryScreen, SUMMARY_MOVE_NONE);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_1], FALSE);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, NULL);
        PokemonSummaryScreen_HideMoveCancelText(summaryScreen);
        PokemonSummaryScreen_ClearContestAttributeWindows(summaryScreen);
        summaryScreen->pageState = PAGE_STATE_SCROLLING;
        break;
    case PAGE_STATE_SCROLLING: {
        int xOffset = Bg_GetXOffset(summaryScreen->bgConfig, BG_LAYER_MAIN_2);

        if (xOffset >= MOVE_INFO_SCROLL_INCREMENT * 2) {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 136);
            summaryScreen->pageState = PAGE_STATE_SCROLL_FINISHED;
        } else {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_ADD_X, MOVE_INFO_SCROLL_INCREMENT);
        }
    } break;
    case PAGE_STATE_SCROLL_FINISHED:
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_MON_LEVEL]);
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_ITEM]);
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_ITEM_NAME]);
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_SelectContestMoveInfo);
        PokemonSummaryScreen_UpdatePageArrows(summaryScreen, TRUE);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, &summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        return TRUE;
    }

    return FALSE;
}

static void DrawAppealHeart(PokemonSummaryScreen *summaryScreen, u16 baseTile, u8 heartIndex)
{
    Bg_FillTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_2, baseTile, 2 + heartIndex * 2, APPEAL_HEARTS_Y, 1, 1, 16);
    Bg_FillTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_2, baseTile + 1, 2 + heartIndex * 2 + 1, APPEAL_HEARTS_Y, 1, 1, 16);
    Bg_FillTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_2, baseTile + 32, 2 + heartIndex * 2, APPEAL_HEARTS_Y + 1, 1, 1, 16);
    Bg_FillTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_2, baseTile + 33, 2 + heartIndex * 2 + 1, APPEAL_HEARTS_Y + 1, 1, 1, 16);
}

static void DrawEmptyHearts(PokemonSummaryScreen *summaryScreen)
{
    for (u16 i = 0; i < MAX_APPEAL_HEARTS; i++) {
        DrawAppealHeart(summaryScreen, EMPTY_HEART_BASE_TILE, i);
    }

    Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_MAIN_2);
}

static void UpdateAppealHearts(PokemonSummaryScreen *summaryScreen, u32 move)
{
    u32 effect;
    u16 i;
    s8 numHearts;

    DrawEmptyHearts(summaryScreen);

    if (move != SUMMARY_MOVE_NONE) {
        effect = MoveTable_LoadParam(move, MOVEATTRIBUTE_CONTEST_EFFECT);
        numHearts = sub_02095734(effect) / POINTS_PER_APPEAL_HEART;

        for (i = 0; i < numHearts; i++) {
            DrawAppealHeart(summaryScreen, FILLED_HEART_BASE_TILE, i);
        }
    }

    Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_MAIN_2);
}

static void ClearMoveInfoWindows(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->page == SUMMARY_PAGE_BATTLE_MOVES) {
        PokemonSummaryScreen_ClearBattleAttributeWindows(summaryScreen);
    } else {
        PokemonSummaryScreen_ClearContestAttributeWindows(summaryScreen);
    }
}

// this function is never reached because the select move mode doesn't handle
// subscreen input
static void SetupMoveInfoFromSubscreenButton(PokemonSummaryScreen *summaryScreen)
{
    PokemonSummaryScreen_ShowMove5OrCancel(summaryScreen);
    UpdateMoveAttributes(summaryScreen);
    PokemonSummaryScreen_ShowMonIcon(summaryScreen);

    if (summaryScreen->page == SUMMARY_PAGE_BATTLE_MOVES) {
        PokemonSummaryScreen_HideContestStatDots(summaryScreen);
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_1], TRUE);

        if (summaryScreen->monData.type1 != summaryScreen->monData.type2) {
            Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_2], TRUE);
        }

        Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, 3, 0);
    } else {
        PokemonSummaryScreen_DrawContestStatDots(summaryScreen);
        Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, 3, 256);
    }
}

static u8 SetupRibbonInfo(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->pageState) {
    case PAGE_STATE_INITIAL:
        Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 256);
        Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);

        PokemonSummaryScreen_UpdatePageArrows(summaryScreen, FALSE);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_ITEM]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_ITEM_NAME]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_RIBBON_COUNT]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_COUNT]);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, NULL);

        summaryScreen->ribbonCol = 0;
        summaryScreen->ribbonRow = 0;
        summaryScreen->pageState = PAGE_STATE_SCROLLING;
        break;
    case PAGE_STATE_SCROLLING: {
        int yOffset = Bg_GetYOffset(summaryScreen->bgConfig, BG_LAYER_MAIN_2);

        if (yOffset >= RIBBON_INFO_SCROLL_INCREMENT * 3) {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 56);
            summaryScreen->pageState = PAGE_STATE_SCROLL_FINISHED;
        } else {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_ADD_Y, RIBBON_INFO_SCROLL_INCREMENT);
        }
    } break;
    case PAGE_STATE_SCROLL_FINISHED:
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_RibbonSelectCancel);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, &summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_CURSOR], TRUE);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_FLASH], TRUE);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_9], FALSE);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_10], FALSE);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_11], FALSE);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_12], FALSE);
        ChangeSelectedRibbon(summaryScreen, 0);

        return TRUE;
    }

    return FALSE;
}

static u8 HideRibbonInfo(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->pageState) {
    case PAGE_STATE_INITIAL:
        summaryScreen->ribbonCol = 0;
        summaryScreen->ribbonRow = 0;
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_INDEX]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_NAME]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_DESCRIPTION]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, NULL);
        PokemonSummaryScreen_UpdateRibbonSprites(summaryScreen);
        summaryScreen->pageState = PAGE_STATE_SCROLLING;
        break;
    case PAGE_STATE_SCROLLING: {
        int yOffset = Bg_GetYOffset(summaryScreen->bgConfig, BG_LAYER_MAIN_2);

        if (yOffset <= RIBBON_INFO_SCROLL_INCREMENT / 2) {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);
            summaryScreen->pageState = PAGE_STATE_SCROLL_FINISHED;
        } else {
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SUB_Y, RIBBON_INFO_SCROLL_INCREMENT);
        }
    } break;
    case PAGE_STATE_SCROLL_FINISHED:
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_ITEM]);
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_ITEM_NAME]);
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_RIBBON_COUNT]);
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
        Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_COUNT]);
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_RibbonSelectInfo);
        PokemonSummaryScreen_UpdatePageArrows(summaryScreen, TRUE);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, &summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);

        return TRUE;
    }

    return FALSE;
}

static void ChangeSelectedRibbon(PokemonSummaryScreen *summaryScreen, s8 delta)
{
    u8 originalCol = summaryScreen->ribbonCol;
    u8 originalRow = summaryScreen->ribbonRow;

    if (delta == 1) {
        if ((summaryScreen->ribbonCol & (RIBBONS_PER_ROW - 1)) == RIBBONS_PER_ROW - 1) { // the cursor is at the end of the row
            return;
        }

        if ((summaryScreen->ribbonRow * RIBBONS_PER_ROW + summaryScreen->ribbonCol + 1) < summaryScreen->ribbonMax) {
            summaryScreen->ribbonCol += 1;
        }
    } else if (delta == -1) {
        if ((summaryScreen->ribbonCol & (RIBBONS_PER_ROW - 1)) == 0) { // the cursor is at the beginning of the row
            return;
        }

        summaryScreen->ribbonCol -= 1;
    } else if (delta == RIBBONS_PER_ROW) {
        if (summaryScreen->ribbonCol < RIBBONS_PER_ROW) {
            if ((summaryScreen->ribbonRow * RIBBONS_PER_ROW + summaryScreen->ribbonCol + RIBBONS_PER_ROW) >= summaryScreen->ribbonMax) {
                if (summaryScreen->ribbonMax > RIBBONS_PER_ROW && (summaryScreen->ribbonMax % RIBBONS_PER_ROW) != 0) {
                    summaryScreen->ribbonCol = (summaryScreen->ribbonMax % RIBBONS_PER_ROW) + RIBBONS_PER_ROW - 1;
                }
            } else {
                summaryScreen->ribbonCol += RIBBONS_PER_ROW;
            }
        } else {
            if ((summaryScreen->ribbonRow * RIBBONS_PER_ROW + RIBBONS_PER_ROW * 2) < summaryScreen->ribbonMax) {
                summaryScreen->ribbonRow++;

                if ((summaryScreen->ribbonRow * RIBBONS_PER_ROW + summaryScreen->ribbonCol) >= summaryScreen->ribbonMax) {
                    summaryScreen->ribbonCol = (summaryScreen->ribbonMax % RIBBONS_PER_ROW) + RIBBONS_PER_ROW - 1;
                }
            }
        }
    } else if (delta == -1 * RIBBONS_PER_ROW) {
        if (summaryScreen->ribbonCol >= RIBBONS_PER_ROW) {
            summaryScreen->ribbonCol -= RIBBONS_PER_ROW;
        } else if (summaryScreen->ribbonRow != 0) {
            summaryScreen->ribbonRow--;
        }
    }

    if (originalCol != summaryScreen->ribbonCol || originalRow != summaryScreen->ribbonRow) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    summaryScreen->ribbonID = PokemonSummaryScreen_RibbonIDAt(summaryScreen, summaryScreen->ribbonCol);

    PokemonSummaryScreen_UpdateRibbonCursorPos(summaryScreen);

    if (originalRow != summaryScreen->ribbonRow) {
        PokemonSummaryScreen_UpdateShownRibbonRows(summaryScreen);
    }

    PokemonSummaryScreen_PrintRibbonNameAndDesc(summaryScreen);
    PokemonSummaryScreen_PrintRibbonIndexAndMax(summaryScreen);

    if (summaryScreen->ribbonRow != 0) {
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_ARROW_UP], TRUE);
    } else {
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_ARROW_UP], FALSE);
    }

    if ((summaryScreen->ribbonRow * RIBBONS_PER_ROW + RIBBONS_PER_ROW * 2) < summaryScreen->ribbonMax) {
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_ARROW_DOWN], TRUE);
    } else {
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_ARROW_DOWN], FALSE);
    }
}

u8 PokemonSummaryScreen_RibbonIDAt(PokemonSummaryScreen *summaryScreen, u8 col)
{
    u16 ribbonID;
    u8 ribbonIndex = col + summaryScreen->ribbonRow * RIBBONS_PER_ROW;
    u8 monRibbonIndex = 0;

    for (ribbonID = 0; ribbonID < RIBBON_MAX; ribbonID++) {
        if ((summaryScreen->monData.ribbons[ribbonID / 32] & (1 << (ribbonID & 0x1F))) != 0) {
            if (ribbonIndex == monRibbonIndex) {
                return ribbonID;
            }

            monRibbonIndex++;
        }
    }

    return 0;
}

static int TryFeedPoffin(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->monData.sheen == MAX_POKEMON_SHEEN) {
        Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(14), HEAP_ID_POKEMON_SUMMARY_SCREEN);
        LoadMessageBoxGraphics(summaryScreen->bgConfig, BG_LAYER_MAIN_1, 1024 - (18 + 12), 13, Options_Frame(summaryScreen->data->options), HEAP_ID_POKEMON_SUMMARY_SCREEN);
        PokemonSummaryScreen_PrintPoffinFeedMsg(summaryScreen, SUMMARY_MSG_MON_WONT_EAT_MORE);
        summaryScreen->data->returnMode = SUMMARY_RETURN_CANCEL;

        return SUMMARY_STATE_WAIT_FINISH_POFFIN_FEED;
    }

    summaryScreen->data->returnMode = SUMMARY_RETURN_SELECT;
    return SUMMARY_STATE_TRANSITION_OUT;
}

void PokemonSummaryScreen_SetPlayerProfile(PokemonSummary *summary, const TrainerInfo *trainerInfo)
{
    summary->OTName = TrainerInfo_Name(trainerInfo);
    summary->OTID = TrainerInfo_ID(trainerInfo);
    summary->OTGender = (u8)TrainerInfo_Gender(trainerInfo);
}

u32 PokemonSummaryScreen_StatusIconChar(void)
{
    return 64;
}

u32 PokemonSummaryScreen_StatusIconPltt(void)
{
    return 65;
}

u32 PokemonSummaryScreen_StatusIconCell(void)
{
    return 63;
}

u32 PokemonSummaryScreen_StatusIconAnim(void)
{
    return 62;
}

u32 PokemonSummaryScreen_StatusIconAnimIdx(Pokemon *mon)
{
    u32 statusCondition = Pokemon_GetValue(mon, MON_DATA_STATUS, NULL);

    if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) == 0) {
        return SUMMARY_CONDITION_FAINTED;
    } else if ((statusCondition & (MON_CONDITION_POISON | MON_CONDITION_TOXIC)) != MON_CONDITION_NONE) {
        return SUMMARY_CONDITION_POISON;
    } else if ((statusCondition & MON_CONDITION_SLEEP) != MON_CONDITION_NONE) {
        return SUMMARY_CONDITION_SLEEP;
    } else if ((statusCondition & MON_CONDITION_BURN) != MON_CONDITION_NONE) {
        return SUMMARY_CONDITION_BURN;
    } else if ((statusCondition & MON_CONDITION_FREEZE) != MON_CONDITION_NONE) {
        return SUMMARY_CONDITION_FREEZE;
    } else if ((statusCondition & MON_CONDITION_PARALYSIS) != MON_CONDITION_NONE) {
        return SUMMARY_CONDITION_PARALYSIS;
    }

    return SUMMARY_CONDITION_NONE;
}
