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

#include "struct_defs/struct_02099F80.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/party_menu/sprites.h"
#include "applications/party_menu/unk_02083370.h"
#include "applications/party_menu/unk_02084B70.h"
#include "applications/party_menu/windows.h"
#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"
#include "functypes/funcptr_0207E634.h"
#include "overlay118/ov118_021D0D80.h"

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
#include "overlay_manager.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "tv_episode_segment.h"
#include "unk_020393C8.h"
#include "unk_0206B9D8.h"
#include "vram_transfer.h"

#include "res/graphics/party_menu/party_menu_graphics.naix.h"
#include "res/text/bank/party_menu.h"

FS_EXTERN_OVERLAY(overlay118);

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
static int sub_0207E6C0(PartyMenuApplication *application);
static int sub_0207E6E4(PartyMenuApplication *application);
static int sub_0207E708(PartyMenuApplication *application);
static int sub_0207E714(PartyMenuApplication *application);
static int sub_0207E750(PartyMenuApplication *application);
static int ProcessWindowInput(PartyMenuApplication *application);
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
static u8 sub_0207FE98(PartyMenuApplication *application);
static void InitAnimAndPaletteForSlot(PartyMenuApplication *application, u8 slot, u8 isSelected);
static void SetupMenuCursor(PartyMenuApplication *application);
static void CheckCancellableMode(PartyMenuApplication *application);
static int HandleGameWindowEvent(PartyMenuApplication *application);
static u8 HandleWindowInputEvent(PartyMenuApplication *application, int *param1);
static u8 sub_020805E4(PartyMenuApplication *application);
static void DrawMemberTouchScreenButton(PartyMenuApplication *application, u8 slot, u8 anim);
static int GetValidWindowLayout(PartyMenuApplication *application);
static u8 HandleSpecialInput(PartyMenuApplication *application);
static int ApplyItemEffectOnPokemon(PartyMenuApplication *application);
static u8 CheckItemUsageValidity(PartyMenuApplication *application);
static int ProcessItemApplication(PartyMenuApplication *application);
static int UpdatePokemonWithItem(PartyMenuApplication *application, Pokemon *param1, int *param2);
static int HandleMessageCompletion(PartyMenuApplication *application);
static int FinalizeMessageProcessing(PartyMenuApplication *application);
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
static G3DPipelineBuffers *sub_0207EAD4(int heapID);
static void sub_0207EAF4(void);
static void sub_0207EB64(G3DPipelineBuffers *param0);
static int ProcessMessageResult(PartyMenuApplication *application);
static int HandleOverlayCompletion(PartyMenuApplication *application);
static void DrawMemberPanels_Standard(PartyMenuApplication *application, const MemberPanelTemplate *templates);
static void DrawMemberPanels_UsingEvoItem(PartyMenuApplication *application, const MemberPanelTemplate *templates);
static void DrawMemberPanels_TeachingMove(PartyMenuApplication *application, const MemberPanelTemplate *templates);
static void DrawMemberPanels_EnteringContest(PartyMenuApplication *application, const MemberPanelTemplate *templates);
static void DrawMemberPanels_SelectingOrder(PartyMenuApplication *application, const MemberPanelTemplate *templates);
static void DrawEmptyMemberPanel(PartyMenuApplication *application, u8 slot, s16 x, s16 y);
static u8 sub_0207FA24(PartyMenuApplication *application);
static u8 sub_0207FBE0(PartyMenuApplication *application, u8 *param1, u8 *param2, u8 param3);
static u8 sub_0207FC30(PartyMenuApplication *application, u8 *param1, u8 *param2, const u8 *param3);
static u8 sub_0207FC94(PartyMenuApplication *application);
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
static u8 CheckPokemonCondition(PartyMenuApplication *application);
static BOOL UpdatePokemonStatus(PartyMenuApplication *application, u8 param1, s8 param2);

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

static const u16 Unk_020F1CB0[] = {
    0xF,
    0x13,
    0x39,
    0x46,
    0x1B0,
    0xF9,
    0x7F,
    0x1AF,
    0x94,
    0x64,
    0x5B,
    0xE6,
    0x1C0,
    0xD0,
    0x87,
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
            PartyMenu_PrintShortMessage(application, pl_msg_00000453_00032, TRUE);
        }
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE) {
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00033, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM || application->partyMenu->mode == PARTY_MENU_MODE_MAILBOX) {
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00031, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE_DONE
        || application->partyMenu->mode == PARTY_MENU_MODE_LEVEL_MOVE_DONE
        || application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL
        || application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL_DONE) {
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER) {
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00034, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_BALL_SEAL) {
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00034, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00034, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE) {
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00034, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00197, TRUE);
    } else if (application->partyMenu->mode != PARTY_MENU_MODE_GIVE_ITEM_DONE) {
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00029, TRUE);
    } else {
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);
    }

    PartyMenu_LoadContextMenuStrings(application);
    SetupMenuCursor(application);

    if (ShouldShowSubscreen(application) == FALSE) {
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);
    }

    SetVBlankCallback(sub_0207E898, application);
    NetworkIcon_Init();
    NARC_dtor(narc);

    return TRUE;
}

static BOOL PartyMenu_Main(ApplicationManager *appMan, int *state)
{
    PartyMenuApplication *v0 = ApplicationManager_Data(appMan);

    switch (*state) {
    case 0:
        *state = sub_0207E490(v0);
        break;
    case 1:
        *state = sub_0207E518(v0);
        break;
    case 2:
        if (HandleWindowInputEvent(v0, state) == 1) {
            *state = 1;
        }
        break;
    case 3:
        *state = sub_02084B34(v0);
        break;
    case 4:
        *state = sub_0207E5B4(v0);
        break;
    case 5:
        *state = v0->unk_B00(v0);
        break;
    case 6:
        *state = sub_02086774(v0);
        break;
    case 7:
        *state = sub_02085804(v0);
        break;
    case 8:
        *state = sub_0207E5F4(v0);
        break;
    case 9:
        *state = FinalizeMessageProcessing(v0);
        break;
    case 10:
        *state = ProcessPokemonItemSwap(v0);
        break;
    case 11:
        *state = HandleMessageCompletion(v0);
        break;
    case 12:
        *state = ProcessMessageResult(v0);
        break;
    case 13:
        *state = HandleOverlayCompletion(v0);
        break;
    case 14:
        *state = UpdatePokemonFormWithItem(v0);
        break;
    case 15:
        *state = sub_0207E634(v0);
        break;
    case 16:
        *state = ProcessItemApplication(v0);
        break;
    case 17:
        *state = sub_02083658(v0);
        break;
    case 18:
        *state = sub_020836A8(v0);
        break;
    case 19:
        *state = sub_020836E4(v0);
        break;
    case 20:
        *state = sub_020839BC(v0);
        break;
    case 21:
        *state = sub_0207E750(v0);
        break;
    case 22:
        *state = sub_020863A0(v0);
        break;
    case 23:
        *state = sub_020845A8(v0);
        break;
    case 24:
        *state = sub_0207E6C0(v0);
        break;
    case 25:
        *state = sub_0207E6E4(v0);
        break;
    case 26:
        *state = sub_0207E708(v0);
        break;
    case 27:
        *state = sub_0207E714(v0);
        break;
    case 28: {
        u8 v1 = sub_020805E4(v0);

        if (v1 == 0) {
            *state = 29;
        } else if (v1 == 3) {
            *state = 1;
        }
    } break;
    case 29:
        if (sub_02083D1C(v0) == 1) {
            *state = 1;
        }
        break;
    case 30:
        *state = ProcessWindowInput(v0);
        break;
    case 31:
        if (ov118_021D0DBC(v0) == 1) {
            UnloadOverlay118(v0);
            *state = 25;
        } else {
            *state = 31;
        }
        break;
    case 32:
        App_StartScreenFade(TRUE, HEAP_ID_PARTY_MENU);
        *state = 33;
        break;
    case 33:
        if (IsScreenFadeDone() == TRUE) {
            v0->partyMenu->selectedMonSlot = v0->currPartySlot;
            return 1;
        }
        break;
    }

    PartyMenu_UpdateMemberIcons(v0);
    PartyMenu_UpdateTouchButtonEffect(v0);
    sub_0207FE1C(v0);
    SpriteSystem_DrawSprites(v0->spriteMan);

    return 0;
}

static int sub_0207E490(PartyMenuApplication *application)
{
    if (IsScreenFadeDone() == TRUE) {
        if ((application->partyMenu->mode == PARTY_MENU_MODE_USE_ITEM) || (application->partyMenu->mode == PARTY_MENU_MODE_USE_EVO_ITEM)) {
            if (CheckItemSacredAsh(application->partyMenu->usedItemID) == 1) {
                application->unk_B0E = 0;
                return 7;
            }

            return 4;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE) {
            return 21;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE_DONE) {
            return sub_020862F8(application);
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_LEVEL_MOVE_DONE) {
            return sub_02085EF4(application);
        } else if ((application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL) || (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL_DONE)) {
            return 14;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM) {
            return 8;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM_DONE) {
            return 16;
        } else {
            return 1;
        }
    }

    return 0;
}

static int sub_0207E518(PartyMenuApplication *application)
{
    u8 v0 = sub_0207FE98(application);

    if (v0 == 0) {
        if ((application->partyMenu->mode == PARTY_MENU_MODE_SELECT_NO_PROMPT) || (application->partyMenu->mode == PARTY_MENU_MODE_FEED_POFFIN)) {
            application->partyMenu->menuSelectionResult = 0;
            return 32;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_MAILBOX) {
            sub_020868B0(application);
            return 24;
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_NPC_TRADE) {
            return CheckForItemApplication(application);
        } else {
            return 2;
        }
    } else if (v0 == 4) {
        return HandleGameWindowEvent(application);
    } else if (v0 == 3) {
        application->partyMenu->menuSelectionResult = 0;
        return 32;
    } else if (v0 == 2) {
        if (application->partyMenu->mode != 15) {
            application->partyMenu->menuSelectionResult = 1;
            return 32;
        } else {
            Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);
            return sub_02084780(application);
        }
    }

    return 1;
}

static int sub_0207E5B4(PartyMenuApplication *application)
{
    u8 v0 = HandleSpecialInput(application);

    if ((v0 == 0) || (v0 == 2)) {
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);
        return ApplyItemEffectOnPokemon(application);
    } else if (v0 == 3) {
        application->partyMenu->menuSelectionResult = 0;
        return 32;
    }

    return 4;
}

static int sub_0207E5F4(PartyMenuApplication *application)
{
    u8 v0 = HandleSpecialInput(application);

    if ((v0 == 0) || (v0 == 2)) {
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);
        return ProcessItemApplication(application);
    } else if (v0 == 3) {
        application->partyMenu->menuSelectionResult = 0;
        return 32;
    }

    return 8;
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
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00029, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return 1;
    default: {
        UnkFuncPtr_0207E634 v1;
        int v2;

        v1 = (UnkFuncPtr_0207E634)v0;
        v1(application, &v2);

        return v2;
    }
    }

    return 15;
}

static int sub_0207E6C0(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == 0) {
        return application->unk_B0E;
    }

    return 24;
}

static int sub_0207E6E4(PartyMenuApplication *application)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return 32;
    }

    return 25;
}

static int sub_0207E708(PartyMenuApplication *application)
{
    PartyMenu_DrawYesNoChoice(application);
    return 27;
}

static int sub_0207E714(PartyMenuApplication *application)
{
    switch (Menu_ProcessInputAndHandleExit(application->contextMenu, 12)) {
    case 0:
        return application->unk_B04.unk_00(application);
    case 0xfffffffe:
        return application->unk_B04.unk_04(application);
    }

    return 27;
}

static int sub_0207E750(PartyMenuApplication *application)
{
    u8 v0 = HandleSpecialInput(application);

    if ((v0 == 0) || (v0 == 2)) {
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);

        if (application->partyMembers[application->currPartySlot].isEgg != TRUE) {
            return sub_0208615C(application);
        } else {
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
            application->partyMenu->menuSelectionResult = 0;
            application->unk_B0E = 25;
            MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00105, application->tmpString);
            return 24;
        }
    } else if (v0 == 3) {
        application->partyMenu->menuSelectionResult = 0;
        return 32;
    }

    return 21;
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
        Strbuf_Free(v0->partyMembers[v1].name);
    }

    Strbuf_Free(v0->tmpString);
    Strbuf_Free(v0->tmpFormat);

    for (v1 = 0; v1 < 20; v1++) {
        Strbuf_Free(v0->menuStrings[v1]);
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

void sub_0207EA74(PartyMenuApplication *application, int param1)
{
    if (param1 == 0) {
        Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
        Bg_FreeTilemapBuffer(application->bgConfig, BG_LAYER_MAIN_0);

        GX_SetGraphicsMode(GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);
        application->unk_B28 = sub_0207EAD4(HEAP_ID_PARTY_MENU);
    } else {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        sub_0207EB64(application->unk_B28);

        GX_SetGraphicsMode(GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_2D);

        InitBgMainLayer0(application->bgConfig);
        Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_PARTY_MENU);
    }
}

static G3DPipelineBuffers *sub_0207EAD4(int heapID)
{
    return G3DPipeline_Init(heapID, TEXTURE_VRAM_SIZE_128K, PALETTE_VRAM_SIZE_32K, sub_0207EAF4);
}

static void sub_0207EAF4(void)
{
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

static void sub_0207EB64(G3DPipelineBuffers *param0)
{
    G3DPipelineBuffers_Free(param0);
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
        application->partyMembers[i].name = Strbuf_Init(MON_NAME_LEN + 1, HEAP_ID_PARTY_MENU);
    }

    application->tmpString = Strbuf_Init(256, HEAP_ID_PARTY_MENU);
    application->tmpFormat = Strbuf_Init(256, HEAP_ID_PARTY_MENU);

    for (i = 0; i < NUM_PARTY_MENU_STRS; i++) {
        application->menuStrings[i] = Strbuf_Init(32, HEAP_ID_PARTY_MENU);
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
    if (slot == 0 || (application->partyMenu->type != 0 && slot == 1)) {
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

    if (application->inSwitchMode == TRUE && (slot == application->currPartySlot || slot == application->switchTargetSlot)) {
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

static u8 sub_0207FA00(PartyMenuApplication *application)
{
    if (sub_0207FA24(application) == 1) {
        return 1;
    }

    if (sub_0207FC94(application) == 1) {
        return 2;
    }

    return 5;
}

static u8 sub_0207FA24(PartyMenuApplication *application)
{
    u8 v0;
    u8 v1;
    u8 v2, v3;

    v1 = GRID_MENU_CURSOR_POSITION_DIRECTION_NONE;

    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        v1 = GRID_MENU_CURSOR_POSITION_DIRECTION_UP;
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        v1 = GRID_MENU_CURSOR_POSITION_DIRECTION_DOWN;
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
        v1 = GRID_MENU_CURSOR_POSITION_DIRECTION_LEFT;
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        v1 = GRID_MENU_CURSOR_POSITION_DIRECTION_RIGHT;
    }

    if (v1 == GRID_MENU_CURSOR_POSITION_DIRECTION_NONE) {
        return 0;
    }

    v0 = application->currPartySlot;

    if (v0 == 6) {
        if (v1 == GRID_MENU_CURSOR_POSITION_DIRECTION_UP) {
            v0 = sub_0207FC30(application, &v2, &v3, Unk_020F1BD4[2 + (application->prevPartySlot & 1)]);
        } else {
            v0 = sub_0207FBE0(application, &v2, &v3, v1);
        }
    } else if (v0 == 7) {
        if ((application->partyMenu->mode != 2) && (application->partyMenu->mode != 17) && (application->partyMenu->mode != 23) && (application->partyMenu->mode != 22) && (v1 == 0)) {
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

        return 1;
    }

    return 0;
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

static u8 sub_0207FC94(PartyMenuApplication *application)
{
    int v0 = GetValidWindowLayout(application);

    if (v0 != 0xffffffff) {
        u8 v1, v2;
        u8 v3;

        v3 = application->currPartySlot;
        application->currPartySlot = (u8)v0;

        InitAnimAndPaletteForSlot(application, v3, FALSE);
        InitAnimAndPaletteForSlot(application, application->currPartySlot, TRUE);

        if (v3 < 6) {
            DrawMemberTouchScreenButton(application, v3, 0);
        }

        GridMenuCursor_CheckNavigation(application->cursorPosTable, &v1, &v2, NULL, NULL, application->currPartySlot, GRID_MENU_CURSOR_POSITION_DIRECTION_NONE);
        Sprite_SetAnim(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], PartyMenu_GetMemberPanelAnim(application->partyMenu->type, application->currPartySlot));
        Sprite_SetDrawFlag(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], TRUE);
        Sprite_SetPositionXY(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], v1, v2);

        application->unk_B0C = 1;
        application->unk_B0D = application->currPartySlot;

        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);

        if ((v3 != 6) && (v3 != 7)) {
            application->prevPartySlot = v3;
        }

        return 1;
    }

    return 0;
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

static u8 sub_0207FE98(PartyMenuApplication *application)
{
    u8 v0;

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        if (application->currPartySlot == 6) {
            return 4;
        } else if (application->currPartySlot == 7) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (application->hideCancel == 0) {
                return 3;
            }
        } else if ((application->partyMenu->mode == PARTY_MENU_MODE_SELECT_NO_PROMPT) || (application->partyMenu->mode == PARTY_MENU_MODE_NPC_TRADE)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            return 0;
        } else if ((application->partyMenu->mode == PARTY_MENU_MODE_FEED_POFFIN) || (application->partyMenu->mode == PARTY_MENU_MODE_MAILBOX)) {
            if (application->partyMembers[application->currPartySlot].isEgg == FALSE) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                return 0;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                return 5;
            }
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_BALL_SEAL) {
            if (application->partyMembers[application->currPartySlot].isEgg == FALSE) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                sub_0207FFC8(application);
                return 0;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                return 5;
            }
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_0207FFC8(application);
            return 0;
        } else {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_0207FFC8(application);
            return 0;
        }
    }

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        if (application->hideCancel == 0) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            application->currPartySlot = 7;
            return 3;
        }
    }

    v0 = sub_0207FA00(application);

    if (v0 == 2) {
        if ((application->partyMenu->mode == PARTY_MENU_MODE_FEED_POFFIN) || (application->partyMenu->mode == PARTY_MENU_MODE_MAILBOX) || (application->partyMenu->mode == PARTY_MENU_MODE_BALL_SEAL)) {
            if (application->partyMembers[application->currPartySlot].isEgg != FALSE) {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                return 5;
            }
        }
    }

    return v0;
}

static void sub_0207FFC8(PartyMenuApplication *application)
{
    u8 *v0;
    u8 v1;

    Window_EraseMessageBox(&application->windows[32], 1);
    v0 = Heap_Alloc(HEAP_ID_PARTY_MENU, 8);

    switch (application->partyMenu->mode) {
    case 0:
        v1 = GetContextMenuEntriesForPartyMon(application, v0);
        break;
    case 2:
    case 17:
        v1 = sub_0208022C(application, v0);
        break;
    case 15:
        v1 = sub_020801AC(application, v0);
        break;
    case 18:
        v1 = sub_020801B8(application, v0);
        break;
    case 21:
        v1 = sub_0208031C(application, v0);
        break;

    case 22:
        v1 = sub_0208027C(application, v0);
        break;
    case 23:
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
    Pokemon *pokemon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    u16 move;
    u8 fieldMoveIndex = 0, i, count = 0, fieldEffect;

    menuEntriesBuffer[count] = 1;
    count++;

    if (FieldSystem_IsInBattleTowerSalon(application->partyMenu->fieldSystem) == FALSE) {
        if (application->partyMembers[application->currPartySlot].isEgg == FALSE) {
            for (i = 0; i < 4; i++) {
                move = (u16)Pokemon_GetValue(pokemon, MON_DATA_MOVE1 + i, NULL);

                if (move == 0) {
                    break;
                }

                fieldEffect = GetElementIndex(move);

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
    u8 v0;

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        if ((application->currPartySlot >= 6) || (application->currPartySlot == application->switchTargetSlot)) {
            sub_02083B88(application);
            return 3;
        } else {
            sub_02083BD4(application);
            return 0;
        }
    }

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        sub_02083B88(application);
        return 3;
    }

    v0 = sub_0207FA00(application);

    if (v0 == 2) {
        if (application->currPartySlot == application->switchTargetSlot) {
            sub_02083B88(application);
            return 3;
        } else {
            sub_02083BD4(application);
            return 0;
        }
    }

    return v0;
}

static int HandleGameWindowEvent(PartyMenuApplication *application)
{
    u8 v0;

    for (v0 = 0; v0 < application->partyMenu->minSelectionSlots; v0++) {
        if (application->partyMenu->selectionOrder[v0] == 0) {
            switch (application->partyMenu->maxSelectionSlots) {
            case 2:
                PartyMenu_PrintLongMessage(application, pl_msg_00000453_00107, TRUE);
                break;
            case 3:
                PartyMenu_PrintLongMessage(application, pl_msg_00000453_00119, TRUE);
                break;
            case 4:
                PartyMenu_PrintLongMessage(application, pl_msg_00000453_00120, TRUE);
                break;
            case 5:
                PartyMenu_PrintLongMessage(application, pl_msg_00000453_00121, TRUE);
                break;
            case 6:
                PartyMenu_PrintLongMessage(application, pl_msg_00000453_00122, TRUE);
                break;
            default:
                PartyMenu_PrintLongMessage(application, pl_msg_00000453_00029, TRUE);
                break;
            }

            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        }
    }

    if (application->partyMenu->battleRegulation != NULL) {
        switch (BattleRegulation_ValidatePartySelection(application->partyMenu->battleRegulation, application->partyMenu->party, application->heightWeight, application->partyMenu->selectionOrder)) {
        case BATTLE_REGULATION_VALIDATION_SUCCESS:
            break;

        case BATTLE_REGULATION_VALIDATION_ERROR_TOTAL_LEVEL_EXCEEDED: {
            Strbuf *v1;
            int v2;

            v1 = MessageLoader_GetNewStrbuf(application->messageLoader, 184);
            v2 = BattleRegulation_GetRuleValue(application->partyMenu->battleRegulation, BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL);

            StringTemplate_SetNumber(application->template, 0, v2, 3, 0, 1);
            StringTemplate_Format(application->template, application->tmpString, v1);
            Strbuf_Free(v1);
        }
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);
            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        case BATTLE_REGULATION_VALIDATION_ERROR_DUPLICATE_SPECIES:
            PartyMenu_PrintLongMessage(application, pl_msg_00000453_00182, TRUE);
            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        case BATTLE_REGULATION_VALIDATION_ERROR_DUPLICATE_ITEMS:
            PartyMenu_PrintLongMessage(application, pl_msg_00000453_00183, TRUE);
            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        }
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER) {
        switch (CheckDuplicateValues(application)) {
        case 0:
            break;
        case 1:
            PartyMenu_PrintLongMessage(application, pl_msg_00000453_00182, TRUE);
            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        case 2:
            PartyMenu_PrintLongMessage(application, pl_msg_00000453_00183, TRUE);
            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        }
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        switch (CheckUniqueValues(application)) {
        case 0:
            break;
        case 1:
            PartyMenu_PrintLongMessage(application, pl_msg_00000453_00201, TRUE);
            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        }
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE) {
        switch (CheckEqualityInArray(application)) {
        case 0:
            break;
        case 1:
            PartyMenu_PrintLongMessage(application, pl_msg_00000453_00182, TRUE);
            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        }
    }

    application->partyMenu->menuSelectionResult = 0;
    Sound_PlayEffect(SEQ_SE_CONFIRM);
    return 32;
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

static const TouchScreenRect Unk_020F1C94[] = {
    { 0x18, 0x3F, 0x8, 0x2F },
    { 0x18, 0x3F, 0xD0, 0xF7 },
    { 0x50, 0x77, 0x8, 0x2F },
    { 0x50, 0x77, 0xD0, 0xF7 },
    { 0x88, 0xAF, 0x8, 0x2F },
    { 0x88, 0xAF, 0xD0, 0xF7 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};
// clang-format on

#define TOUCH_BUTTON_TILE_PALETTE (1 << 12)
#define TOUCH_BUTTON_TILE_WIDTH   5
#define TOUCH_BUTTON_TILE_HEIGHT  5

static void DrawMemberTouchScreenButton(PartyMenuApplication *application, u8 slot, u8 anim)
{
    u16 *tilemap;
    u16 baseTile;
    u8 x, y;
    u8 dy, dx;

    tilemap = Bg_GetTilemapBuffer(application->bgConfig, BG_LAYER_SUB_0);
    baseTile = 5 + TOUCH_BUTTON_TILE_PALETTE + TOUCH_BUTTON_TILE_WIDTH * TOUCH_BUTTON_TILE_HEIGHT * anim;
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
#undef TOUCH_BUTTON_TILE_PALETTE

static void CalculateWindowPosition(u8 application, s16 *param1, s16 *param2)
{
    *param1 = sTouchScreenButtonCoords[application][0] * 8 + ((5 * 8) >> 1);
    *param2 = sTouchScreenButtonCoords[application][1] * 8 + ((5 * 8) >> 1);
}

static int GetValidWindowLayout(PartyMenuApplication *application)
{
    int v0;

    if (ShouldShowSubscreen(application) == 0) {
        return 0xffffffff;
    }

    v0 = TouchScreen_CheckRectanglePressed(Unk_020F1C94);

    if (v0 != 0xffffffff) {
        u16 v1 = 0xfffe;

        if (Bg_DoesPixelAtXYMatchVal(application->bgConfig, 4, gSystem.touchX, gSystem.touchY, &v1) == 0) {
            return 0xffffffff;
        }
    }

    return v0;
}

static u8 HandleWindowInputEvent(PartyMenuApplication *application, int *param1)
{
    u32 v0 = Menu_ProcessInput(application->contextMenu);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        Window_EraseMessageBox(&application->windows[33], 1);
        sub_0208337C(application);

        if ((application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM) || (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER) || (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE) || (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL)) {
            PartyMenu_PrintShortMessage(application, pl_msg_00000453_00034, TRUE);
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
            PartyMenu_PrintShortMessage(application, pl_msg_00000453_00197, TRUE);
        } else {
            PartyMenu_PrintShortMessage(application, pl_msg_00000453_00029, TRUE);
        }

        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        return 1;
    default: {
        UnkFuncPtr_0207E634 v1 = (UnkFuncPtr_0207E634)v0;
        v1(application, param1);
    }
    }

    return 0;
}

u8 GetElementIndex(u16 application)
{
    u8 v0;

    for (v0 = 0; v0 < NELEMS(Unk_020F1CB0); v0++) {
        if (application == Unk_020F1CB0[v0]) {
            return v0 + 16;
        }
    }

    return 0xff;
}

static int ProcessWindowInput(PartyMenuApplication *application)
{
    switch (application->monStats[1]) {
    case 0:
        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            if (application->currPartySlot >= 6) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                sub_02083B88(application);
                return 1;
            } else {
                switch (CheckPokemonCondition(application)) {
                case 0:
                    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
                    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);

                    if (application->partyMembers[application->currPartySlot].maxHP - application->partyMembers[application->currPartySlot].curHP < application->monStats[0]) {
                        application->monStats[0] = application->partyMembers[application->currPartySlot].maxHP - application->partyMembers[application->currPartySlot].curHP;
                    }

                    application->monStats[1] = 2;
                    application->monStats[2] = 0;
                    break;
                case 1:
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    application->monStats[1] = 1;
                    return 24;
                case 2:
                    Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                    return 30;
                }
            }
        }

        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            sub_02083B88(application);
            return 1;
        }

        if (sub_0207FA00(application) == 2) {
            if (application->currPartySlot == application->switchTargetSlot) {
                sub_02083B88(application);
                return 1;
            } else {
                switch (CheckPokemonCondition(application)) {
                case 0:
                    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
                    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);

                    if (application->partyMembers[application->currPartySlot].maxHP - application->partyMembers[application->currPartySlot].curHP < application->monStats[0]) {
                        application->monStats[0] = application->partyMembers[application->currPartySlot].maxHP - application->partyMembers[application->currPartySlot].curHP;
                    }

                    application->monStats[1] = 2;
                    application->monStats[2] = 0;
                    break;
                case 1:
                    application->monStats[1] = 1;
                    return 24;
                case 2:
                    Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                    return 30;
                }
            }
        }
        break;
    case 1:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Window_EraseMessageBox(&application->windows[34], 1);
            Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
            PartyMenu_PrintShortMessage(application, pl_msg_00000453_00036, TRUE);
            application->monStats[1] = 0;
        }
        break;
    case 2:
        if (UpdatePokemonStatus(application, application->switchTargetSlot, -1) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
            application->monStats[1] = 3;
            application->monStats[2] = 0;
        }
        break;
    case 3:
        if (UpdatePokemonStatus(application, application->currPartySlot, 1) == 1) {
            Pokemon *mon;
            Strbuf *v1;
            void *journalEntryLocationEvent;
            FieldSystem *fieldSystem;

            mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
            v1 = MessageLoader_GetNewStrbuf(application->messageLoader, 64);

            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
            StringTemplate_SetNumber(application->template, 1, application->monStats[2], 3, 0, 1);
            StringTemplate_Format(application->template, application->tmpString, v1);
            Strbuf_Free(v1);
            PartyMenu_PrintLongMessage(application, PRINT_MESSAGE_PRELOADED, TRUE);

            journalEntryLocationEvent = JournalEntry_CreateEventUsedMove((u8)application->monStats[3], 0, 12);
            fieldSystem = application->partyMenu->fieldSystem;
            JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            application->monStats[1] = 4;
            application->unk_B0E = 30;
            return 24;
        }
        break;
    case 4:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Window_EraseMessageBox(&application->windows[34], 1);
            Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
            sub_02083B88(application);
            return 1;
        }
        break;
    }

    return 30;
}

static u8 CheckPokemonCondition(PartyMenuApplication *application)
{
    if (application->partyMembers[application->currPartySlot].isEgg != FALSE) {
        return 2;
    }

    if ((application->currPartySlot == application->switchTargetSlot) || (application->partyMembers[application->currPartySlot].curHP == 0) || (application->partyMembers[application->currPartySlot].curHP == application->partyMembers[application->currPartySlot].maxHP)) {
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00131, TRUE);

        application->monStats[1] = 1;
        application->unk_B0E = 30;

        return 1;
    }

    return 0;
}

static BOOL UpdatePokemonStatus(PartyMenuApplication *application, u8 slot, s8 param2)
{
    application->partyMembers[slot].curHP += param2;
    application->monStats[2]++;

    PartyMenu_ClearMemberHP(application, slot);
    Window_FillTilemap(&application->windows[3 + slot * 5], 0);
    PartyMenu_PrintMemberCurrentHP(application, slot);
    PartyMenu_DrawMemberHealthbar(application, slot);

    if ((application->monStats[0] == application->monStats[2]) || (application->partyMembers[slot].curHP == application->partyMembers[slot].maxHP)) {
        Pokemon *mon;
        u32 v1;

        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);
        v1 = application->partyMembers[slot].curHP;
        Pokemon_SetValue(mon, MON_DATA_HP, &v1);
        return 1;
    }

    return 0;
}

static u8 HandleSpecialInput(PartyMenuApplication *application)
{
    u8 v0;

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        if (application->currPartySlot == 7) {
            if (application->hideCancel == 0) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                return 3;
            }
        } else {
            if (application->partyMembers[application->currPartySlot].isEgg == FALSE) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                return 0;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            }
        }

        return 5;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        if (application->hideCancel == 0) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            application->currPartySlot = 7;
            return 3;
        }

        return 5;
    }

    v0 = sub_0207FA00(application);

    if (v0 == 2) {
        if (application->partyMembers[application->currPartySlot].isEgg != FALSE) {
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 5;
        }
    }

    return v0;
}

static int ApplyItemEffectOnPokemon(PartyMenuApplication *application)
{
    ItemData *v0 = Item_Load(application->partyMenu->usedItemID, 0, 12);

    if ((application->partyMenu->usedItemID == 466) && (Pokemon_CanShayminSkyForm(Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot)) == 1)) {
        application->partyMenu->evoTargetSpecies = 1;
        Heap_Free(v0);
        LoadOverlay118(application);
        return 31;
    }

    if ((Item_Get(v0, 34) != 0) || (Item_Get(v0, 35) != 0)) {
        Heap_Free(v0);
        sub_020866A0(application, 0);
        return 6;
    }

    if ((Item_Get(v0, 36) != 0) && (Item_Get(v0, 37) == 0)) {
        Heap_Free(v0);
        sub_020866A0(application, 1);
        return 6;
    }

    if (Party_CheckItemEffectsOnMember(application->partyMenu->party, application->partyMenu->usedItemID, application->currPartySlot, 0, 12) == 1) {
        Bag_TryRemoveItem(application->partyMenu->bag, application->partyMenu->usedItemID, 1, HEAP_ID_PARTY_MENU);

        if (Item_Get(v0, 26) != 0) {
            Pokemon *v1 = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);

            application->partyMenu->evoTargetSpecies = Pokemon_GetEvolutionTargetSpecies(NULL, v1, EVO_CLASS_BY_ITEM, application->partyMenu->usedItemID, &application->partyMenu->evoType);
            application->partyMenu->menuSelectionResult = 8;
            Heap_Free(v0);
            return 32;
        }

        if ((Item_IsHerbalMedicine(application->partyMenu->usedItemID) == 1) && (application->partyMenu->broadcast != NULL)) {
            Pokemon *v2 = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
            FieldSystem_SaveTVEpisodeSegment_HerbalMedicineTrainerSightingDummy(application->partyMenu->broadcast, v2, application->partyMenu->usedItemID);
        }

        sub_020852B8(application);
    } else {
        PartyMenu_PrintLongMessage(application, pl_msg_00000453_00105, TRUE);
        application->currPartySlot = 7;
        application->unk_B00 = sub_02085348;
    }

    Heap_Free(v0);
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

    if (application->partyMenu->usedItemID == 112) {
        if (Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA) {
            MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00203, application->tmpFormat);
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
            StringTemplate_SetItemNameWithArticle(application->template, 1, application->partyMenu->usedItemID);
            StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
            v2 = 11;
        } else if (fieldSystem != NULL) {
            if (fieldSystem->location->mapId == MAP_HEADER_UNION_ROOM) {
                MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00204, application->tmpFormat);
                StringTemplate_SetItemName(application->template, 0, application->partyMenu->usedItemID);
                StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
                v2 = 11;
            }
        }
    }

    if (v2 == -1) {
        switch (CheckItemUsageValidity(application)) {
        case 0:
            if (Item_IsMail(application->partyMenu->usedItemID) == 1) {
                application->partyMenu->menuSelectionResult = 6;
                return 32;
            }

            v2 = UpdatePokemonWithItem(application, v0, &v3);

            MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00118, application->tmpFormat);
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
            StringTemplate_SetItemName(application->template, 1, application->partyMenu->usedItemID);
            StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
            break;
        case 1:
            MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00078, application->tmpFormat);
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
            StringTemplate_SetItemNameWithArticle(application->template, 1, application->partyMembers[application->currPartySlot].heldItem);
            StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
            v2 = 9;
            break;
        case 2:
            MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00077, application->tmpString);
            v2 = 11;
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

    if ((fieldSystem == NULL) || (fieldSystem->location->mapId < 573) || (fieldSystem->location->mapId > 583)) {
        *param2 = Pokemon_SetGiratinaFormByHeldItem(mon);
    } else {
        *param2 = -1;
    }

    application->partyMembers[application->currPartySlot].heldItem = application->partyMenu->usedItemID;
    PartyMenu_DrawMemberHeldItem(application, application->currPartySlot, application->partyMembers[application->currPartySlot].heldItem);

    if (item == ITEM_GRISEOUS_ORB && ((*param2) != -1)) {
        return 12;
    }

    return 11;
}

static void SwapPokemonItem(PartyMenuApplication *application, Pokemon *mon, u32 param2, u32 param3)
{
    Bag_TryAddItem(application->partyMenu->bag, (u16)param2, 1, HEAP_ID_PARTY_MENU);
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &param3);
    Pokemon_SetArceusForm(mon);
    Pokemon_SetGiratinaFormByHeldItem(mon);
    application->partyMembers[application->currPartySlot].heldItem = (u16)param3;
    PartyMenu_DrawMemberHeldItem(application, application->currPartySlot, application->partyMembers[application->currPartySlot].heldItem);
}

static int HandleMessageCompletion(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == 0) {
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            return ResetWindowOnInput(application);
        }
    }

    return 11;
}

static int ProcessMessageResult(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == 0) {
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseMessageBox(&application->windows[34], 1);
            LoadOverlay118(application);
            return 13;
        }
    }

    return 12;
}

static int HandleOverlayCompletion(PartyMenuApplication *application)
{
    if (ov118_021D0DBC(application) == 1) {
        UnloadOverlay118(application);

        return 11;
    }

    return 13;
}

static int FinalizeMessageProcessing(PartyMenuApplication *application)
{
    if (Text_IsPrinterActive(application->textPrinterID) == 0) {
        PartyMenu_DrawYesNoChoice(application);
        return 10;
    }

    return 9;
}

static int ProcessPokemonItemSwap(PartyMenuApplication *application)
{
    int v0, v1;

    switch (Menu_ProcessInputAndHandleExit(application->contextMenu, 12)) {
    case 0: {
        Pokemon *v2;
        Window *v3;
        u32 v4;
        u32 v5;

        v2 = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        v3 = &application->windows[34];
        v4 = application->partyMenu->usedItemID;
        v5 = application->partyMembers[application->currPartySlot].heldItem;
        v0 = UpdatePokemonWithItem(application, v2, &v1);

        if (Bag_TryAddItem(application->partyMenu->bag, (u16)v5, 1, HEAP_ID_PARTY_MENU) == FALSE) {
            SwapPokemonItem(application, v2, v4, v5);
            MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00083, application->tmpString);
            v0 = 11;
        } else {
            if (Item_IsMail(application->partyMenu->usedItemID) == 1) {
                Bag_TryRemoveItem(application->partyMenu->bag, (u16)v5, 1, HEAP_ID_PARTY_MENU);
                SwapPokemonItem(application, v2, v4, v5);
                application->partyMenu->menuSelectionResult = 6;
                return 32;
            }

            MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00084, application->tmpFormat);
            StringTemplate_SetItemName(application->template, 1, v5);
            StringTemplate_SetItemName(application->template, 2, v4);
            StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);

            if ((v4 != 112) && (v5 == 112) && (v1 != -1)) {
                v0 = 12;
            } else if ((v4 == 112) && (v5 == 112)) {
                v0 = 11;
            }
        }

        Window_FillTilemap(v3, 15);
        PartyMenu_AddLongMessagePrinter(application);
    }
        return v0;
    case 0xfffffffe:
        return ResetWindowOnInput(application);
    }

    return 10;
}

static int ResetWindowOnInput(PartyMenuApplication *application)
{
    if (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM_DONE) {
        Window_EraseMessageBox(&application->windows[34], 1);
        PartyMenu_PrintShortMessage(application, pl_msg_00000453_00029, TRUE);
        Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 0);
        application->partyMenu->mode = PARTY_MENU_MODE_FIELD;
        return 1;
    }

    application->partyMenu->menuSelectionResult = 10;
    return 32;
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
        v4 = 12;
    }

    if (item == ITEM_NONE) {
        MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00118, application->tmpFormat);
        StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_SetItemName(application->template, 1, application->partyMenu->usedItemID);
        StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
    } else {
        Bag_TryAddItem(application->partyMenu->bag, (u16)item, 1, HEAP_ID_PARTY_MENU);
        MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00084, application->tmpFormat);
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
        application->partyMenu->menuSelectionResult = 0;
        return 32;
    }

    Sprite_SetExplicitPalette2(application->sprites[PARTY_MENU_SPRITE_CURSOR_NORMAL], 1);
    PartyMenu_PrintLongMessage(application, pl_msg_00000453_00195, TRUE);
    application->unk_B04.unk_00 = sub_02083A78;
    application->unk_B04.unk_04 = sub_02083AA4;
    application->unk_B0E = 26;
    return 24;
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

void LoadOverlay118(PartyMenuApplication *application)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay118), 2);
    ov118_021D0D80(application);
}

void UnloadOverlay118(PartyMenuApplication *application)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay118));
}
