#include "applications/party_menu/main.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/heap.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/string.h"
#include "generated/items.h"
#include "generated/moves.h"
#include "generated/pokemon_contest_types.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/form_change.h"
#include "applications/party_menu/main.h"
#include "applications/party_menu/sprites.h"
#include "applications/party_menu/unk_02083370.h"
#include "applications/party_menu/unk_02084B70.h"
#include "applications/party_menu/windows.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"

#include "bag.h"
#include "battle_regulation.h"
#include "battle_regulation_validation.h"
#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "game_overlay.h"
#include "graphics.h"
#include "grid_menu_cursor_position.h"
#include "gx_layers.h"
#include "heap.h"
#include "height_weight_data.h"
#include "item.h"
#include "item_use_pokemon.h"
#include "journal.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "network_icon.h"
#include "overlay_manager.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "tv_segment.h"
#include "unk_0206B9D8.h"
#include "vram_transfer.h"

#include "res/graphics/party_menu/party_menu_graphics.naix"
#include "res/text/bank/party_menu.h"

FS_EXTERN_OVERLAY(party_menu_form_change);

typedef struct MemberPanelTemplate {
    u16 panelX;
    u16 panelY;
    u16 speciesIconX;
    u16 speciesIconY;
    u16 ballSpriteX;
    u16 ballSpriteY;
} MemberPanelTemplate;

enum PartyMenuCursorPosition {
    POS_MEMBER_0 = 0,
    POS_MEMBER_1,
    POS_MEMBER_2,
    POS_MEMBER_3,
    POS_MEMBER_4,
    POS_MEMBER_5,
    POS_CONFIRM,
    POS_CANCEL,
};

static BOOL PartyMenu_Init(ApplicationManager *appMan, int *state);
static BOOL PartyMenu_Main(ApplicationManager *appMan, int *state);
static BOOL PartyMenu_Exit(ApplicationManager *appMan, int *state);
static int sub_0207E490(PartyMenuApplication *application);
static int sub_0207E518(PartyMenuApplication *application);
static int sub_0207E5B4(PartyMenuApplication *application);
static int sub_0207E5F4(PartyMenuApplication *application);
static int PartyMenu_NextStateAfterMessageCloses(PartyMenuApplication *application);
static int sub_0207E6E4(PartyMenuApplication *application);
static int sub_0207E708(PartyMenuApplication *application);
static int sub_0207E714(PartyMenuApplication *application);
static int sub_0207E750(PartyMenuApplication *application);
static int PartyMenu_UseHPTransferFieldMove(PartyMenuApplication *application);
static void sub_0207E898(void *param0);
static void SetVRAMBanks(void);
static void InitBgMainLayer0(BgConfig *bgConfig);
static void InitBgs(BgConfig *bgConfig);
static void sub_0207EA24(BgConfig *param0);
static void LoadGraphics(PartyMenuApplication *application, NARC *narc);
static PartyMenuApplication *NewPartyMenuApplication(ApplicationManager *appMan);
static void SetupRequestedMode(PartyMenuApplication *application);
static void SetupRequestedModePanels(PartyMenuApplication *application);
static u8 sub_0207F984(PartyMenuApplication *application, u8 param1);
static u8 PartyMenu_HandleInput(PartyMenuApplication *application);
static void InitAnimAndPaletteForSlot(PartyMenuApplication *application, u8 slot, u8 isSelected);
static void SetupMenuCursor(PartyMenuApplication *application);
static void CheckCancellableMode(PartyMenuApplication *application);
static int HandleGameWindowEvent(PartyMenuApplication *application);
static u8 HandleWindowInputEvent(PartyMenuApplication *application, int *partyMenuState);
static u8 sub_020805E4(PartyMenuApplication *application);
static void DrawMemberTouchScreenButton(PartyMenuApplication *application, u8 slot, u8 anim);
static int PartyMenu_GetTouchScreenPartyBallPressed(PartyMenuApplication *application);
static u8 HandleSpecialInput(PartyMenuApplication *application);
static int ApplyItemEffectOnPokemon(PartyMenuApplication *application);
static u8 CheckItemUsageValidity(PartyMenuApplication *application);
static int ProcessItemApplication(PartyMenuApplication *application);
static int UpdatePokemonWithItem(PartyMenuApplication *application, Pokemon *param1, int *param2);
static int PartyMenu_ConfirmItemUpdate(PartyMenuApplication *application);
static int PartyMenu_ShowItemSwapConfirmation(PartyMenuApplication *application);
static int ProcessPokemonItemSwap(PartyMenuApplication *application);
static int sub_0207E634(PartyMenuApplication *application);
static int ResetWindowOnInput(PartyMenuApplication *application);
static int UpdatePokemonFormWithItem(PartyMenuApplication *application);
static void CheckContestEligibility(PartyMenuApplication *application, Pokemon *mon, u8 slot);
static u32 CountEarnedRibbonsForContestType(Pokemon *mon, u8 contestType);
static void sub_0207FE1C(PartyMenuApplication *application);
static void CalculateWindowPosition(u8 param0, s16 *param1, s16 *param2);
static int CheckForItemApplication(PartyMenuApplication *application);
static u8 CheckDuplicateValues(PartyMenuApplication *application);
static u8 CheckUniqueValues(PartyMenuApplication *application);
static u8 CheckEqualityInArray(PartyMenuApplication *application);
static BOOL ShouldShowSubscreen(PartyMenuApplication *application);
static G3DPipelineBuffers *InitG3DPipeline(enum HeapID heapID);
static void G3DPipelineCallback(void);
static void FreeG3DPipeline(G3DPipelineBuffers *pipelineBuffers);
static int ProcessMessageResult(PartyMenuApplication *application);
static int HandleOverlayCompletion(PartyMenuApplication *application);
static void DrawMemberPanels_Standard(PartyMenuApplication *application, const MemberPanelTemplate *templates);
static void DrawMemberPanels_UsingEvoItem(PartyMenuApplication *application, const MemberPanelTemplate *templates);
static void DrawMemberPanels_TeachingMove(PartyMenuApplication *application, const MemberPanelTemplate *templates);
static void DrawMemberPanels_EnteringContest(PartyMenuApplication *application, const MemberPanelTemplate *templates);
static void DrawMemberPanels_SelectingOrder(PartyMenuApplication *application, const MemberPanelTemplate *templates);
static void DrawEmptyMemberPanel(PartyMenuApplication *application, u8 slot, s16 x, s16 y);
static u8 PartyMenu_TryHandleDirectionPadInput(PartyMenuApplication *application);
static u8 sub_0207FBE0(PartyMenuApplication *application, u8 *param1, u8 *param2, u8 param3);
static u8 sub_0207FC30(PartyMenuApplication *application, u8 *param1, u8 *param2, const u8 *param3);
static u8 PartyMenu_TryHandleTouchScreenButtons(PartyMenuApplication *application);
static void sub_0207FFC8(PartyMenuApplication *application);
static u8 GetContextMenuEntriesForPartyMon(PartyMenuApplication *application, u8 *buf);
static u8 sub_020801F0(PartyMenuApplication *application, u8 *param1);
static u8 sub_0208022C(PartyMenuApplication *application, u8 *param1);
static u8 sub_0208027C(PartyMenuApplication *application, u8 *param1);
static u8 sub_020802CC(PartyMenuApplication *application, u8 *param1);
static u8 sub_0208031C(PartyMenuApplication *application, u8 *param1);
static u8 sub_020801AC(PartyMenuApplication *application, u8 *param1);
static u8 sub_020801B8(PartyMenuApplication *application, u8 *param1);
u8 PartyMenu_CheckBattleHallEligibility(PartyMenuApplication *application, u8 param1);
u8 PartyMenu_CheckBattleCastleEligibility(PartyMenuApplication *application, u8 param1);
static u8 CheckCanUseHPTransferFieldMove(PartyMenuApplication *application);
static BOOL PartyMenu_HPTransferUpdateHP(PartyMenuApplication *application, u8 param1, s8 param2);

const ApplicationManagerTemplate gPokemonPartyAppTemplate = {
    .init = PartyMenu_Init,
    .main = PartyMenu_Main,
    .exit = PartyMenu_Exit,
    .overlayID = FS_OVERLAY_ID_NONE
};

// clang-format off
static const MemberPanelTemplate sMemberPanelTemplates[2][MAX_PARTY_SIZE] = {
    {
        { .panelX = 0,  .panelY = 0,  .speciesIconX = 30,  .speciesIconY = 16,  .ballSpriteX = 16,  .ballSpriteY = 14  },
        { .panelX = 16, .panelY = 1,  .speciesIconX = 158, .speciesIconY = 24,  .ballSpriteX = 144, .ballSpriteY = 22  },
        { .panelX = 0,  .panelY = 6,  .speciesIconX = 30,  .speciesIconY = 64,  .ballSpriteX = 16,  .ballSpriteY = 62  },
        { .panelX = 16, .panelY = 7,  .speciesIconX = 158, .speciesIconY = 72,  .ballSpriteX = 144, .ballSpriteY = 70  },
        { .panelX = 0,  .panelY = 12, .speciesIconX = 30,  .speciesIconY = 112, .ballSpriteX = 16,  .ballSpriteY = 110 },
        { .panelX = 16, .panelY = 13, .speciesIconX = 158, .speciesIconY = 120, .ballSpriteX = 144, .ballSpriteY = 118 },
    },
    {
        { .panelX = 0,  .panelY = 0,  .speciesIconX = 30,  .speciesIconY = 16,  .ballSpriteX = 16,  .ballSpriteY = 14  },
        { .panelX = 16, .panelY = 0,  .speciesIconX = 158, .speciesIconY = 16,  .ballSpriteX = 144, .ballSpriteY = 14  },
        { .panelX = 0,  .panelY = 6,  .speciesIconX = 30,  .speciesIconY = 64,  .ballSpriteX = 16,  .ballSpriteY = 62  },
        { .panelX = 16, .panelY = 6,  .speciesIconX = 158, .speciesIconY = 64,  .ballSpriteX = 144, .ballSpriteY = 62  },
        { .panelX = 0,  .panelY = 12, .speciesIconX = 30,  .speciesIconY = 112, .ballSpriteX = 16,  .ballSpriteY = 110 },
        { .panelX = 16, .panelY = 12, .speciesIconX = 158, .speciesIconY = 112, .ballSpriteX = 144, .ballSpriteY = 110 },
    },
};

// NOTE: The second pair of coordinates in these structure-tables are implicitly all 0s.
static const GridMenuCursorPosition sCursorPosTable_Basic[] = {
    [POS_MEMBER_0] = { .xCoord1 = 64,  .yCoord1 = 25,  .upIndex = 7, .downIndex = 2, .leftIndex = 7, .rightIndex = 1 },
    [POS_MEMBER_1] = { .xCoord1 = 192, .yCoord1 = 33,  .upIndex = 7, .downIndex = 3, .leftIndex = 0, .rightIndex = 2 },
    [POS_MEMBER_2] = { .xCoord1 = 64,  .yCoord1 = 73,  .upIndex = 0, .downIndex = 4, .leftIndex = 1, .rightIndex = 3 },
    [POS_MEMBER_3] = { .xCoord1 = 192, .yCoord1 = 81,  .upIndex = 1, .downIndex = 5, .leftIndex = 2, .rightIndex = 4 },
    [POS_MEMBER_4] = { .xCoord1 = 64,  .yCoord1 = 121, .upIndex = 2, .downIndex = 7, .leftIndex = 3, .rightIndex = 5 },
    [POS_MEMBER_5] = { .xCoord1 = 192, .yCoord1 = 129, .upIndex = 3, .downIndex = 7, .leftIndex = 4, .rightIndex = 7 },
    [POS_CONFIRM]  = { .xCoord1 = 0,   .yCoord1 = 0,   .upIndex = 0, .downIndex = 0, .leftIndex = 0, .rightIndex = 0 },
    [POS_CANCEL]   = { .xCoord1 = 224, .yCoord1 = 168, .upIndex = 5, .downIndex = 1, .leftIndex = 5, .rightIndex = 0 },
};

static const GridMenuCursorPosition sCursorPosTable_MultiBattle[] = {
    [POS_MEMBER_0] = { .xCoord1 = 64,  .yCoord1 = 25,  .upIndex = 4, .downIndex = 2, .leftIndex = 1,  .rightIndex = 1  },
    [POS_MEMBER_1] = { .xCoord1 = 192, .yCoord1 = 25,  .upIndex = 7, .downIndex = 3, .leftIndex = 0,  .rightIndex = 0  },
    [POS_MEMBER_2] = { .xCoord1 = 64,  .yCoord1 = 73,  .upIndex = 0, .downIndex = 4, .leftIndex = 3,  .rightIndex = 3  },
    [POS_MEMBER_3] = { .xCoord1 = 192, .yCoord1 = 73,  .upIndex = 1, .downIndex = 5, .leftIndex = 2,  .rightIndex = 2  },
    [POS_MEMBER_4] = { .xCoord1 = 64,  .yCoord1 = 121, .upIndex = 2, .downIndex = 0, .leftIndex = 5,  .rightIndex = 5  },
    [POS_MEMBER_5] = { .xCoord1 = 192, .yCoord1 = 121, .upIndex = 3, .downIndex = 7, .leftIndex = 4,  .rightIndex = 4  },
    [POS_CONFIRM]  = { .xCoord1 = 224, .yCoord1 = 168, .upIndex = 0, .downIndex = 0, .leftIndex = 0,  .rightIndex = 0  },
    [POS_CANCEL]   = { .xCoord1 = 224, .yCoord1 = 168, .upIndex = 5, .downIndex = 1, .leftIndex = -1, .rightIndex = -1 },
};

static const GridMenuCursorPosition sCursorPosTable_SelectOrder[] = {
    [POS_MEMBER_0] = { .xCoord1 = 64,  .yCoord1 = 25,  .upIndex = 7, .downIndex = 2, .leftIndex = 7, .rightIndex = 1 },
    [POS_MEMBER_1] = { .xCoord1 = 192, .yCoord1 = 33,  .upIndex = 7, .downIndex = 3, .leftIndex = 0, .rightIndex = 2 },
    [POS_MEMBER_2] = { .xCoord1 = 64,  .yCoord1 = 73,  .upIndex = 0, .downIndex = 4, .leftIndex = 1, .rightIndex = 3 },
    [POS_MEMBER_3] = { .xCoord1 = 192, .yCoord1 = 81,  .upIndex = 1, .downIndex = 5, .leftIndex = 2, .rightIndex = 4 },
    [POS_MEMBER_4] = { .xCoord1 = 64,  .yCoord1 = 121, .upIndex = 2, .downIndex = 6, .leftIndex = 3, .rightIndex = 5 },
    [POS_MEMBER_5] = { .xCoord1 = 192, .yCoord1 = 129, .upIndex = 3, .downIndex = 6, .leftIndex = 4, .rightIndex = 6 },
    [POS_CONFIRM]  = { .xCoord1 = 224, .yCoord1 = 168, .upIndex = 5, .downIndex = 7, .leftIndex = 5, .rightIndex = 7 },
    [POS_CANCEL]   = { .xCoord1 = 224, .yCoord1 = 184, .upIndex = 6, .downIndex = 1, .leftIndex = 6, .rightIndex = 0 },
};

static const GridMenuCursorPosition sCursorPosTable_SelectEgg[] = {
    [POS_MEMBER_0] = { .xCoord1 = 64,  .yCoord1 = 25,  .upIndex = 5, .downIndex = 2, .leftIndex = 5, .rightIndex = 1 },
    [POS_MEMBER_1] = { .xCoord1 = 192, .yCoord1 = 33,  .upIndex = 5, .downIndex = 3, .leftIndex = 0, .rightIndex = 2 },
    [POS_MEMBER_2] = { .xCoord1 = 64,  .yCoord1 = 73,  .upIndex = 0, .downIndex = 4, .leftIndex = 1, .rightIndex = 3 },
    [POS_MEMBER_3] = { .xCoord1 = 192, .yCoord1 = 81,  .upIndex = 1, .downIndex = 5, .leftIndex = 2, .rightIndex = 4 },
    [POS_MEMBER_4] = { .xCoord1 = 64,  .yCoord1 = 121, .upIndex = 2, .downIndex = 0, .leftIndex = 3, .rightIndex = 5 },
    [POS_MEMBER_5] = { .xCoord1 = 192, .yCoord1 = 129, .upIndex = 3, .downIndex = 0, .leftIndex = 4, .rightIndex = 0 },
    [POS_CONFIRM]  = { .xCoord1 = 0,   .yCoord1 = 0,   .upIndex = 0, .downIndex = 0, .leftIndex = 0, .rightIndex = 0 },
    [POS_CANCEL]   = { .xCoord1 = 0,   .yCoord1 = 0,   .upIndex = 0, .downIndex = 0, .leftIndex = 0, .rightIndex = 0 },
};
// clang-format on

static const u16 sFieldMoves[FIELD_MOVE_MAX] = {
    [FIELD_MOVE_CUT] = MOVE_CUT,
    [FIELD_MOVE_FLY] = MOVE_FLY,
    [FIELD_MOVE_SURF] = MOVE_SURF,
    [FIELD_MOVE_STRENGTH] = MOVE_STRENGTH,
    [FIELD_MOVE_DEFOG] = MOVE_DEFOG,
    [FIELD_MOVE_ROCK_SMASH] = MOVE_ROCK_SMASH,
    [FIELD_MOVE_WATERFALL] = MOVE_WATERFALL,
    [FIELD_MOVE_ROCK_CLIMB] = MOVE_ROCK_CLIMB,
    [FIELD_MOVE_FLASH] = MOVE_FLASH,
    [FIELD_MOVE_TELEPORT] = MOVE_TELEPORT,
    [FIELD_MOVE_DIG] = MOVE_DIG,
    [FIELD_MOVE_SWEET_SCENT] = MOVE_SWEET_SCENT,
    [FIELD_MOVE_CHATTER] = MOVE_CHATTER,
    [FIELD_MOVE_MILK_DRINK] = MOVE_MILK_DRINK,
    [FIELD_MOVE_SOFTBOILED] = MOVE_SOFTBOILED,
};

static BOOL PartyMenu_Init(ApplicationManager *appMan, int *state)
{
    PartyMenuApplication *application; // must forward-declare to match
    NARC *narc;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    SetAutorepeat(4, 8);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_PARTY_MENU, 0x30000);

    narc = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, HEAP_ID_PARTY_MENU);
    application = NewPartyMenuApplication(appMan);

    StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_DOWNWARD_IN, FADE_TYPE_DOWNWARD_IN, COLOR_BLACK, 6, 1, HEAP_ID_PARTY_MENU);
    CheckCancellableMode(application);
    SetVRAMBanks();
    InitBgs(application->bgConfig);
    LoadGraphics(application, narc);
    EnableTouchPad();
    InitializeTouchPad(4);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_57, SEQ_NONE, 0);

    PartyMenu_AddWindows(application);
    PartyMenu_InitSpriteResources(application);
    PartyMenu_InitSprites(application);

    SetupRequestedMode(application);
    SetupRequestedModePanels(application);
    InitAnimAndPaletteForSlot(application, application->currPartySlot, TRUE);

    if (application->partyMenu->mode == PARTY_MENU_MODE_USE_ITEM || application->partyMenu->mode == PARTY_MENU_MODE_USE_EVO_ITEM) {
        if (CheckItemSacredAsh(application->partyMenu->usedItemID) == FALSE) {
            PartyMenu_PrintShortMessage(application, PartyMenu_Text_UseOnWhichMon, TRUE);
        }
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE) {
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_TeachWhichMon, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM || application->partyMenu->mode == PARTY_MENU_MODE_MAILBOX) {
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_GiveToWhichMon, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE_DONE
        || application->partyMenu->mode == PARTY_MENU_MODE_LEVEL_MOVE_DONE
        || application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL
        || application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL_DONE) {
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER) {
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseMonAndConfirm, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_BALL_SEAL) {
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseMonAndConfirm, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseMonAndConfirm, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE) {
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseMonAndConfirm, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_SelectEgg, TRUE);
    } else if (application->partyMenu->mode != PARTY_MENU_MODE_GIVE_ITEM_DONE) {
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
    } else {
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);
    }

    PartyMenu_LoadContextMenuStrings(application);
    SetupMenuCursor(application);

    if (ShouldShowSubscreen(application) == FALSE) {
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);
    }

    SetVBlankCallback(sub_0207E898, application);
    NetworkIcon_InitIfConnected();
    NARC_dtor(narc);

    return TRUE;
}

static BOOL PartyMenu_Main(ApplicationManager *appMan, int *state)
{
    PartyMenuApplication *partyMenu = ApplicationManager_Data(appMan);

    switch (*state) {
    case PARTY_MENU_STATE_START:
        *state = sub_0207E490(partyMenu);
        break;
    case PARTY_MENU_STATE_DEFAULT:
        *state = sub_0207E518(partyMenu);
        break;
    case PARTY_MENU_STATE_HANDLE_PARTY_MENU_ACTION:
        if (HandleWindowInputEvent(partyMenu, state) == TRUE) {
            *state = PARTY_MENU_STATE_DEFAULT;
        }
        break;
    case PARTY_MENU_STATE_3:
        *state = sub_02084B34(partyMenu);
        break;
    case PARTY_MENU_STATE_USE_ITEM:
        *state = sub_0207E5B4(partyMenu);
        break;
    case PARTY_MENU_STATE_5:
        *state = partyMenu->unk_B00(partyMenu);
        break;
    case PARTY_MENU_STATE_6:
        *state = sub_02086774(partyMenu);
        break;
    case PARTY_MENU_STATE_USE_SACRED_ASH:
        *state = sub_02085804(partyMenu);
        break;
    case PARTY_MENU_STATE_GIVE_ITEM:
        *state = sub_0207E5F4(partyMenu);
        break;
    case PARTY_MENU_STATE_SHOW_ITEM_SWAP_CONFIRMATION:
        *state = PartyMenu_ShowItemSwapConfirmation(partyMenu);
        break;
    case PARTY_MENU_STATE_HELD_ITEM_SWAP:
        *state = ProcessPokemonItemSwap(partyMenu);
        break;
    case PARTY_MENU_STATE_CONFIRM_ITEM_UPDATE:
        *state = PartyMenu_ConfirmItemUpdate(partyMenu);
        break;
    case PARTY_MENU_STATE_12:
        *state = ProcessMessageResult(partyMenu);
        break;
    case PARTY_MENU_STATE_13:
        *state = HandleOverlayCompletion(partyMenu);
        break;
    case PARTY_MENU_STATE_14:
        *state = UpdatePokemonFormWithItem(partyMenu);
        break;
    case PARTY_MENU_STATE_15:
        *state = sub_0207E634(partyMenu);
        break;
    case PARTY_MENU_STATE_16:
        *state = ProcessItemApplication(partyMenu);
        break;
    case PARTY_MENU_STATE_17:
        *state = sub_02083658(partyMenu);
        break;
    case PARTY_MENU_STATE_18:
        *state = sub_020836A8(partyMenu);
        break;
    case PARTY_MENU_STATE_19:
        *state = sub_020836E4(partyMenu);
        break;
    case PARTY_MENU_STATE_20:
        *state = sub_020839BC(partyMenu);
        break;
    case PARTY_MENU_STATE_TEACH_MOVE:
        *state = sub_0207E750(partyMenu);
        break;
    case PARTY_MENU_STATE_22:
        *state = sub_020863A0(partyMenu);
        break;
    case PARTY_MENU_STATE_23:
        *state = sub_020845A8(partyMenu);
        break;
    case PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE:
        *state = PartyMenu_NextStateAfterMessageCloses(partyMenu);
        break;
    case PARTY_MENU_STATE_25:
        *state = sub_0207E6E4(partyMenu);
        break;
    case PARTY_MENU_STATE_26:
        *state = sub_0207E708(partyMenu);
        break;
    case PARTY_MENU_STATE_27:
        *state = sub_0207E714(partyMenu);
        break;
    case PARTY_MENU_STATE_28: {
        u8 v1 = sub_020805E4(partyMenu);

        if (v1 == PARTY_MENU_INPUT_CONFIRM) {
            *state = PARTY_MENU_STATE_29;
        } else if (v1 == PARTY_MENU_INPUT_CANCEL) {
            *state = PARTY_MENU_STATE_DEFAULT;
        }
    } break;
    case PARTY_MENU_STATE_29:
        if (sub_02083D1C(partyMenu) == 1) {
            *state = PARTY_MENU_STATE_DEFAULT;
        }
        break;
    case PARTY_MENU_STATE_HP_TRANSFER_FIELD_MOVE:
        *state = PartyMenu_UseHPTransferFieldMove(partyMenu);
        break;
    case PARTY_MENU_STATE_31:
        if (PartyMenuFormChange_ChangeForm(partyMenu) == 1) {
            PartyMenu_TeardownFormChangeAnim(partyMenu);
            *state = PARTY_MENU_STATE_25;
        } else {
            *state = PARTY_MENU_STATE_31;
        }
        break;
    case PARTY_MENU_STATE_32:
        App_StartScreenFade(TRUE, HEAP_ID_PARTY_MENU);
        *state = PARTY_MENU_STATE_33;
        break;
    case PARTY_MENU_STATE_33:
        if (IsScreenFadeDone() == TRUE) {
            partyMenu->partyMenu->selectedMonSlot = partyMenu->currPartySlot;
            return TRUE;
        }
        break;
    }

    PartyMenu_UpdateMemberIcons(partyMenu);
    PartyMenu_UpdateTouchButtonEffect(partyMenu);
    sub_0207FE1C(partyMenu);
    SpriteSystem_DrawSprites(partyMenu->spriteMan);

    return FALSE;
}

static int sub_0207E490(PartyMenuApplication *application)
{
    if (IsScreenFadeDone() == TRUE) {
        if ((application->partyMenu->mode == PARTY_MENU_MODE_USE_ITEM) || (application->partyMenu->mode == PARTY_MENU_MODE_USE_EVO_ITEM)) {
            if (CheckItemSacredAsh(application->partyMenu->usedItemID) == TRUE) {
                application->stateAfterMessage = PARTY_MENU_STATE_START;
                return PARTY_MENU_STATE_USE_SACRED_ASH;
            }

            return PARTY_MENU_STATE_USE_ITEM;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE) {
            return PARTY_MENU_STATE_TEACH_MOVE;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE_DONE) {
            return sub_020862F8(application);
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_LEVEL_MOVE_DONE) {
            return sub_02085EF4(application);
        } else if ((application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL) || (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL_DONE)) {
            return PARTY_MENU_STATE_14;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM) {
            return PARTY_MENU_STATE_GIVE_ITEM;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM_DONE) {
            return PARTY_MENU_STATE_16;
        } else {
            return PARTY_MENU_STATE_DEFAULT;
        }
    }

    return PARTY_MENU_STATE_START;
}

static int sub_0207E518(PartyMenuApplication *application)
{
    u8 v0 = PartyMenu_HandleInput(application);

    if (v0 == PARTY_MENU_INPUT_CONFIRM) {
        if ((application->partyMenu->mode == PARTY_MENU_MODE_SELECT_NO_PROMPT) || (application->partyMenu->mode == PARTY_MENU_MODE_FEED_POFFIN)) {
            application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
            return PARTY_MENU_STATE_32;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_MAILBOX) {
            sub_020868B0(application);
            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_NPC_TRADE) {
            return CheckForItemApplication(application);
        } else {
            return PARTY_MENU_STATE_HANDLE_PARTY_MENU_ACTION;
        }
    } else if (v0 == PARTY_MENU_INPUT_4) {
        return HandleGameWindowEvent(application);
    } else if (v0 == PARTY_MENU_INPUT_CANCEL) {
        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        return PARTY_MENU_STATE_32;
    } else if (v0 == PARTY_MENU_INPUT_TOUCH_SCREEN) {
        if (application->partyMenu->mode != PARTY_MENU_MODE_BALL_SEAL) {
            application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_SUMMARY;
            return PARTY_MENU_STATE_32;
        } else {
            Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);
            return sub_02084780(application);
        }
    }

    return PARTY_MENU_STATE_DEFAULT;
}

static int sub_0207E5B4(PartyMenuApplication *application)
{
    u8 v0 = HandleSpecialInput(application);

    if ((v0 == PARTY_MENU_INPUT_CONFIRM) || (v0 == PARTY_MENU_INPUT_TOUCH_SCREEN)) {
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);
        return ApplyItemEffectOnPokemon(application);
    } else if (v0 == 3) {
        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        return PARTY_MENU_STATE_32;
    }

    return PARTY_MENU_STATE_USE_ITEM;
}

static int sub_0207E5F4(PartyMenuApplication *application)
{
    u8 v0 = HandleSpecialInput(application);

    if ((v0 == PARTY_MENU_INPUT_CONFIRM) || (v0 == PARTY_MENU_INPUT_TOUCH_SCREEN)) {
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);
        return ProcessItemApplication(application);
    } else if (v0 == 3) {
        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        return PARTY_MENU_STATE_32;
    }

    return PARTY_MENU_STATE_GIVE_ITEM;
}

static int sub_0207E634(PartyMenuApplication *application)
{
    u32 v0 = Menu_ProcessInput(application->contextMenu);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        Window_EraseMessageBox(&application->windows[33], 1);
        Window_EraseStandardFrame(&application->windows[35], 1);
        Window_ClearAndScheduleCopyToVRAM(&application->windows[35]);
        Menu_Free(application->contextMenu, NULL);
        StringList_Free(application->contextMenuChoices);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return 1;
    default: {
        PartyMenuAction v1;
        int partyMenuState;

        v1 = (PartyMenuAction)v0;
        v1(application, &partyMenuState);

        return partyMenuState;
    }
    }

    return PARTY_MENU_STATE_15;
}

static int PartyMenu_NextStateAfterMessageCloses(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == FALSE) {
        return application->stateAfterMessage;
    }

    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static int sub_0207E6E4(PartyMenuApplication *application)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return PARTY_MENU_STATE_32;
    }

    return PARTY_MENU_STATE_25;
}

static int sub_0207E708(PartyMenuApplication *application)
{
    PartyMenu_DrawYesNoChoice(application);
    return PARTY_MENU_STATE_27;
}

static int sub_0207E714(PartyMenuApplication *application)
{
    switch (Menu_ProcessInputAndHandleExit(application->contextMenu, 12)) {
    case 0:
        return application->unk_B04.unk_00(application);
    case 0xfffffffe:
        return application->unk_B04.unk_04(application);
    }

    return PARTY_MENU_STATE_27;
}

static int sub_0207E750(PartyMenuApplication *application)
{
    u8 v0 = HandleSpecialInput(application);

    if ((v0 == PARTY_MENU_INPUT_CONFIRM) || (v0 == PARTY_MENU_INPUT_TOUCH_SCREEN)) {
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);

        if (application->partyMembers[application->currPartySlot].isEgg != TRUE) {
            return sub_0208615C(application);
        } else {
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
            application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
            application->stateAfterMessage = PARTY_MENU_STATE_25;
            MessageLoader_GetString(application->messageLoader, PartyMenu_Text_ItWontHaveAnyEffect, application->tmpString);
            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
        }
    } else if (v0 == 3) {
        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        return PARTY_MENU_STATE_32;
    }

    return PARTY_MENU_STATE_TEACH_MOVE;
}

static BOOL PartyMenu_Exit(ApplicationManager *appMan, int *state)
{
    PartyMenuApplication *v0 = ApplicationManager_Data(appMan);
    u32 v1;

    SetVBlankCallback(NULL, NULL);
    PartyMenu_CleanupSprites(v0);
    PartyMenu_RemoveWindows(v0);
    sub_0207EA24(v0->bgConfig);
    DisableTouchPad();
    VramTransfer_Free();

    for (v1 = 0; v1 < 6; v1++) {
        String_Free(v0->partyMembers[v1].name);
    }

    String_Free(v0->tmpString);
    String_Free(v0->tmpFormat);

    for (v1 = 0; v1 < 20; v1++) {
        String_Free(v0->menuStrings[v1]);
    }

    MessageLoader_Free(v0->messageLoader);
    FontSpecialChars_Free(v0->specialChars);
    StringTemplate_Free(v0->template);

    if (v0->heightWeight != NULL) {
        HeightWeightData_Free(v0->heightWeight);
    }

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_PARTY_MENU);

    return 1;
}

static void sub_0207E898(void *param0)
{
    PartyMenuApplication *v0 = param0;

    Bg_RunScheduledUpdates(v0->bgConfig);
    VramTransfer_Process();
    SpriteSystem_TransferOam();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetVRAMBanks(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_B,
        GX_VRAM_TEXPLTT_01_FG,
    };

    GXLayers_SetBanks(&banks);
}

static void InitBgMainLayer0(BgConfig *bgConfig)
{
    BgTemplate template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &template, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);
}

static void InitBgs(BgConfig *bgConfig)
{
    GraphicsModes modes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&modes);
    InitBgMainLayer0(bgConfig);

    BgTemplate mainLayer1 = {
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
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &mainLayer1, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate mainLayer2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &mainLayer2, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    BgTemplate mainLayer3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &mainLayer3, 0);

    BgTemplate subLayer0 = {
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
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &subLayer0, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate subLayer1 = {
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
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &subLayer1, 0);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, TILE_SIZE_4BPP, 0, HEAP_ID_PARTY_MENU);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, TILE_SIZE_4BPP, 0, HEAP_ID_PARTY_MENU);
}

static void sub_0207EA24(BgConfig *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ, 0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
    Heap_FreeExplicit(HEAP_ID_PARTY_MENU, param0);
}

void PartyMenu_UpdateFormChangeGraphicsMode(PartyMenuApplication *application, BOOL isTeardown)
{
    if (!isTeardown) {
        Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
        Bg_FreeTilemapBuffer(application->bgConfig, BG_LAYER_MAIN_0);

        GX_SetGraphicsMode(GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);
        application->formChange3DPipeline = InitG3DPipeline(HEAP_ID_PARTY_MENU);
    } else {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        FreeG3DPipeline(application->formChange3DPipeline);

        GX_SetGraphicsMode(GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_2D);

        InitBgMainLayer0(application->bgConfig);
        Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_PARTY_MENU);
    }
}

static G3DPipelineBuffers *InitG3DPipeline(enum HeapID heapID)
{
    return G3DPipeline_Init(heapID, TEXTURE_VRAM_SIZE_128K, PALETTE_VRAM_SIZE_32K, G3DPipelineCallback);
}

static void G3DPipelineCallback(void)
{
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(TRUE);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_EdgeMarking(FALSE);
    G3X_SetFog(FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

static void FreeG3DPipeline(G3DPipelineBuffers *pipelineBuffers)
{
    G3DPipelineBuffers_Free(pipelineBuffers);
}

static void LoadGraphics(PartyMenuApplication *application, NARC *narc)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(
        narc,
        menu_tiles_NCGR,
        application->bgConfig,
        BG_LAYER_MAIN_3,
        0,
        0,
        FALSE,
        HEAP_ID_PARTY_MENU);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        menu_NSCR,
        application->bgConfig,
        BG_LAYER_MAIN_3,
        0,
        0,
        FALSE,
        HEAP_ID_PARTY_MENU);

    NNSG2dPaletteData *plttData;
    void *nclr = NARC_AllocAndReadWholeMember(narc, menu_NCLR, HEAP_ID_PARTY_MENU);
    NNS_G2dGetUnpackedPaletteData(nclr, &plttData);
    Bg_LoadPalette(BG_LAYER_MAIN_3, plttData->pRawData, plttData->szByte, 0);

    u16 *palette = plttData->pRawData;
    memcpy(application->colors, &palette[PLTT_DEST(3)], NUM_MENU_COLORS * sizeof(u16));
    Heap_FreeExplicit(HEAP_ID_PARTY_MENU, nclr);

    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), HEAP_ID_PARTY_MENU);
    LoadStandardWindowGraphics(application->bgConfig, BG_LAYER_MAIN_0, 1, 14, 0, HEAP_ID_PARTY_MENU);
    LoadMessageBoxGraphics(
        application->bgConfig,
        BG_LAYER_MAIN_0,
        1 + STANDARD_WINDOW_TILE_COUNT,
        15,
        Options_Frame(application->partyMenu->options),
        HEAP_ID_PARTY_MENU);
    Graphics_LoadTilesToBgLayerFromOpenNARC(
        narc,
        touch_button_NCGR,
        application->bgConfig,
        BG_LAYER_SUB_0,
        0,
        0,
        FALSE,
        HEAP_ID_PARTY_MENU);
    Graphics_LoadPaletteFromOpenNARC(
        narc,
        touch_button_NCLR,
        PAL_LOAD_SUB_BG,
        PLTT_OFFSET(1),
        PALETTE_SIZE_BYTES,
        HEAP_ID_PARTY_MENU);
    Graphics_LoadTilesToBgLayerFromOpenNARC(
        narc,
        subscreen_tiles_NCGR,
        application->bgConfig,
        BG_LAYER_SUB_1,
        0,
        0,
        FALSE,
        HEAP_ID_PARTY_MENU);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        subscreen_NSCR,
        application->bgConfig,
        BG_LAYER_SUB_1,
        0,
        0,
        FALSE,
        HEAP_ID_PARTY_MENU);
    Graphics_LoadPaletteFromOpenNARC(
        narc,
        subscreen_NCLR,
        PAL_LOAD_SUB_BG,
        PLTT_OFFSET(0),
        PALETTE_SIZE_BYTES,
        HEAP_ID_PARTY_MENU);

    PartyMenu_LoadMemberPanelTilemaps(HEAP_ID_PARTY_MENU, application->leadMemberPanel, application->backMemberPanel, application->noneMemberPanel);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);
}

static PartyMenuApplication *NewPartyMenuApplication(ApplicationManager *appMan)
{
    PartyMenuApplication *application;
    u32 i;

    application = ApplicationManager_NewData(appMan, sizeof(PartyMenuApplication), HEAP_ID_PARTY_MENU);
    memset(application, 0, sizeof(PartyMenuApplication));

    application->partyMenu = ApplicationManager_Args(appMan);
    application->bgConfig = BgConfig_New(HEAP_ID_PARTY_MENU);

    if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM && application->partyMenu->battleRegulation != NULL) {
        application->heightWeight = HeightWeightData_Load(HEAP_ID_PARTY_MENU);
    } else {
        application->heightWeight = NULL;
    }

    application->messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_PARTY_MENU, HEAP_ID_PARTY_MENU);
    application->specialChars = FontSpecialChars_Init(15, 14, 0, HEAP_ID_PARTY_MENU);
    application->template = StringTemplate_Default(HEAP_ID_PARTY_MENU);

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        application->partyMembers[i].name = String_Init(MON_NAME_LEN + 1, HEAP_ID_PARTY_MENU);
    }

    application->tmpString = String_Init(256, HEAP_ID_PARTY_MENU);
    application->tmpFormat = String_Init(256, HEAP_ID_PARTY_MENU);

    for (i = 0; i < NUM_PARTY_MENU_STRS; i++) {
        application->menuStrings[i] = String_Init(32, HEAP_ID_PARTY_MENU);
    }

    application->currPartySlot = application->partyMenu->selectedMonSlot;
    application->prevPartySlot = application->currPartySlot;

    return application;
}

static void CheckCancellableMode(PartyMenuApplication *application)
{
    if ((application->partyMenu->mode & PARTY_MENU_MODE_HIDE_CANCEL_FLAG) != 0) {
        application->hideCancel = TRUE;
        application->partyMenu->mode ^= PARTY_MENU_MODE_HIDE_CANCEL_FLAG;
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
        application->hideCancel = TRUE;
    } else {
        application->hideCancel = FALSE;
    }
}

static void SetupRequestedMode(PartyMenuApplication *application)
{
    u8 flags = PARTY_MENU_SHOW_ALL;

    if (application->partyMenu->type == PARTY_MENU_TYPE_MULTI_BATTLE) {
        application->cursorPosTable = sCursorPosTable_MultiBattle;
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        application->cursorPosTable = sCursorPosTable_SelectOrder;
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
        application->cursorPosTable = sCursorPosTable_SelectEgg;
    } else {
        application->cursorPosTable = sCursorPosTable_Basic;
    }

    if (application->partyMenu->mode != PARTY_MENU_MODE_SELECT_CONFIRM
        && application->partyMenu->mode != PARTY_MENU_MODE_BATTLE_TOWER
        && application->partyMenu->mode != PARTY_MENU_MODE_BATTLE_CASTLE
        && application->partyMenu->mode != PARTY_MENU_MODE_BATTLE_HALL) {
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CONFIRM_BUTTON], FALSE);
        Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CANCEL_BUTTON], 0);

        s16 x, y;
        Sprite_GetPositionXY(application->sprites[PARTY_MENU_SPRITE_CANCEL_BUTTON], &x, &y);
        Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_CANCEL_BUTTON], x, y - 8);
        flags ^= PARTY_MENU_SHOW_CONFIRM;
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_UNK_04 || application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CANCEL_BUTTON], FALSE);
        flags ^= PARTY_MENU_SHOW_CANCEL;
    }

    PartyMenu_PrintButtonText(application, flags);
}

u8 sub_0207EF04(PartyMenuApplication *application, u8 param1)
{
    return application->partyMembers[param1].isPresent;
}

u8 PartyMenu_LoadMember(PartyMenuApplication *application, u8 slot)
{
    application->partyMembers[slot].isPresent = FALSE;
    if (Party_GetCurrentCount(application->partyMenu->party) <= slot) {
        return FALSE;
    }

    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);
    u16 species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    if (species == SPECIES_NONE) {
        return FALSE;
    }

    PartyMenu_SetMemberName(application, mon, slot);

    application->partyMembers[slot].species = species;
    application->partyMembers[slot].curHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
    application->partyMembers[slot].maxHP = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
    application->partyMembers[slot].level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
    application->partyMembers[slot].heldItem = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    application->partyMembers[slot].ballSeal = Pokemon_GetValue(mon, MON_DATA_BALL_CAPSULE_ID, NULL);
    application->partyMembers[slot].isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);
    application->partyMembers[slot].form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

    if (Pokemon_GetValue(mon, MON_DATA_NO_PRINT_GENDER, NULL) == TRUE) {
        application->partyMembers[slot].hideGenderMarker = FALSE;
    } else {
        application->partyMembers[slot].hideGenderMarker = TRUE;
    }

    application->partyMembers[slot].gender = Pokemon_GetGender(mon);
    application->partyMembers[slot].isPresent = TRUE;
    application->partyMembers[slot].statusIcon = (u8)PokemonSummaryScreen_StatusIconAnimIdx(mon);

    CheckContestEligibility(application, mon, slot);
    return TRUE;
}

static void CheckContestEligibility(PartyMenuApplication *application, Pokemon *mon, u8 slot)
{
    u32 countRibbons;
    u32 countMoves;

    if (application->partyMenu->mode != PARTY_MENU_MODE_CONTEST) {
        return;
    }

    if (application->partyMembers[slot].isEgg == TRUE || application->partyMembers[slot].curHP == 0) {
        application->partyMembers[slot].isContestEligible = FALSE;
        return;
    }

    countRibbons = CountEarnedRibbonsForContestType(mon, application->partyMenu->contestType);
    for (countMoves = 0; countMoves < LEARNED_MOVES_MAX; countMoves++) {
        if (Pokemon_GetValue(mon, MON_DATA_MOVE1 + countMoves, NULL) == MOVE_NONE) {
            break;
        }
    }

    if (application->partyMenu->contestRank <= countRibbons && countMoves >= 2) {
        application->partyMembers[slot].isContestEligible = TRUE;
    } else {
        application->partyMembers[slot].isContestEligible = FALSE;
    }
}

static u32 CountEarnedRibbonsForContestType(Pokemon *mon, u8 contestType)
{
    u32 count;

    switch (contestType) {
    case CONTEST_TYPE_COOL:
        count = Pokemon_GetValue(mon, MON_DATA_SUPER_COOL_RIBBON, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_COOL_RIBBON_GREAT, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_COOL_RIBBON_ULTRA, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_COOL_RIBBON_MASTER, NULL);
        break;
    case CONTEST_TYPE_BEAUTY:
        count = Pokemon_GetValue(mon, MON_DATA_SUPER_BEAUTY_RIBBON, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_BEAUTY_RIBBON_GREAT, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_BEAUTY_RIBBON_ULTRA, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_BEAUTY_RIBBON_MASTER, NULL);
        break;
    case CONTEST_TYPE_CUTE:
        count = Pokemon_GetValue(mon, MON_DATA_SUPER_CUTE_RIBBON, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_CUTE_RIBBON_GREAT, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_CUTE_RIBBON_ULTRA, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_CUTE_RIBBON_MASTER, NULL);
        break;
    case CONTEST_TYPE_SMART:
        count = Pokemon_GetValue(mon, MON_DATA_SUPER_SMART_RIBBON, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_SMART_RIBBON_GREAT, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_SMART_RIBBON_ULTRA, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_SMART_RIBBON_MASTER, NULL);
        break;
    case CONTEST_TYPE_TOUGH:
        count = Pokemon_GetValue(mon, MON_DATA_SUPER_TOUGH_RIBBON, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_TOUGH_RIBBON_GREAT, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_TOUGH_RIBBON_ULTRA, NULL);
        count += Pokemon_GetValue(mon, MON_DATA_SUPER_TOUGH_RIBBON_MASTER, NULL);
        break;
    }

    return count;
}

const u16 *sub_0207F248(PartyMenuApplication *application)
{
    return &application->backMemberPanel[3 * 16 + 6];
}

#define MEMBER_PANEL_WIDTH  16
#define MEMBER_PANEL_HEIGHT 6

static void DrawMemberPanel(PartyMenuApplication *application, u8 slot, u8 panelXPos, u8 panelYPos, u8 showHPBar)
{
    const u16 *panel;
    if (slot == 0 || (application->partyMenu->type != PARTY_MENU_TYPE_BASIC && slot == 1)) {
        panel = application->leadMemberPanel;
    } else {
        panel = application->backMemberPanel;
    }

    application->partyMembers[slot].panelXPos = panelXPos;
    application->partyMembers[slot].panelYPos = panelYPos;

    Bg_CopyToTilemapRect(
        application->bgConfig,
        BG_LAYER_MAIN_2,
        panelXPos,
        panelYPos,
        MEMBER_PANEL_WIDTH,
        MEMBER_PANEL_HEIGHT,
        panel,
        0,
        0,
        MEMBER_PANEL_WIDTH,
        MEMBER_PANEL_HEIGHT);

    if (showHPBar == FALSE) {
        Bg_FillTilemapRect(application->bgConfig, BG_LAYER_MAIN_2, 0x17, panelXPos + 6, panelYPos + 3, 9, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
    }

    Bg_ChangeTilemapRectPalette(application->bgConfig, 2, panelXPos, panelYPos, MEMBER_PANEL_WIDTH, MEMBER_PANEL_HEIGHT, 3 + slot);
    PartyMenu_UpdateSlotPalette(application, slot);
}

static void SetupRequestedModePanels(PartyMenuApplication *application)
{
    const MemberPanelTemplate *templates;

    if (application->partyMenu->type == PARTY_MENU_TYPE_MULTI_BATTLE) {
        templates = sMemberPanelTemplates[1];
    } else {
        templates = sMemberPanelTemplates[0];
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_USE_EVO_ITEM) {
        DrawMemberPanels_UsingEvoItem(application, templates);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE) {
        DrawMemberPanels_TeachingMove(application, templates);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_CONTEST) {
        DrawMemberPanels_EnteringContest(application, templates);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        DrawMemberPanels_SelectingOrder(application, templates);
    } else {
        DrawMemberPanels_Standard(application, templates);
    }

    Bg_ScheduleTilemapTransfer(application->bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleTilemapTransfer(application->bgConfig, BG_LAYER_SUB_0);
}

static void DrawMemberPanels_Standard(PartyMenuApplication *application, const MemberPanelTemplate *templates)
{
    NARC *iconNarc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);

    for (u8 slot = 0; slot < MAX_PARTY_SIZE; slot++) {
        if (PartyMenu_LoadMember(application, slot) == TRUE) {
            if (application->partyMembers[slot].isEgg == TRUE) {
                DrawMemberPanel(application, slot, templates[slot].panelX, templates[slot].panelY, FALSE);
            } else {
                DrawMemberPanel(application, slot, templates[slot].panelX, templates[slot].panelY, TRUE);
            }

            PartyMenu_DrawMemberPanelData(application, slot);
            PartyMenu_DrawMemberSpeciesIcon(application, slot, templates[slot].speciesIconX, templates[slot].speciesIconY, iconNarc);
            PartyMenu_DrawMemberPokeBall(application, slot, templates[slot].ballSpriteX, templates[slot].ballSpriteY);
            PartyMenu_DrawMemberHeldItem(application, slot, application->partyMembers[slot].heldItem);
            PartyMenu_AlignMemberHeldItem(application, slot, templates[slot].speciesIconX, templates[slot].speciesIconY);
            PartyMenu_DrawMemberBallSeal(application, slot);
            PartyMenu_AlignMemberBallSeal(application, slot);
            PartyMenu_DrawMemberStatusCondition(application, slot, application->partyMembers[slot].statusIcon);
            DrawMemberTouchScreenButton(application, slot, 0);
        } else {
            DrawEmptyMemberPanel(application, slot, templates[slot].panelX, templates[slot].panelY);
        }
    }

    NARC_dtor(iconNarc);
}

static void DrawMemberPanels_UsingEvoItem(PartyMenuApplication *application, const MemberPanelTemplate *templates)
{
    NARC *iconNarc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);

    for (u8 slot = 0; slot < MAX_PARTY_SIZE; slot++) {
        if (PartyMenu_LoadMember(application, slot) == TRUE) {
            DrawMemberPanel(application, slot, templates[slot].panelX, templates[slot].panelY, FALSE);
            PartyMenu_PrintMemberComment_CanUseEvoItem(application, slot);
            PartyMenu_DrawMemberSpeciesIcon(application, slot, templates[slot].speciesIconX, templates[slot].speciesIconY, iconNarc);
            PartyMenu_DrawMemberPokeBall(application, slot, templates[slot].ballSpriteX, templates[slot].ballSpriteY);
            PartyMenu_DrawMemberHeldItem(application, slot, application->partyMembers[slot].heldItem);
            PartyMenu_AlignMemberHeldItem(application, slot, templates[slot].speciesIconX, templates[slot].speciesIconY);
            PartyMenu_DrawMemberBallSeal(application, slot);
            PartyMenu_AlignMemberBallSeal(application, slot);
            PartyMenu_DrawMemberStatusCondition(application, slot, application->partyMembers[slot].statusIcon);
            DrawMemberTouchScreenButton(application, slot, 0);
        } else {
            DrawEmptyMemberPanel(application, slot, templates[slot].panelX, templates[slot].panelY);
        }
    }

    NARC_dtor(iconNarc);
}

static void DrawMemberPanels_TeachingMove(PartyMenuApplication *application, const MemberPanelTemplate *templates)
{
    NARC *iconNarc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);

    for (u8 slot = 0; slot < MAX_PARTY_SIZE; slot++) {
        if (PartyMenu_LoadMember(application, slot) == TRUE) {
            DrawMemberPanel(application, slot, templates[slot].panelX, templates[slot].panelY, FALSE);
            PartyMenu_PrintMemberComment_CanLearnMove(application, slot);
            PartyMenu_DrawMemberSpeciesIcon(application, slot, templates[slot].speciesIconX, templates[slot].speciesIconY, iconNarc);
            PartyMenu_DrawMemberPokeBall(application, slot, templates[slot].ballSpriteX, templates[slot].ballSpriteY);
            PartyMenu_DrawMemberHeldItem(application, slot, application->partyMembers[slot].heldItem);
            PartyMenu_AlignMemberHeldItem(application, slot, templates[slot].speciesIconX, templates[slot].speciesIconY);
            PartyMenu_DrawMemberBallSeal(application, slot);
            PartyMenu_AlignMemberBallSeal(application, slot);
            PartyMenu_DrawMemberStatusCondition(application, slot, application->partyMembers[slot].statusIcon);
            DrawMemberTouchScreenButton(application, slot, 0);
        } else {
            DrawEmptyMemberPanel(application, slot, templates[slot].panelX, templates[slot].panelY);
        }
    }

    NARC_dtor(iconNarc);
}

static void DrawMemberPanels_EnteringContest(PartyMenuApplication *application, const MemberPanelTemplate *templates)
{
    NARC *iconNarc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);

    for (u8 slot = 0; slot < MAX_PARTY_SIZE; slot++) {
        if (PartyMenu_LoadMember(application, slot) == TRUE) {
            DrawMemberPanel(application, slot, templates[slot].panelX, templates[slot].panelY, FALSE);
            PartyMenu_PrintMemberComment_IsContestEligible(application, slot);
            PartyMenu_DrawMemberSpeciesIcon(application, slot, templates[slot].speciesIconX, templates[slot].speciesIconY, iconNarc);
            PartyMenu_DrawMemberPokeBall(application, slot, templates[slot].ballSpriteX, templates[slot].ballSpriteY);
            PartyMenu_DrawMemberHeldItem(application, slot, application->partyMembers[slot].heldItem);
            PartyMenu_AlignMemberHeldItem(application, slot, templates[slot].speciesIconX, templates[slot].speciesIconY);
            PartyMenu_DrawMemberBallSeal(application, slot);
            PartyMenu_AlignMemberBallSeal(application, slot);
            PartyMenu_DrawMemberStatusCondition(application, slot, application->partyMembers[slot].statusIcon);
            DrawMemberTouchScreenButton(application, slot, 0);
        } else {
            DrawEmptyMemberPanel(application, slot, templates[slot].panelX, templates[slot].panelY);
        }
    }

    NARC_dtor(iconNarc);
}

static void DrawMemberPanels_SelectingOrder(PartyMenuApplication *application, const MemberPanelTemplate *templates)
{
    NARC *iconNarc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);

    for (u8 slot = 0; slot < MAX_PARTY_SIZE; slot++) {
        if (PartyMenu_LoadMember(application, slot) == TRUE) {
            DrawMemberPanel(application, slot, templates[slot].panelX, templates[slot].panelY, FALSE);
            PartyMenu_PrintMemberNameAndLevel(application, slot);
            PartyMenu_PrintSelectionEligibility(application, slot);
            PartyMenu_DrawMemberSpeciesIcon(application, slot, templates[slot].speciesIconX, templates[slot].speciesIconY, iconNarc);
            PartyMenu_DrawMemberPokeBall(application, slot, templates[slot].ballSpriteX, templates[slot].ballSpriteY);
            PartyMenu_DrawMemberHeldItem(application, slot, application->partyMembers[slot].heldItem);
            PartyMenu_AlignMemberHeldItem(application, slot, templates[slot].speciesIconX, templates[slot].speciesIconY);
            PartyMenu_DrawMemberBallSeal(application, slot);
            PartyMenu_AlignMemberBallSeal(application, slot);
            PartyMenu_DrawMemberStatusCondition(application, slot, application->partyMembers[slot].statusIcon);
            DrawMemberTouchScreenButton(application, slot, 0);
        } else {
            DrawEmptyMemberPanel(application, slot, templates[slot].panelX, templates[slot].panelY);
        }
    }

    NARC_dtor(iconNarc);
}

static void DrawEmptyMemberPanel(PartyMenuApplication *application, u8 slot, s16 x, s16 y)
{
    Bg_CopyToTilemapRect(
        application->bgConfig,
        BG_LAYER_MAIN_2,
        x,
        y,
        MEMBER_PANEL_WIDTH,
        MEMBER_PANEL_HEIGHT,
        application->noneMemberPanel,
        0,
        0,
        MEMBER_PANEL_WIDTH,
        MEMBER_PANEL_HEIGHT);

    Bg_ChangeTilemapRectPalette(application->bgConfig, BG_LAYER_MAIN_2, x, y, MEMBER_PANEL_WIDTH, MEMBER_PANEL_HEIGHT, 1);
    PartyMenu_DrawMemberStatusCondition(application, slot, SUMMARY_CONDITION_NONE);
    PartyMenu_DrawMemberHeldItem(application, slot, ITEM_NONE);
    PartyMenu_DrawMemberBallSeal(application, slot);
}

void PartyMenu_UpdateSlotPalette(PartyMenuApplication *application, u8 slot)
{
    Pokemon *mon;
    u8 palette;

    mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);

    if (application->inTargetSlotMode == TRUE && (slot == application->currPartySlot || slot == application->selectTargetSlot)) {
        palette = 3 + 4;
    } else {
        if (slot == application->currPartySlot) {
            palette = 4;
        } else {
            palette = 0;
        }

        if (Pokemon_GetValue(mon, MON_DATA_HP, 0) == 0) {
            palette += 2;
        } else if (sub_0207F984(application, slot) == 1) {
            palette += 1;
        } else {
            palette += 0;
        }
    }

    Bg_LoadPalette(BG_LAYER_MAIN_2, &application->colors[PLTT_DEST(palette)], 8 * sizeof(u16), PLTT_OFFSET(3 + slot));
}

static u8 sub_0207F984(PartyMenuApplication *application, u8 param1)
{
    if ((application->partyMenu->type == PARTY_MENU_TYPE_MULTI_BATTLE) && ((param1 & 1) != 0)) {
        return 1;
    }

    return 0;
}

static void SetupMenuCursor(PartyMenuApplication *application)
{
    u8 x, y;
    GridMenuCursor_CheckNavigation(application->cursorPosTable, &x, &y, NULL, NULL, application->currPartySlot, GRID_MENU_CURSOR_POSITION_DIRECTION_NONE);
    Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], PartyMenu_GetMemberPanelAnim(application->partyMenu->type, application->currPartySlot));
    Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], x, y);
}

static const u8 Unk_020F1BD4[][6] = {
    { 0x0, 0x2, 0x4, 0x1, 0x3, 0x5 },
    { 0x1, 0x3, 0x5, 0x0, 0x2, 0x4 },
    { 0x4, 0x2, 0x0, 0x5, 0x3, 0x1 },
    { 0x5, 0x3, 0x1, 0x4, 0x2, 0x0 }
};

static u8 PartyMenu_HandleNavigationAndTouchScreen(PartyMenuApplication *application)
{
    if (PartyMenu_TryHandleDirectionPadInput(application) == TRUE) {
        return PARTY_MENU_INPUT_DIRECTION_PAD;
    }

    if (PartyMenu_TryHandleTouchScreenButtons(application) == TRUE) {
        return PARTY_MENU_INPUT_TOUCH_SCREEN;
    }

    return PARTY_MENU_INPUT_NONE;
}

static u8 PartyMenu_TryHandleDirectionPadInput(PartyMenuApplication *application)
{
    u8 v0;
    u8 v1;
    u8 v2, v3;

    v1 = GRID_MENU_CURSOR_POSITION_DIRECTION_NONE;

    if (JOY_REPEAT(PAD_KEY_UP)) {
        v1 = GRID_MENU_CURSOR_POSITION_DIRECTION_UP;
    } else if (JOY_REPEAT(PAD_KEY_DOWN)) {
        v1 = GRID_MENU_CURSOR_POSITION_DIRECTION_DOWN;
    } else if (JOY_REPEAT(PAD_KEY_LEFT)) {
        v1 = GRID_MENU_CURSOR_POSITION_DIRECTION_LEFT;
    } else if (JOY_REPEAT(PAD_KEY_RIGHT)) {
        v1 = GRID_MENU_CURSOR_POSITION_DIRECTION_RIGHT;
    }

    if (v1 == GRID_MENU_CURSOR_POSITION_DIRECTION_NONE) {
        return FALSE;
    }

    v0 = application->currPartySlot;

    if (v0 == 6) {
        if (v1 == GRID_MENU_CURSOR_POSITION_DIRECTION_UP) {
            v0 = sub_0207FC30(application, &v2, &v3, Unk_020F1BD4[2 + (application->prevPartySlot & 1)]);
        } else {
            v0 = sub_0207FBE0(application, &v2, &v3, v1);
        }
    } else if (v0 == 7) {
        if (application->partyMenu->mode != PARTY_MENU_MODE_SELECT_CONFIRM
            && application->partyMenu->mode != PARTY_MENU_MODE_BATTLE_TOWER
            && application->partyMenu->mode != PARTY_MENU_MODE_BATTLE_CASTLE
            && application->partyMenu->mode != PARTY_MENU_MODE_BATTLE_HALL
            && v1 == 0) {
            v0 = sub_0207FC30(application, &v2, &v3, Unk_020F1BD4[2 + (application->prevPartySlot & 1)]);
        } else if (v1 == 1) {
            v0 = sub_0207FC30(application, &v2, &v3, Unk_020F1BD4[(application->prevPartySlot & 1)]);
        } else {
            v0 = sub_0207FBE0(application, &v2, &v3, v1);
        }
    } else {
        v0 = sub_0207FBE0(application, &v2, &v3, v1);
    }

    if ((v0 != application->currPartySlot) && (v0 != 0xff)) {
        if ((v0 == 6) || (v0 == 7)) {
            Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], FALSE);
        } else {
            Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], PartyMenu_GetMemberPanelAnim(application->partyMenu->type, v0));
            Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);
            Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], v2, v3);
        }

        {
            u8 v4 = application->currPartySlot;
            application->currPartySlot = v0;

            InitAnimAndPaletteForSlot(application, v4, FALSE);
            InitAnimAndPaletteForSlot(application, application->currPartySlot, TRUE);
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (v4 < 6) {
                DrawMemberTouchScreenButton(application, v4, 0);
                Bg_ScheduleTilemapTransfer(application->bgConfig, 4);
            }

            if ((v4 != 6) && (v4 != 7)) {
                application->prevPartySlot = v4;
            }
        }

        return TRUE;
    }

    return FALSE;
}

static u8 sub_0207FBE0(PartyMenuApplication *application, u8 *param1, u8 *param2, u8 param3)
{
    u8 v0 = application->currPartySlot;

    while (TRUE) {
        v0 = GridMenuCursor_CheckNavigation(application->cursorPosTable, param1, param2, NULL, NULL, v0, param3);

        if ((v0 == 6) || (v0 == 7) || (v0 == 0xff)) {
            break;
        }

        if (sub_0207EF04(application, v0) != 0) {
            break;
        }
    }

    return v0;
}

static u8 sub_0207FC30(PartyMenuApplication *application, u8 *param1, u8 *param2, const u8 *param3)
{
    u8 v0 = 0;

    while (TRUE) {
        if (v0 == 6) {
            break;
        }

        if (sub_0207EF04(application, param3[v0]) != 0) {
            GridMenuCursor_CheckNavigation(application->cursorPosTable, param1, param2, NULL, NULL, param3[v0], GRID_MENU_CURSOR_POSITION_DIRECTION_NONE);
            return param3[v0];
        }

        v0++;
    }

    GridMenuCursor_CheckNavigation(application->cursorPosTable, param1, param2, NULL, NULL, 0, GRID_MENU_CURSOR_POSITION_DIRECTION_NONE);
    return 0;
}

static u8 PartyMenu_TryHandleTouchScreenButtons(PartyMenuApplication *application)
{
    int partySlot = PartyMenu_GetTouchScreenPartyBallPressed(application);

    if (partySlot != TOUCHSCREEN_INPUT_NONE) {
        u8 x, y;

        u8 prevPartySlot = application->currPartySlot;
        application->currPartySlot = (u8)partySlot;

        InitAnimAndPaletteForSlot(application, prevPartySlot, FALSE);
        InitAnimAndPaletteForSlot(application, application->currPartySlot, TRUE);

        if (prevPartySlot < MAX_PARTY_SIZE) {
            DrawMemberTouchScreenButton(application, prevPartySlot, 0);
        }

        GridMenuCursor_CheckNavigation(application->cursorPosTable, &x, &y, NULL, NULL, application->currPartySlot, GRID_MENU_CURSOR_POSITION_DIRECTION_NONE);
        Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], PartyMenu_GetMemberPanelAnim(application->partyMenu->type, application->currPartySlot));
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);
        Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], x, y);

        application->unk_B0C = 1;
        application->unk_B0D = application->currPartySlot;

        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);

        if ((prevPartySlot != 6) && (prevPartySlot != 7)) {
            application->prevPartySlot = prevPartySlot;
        }

        return TRUE;
    }

    return FALSE;
}

void sub_0207FD68(PartyMenuApplication *application, u8 partySlot)
{
    if ((partySlot == 6) || (partySlot == 7)) {
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], FALSE);
    } else {
        u8 v0, v1;

        GridMenuCursor_CheckNavigation(application->cursorPosTable, &v0, &v1, NULL, NULL, application->currPartySlot, GRID_MENU_CURSOR_POSITION_DIRECTION_NONE);
        Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], PartyMenu_GetMemberPanelAnim(application->partyMenu->type, partySlot));
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);
        Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], v0, v1);
    }

    {
        u8 v2 = application->currPartySlot;
        application->currPartySlot = partySlot;

        InitAnimAndPaletteForSlot(application, v2, FALSE);
        InitAnimAndPaletteForSlot(application, application->currPartySlot, TRUE);

        if (v2 < 6) {
            DrawMemberTouchScreenButton(application, v2, 0);
            Bg_ScheduleTilemapTransfer(application->bgConfig, 4);
        }
    }
}

static void sub_0207FE1C(PartyMenuApplication *application)
{
    switch (application->unk_B0C) {
    case 0:
        break;
    case 1:

    {
        s16 v0, v1;

        CalculateWindowPosition(application->unk_B0D, &v0, &v1);
        PartyMenu_InitTouchButtonEffect(application, v0, v1);
    }
        DrawMemberTouchScreenButton(application, application->unk_B0D, 2);
        Bg_ScheduleTilemapTransfer(application->bgConfig, 4);
        application->unk_B0C++;
        break;
    case 2:
        DrawMemberTouchScreenButton(application, application->unk_B0D, 1);
        Bg_ScheduleTilemapTransfer(application->bgConfig, 4);
        application->unk_B0C = 0;
        break;
    }
}

static u8 PartyMenu_HandleInput(PartyMenuApplication *application)
{
    if (JOY_NEW(PAD_BUTTON_A)) {
        if (application->currPartySlot == 6) {
            return PARTY_MENU_INPUT_4;
        } else if (application->currPartySlot == 7) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (application->hideCancel == FALSE) {
                return PARTY_MENU_INPUT_CANCEL;
            }
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_NO_PROMPT || application->partyMenu->mode == PARTY_MENU_MODE_NPC_TRADE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            return PARTY_MENU_INPUT_CONFIRM;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_FEED_POFFIN || application->partyMenu->mode == PARTY_MENU_MODE_MAILBOX) {
            if (application->partyMembers[application->currPartySlot].isEgg == FALSE) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                return PARTY_MENU_INPUT_CONFIRM;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                return PARTY_MENU_INPUT_NONE;
            }
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_BALL_SEAL) {
            if (application->partyMembers[application->currPartySlot].isEgg == FALSE) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                sub_0207FFC8(application);
                return PARTY_MENU_INPUT_CONFIRM;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                return PARTY_MENU_INPUT_NONE;
            }
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_0207FFC8(application);
            return PARTY_MENU_INPUT_CONFIRM;
        } else {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_0207FFC8(application);
            return PARTY_MENU_INPUT_CONFIRM;
        }
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        if (application->hideCancel == FALSE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            application->currPartySlot = 7;
            return PARTY_MENU_INPUT_CANCEL;
        }
    }

    u8 menuInput = PartyMenu_HandleNavigationAndTouchScreen(application);

    if (menuInput == PARTY_MENU_INPUT_TOUCH_SCREEN) {
        if (application->partyMenu->mode == PARTY_MENU_MODE_FEED_POFFIN
            || application->partyMenu->mode == PARTY_MENU_MODE_MAILBOX
            || application->partyMenu->mode == PARTY_MENU_MODE_BALL_SEAL) {
            if (application->partyMembers[application->currPartySlot].isEgg != FALSE) {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                return PARTY_MENU_INPUT_NONE;
            }
        }
    }

    return menuInput;
}

static void sub_0207FFC8(PartyMenuApplication *application)
{
    u8 *v0;
    u8 v1;

    Window_EraseMessageBox(&application->windows[32], 1);
    v0 = Heap_Alloc(HEAP_ID_PARTY_MENU, 8);

    switch (application->partyMenu->mode) {
    case PARTY_MENU_MODE_FIELD:
        v1 = GetContextMenuEntriesForPartyMon(application, v0);
        break;
    case PARTY_MENU_MODE_SELECT_CONFIRM:
    case PARTY_MENU_MODE_BATTLE_TOWER:
        v1 = sub_0208022C(application, v0);
        break;
    case PARTY_MENU_MODE_BALL_SEAL:
        v1 = sub_020801AC(application, v0);
        break;
    case PARTY_MENU_MODE_DAYCARE:
        v1 = sub_020801B8(application, v0);
        break;
    case PARTY_MENU_MODE_SELECT_EGG:
        v1 = sub_0208031C(application, v0);
        break;
    case PARTY_MENU_MODE_BATTLE_HALL:
        v1 = sub_0208027C(application, v0);
        break;
    case PARTY_MENU_MODE_BATTLE_CASTLE:
        v1 = sub_020802CC(application, v0);
        break;
    default:
        v1 = sub_020801F0(application, v0);
    }

    PartyMenu_DrawContextMenu(application, v0, v1);
    Heap_FreeExplicit(HEAP_ID_PARTY_MENU, v0);
    PartyMenu_LoadContextMenuPrompt(application);
    PartyMenu_PrintMediumMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);
}

static u8 GetContextMenuEntriesForPartyMon(PartyMenuApplication *application, u8 *menuEntriesBuffer)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    u16 move;
    u8 fieldMoveIndex = 0, i, count = 0, fieldEffect;

    menuEntriesBuffer[count] = 1;
    count++;

    if (FieldSystem_IsInBattleTowerSalon(application->partyMenu->fieldSystem) == FALSE) {
        if (application->partyMembers[application->currPartySlot].isEgg == FALSE) {
            for (i = 0; i < 4; i++) {
                move = (u16)Pokemon_GetValue(mon, MON_DATA_MOVE1 + i, NULL);

                if (move == 0) {
                    break;
                }

                fieldEffect = GetFieldMoveIndex(move);

                if (fieldEffect != 0xff) {
                    menuEntriesBuffer[count] = fieldEffect;
                    count++;
                    PartyMenu_SetKnownFieldMove(application, move, fieldMoveIndex);
                    fieldMoveIndex++;
                }
            }

            menuEntriesBuffer[count] = 0;
            count++;

            if (Item_IsMail(application->partyMembers[application->currPartySlot].heldItem) == TRUE) {
                menuEntriesBuffer[count] = 5;
            } else {
                menuEntriesBuffer[count] = 2;
            }

            count++;
        } else {
            menuEntriesBuffer[count] = 0;
            count++;
        }
    }

    menuEntriesBuffer[count] = 9;
    count++;

    return count;
}

static u8 sub_020801AC(PartyMenuApplication *application, u8 *param1)
{
    param1[0] = 14;
    param1[1] = 9;

    return 2;
}

static u8 sub_020801B8(PartyMenuApplication *application, u8 *param1)
{
    if (application->partyMembers[application->currPartySlot].isEgg == FALSE) {
        param1[0] = 8;
        param1[1] = 1;
        param1[2] = 9;

        return 3;
    }

    param1[0] = 1;
    param1[1] = 9;

    return 2;
}

static u8 sub_020801F0(PartyMenuApplication *application, u8 *param1)
{
    if (application->partyMembers[application->currPartySlot].isContestEligible == TRUE) {
        param1[0] = 13;
        param1[1] = 1;
        param1[2] = 9;

        return 3;
    }

    param1[0] = 1;
    param1[1] = 9;

    return 2;
}

static u8 sub_0208022C(PartyMenuApplication *application, u8 *param1)
{
    switch (PartyMenu_CheckEligibility(application, application->currPartySlot)) {
    case 0:
        param1[0] = 1;
        param1[1] = 9;
        return 2;
    case 1:
        param1[0] = 11;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    case 2:
        param1[0] = 12;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    }

    return 0;
}

static u8 sub_0208027C(PartyMenuApplication *application, u8 *param1)
{
    switch (PartyMenu_CheckBattleHallEligibility(application, application->currPartySlot)) {
    case 0:
        param1[0] = 1;
        param1[1] = 9;
        return 2;
    case 1:
        param1[0] = 11;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    case 2:
        param1[0] = 12;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    }

    return 0;
}

static u8 sub_020802CC(PartyMenuApplication *application, u8 *param1)
{
    switch (PartyMenu_CheckBattleCastleEligibility(application, application->currPartySlot)) {
    case 0:
        param1[0] = 1;
        param1[1] = 9;
        return 2;
    case 1:
        param1[0] = 11;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    case 2:
        param1[0] = 12;
        param1[1] = 1;
        param1[2] = 9;
        return 3;
    }

    return 0;
}

static u8 sub_0208031C(PartyMenuApplication *application, u8 *param1)
{
    if (application->partyMembers[application->currPartySlot].isEgg == TRUE) {
        param1[0] = 1;
        param1[1] = 15;
        param1[2] = 9;
        return 3;
    }

    param1[0] = 1;
    param1[1] = 9;

    return 2;
}

u8 PartyMenu_CheckEligibility(PartyMenuApplication *application, u8 partySlot)
{
    if (application->partyMenu->battleRegulation != NULL) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, partySlot);
        if (BattleRegulation_ValidatePokemon(application->partyMenu->battleRegulation, mon, application->heightWeight) == FALSE) {
            return PARTY_MENU_SELECTION_INELIGIBLE;
        }
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER
        && Pokemon_IsOnBattleFrontierBanlist(application->partyMembers[partySlot].species) == TRUE) {
        return PARTY_MENU_SELECTION_INELIGIBLE;
    }

    for (u8 selectionSlot = 0; selectionSlot < application->partyMenu->maxSelectionSlots; selectionSlot++) {
        if (application->partyMenu->selectionOrder[selectionSlot] == partySlot + 1) {
            return PARTY_MENU_SELECTION_ENTERED;
        }
    }

    if (application->partyMembers[partySlot].isEgg == TRUE || application->partyMembers[partySlot].level > application->partyMenu->reqLevel) {
        return PARTY_MENU_SELECTION_INELIGIBLE;
    }

    return PARTY_MENU_SELECTION_ELIGIBLE;
}

u8 PartyMenu_CheckBattleHallEligibility(PartyMenuApplication *application, u8 slot)
{
    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL
        && Pokemon_IsOnBattleFrontierBanlist(application->partyMembers[slot].species) == TRUE) {
        return PARTY_MENU_SELECTION_INELIGIBLE;
    }

    for (u8 selectionSlot = 0; selectionSlot < application->partyMenu->maxSelectionSlots; selectionSlot++) {
        if (application->partyMenu->selectionOrder[selectionSlot] == slot + 1) {
            return PARTY_MENU_SELECTION_ENTERED;
        }
    }

    if (application->partyMembers[slot].isEgg == TRUE || application->partyMembers[slot].level < application->partyMenu->reqLevel) {
        return PARTY_MENU_SELECTION_INELIGIBLE;
    }

    return PARTY_MENU_SELECTION_ELIGIBLE;
}

u8 PartyMenu_CheckBattleCastleEligibility(PartyMenuApplication *application, u8 partySlot)
{
    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE
        && Pokemon_IsOnBattleFrontierBanlist(application->partyMembers[partySlot].species) == TRUE) {
        return PARTY_MENU_SELECTION_INELIGIBLE;
    }

    for (u8 selectionSlot = 0; selectionSlot < application->partyMenu->maxSelectionSlots; selectionSlot++) {
        if (application->partyMenu->selectionOrder[selectionSlot] == partySlot + 1) {
            return PARTY_MENU_SELECTION_ENTERED;
        }
    }

    if (application->partyMembers[partySlot].isEgg == TRUE) {
        return PARTY_MENU_SELECTION_INELIGIBLE;
    }

    return PARTY_MENU_SELECTION_ELIGIBLE;
}

static void InitAnimAndPaletteForSlot(PartyMenuApplication *application, u8 slot, u8 isSelected)
{
    if (slot == 6) {
        u8 anim = Sprite_GetActiveAnim(application->sprites[PARTY_MENU_SPRITE_CONFIRM_BUTTON]);
        if (isSelected == FALSE) {
            anim = (anim & 2);
        } else {
            anim = (anim & 2) + 1;
        }

        Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CONFIRM_BUTTON], anim);
        return;
    }

    if (slot == 7) {
        u8 anim = Sprite_GetActiveAnim(application->sprites[PARTY_MENU_SPRITE_CANCEL_BUTTON]);
        if (isSelected == FALSE) {
            anim = (anim & 2);
        } else {
            anim = (anim & 2) + 1;
        }

        Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CANCEL_BUTTON], anim);
        return;
    }

    if (isSelected == FALSE) {
        application->partyMembers[slot].spriteXDelta -= 2;
        application->partyMembers[slot].spriteYDelta -= 2;

        Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_POKE_BALL_MEMB0 + slot], 0);
    } else {
        application->partyMembers[slot].spriteXDelta += 2;
        application->partyMembers[slot].spriteYDelta += 2;

        Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_POKE_BALL_MEMB0 + slot], 1);
    }

    PartyMenu_UpdateSlotPalette(application, slot);
}

u8 PartyMenu_GetMemberPanelAnim(u8 menuType, u8 slot)
{
    // The lead slot gets a special panel aesthetic.
    if (slot == 0 || (menuType != PARTY_MENU_TYPE_BASIC && slot == 1)) {
        return 1;
    }

    return 0;
}

static u8 sub_020805E4(PartyMenuApplication *application)
{
    if (JOY_NEW(PAD_BUTTON_A)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if (application->currPartySlot >= MAX_PARTY_SIZE || application->currPartySlot == application->selectTargetSlot) {
            PartyMenu_ResetCursor(application);
            return PARTY_MENU_INPUT_CANCEL;
        } else {
            sub_02083BD4(application);
            return PARTY_MENU_INPUT_CONFIRM;
        }
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        PartyMenu_ResetCursor(application);
        return PARTY_MENU_INPUT_CANCEL;
    }

    u8 menuInput = PartyMenu_HandleNavigationAndTouchScreen(application);

    if (menuInput == PARTY_MENU_INPUT_TOUCH_SCREEN) {
        if (application->currPartySlot == application->selectTargetSlot) {
            PartyMenu_ResetCursor(application);
            return PARTY_MENU_INPUT_CANCEL;
        } else {
            sub_02083BD4(application);
            return PARTY_MENU_INPUT_CONFIRM;
        }
    }

    return menuInput;
}

static int HandleGameWindowEvent(PartyMenuApplication *application)
{
    u8 v0;

    for (v0 = 0; v0 < application->partyMenu->minSelectionSlots; v0++) {
        if (application->partyMenu->selectionOrder[v0] == 0) {
            switch (application->partyMenu->maxSelectionSlots) {
            case 2:
                PartyMenu_PrintLongMessage(application, PartyMenu_Text_TwoMonAreNeeded, TRUE);
                break;
            case 3:
                PartyMenu_PrintLongMessage(application, PartyMenu_Text_ThreeMonAreNeeded, TRUE);
                break;
            case 4:
                PartyMenu_PrintLongMessage(application, PartyMenu_Text_FourMonAreNeeded, TRUE);
                break;
            case 5:
                PartyMenu_PrintLongMessage(application, PartyMenu_Text_FiveMonAreNeeded, TRUE);
                break;
            case 6:
                PartyMenu_PrintLongMessage(application, PartyMenu_Text_SixMonAreNeeded, TRUE);
                break;
            default:
                PartyMenu_PrintLongMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
                break;
            }

            application->stateAfterMessage = PARTY_MENU_STATE_23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
        }
    }

    if (application->partyMenu->battleRegulation != NULL) {
        switch (BattleRegulation_ValidatePartySelection(application->partyMenu->battleRegulation, application->partyMenu->party, application->heightWeight, application->partyMenu->selectionOrder)) {
        case BATTLE_REGULATION_VALIDATION_SUCCESS:
            break;

        case BATTLE_REGULATION_VALIDATION_ERROR_TOTAL_LEVEL_EXCEEDED: {
            String *v1;
            int v2;

            v1 = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_TotalPartyLevelOverLimit);
            v2 = BattleRegulation_GetRuleValue(application->partyMenu->battleRegulation, BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL);

            StringTemplate_SetNumber(application->template, 0, v2, 3, 0, 1);
            StringTemplate_Format(application->template, application->tmpString, v1);
            String_Free(v1);
        }
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
            application->stateAfterMessage = PARTY_MENU_STATE_23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
        case BATTLE_REGULATION_VALIDATION_ERROR_DUPLICATE_SPECIES:
            PartyMenu_PrintLongMessage(application, PartyMenu_Text_IdenticalMonNotPermitted, TRUE);
            application->stateAfterMessage = PARTY_MENU_STATE_23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
        case BATTLE_REGULATION_VALIDATION_ERROR_DUPLICATE_ITEMS:
            PartyMenu_PrintLongMessage(application, PartyMenu_Text_SomeMonHoldingIdenticalItems, TRUE);
            application->stateAfterMessage = PARTY_MENU_STATE_23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
        }
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER) {
        switch (CheckDuplicateValues(application)) {
        case 0:
            break;
        case 1:
            PartyMenu_PrintLongMessage(application, PartyMenu_Text_IdenticalMonNotPermitted, TRUE);
            application->stateAfterMessage = PARTY_MENU_STATE_23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
        case 2:
            PartyMenu_PrintLongMessage(application, PartyMenu_Text_SomeMonHoldingIdenticalItems, TRUE);
            application->stateAfterMessage = PARTY_MENU_STATE_23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
        }
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        switch (CheckUniqueValues(application)) {
        case 0:
            break;
        case 1:
            PartyMenu_PrintLongMessage(application, PartyMenu_Text_MustUseSameKindOfMon, TRUE);
            application->stateAfterMessage = PARTY_MENU_STATE_23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
        }
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE) {
        switch (CheckEqualityInArray(application)) {
        case 0:
            break;
        case 1:
            PartyMenu_PrintLongMessage(application, PartyMenu_Text_IdenticalMonNotPermitted, TRUE);
            application->stateAfterMessage = PARTY_MENU_STATE_23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
        }
    }

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
    Sound_PlayEffect(SEQ_SE_CONFIRM);
    return PARTY_MENU_STATE_32;
}

static u8 CheckDuplicateValues(PartyMenuApplication *application)
{
    u8 v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        if (application->partyMenu->selectionOrder[v0] == 0) {
            break;
        }

        for (v1 = v0 + 1; v1 < 6; v1++) {
            if (application->partyMenu->selectionOrder[v1] == 0) {
                break;
            }

            if (application->partyMembers[application->partyMenu->selectionOrder[v0] - 1].species == application->partyMembers[application->partyMenu->selectionOrder[v1] - 1].species) {
                return 1;
            }

            if ((application->partyMembers[application->partyMenu->selectionOrder[v0] - 1].heldItem != ITEM_NONE) && (application->partyMembers[application->partyMenu->selectionOrder[v0] - 1].heldItem == application->partyMembers[application->partyMenu->selectionOrder[v1] - 1].heldItem)) {
                return 2;
            }
        }
    }

    return 0;
}

static u8 CheckUniqueValues(PartyMenuApplication *application)
{
    u8 v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        if (application->partyMenu->selectionOrder[v0] == 0) {
            break;
        }

        for (v1 = v0 + 1; v1 < 6; v1++) {
            if (application->partyMenu->selectionOrder[v1] == 0) {
                break;
            }

            if (application->partyMembers[application->partyMenu->selectionOrder[v0] - 1].species != application->partyMembers[application->partyMenu->selectionOrder[v1] - 1].species) {
                return 1;
            }
        }
    }

    return 0;
}

static u8 CheckEqualityInArray(PartyMenuApplication *application)
{
    u8 v0, v1;

    for (v0 = 0; v0 < 5; v0++) {
        if (application->partyMenu->selectionOrder[v0] == 0) {
            break;
        }

        for (v1 = v0 + 1; v1 < 6; v1++) {
            if (application->partyMenu->selectionOrder[v1] == 0) {
                break;
            }

            if (application->partyMembers[application->partyMenu->selectionOrder[v0] - 1].species == application->partyMembers[application->partyMenu->selectionOrder[v1] - 1].species) {
                return 1;
            }
        }
    }

    return 0;
}

// clang-format off
static const u8 sTouchScreenButtonCoords[6][2] = {
    {  1,  3 },
    { 26,  3 },
    {  1, 10 },
    { 26, 10 },
    {  1, 17 },
    { 26, 17 },
};
// clang-format on

#define MON_BALL_BUTTON_TOP_ROW_TOP_BOUND       24
#define MON_BALL_BUTTON_TOP_ROW_BOTTOM_BOUND    63
#define MON_BALL_BUTTON_MIDDLE_ROW_TOP_BOUND    80
#define MON_BALL_BUTTON_MIDDLE_ROW_BOTTOM_BOUND 119
#define MON_BALL_BUTTON_BOTTOM_ROW_TOP_BOUND    136
#define MON_BALL_BUTTON_BOTTOM_ROW_BOTTOM_BOUND 175

#define MON_BALL_BUTTON_LEFT_COL_LEFT_BOUND   8
#define MON_BALL_BUTTON_LEFT_COL_RIGHT_BOUND  47
#define MON_BALL_BUTTON_RIGHT_COL_LEFT_BOUND  208
#define MON_BALL_BUTTON_RIGHT_COL_RIGHT_BOUND 247

static const TouchScreenRect TouchScreenPartyBalls[] = {
    {
        .rect = {
            .top = MON_BALL_BUTTON_TOP_ROW_TOP_BOUND,
            .bottom = MON_BALL_BUTTON_TOP_ROW_BOTTOM_BOUND,
            .left = MON_BALL_BUTTON_LEFT_COL_LEFT_BOUND,
            .right = MON_BALL_BUTTON_LEFT_COL_RIGHT_BOUND,
        },
    },
    {
        .rect = {
            .top = MON_BALL_BUTTON_TOP_ROW_TOP_BOUND,
            .bottom = MON_BALL_BUTTON_TOP_ROW_BOTTOM_BOUND,
            .left = MON_BALL_BUTTON_RIGHT_COL_LEFT_BOUND,
            .right = MON_BALL_BUTTON_RIGHT_COL_RIGHT_BOUND,
        },
    },
    {
        .rect = {
            .top = MON_BALL_BUTTON_MIDDLE_ROW_TOP_BOUND,
            .bottom = MON_BALL_BUTTON_MIDDLE_ROW_BOTTOM_BOUND,
            .left = MON_BALL_BUTTON_LEFT_COL_LEFT_BOUND,
            .right = MON_BALL_BUTTON_LEFT_COL_RIGHT_BOUND,
        },
    },
    {
        .rect = {
            .top = MON_BALL_BUTTON_MIDDLE_ROW_TOP_BOUND,
            .bottom = MON_BALL_BUTTON_MIDDLE_ROW_BOTTOM_BOUND,
            .left = MON_BALL_BUTTON_RIGHT_COL_LEFT_BOUND,
            .right = MON_BALL_BUTTON_RIGHT_COL_RIGHT_BOUND,
        },
    },
    {
        .rect = {
            .top = MON_BALL_BUTTON_BOTTOM_ROW_TOP_BOUND,
            .bottom = MON_BALL_BUTTON_BOTTOM_ROW_BOTTOM_BOUND,
            .left = MON_BALL_BUTTON_LEFT_COL_LEFT_BOUND,
            .right = MON_BALL_BUTTON_LEFT_COL_RIGHT_BOUND,
        },
    },
    {
        .rect = {
            .top = MON_BALL_BUTTON_BOTTOM_ROW_TOP_BOUND,
            .bottom = MON_BALL_BUTTON_BOTTOM_ROW_BOTTOM_BOUND,
            .left = MON_BALL_BUTTON_RIGHT_COL_LEFT_BOUND,
            .right = MON_BALL_BUTTON_RIGHT_COL_RIGHT_BOUND,
        },
    },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 },
};

#define TOUCH_BUTTON_TILE_WIDTH  5
#define TOUCH_BUTTON_TILE_HEIGHT 5

static void DrawMemberTouchScreenButton(PartyMenuApplication *application, u8 slot, u8 anim)
{
    u16 *tilemap;
    u16 baseTile;
    u8 x, y;
    u8 dy, dx;

    tilemap = Bg_GetTilemapBuffer(application->bgConfig, BG_LAYER_SUB_0);
    baseTile = 5 + TILEMAP_PALETTE_SHIFT(1) + TOUCH_BUTTON_TILE_WIDTH * TOUCH_BUTTON_TILE_HEIGHT * anim;
    x = sTouchScreenButtonCoords[slot][0];
    y = sTouchScreenButtonCoords[slot][1];

    for (dy = 0; dy < TOUCH_BUTTON_TILE_HEIGHT; dy++) {
        for (dx = 0; dx < TOUCH_BUTTON_TILE_WIDTH; dx++) {
            tilemap[(y + dy) * TILE_SIZE_4BPP + x + dx] = dy * TOUCH_BUTTON_TILE_WIDTH + dx + baseTile;
        }
    }
}

#undef TOUCH_BUTTON_TILE_HEIGHT
#undef TOUCH_BUTTON_TILE_WIDTH

static void CalculateWindowPosition(u8 application, s16 *param1, s16 *param2)
{
    *param1 = sTouchScreenButtonCoords[application][0] * 8 + ((5 * 8) >> 1);
    *param2 = sTouchScreenButtonCoords[application][1] * 8 + ((5 * 8) >> 1);
}

static int PartyMenu_GetTouchScreenPartyBallPressed(PartyMenuApplication *application)
{
    int partySlot;

    if (ShouldShowSubscreen(application) == FALSE) {
        return TOUCHSCREEN_INPUT_NONE;
    }

    partySlot = TouchScreen_CheckRectanglePressed(TouchScreenPartyBalls);

    if (partySlot != TOUCHSCREEN_INPUT_NONE) {
        u16 background = 0xfffe;

        if (Bg_DoesPixelAtXYMatchVal(application->bgConfig, 4, gSystem.touchX, gSystem.touchY, &background) == FALSE) {
            return TOUCHSCREEN_INPUT_NONE;
        }
    }

    return partySlot;
}

static u8 HandleWindowInputEvent(PartyMenuApplication *application, int *partyMenuState)
{
    u32 v0 = Menu_ProcessInput(application->contextMenu);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        Window_EraseMessageBox(&application->windows[33], 1);
        PartyMenu_ClearContextWindow(application);

        if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM
            || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER
            || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE
            || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
            PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseMonAndConfirm, TRUE);
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
            PartyMenu_PrintShortMessage(application, PartyMenu_Text_SelectEgg, TRUE);
        } else {
            PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
        }

        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return TRUE;
    default: {
        PartyMenuAction v1 = (PartyMenuAction)v0;
        v1(application, partyMenuState);
    }
    }

    return FALSE;
}

u8 GetFieldMoveIndex(u16 moveID)
{
    for (u8 i = 0; i < NELEMS(sFieldMoves); i++) {
        if (moveID == sFieldMoves[i]) {
            return i + PARTY_MENU_STR_MOVE0;
        }
    }

    return 0xff;
}

enum FieldMoveTransferHPTarget {
    HP_TRANSFER_VALID_TARGET,
    HP_TRANSFER_INVALID_TARGET,
    HP_TRANSFER_EGG_TARGET
};

static int PartyMenu_UseHPTransferFieldMove(PartyMenuApplication *application)
{
    switch (application->monHpTransfer[HP_TRANSFER_STATE]) {
    case HP_TRANSFER_STATE_HANDLE_INPUT:
        if (JOY_NEW(PAD_BUTTON_A)) {
            if (application->currPartySlot >= MAX_PARTY_SIZE) { // cancel button
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                PartyMenu_ResetCursor(application);
                return PARTY_MENU_STATE_DEFAULT;
            } else {
                switch (CheckCanUseHPTransferFieldMove(application)) {
                case HP_TRANSFER_VALID_TARGET:
                    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
                    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);

                    if (application->partyMembers[application->currPartySlot].maxHP - application->partyMembers[application->currPartySlot].curHP < application->monHpTransfer[HP_TRANSFER_HP_BUFFER]) {
                        application->monHpTransfer[HP_TRANSFER_HP_BUFFER] = application->partyMembers[application->currPartySlot].maxHP - application->partyMembers[application->currPartySlot].curHP;
                    }

                    application->monHpTransfer[HP_TRANSFER_STATE] = HP_TRANSFER_STATE_DONATE_HP;
                    application->monHpTransfer[HP_TRANSFER_COUNTER] = 0;
                    break;
                case HP_TRANSFER_INVALID_TARGET:
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    application->monHpTransfer[HP_TRANSFER_STATE] = HP_TRANSFER_STATE_SELECT_TARGET;
                    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
                case HP_TRANSFER_EGG_TARGET:
                    Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                    return PARTY_MENU_STATE_HP_TRANSFER_FIELD_MOVE;
                }
            }
        }

        if (JOY_NEW(PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            PartyMenu_ResetCursor(application);
            return PARTY_MENU_STATE_DEFAULT;
        }

        if (PartyMenu_HandleNavigationAndTouchScreen(application) == PARTY_MENU_INPUT_TOUCH_SCREEN) {
            if (application->currPartySlot == application->selectTargetSlot) {
                PartyMenu_ResetCursor(application);
                return PARTY_MENU_STATE_DEFAULT;
            } else {
                switch (CheckCanUseHPTransferFieldMove(application)) {
                case HP_TRANSFER_VALID_TARGET:
                    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
                    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);

                    if (application->partyMembers[application->currPartySlot].maxHP - application->partyMembers[application->currPartySlot].curHP < application->monHpTransfer[HP_TRANSFER_HP_BUFFER]) {
                        application->monHpTransfer[HP_TRANSFER_HP_BUFFER] = application->partyMembers[application->currPartySlot].maxHP - application->partyMembers[application->currPartySlot].curHP;
                    }

                    application->monHpTransfer[HP_TRANSFER_STATE] = HP_TRANSFER_STATE_DONATE_HP;
                    application->monHpTransfer[HP_TRANSFER_COUNTER] = 0;
                    break;
                case HP_TRANSFER_INVALID_TARGET:
                    application->monHpTransfer[HP_TRANSFER_STATE] = HP_TRANSFER_STATE_SELECT_TARGET;
                    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
                case HP_TRANSFER_EGG_TARGET:
                    Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                    return PARTY_MENU_STATE_HP_TRANSFER_FIELD_MOVE;
                }
            }
        }
        break;
    case HP_TRANSFER_STATE_SELECT_TARGET:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Window_EraseMessageBox(&application->windows[34], 1);
            Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
            PartyMenu_PrintShortMessage(application, PartyMenu_Text_UseOnWhichPokemon, TRUE);
            application->monHpTransfer[HP_TRANSFER_STATE] = HP_TRANSFER_STATE_HANDLE_INPUT;
        }
        break;
    case HP_TRANSFER_STATE_DONATE_HP:
        if (PartyMenu_HPTransferUpdateHP(application, application->selectTargetSlot, -1) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
            application->monHpTransfer[HP_TRANSFER_STATE] = HP_TRANSFER_STATE_RECEIVE_HP;
            application->monHpTransfer[HP_TRANSFER_COUNTER] = 0;
        }
        break;
    case HP_TRANSFER_STATE_RECEIVE_HP:
        if (PartyMenu_HPTransferUpdateHP(application, application->currPartySlot, 1) == TRUE) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
            String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_MonsHPWasRestored);

            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
            StringTemplate_SetNumber(application->template, 1, application->monHpTransfer[HP_TRANSFER_COUNTER], 3, 0, 1);
            StringTemplate_Format(application->template, application->tmpString, string);
            String_Free(string);
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

            void *journalEntryLocationEvent = JournalEntry_CreateEventUsedMove((u8)application->monHpTransfer[HP_TRANSFER_JOURNAL_MOVE_IDX], 0, HEAP_ID_PARTY_MENU);
            FieldSystem *fieldSystem = application->partyMenu->fieldSystem;
            JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            application->monHpTransfer[HP_TRANSFER_STATE] = HP_TRANSFER_STATE_CONFIRM_DONE;
            application->stateAfterMessage = PARTY_MENU_STATE_HP_TRANSFER_FIELD_MOVE;
            return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
        }
        break;
    case HP_TRANSFER_STATE_CONFIRM_DONE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Window_EraseMessageBox(&application->windows[34], 1);
            Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
            PartyMenu_ResetCursor(application);
            return PARTY_MENU_STATE_DEFAULT;
        }
        break;
    }

    return PARTY_MENU_STATE_HP_TRANSFER_FIELD_MOVE;
}

static u8 CheckCanUseHPTransferFieldMove(PartyMenuApplication *application)
{
    if (application->partyMembers[application->currPartySlot].isEgg != FALSE) {
        return HP_TRANSFER_EGG_TARGET;
    }

    if (application->currPartySlot == application->selectTargetSlot // can't use on itself
        || application->partyMembers[application->currPartySlot].curHP == 0 // can't use on fainted mon
        || application->partyMembers[application->currPartySlot].curHP == application->partyMembers[application->currPartySlot].maxHP) { // can't be used on full hp
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);
        PartyMenu_PrintLongMessage(application, PartyMenu_Text_ThisCantBeUsedOnThatPokemon, TRUE);

        application->monHpTransfer[HP_TRANSFER_STATE] = HP_TRANSFER_STATE_SELECT_TARGET;
        application->stateAfterMessage = PARTY_MENU_STATE_HP_TRANSFER_FIELD_MOVE;

        return HP_TRANSFER_INVALID_TARGET;
    }

    return HP_TRANSFER_VALID_TARGET;
}

static BOOL PartyMenu_HPTransferUpdateHP(PartyMenuApplication *application, u8 slot, s8 hpAmount)
{
    application->partyMembers[slot].curHP += hpAmount;
    application->monHpTransfer[HP_TRANSFER_COUNTER]++;

    PartyMenu_ClearMemberHP(application, slot);
    Window_FillTilemap(&application->windows[3 + slot * 5], 0);
    PartyMenu_PrintMemberCurrentHP(application, slot);
    PartyMenu_DrawMemberHealthbar(application, slot);

    if (application->monHpTransfer[HP_TRANSFER_HP_BUFFER] == application->monHpTransfer[HP_TRANSFER_COUNTER]
        || application->partyMembers[slot].curHP == application->partyMembers[slot].maxHP) {

        Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);
        u32 currentHP = application->partyMembers[slot].curHP;
        Pokemon_SetValue(mon, MON_DATA_HP, &currentHP);
        return TRUE;
    }

    return FALSE;
}

static u8 HandleSpecialInput(PartyMenuApplication *application)
{
    if (JOY_NEW(PAD_BUTTON_A)) {
        if (application->currPartySlot == 7) {
            if (application->hideCancel == 0) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                return PARTY_MENU_INPUT_CANCEL;
            }
        } else {
            if (application->partyMembers[application->currPartySlot].isEgg == FALSE) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                return PARTY_MENU_INPUT_CONFIRM;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            }
        }

        return PARTY_MENU_INPUT_NONE;
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        if (application->hideCancel == 0) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            application->currPartySlot = 7;
            return PARTY_MENU_INPUT_CANCEL;
        }

        return PARTY_MENU_INPUT_NONE;
    }

    u8 menuInput = PartyMenu_HandleNavigationAndTouchScreen(application);

    if (menuInput == PARTY_MENU_INPUT_TOUCH_SCREEN) {
        if (application->partyMembers[application->currPartySlot].isEgg != FALSE) {
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return PARTY_MENU_INPUT_NONE;
        }
    }

    return menuInput;
}

static int ApplyItemEffectOnPokemon(PartyMenuApplication *app)
{
    ItemData *itemData = Item_Load(app->partyMenu->usedItemID, 0, HEAP_ID_PARTY_MENU);

    if (app->partyMenu->usedItemID == ITEM_GRACIDEA
        && Pokemon_CanShayminSkyForm(Party_GetPokemonBySlotIndex(app->partyMenu->party, app->currPartySlot)) == TRUE) {
        app->partyMenu->evoTargetSpecies = 1;
        Heap_Free(itemData);
        PartyMenu_SetupFormChangeAnim(app);
        return 31;
    }

    if (Item_Get(itemData, ITEM_PARAM_PP_UP) != 0 || Item_Get(itemData, ITEM_PARAM_PP_MAX) != 0) {
        Heap_Free(itemData);
        sub_020866A0(app, 0);
        return 6;
    }

    if (Item_Get(itemData, ITEM_PARAM_PP_RESTORE) != 0 && Item_Get(itemData, ITEM_PARAM_PP_RESTORE_ALL) == 0) {
        Heap_Free(itemData);
        sub_020866A0(app, 1);
        return 6;
    }

    if (Party_CheckItemEffectsOnMember(app->partyMenu->party, app->partyMenu->usedItemID, app->currPartySlot, 0, HEAP_ID_PARTY_MENU) == 1) {
        Bag_TryRemoveItem(app->partyMenu->bag, app->partyMenu->usedItemID, 1, HEAP_ID_PARTY_MENU);

        if (Item_Get(itemData, ITEM_PARAM_EVOLVE) != 0) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(app->partyMenu->party, app->currPartySlot);

            app->partyMenu->evoTargetSpecies = Pokemon_GetEvolutionTargetSpecies(NULL, mon, EVO_CLASS_BY_ITEM, app->partyMenu->usedItemID, &app->partyMenu->evoType);
            app->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_EVOLVE_BY_ITEM;
            Heap_Free(itemData);
            return 32;
        }

        if ((Item_IsHerbalMedicine(app->partyMenu->usedItemID) == 1) && (app->partyMenu->broadcast != NULL)) {
            Pokemon *v2 = Party_GetPokemonBySlotIndex(app->partyMenu->party, app->currPartySlot);
            FieldSystem_SaveTVSegment_HerbalMedicineTrainerSightingDummy(app->partyMenu->broadcast, v2, app->partyMenu->usedItemID);
        }

        sub_020852B8(app);
    } else {
        PartyMenu_PrintLongMessage(app, PartyMenu_Text_ItWontHaveAnyEffect, TRUE);
        app->currPartySlot = 7;
        app->unk_B00 = sub_02085348;
    }

    Heap_Free(itemData);
    return 5;
}

static u8 CheckItemUsageValidity(PartyMenuApplication *application)
{
    if (application->partyMembers[application->currPartySlot].heldItem == 0) {
        return 0;
    } else if (Item_IsMail(application->partyMembers[application->currPartySlot].heldItem) == 1) {
        return 2;
    }

    return 1;
}

static int ProcessItemApplication(PartyMenuApplication *application)
{
    Pokemon *v0;
    Window *v1;
    int v2 = -1, v3;
    FieldSystem *fieldSystem;

    v0 = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    v1 = &application->windows[34];
    fieldSystem = application->partyMenu->fieldSystem;

    if (application->partyMenu->usedItemID == ITEM_GRISEOUS_ORB) {
        if (Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA) {
            MessageLoader_GetString(application->messageLoader, PartyMenu_Text_MonCannotHoldItem, application->tmpFormat);
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
            StringTemplate_SetItemNameWithArticle(application->template, 1, application->partyMenu->usedItemID);
            StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
            v2 = PARTY_MENU_STATE_CONFIRM_ITEM_UPDATE;
        } else if (fieldSystem != NULL) {
            if (fieldSystem->location->mapId == MAP_HEADER_UNION_ROOM) {
                MessageLoader_GetString(application->messageLoader, PartyMenu_Text_ItemCannotBeGivenHere, application->tmpFormat);
                StringTemplate_SetItemName(application->template, 0, application->partyMenu->usedItemID);
                StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
                v2 = PARTY_MENU_STATE_CONFIRM_ITEM_UPDATE;
            }
        }
    }

    if (v2 == -1) {
        switch (CheckItemUsageValidity(application)) {
        case 0:
            if (Item_IsMail(application->partyMenu->usedItemID) == TRUE) {
                application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_MAIL;
                return PARTY_MENU_STATE_32;
            }

            v2 = UpdatePokemonWithItem(application, v0, &v3);

            MessageLoader_GetString(application->messageLoader, PartyMenu_Text_MonWasGivenItem, application->tmpFormat);
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
            StringTemplate_SetItemName(application->template, 1, application->partyMenu->usedItemID);
            StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
            break;
        case 1:
            MessageLoader_GetString(application->messageLoader, PartyMenu_Text_MonAlreadyHoldingItemsSwitchItems, application->tmpFormat);
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
            StringTemplate_SetItemNameWithArticle(application->template, 1, application->partyMembers[application->currPartySlot].heldItem);
            StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
            v2 = PARTY_MENU_STATE_SHOW_ITEM_SWAP_CONFIRMATION;
            break;
        case 2:
            MessageLoader_GetString(application->messageLoader, PartyMenu_Text_MustRemoveMail, application->tmpString);
            v2 = PARTY_MENU_STATE_CONFIRM_ITEM_UPDATE;
            break;
        }
    }

    Window_DrawMessageBoxWithScrollCursor(v1, 1, 1 + 9, 15);
    Window_FillTilemap(v1, 15);
    PartyMenu_AddLongMessagePrinter(application);

    return v2;
}

static int UpdatePokemonWithItem(PartyMenuApplication *application, Pokemon *mon, int *param2)
{
    u32 item = application->partyMenu->usedItemID;
    FieldSystem *fieldSystem = application->partyMenu->fieldSystem;

    Bag_TryRemoveItem(application->partyMenu->bag, application->partyMenu->usedItemID, 1, HEAP_ID_PARTY_MENU);
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &item);
    Pokemon_SetArceusForm(mon);

    if (fieldSystem == NULL
        || fieldSystem->location->mapId < MAP_HEADER_DISTORTION_WORLD_1F
        || (fieldSystem->location->mapId > MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM)) {
        *param2 = Pokemon_SetGiratinaFormByHeldItem(mon);
    } else {
        *param2 = -1;
    }

    application->partyMembers[application->currPartySlot].heldItem = application->partyMenu->usedItemID;
    PartyMenu_DrawMemberHeldItem(application, application->currPartySlot, application->partyMembers[application->currPartySlot].heldItem);

    if (item == ITEM_GRISEOUS_ORB && ((*param2) != -1)) {
        return PARTY_MENU_STATE_12;
    }

    return PARTY_MENU_STATE_CONFIRM_ITEM_UPDATE;
}

static void SwapPokemonItem(PartyMenuApplication *application, Pokemon *mon, u32 oldItem, u32 newItem)
{
    Bag_TryAddItem(application->partyMenu->bag, (u16)oldItem, 1, HEAP_ID_PARTY_MENU);
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &newItem);
    Pokemon_SetArceusForm(mon);
    Pokemon_SetGiratinaFormByHeldItem(mon);
    application->partyMembers[application->currPartySlot].heldItem = (u16)newItem;
    PartyMenu_DrawMemberHeldItem(application, application->currPartySlot, application->partyMembers[application->currPartySlot].heldItem);
}

static int PartyMenu_ConfirmItemUpdate(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == FALSE) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            return ResetWindowOnInput(application);
        }
    }

    return PARTY_MENU_STATE_CONFIRM_ITEM_UPDATE;
}

static int ProcessMessageResult(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == 0) {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseMessageBox(&application->windows[34], 1);
            PartyMenu_SetupFormChangeAnim(application);
            return PARTY_MENU_STATE_13;
        }
    }

    return PARTY_MENU_STATE_12;
}

static int HandleOverlayCompletion(PartyMenuApplication *application)
{
    if (PartyMenuFormChange_ChangeForm(application) == TRUE) {
        PartyMenu_TeardownFormChangeAnim(application);

        return PARTY_MENU_STATE_CONFIRM_ITEM_UPDATE;
    }

    return PARTY_MENU_STATE_13;
}

static int PartyMenu_ShowItemSwapConfirmation(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == FALSE) {
        PartyMenu_DrawYesNoChoice(application);
        return PARTY_MENU_STATE_HELD_ITEM_SWAP;
    }

    return PARTY_MENU_STATE_SHOW_ITEM_SWAP_CONFIRMATION;
}

static int ProcessPokemonItemSwap(PartyMenuApplication *application)
{
    int v0, v1;

    switch (Menu_ProcessInputAndHandleExit(application->contextMenu, HEAP_ID_PARTY_MENU)) {
    case MENU_YES: {
        Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        Window *v3 = &application->windows[34];
        u32 v4 = application->partyMenu->usedItemID;
        u32 v5 = application->partyMembers[application->currPartySlot].heldItem;

        v0 = UpdatePokemonWithItem(application, mon, &v1);

        if (Bag_TryAddItem(application->partyMenu->bag, (u16)v5, 1, HEAP_ID_PARTY_MENU) == FALSE) {
            SwapPokemonItem(application, mon, v4, v5);
            MessageLoader_GetString(application->messageLoader, PartyMenu_Text_BagIsFull, application->tmpString);
            v0 = PARTY_MENU_STATE_CONFIRM_ITEM_UPDATE;
        } else {
            if (Item_IsMail(application->partyMenu->usedItemID) == 1) {
                Bag_TryRemoveItem(application->partyMenu->bag, (u16)v5, 1, HEAP_ID_PARTY_MENU);
                SwapPokemonItem(application, mon, v4, v5);
                application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_MAIL;
                return PARTY_MENU_STATE_32;
            }

            MessageLoader_GetString(application->messageLoader, PartyMenu_Text_ItemWasTakenAndReplacedWithItem, application->tmpFormat);
            StringTemplate_SetItemName(application->template, 1, v5);
            StringTemplate_SetItemName(application->template, 2, v4);
            StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);

            if ((v4 != ITEM_GRISEOUS_ORB) && (v5 == ITEM_GRISEOUS_ORB) && (v1 != -1)) {
                v0 = PARTY_MENU_STATE_12;
            } else if ((v4 == ITEM_GRISEOUS_ORB) && (v5 == ITEM_GRISEOUS_ORB)) {
                v0 = PARTY_MENU_STATE_CONFIRM_ITEM_UPDATE;
            }
        }

        Window_FillTilemap(v3, 15);
        PartyMenu_AddLongMessagePrinter(application);
    }
        return v0;
    case 0xfffffffe:
        return ResetWindowOnInput(application);
    }

    return PARTY_MENU_STATE_HELD_ITEM_SWAP;
}

static int ResetWindowOnInput(PartyMenuApplication *application)
{
    if (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM_DONE) {
        Window_EraseMessageBox(&application->windows[34], 1);
        PartyMenu_PrintShortMessage(application, PartyMenu_Text_ChooseAPokemon, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        application->partyMenu->mode = PARTY_MENU_MODE_FIELD;
        return PARTY_MENU_STATE_DEFAULT;
    }

    application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_RETURN_TO_BAG;
    return PARTY_MENU_STATE_32;
}

static int UpdatePokemonFormWithItem(PartyMenuApplication *application)
{
    Pokemon *v0;
    Window *v1;
    u32 v2;
    u32 item;
    int v4, v5;

    v0 = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    v1 = &application->windows[34];
    v2 = application->partyMenu->usedItemID;
    item = application->partyMembers[application->currPartySlot].heldItem;
    v4 = UpdatePokemonWithItem(application, v0, &v5);

    if ((item == ITEM_GRISEOUS_ORB) && (v4 == 11) && (v5 == 0)) {
        v4 = PARTY_MENU_STATE_12;
    }

    if (item == ITEM_NONE) {
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_MonWasGivenItem, application->tmpFormat);
        StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_SetItemName(application->template, 1, application->partyMenu->usedItemID);
        StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
    } else {
        Bag_TryAddItem(application->partyMenu->bag, (u16)item, 1, HEAP_ID_PARTY_MENU);
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_ItemWasTakenAndReplacedWithItem, application->tmpFormat);
        StringTemplate_SetItemName(application->template, 1, item);
        StringTemplate_SetItemName(application->template, 2, v2);
        StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
    }

    Window_DrawMessageBoxWithScrollCursor(v1, 1, 1 + 9, 15);
    Window_FillTilemap(v1, 15);
    PartyMenu_AddLongMessagePrinter(application);

    if (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL_DONE) {
        application->partyMenu->mode = PARTY_MENU_MODE_GIVE_ITEM_DONE;
    }

    return v4;
}

static int CheckForItemApplication(PartyMenuApplication *application)
{
    if (application->partyMembers[application->currPartySlot].ballSeal == 0) {
        application->partyMenu->menuSelectionResult = PARTY_MENU_EXIT_CODE_DONE;
        return PARTY_MENU_STATE_32;
    }

    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);
    PartyMenu_PrintLongMessage(application, PartyMenu_Text_BallCapsuleWillBeDetached, TRUE);
    application->unk_B04.unk_00 = sub_02083A78;
    application->unk_B04.unk_04 = sub_02083AA4;
    application->stateAfterMessage = PARTY_MENU_STATE_26;
    return PARTY_MENU_STATE_SHOW_MESSAGE_THEN_NEXT_STATE;
}

static BOOL ShouldShowSubscreen(PartyMenuApplication *application)
{
    if (application->partyMenu->mode == PARTY_MENU_MODE_USE_ITEM
        || application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE
        || application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE_DONE
        || application->partyMenu->mode == PARTY_MENU_MODE_LEVEL_MOVE_DONE
        || application->partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM
        || application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL
        || application->partyMenu->mode == PARTY_MENU_MODE_MAILBOX
        || application->partyMenu->mode == PARTY_MENU_MODE_USE_EVO_ITEM
        || application->partyMenu->mode == PARTY_MENU_MODE_FEED_POFFIN) {
        return FALSE;
    }

    return TRUE;
}

u32 sub_02081930(void)
{
    return 20;
}

u32 sub_02081934(void)
{
    return 21;
}

u32 sub_02081938(void)
{
    return 19;
}

u32 sub_0208193C(void)
{
    return 18;
}

void PartyMenu_LoadMemberPanelTilemaps(enum HeapID heapID, u16 *lead, u16 *back, u16 *none)
{
    NNSG2dScreenData *screenData;
    void *nscr = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, 22, heapID);
    NNS_G2dGetUnpackedScreenData(nscr, &screenData);
    u16 *tilemap = (u16 *)screenData->rawData;

    for (u32 i = 0; i < MAX_PARTY_SIZE; i++) {
        memcpy(&lead[i * 16], &tilemap[i * TILE_SIZE_4BPP], 16 * sizeof(u16));
        memcpy(&back[i * 16], &tilemap[(i + MAX_PARTY_SIZE) * TILE_SIZE_4BPP], 16 * sizeof(u16));
        memcpy(&none[i * 16], &tilemap[(i + (2 * MAX_PARTY_SIZE)) * TILE_SIZE_4BPP], 16 * sizeof(u16));
    }

    Heap_Free(nscr);
}

void PartyMenu_SetupFormChangeAnim(PartyMenuApplication *application)
{
    Overlay_LoadByID(FS_OVERLAY_ID(party_menu_form_change), OVERLAY_LOAD_ASYNC);
    PartyMenuFormChange_Init(application);
}

void PartyMenu_TeardownFormChangeAnim(PartyMenuApplication *application)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(party_menu_form_change));
}
