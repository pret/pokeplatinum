#include "applications/party_menu/main.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/heap.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/string.h"

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
#include "unk_0202602C.h"
#include "unk_020393C8.h"
#include "unk_0206B9D8.h"
#include "unk_0206CCB0.h"
#include "unk_0207A2A8.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay118);

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_020F1DF8;

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
static void InitSelectedSlot(PartyMenuApplication *application, u8 param1, u8 param2);
static void SetupMenuCursor(PartyMenuApplication *application);
static void CheckCancellableMode(PartyMenuApplication *application);
static int HandleGameWindowEvent(PartyMenuApplication *application);
static u8 HandleWindowInputEvent(PartyMenuApplication *application, int *param1);
static u8 sub_020805E4(PartyMenuApplication *application);
static void UpdateWindowLayout(PartyMenuApplication *application, u8 param1, u8 param2);
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
static void sub_0207F094(PartyMenuApplication *application, Pokemon *param1, u8 param2);
static u32 sub_0207F134(Pokemon *param0, u8 param1);
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
static void sub_0207F388(PartyMenuApplication *application, const UnkStruct_020F1DF8 *param1);
static void sub_0207F4AC(PartyMenuApplication *application, const UnkStruct_020F1DF8 *param1);
static void sub_0207F5A0(PartyMenuApplication *application, const UnkStruct_020F1DF8 *param1);
static void sub_0207F694(PartyMenuApplication *application, const UnkStruct_020F1DF8 *param1);
static void sub_0207F788(PartyMenuApplication *application, const UnkStruct_020F1DF8 *param1);
static void sub_0207F884(PartyMenuApplication *application, u8 param1, s16 param2, s16 param3);
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
u8 sub_02080404(PartyMenuApplication *application, u8 param1);
u8 sub_02080488(PartyMenuApplication *application, u8 param1);
static u8 CheckPokemonCondition(PartyMenuApplication *application);
static BOOL UpdatePokemonStatus(PartyMenuApplication *application, u8 param1, s8 param2);

const ApplicationManagerTemplate gPokemonPartyAppTemplate = {
    .init = PartyMenu_Init,
    .main = PartyMenu_Main,
    .exit = PartyMenu_Exit,
    .overlayID = FS_OVERLAY_ID_NONE
};

static const UnkStruct_020F1DF8 Unk_020F1DF8[2][6] = {
    {
        { 0x0, 0x0, 0x1E, 0x10, 0x10, 0xE },
        { 0x10, 0x1, 0x9E, 0x18, 0x90, 0x16 },
        { 0x0, 0x6, 0x1E, 0x40, 0x10, 0x3E },
        { 0x10, 0x7, 0x9E, 0x48, 0x90, 0x46 },
        { 0x0, 0xC, 0x1E, 0x70, 0x10, 0x6E },
        { 0x10, 0xD, 0x9E, 0x78, 0x90, 0x76 },
    },
    {
        { 0x0, 0x0, 0x1E, 0x10, 0x10, 0xE },
        { 0x10, 0x0, 0x9E, 0x10, 0x90, 0xE },
        { 0x0, 0x6, 0x1E, 0x40, 0x10, 0x3E },
        { 0x10, 0x6, 0x9E, 0x40, 0x90, 0x3E },
        { 0x0, 0xC, 0x1E, 0x70, 0x10, 0x6E },
        { 0x10, 0xC, 0x9E, 0x70, 0x90, 0x6E },
    },
};

static const GridMenuCursorPosition Unk_020F1DB8[] = {
    { 0x40, 0x19, 0x0, 0x0, 0x7, 0x2, 0x7, 0x1 },
    { 0xC0, 0x21, 0x0, 0x0, 0x7, 0x3, 0x0, 0x2 },
    { 0x40, 0x49, 0x0, 0x0, 0x0, 0x4, 0x1, 0x3 },
    { 0xC0, 0x51, 0x0, 0x0, 0x1, 0x5, 0x2, 0x4 },
    { 0x40, 0x79, 0x0, 0x0, 0x2, 0x7, 0x3, 0x5 },
    { 0xC0, 0x81, 0x0, 0x0, 0x3, 0x7, 0x4, 0x7 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0xE0, 0xA8, 0x0, 0x0, 0x5, 0x1, 0x5, 0x0 },
};

static const GridMenuCursorPosition Unk_020F1CF8[] = {
    { 0x40, 0x19, 0x0, 0x0, 0x4, 0x2, 0x1, 0x1 },
    { 0xC0, 0x19, 0x0, 0x0, 0x7, 0x3, 0x0, 0x0 },
    { 0x40, 0x49, 0x0, 0x0, 0x0, 0x4, 0x3, 0x3 },
    { 0xC0, 0x49, 0x0, 0x0, 0x1, 0x5, 0x2, 0x2 },
    { 0x40, 0x79, 0x0, 0x0, 0x2, 0x0, 0x5, 0x5 },
    { 0xC0, 0x79, 0x0, 0x0, 0x3, 0x7, 0x4, 0x4 },
    { 0xE0, 0xA8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0xE0, 0xA8, 0x0, 0x0, 0x5, 0x1, 0xFF, 0xFF },
};

static const GridMenuCursorPosition Unk_020F1D38[] = {
    { 0x40, 0x19, 0x0, 0x0, 0x7, 0x2, 0x7, 0x1 },
    { 0xC0, 0x21, 0x0, 0x0, 0x7, 0x3, 0x0, 0x2 },
    { 0x40, 0x49, 0x0, 0x0, 0x0, 0x4, 0x1, 0x3 },
    { 0xC0, 0x51, 0x0, 0x0, 0x1, 0x5, 0x2, 0x4 },
    { 0x40, 0x79, 0x0, 0x0, 0x2, 0x6, 0x3, 0x5 },
    { 0xC0, 0x81, 0x0, 0x0, 0x3, 0x6, 0x4, 0x6 },
    { 0xE0, 0xA8, 0x0, 0x0, 0x5, 0x7, 0x5, 0x7 },
    { 0xE0, 0xB8, 0x0, 0x0, 0x6, 0x1, 0x6, 0x0 },
};

static const GridMenuCursorPosition Unk_020F1D78[] = {
    { 0x40, 0x19, 0x0, 0x0, 0x5, 0x2, 0x5, 0x1 },
    { 0xC0, 0x21, 0x0, 0x0, 0x5, 0x3, 0x0, 0x2 },
    { 0x40, 0x49, 0x0, 0x0, 0x0, 0x4, 0x1, 0x3 },
    { 0xC0, 0x51, 0x0, 0x0, 0x1, 0x5, 0x2, 0x4 },
    { 0x40, 0x79, 0x0, 0x0, 0x2, 0x0, 0x3, 0x5 },
    { 0xC0, 0x81, 0x0, 0x0, 0x3, 0x0, 0x4, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
};

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
    PartyMenuApplication *application;
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
    InitSelectedSlot(application, application->currPartySlot, 1);

    if (application->partyMenu->mode == PARTY_MENU_MODE_USE_ITEM || application->partyMenu->mode == PARTY_MENU_MODE_USE_EVO_ITEM) {
        if (CheckItemSacredAsh(application->partyMenu->usedItemID) == FALSE) {
            PartyMenu_PrintShortMessage(application, 32, TRUE);
        }
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE) {
        PartyMenu_PrintShortMessage(application, 33, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_ITEM || application->partyMenu->mode == PARTY_MENU_MODE_MAILBOX) {
        PartyMenu_PrintShortMessage(application, 31, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE_DONE
        || application->partyMenu->mode == PARTY_MENU_MODE_LEVEL_MOVE_DONE
        || application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL
        || application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL_DONE) {
        Sprite_SetExplicitPalette2(application->sprites[6], TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER) {
        PartyMenu_PrintShortMessage(application, 34, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_BALL_SEAL) {
        PartyMenu_PrintShortMessage(application, 34, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        PartyMenu_PrintShortMessage(application, 34, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE) {
        PartyMenu_PrintShortMessage(application, 34, TRUE);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
        PartyMenu_PrintShortMessage(application, 197, TRUE);
    } else if (application->partyMenu->mode != PARTY_MENU_MODE_GIVE_ITEM_DONE) {
        PartyMenu_PrintShortMessage(application, 29, TRUE);
    } else {
        Sprite_SetExplicitPalette2(application->sprites[6], TRUE);
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

    sub_020831B4(v0);
    sub_02083334(v0);
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
            Sprite_SetExplicitPalette2(application->sprites[6], 1);
            return sub_02084780(application);
        }
    }

    return 1;
}

static int sub_0207E5B4(PartyMenuApplication *application)
{
    u8 v0 = HandleSpecialInput(application);

    if ((v0 == 0) || (v0 == 2)) {
        Sprite_SetExplicitPalette2(application->sprites[6], 1);
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
        Sprite_SetExplicitPalette2(application->sprites[6], 1);
        return ProcessItemApplication(application);
    } else if (v0 == 3) {
        application->partyMenu->menuSelectionResult = 0;
        return 32;
    }

    return 8;
}

static int sub_0207E634(PartyMenuApplication *application)
{
    u32 v0 = Menu_ProcessInput(application->unk_700);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        Window_EraseMessageBox(&application->windows[33], 1);
        Window_EraseStandardFrame(&application->windows[35], 1);
        Window_ClearAndScheduleCopyToVRAM(&application->windows[35]);
        Menu_Free(application->unk_700, NULL);
        StringList_Free(application->unk_6FC);
        PartyMenu_PrintShortMessage(application, 29, 1);
        Sprite_SetExplicitPalette2(application->sprites[6], 0);
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
    sub_020827EC(application);
    return 27;
}

static int sub_0207E714(PartyMenuApplication *application)
{
    switch (Menu_ProcessInputAndHandleExit(application->unk_700, 12)) {
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
        Sprite_SetExplicitPalette2(application->sprites[6], 1);

        if (application->partyMembers[application->currPartySlot].unk_10 != 1) {
            return sub_0208615C(application);
        } else {
            sub_02082708(application, 0xffffffff, 1);
            application->partyMenu->menuSelectionResult = 0;
            application->unk_B0E = 25;
            MessageLoader_GetStrbuf(application->messageLoader, 105, application->tmpString);
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
    sub_02082FF4(v0);
    sub_02081B90(v0);
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
        sub_0207A2C0(v0->heightWeight);
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
        15,
        application->bgConfig,
        BG_LAYER_MAIN_3,
        0,
        0,
        FALSE,
        HEAP_ID_PARTY_MENU);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        narc,
        17,
        application->bgConfig,
        BG_LAYER_MAIN_3,
        0,
        0,
        FALSE,
        HEAP_ID_PARTY_MENU);

    NNSG2dPaletteData *plttData;
    void *nclr = NARC_AllocAndReadWholeMember(narc, 16, HEAP_ID_PARTY_MENU);
    NNS_G2dGetUnpackedPaletteData(nclr, &plttData);
    Bg_LoadPalette(BG_LAYER_MAIN_3, plttData->pRawData, plttData->szByte, 0);

    u16 *palette = plttData->pRawData;
    memcpy(application->colors, &palette[PLTT_DEST(3)], NUM_MENU_COLORS * sizeof(u16));
    Heap_FreeExplicit(HEAP_ID_PARTY_MENU, nclr);

    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), HEAP_ID_PARTY_MENU);
    LoadStandardWindowGraphics(application->bgConfig, BG_LAYER_MAIN_0, 1, 14, 0, HEAP_ID_PARTY_MENU);
    LoadMessageBoxGraphics(application->bgConfig, BG_LAYER_MAIN_0, 1 + 9, 15, Options_Frame(application->partyMenu->options), HEAP_ID_PARTY_MENU);
    Graphics_LoadTilesToBgLayerFromOpenNARC(
        narc,
        3,
        application->bgConfig,
        BG_LAYER_SUB_0,
        0,
        0,
        FALSE,
        HEAP_ID_PARTY_MENU);
    Graphics_LoadPaletteFromOpenNARC(narc, 4, PAL_LOAD_SUB_BG, PLTT_OFFSET(1), PALETTE_SIZE_BYTES, HEAP_ID_PARTY_MENU);
    Graphics_LoadTilesToBgLayerFromOpenNARC(
        narc,
        12,
        application->bgConfig,
        BG_LAYER_SUB_1,
        0,
        0,
        FALSE,
        HEAP_ID_PARTY_MENU);

    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 14, application->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_PARTY_MENU);
    Graphics_LoadPaletteFromOpenNARC(narc, 13, PAL_LOAD_SUB_BG, PLTT_OFFSET(0), PALETTE_SIZE_BYTES, HEAP_ID_PARTY_MENU);

    PartyMenu_LoadMemberPanelTilemaps(HEAP_ID_PARTY_MENU, application->unk_264, application->unk_324, application->unk_3E4);
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

    application->messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_PARTY_MENU, HEAP_ID_PARTY_MENU);
    application->specialChars = FontSpecialChars_Init(15, 14, 0, HEAP_ID_PARTY_MENU);
    application->template = StringTemplate_Default(HEAP_ID_PARTY_MENU);

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        application->partyMembers[i].name = Strbuf_Init(MON_NAME_LEN + 1, HEAP_ID_PARTY_MENU);
    }

    application->tmpString = Strbuf_Init(256, HEAP_ID_PARTY_MENU);
    application->tmpFormat = Strbuf_Init(256, HEAP_ID_PARTY_MENU);

    for (i = 0; i < NUM_MENU_STRINGS; i++) {
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

    if (application->partyMenu->unk_21 == 2) {
        application->cursorPosTable = Unk_020F1CF8;
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        application->cursorPosTable = Unk_020F1D38;
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
        application->cursorPosTable = Unk_020F1D78;
    } else {
        application->cursorPosTable = Unk_020F1DB8;
    }

    if (application->partyMenu->mode != 2
        && application->partyMenu->mode != 17
        && application->partyMenu->mode != 23
        && application->partyMenu->mode != 22) {
        Sprite_SetDrawFlag(application->sprites[8], FALSE);
        Sprite_SetAnim(application->sprites[9], 0);

        s16 x, y;
        Sprite_GetPositionXY(application->sprites[9], &x, &y);
        Sprite_SetPositionXY(application->sprites[9], x, y - 8);
        flags ^= PARTY_MENU_SHOW_CONFIRM;
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_UNK_04 || application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
        Sprite_SetDrawFlag(application->sprites[9], FALSE);
        flags ^= PARTY_MENU_SHOW_CANCEL;
    }

    PartyMenu_PrintButtonText(application, flags);
}

u8 sub_0207EF04(PartyMenuApplication *application, u8 param1)
{
    return application->partyMembers[param1].unk_29;
}

u8 sub_0207EF14(PartyMenuApplication *application, u8 partySlot)
{
    Pokemon *mon;
    u32 v1;
    u16 species;

    application->partyMembers[partySlot].unk_29 = 0;

    if (Party_GetCurrentCount(application->partyMenu->party) <= partySlot) {
        return 0;
    }

    mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, partySlot);
    species = (u16)Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

    if (species == 0) {
        return 0;
    }

    sub_02081ED8(application, mon, partySlot);

    application->partyMembers[partySlot].unk_04 = species;
    application->partyMembers[partySlot].curHP = (u16)Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);
    application->partyMembers[partySlot].maxHP = (u16)Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
    application->partyMembers[partySlot].level = (u16)Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
    application->partyMembers[partySlot].unk_0C = (u16)Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    application->partyMembers[partySlot].unk_12 = (u16)Pokemon_GetValue(mon, MON_DATA_BALL_CAPSULE_ID, NULL);
    application->partyMembers[partySlot].unk_10 = (u8)Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);
    application->partyMembers[partySlot].unk_11 = (u8)Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

    if (Pokemon_GetValue(mon, MON_DATA_NIDORAN_HAS_NICKNAME, NULL) == 1) {
        application->partyMembers[partySlot].unk_0E_12 = 0;
    } else {
        application->partyMembers[partySlot].unk_0E_12 = 1;
    }

    application->partyMembers[partySlot].unk_0E_13 = Pokemon_GetGender(mon);
    application->partyMembers[partySlot].unk_29 = 1;
    application->partyMembers[partySlot].unk_0E_0 = (u8)PokemonSummaryScreen_StatusIconAnimIdx(mon);

    sub_0207F094(application, mon, partySlot);

    return 1;
}

static void sub_0207F094(PartyMenuApplication *application, Pokemon *param1, u8 param2)
{
    u32 v0;
    u32 v1;

    if (application->partyMenu->mode != 13) {
        return;
    }

    if ((application->partyMembers[param2].unk_10 == 1) || (application->partyMembers[param2].curHP == 0)) {
        application->partyMembers[param2].unk_0E_15 = 0;
        return;
    }

    v0 = sub_0207F134(param1, application->partyMenu->unk_2A);

    for (v1 = 0; v1 < 4; v1++) {
        if (Pokemon_GetValue(param1, MON_DATA_MOVE1 + v1, NULL) == 0) {
            break;
        }
    }

    if ((application->partyMenu->unk_2B <= v0) && (v1 >= 2)) {
        application->partyMembers[param2].unk_0E_15 = 1;
    } else {
        application->partyMembers[param2].unk_0E_15 = 0;
    }
}

static u32 sub_0207F134(Pokemon *param0, u8 param1)
{
    u32 v0;

    switch (param1) {
    case 0:
        v0 = Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_COOL_RIBBON, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_COOL_RIBBON_GREAT, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_COOL_RIBBON_ULTRA, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_COOL_RIBBON_MASTER, NULL);
        break;
    case 1:
        v0 = Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_GREAT, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_ULTRA, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_BEAUTY_RIBBON_MASTER, NULL);
        break;
    case 2:
        v0 = Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_CUTE_RIBBON, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_CUTE_RIBBON_GREAT, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_CUTE_RIBBON_ULTRA, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_CUTE_RIBBON_MASTER, NULL);
        break;
    case 3:
        v0 = Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_SMART_RIBBON, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_SMART_RIBBON_GREAT, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_SMART_RIBBON_ULTRA, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_SMART_RIBBON_MASTER, NULL);
        break;
    case 4:
        v0 = Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_TOUGH_RIBBON, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_GREAT, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_ULTRA, NULL);
        v0 += Pokemon_GetValue(param0, MON_DATA_SINNOH_SUPER_TOUGH_RIBBON_MASTER, NULL);
    }

    return v0;
}

const u16 *sub_0207F248(PartyMenuApplication *application)
{
    return &application->unk_324[3 * 16 + 6];
}

static void sub_0207F250(PartyMenuApplication *application, u8 param1, u8 param2, u8 param3, u8 param4)
{
    const u16 *v0;

    if ((param1 == 0) || ((application->partyMenu->unk_21 != 0) && (param1 == 1))) {
        v0 = application->unk_264;
    } else {
        v0 = application->unk_324;
    }

    application->partyMembers[param1].unk_14 = (s8)param2;
    application->partyMembers[param1].unk_15 = (s8)param3;

    Bg_CopyToTilemapRect(application->bgConfig, 2, param2, param3, 16, 6, (const void *)v0, 0, 0, 16, 6);

    if (param4 == 0) {
        Bg_FillTilemapRect(
            application->bgConfig, 2, 0x17, param2 + 6, param3 + 3, 9, 1, 16);
    }

    Bg_ChangeTilemapRectPalette(application->bgConfig, 2, param2, param3, 16, 6, 3 + param1);
    PartyMenu_UpdateSlotPalette(application, param1);
}

static void SetupRequestedModePanels(PartyMenuApplication *application)
{
    const UnkStruct_020F1DF8 *template;

    if (application->partyMenu->unk_21 == 2) {
        template = Unk_020F1DF8[1];
    } else {
        template = Unk_020F1DF8[0];
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_USE_EVO_ITEM) {
        sub_0207F4AC(application, template);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_TEACH_MOVE) {
        sub_0207F5A0(application, template);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_CONTEST) {
        sub_0207F694(application, template);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        sub_0207F788(application, template);
    } else {
        sub_0207F388(application, template);
    }

    Bg_ScheduleTilemapTransfer(application->bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleTilemapTransfer(application->bgConfig, BG_LAYER_SUB_0);
}

static void sub_0207F388(PartyMenuApplication *application, const UnkStruct_020F1DF8 *param1)
{
    u8 v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0207EF14(application, v0) == 1) {
            if (application->partyMembers[v0].unk_10 == 1) {
                sub_0207F250(application, v0, param1[v0].unk_00, param1[v0].unk_02, 0);
            } else {
                sub_0207F250(application, v0, param1[v0].unk_00, param1[v0].unk_02, 1);
            }

            sub_020821F8(application, v0);
            sub_02082CEC(application, v0, param1[v0].unk_04, param1[v0].unk_06, v1);
            sub_02082FAC(application, v0, param1[v0].unk_08, param1[v0].unk_0A);
            sub_02083040(application, v0, application->partyMembers[v0].unk_0C);
            sub_020830A0(application, v0, param1[v0].unk_04, param1[v0].unk_06);
            sub_02083104(application, v0);
            sub_020830D4(application, v0);
            sub_02083014(application, v0, application->partyMembers[v0].unk_0E_0);
            UpdateWindowLayout(application, v0, 0);
        } else {
            sub_0207F884(application, v0, param1[v0].unk_00, param1[v0].unk_02);
        }
    }

    NARC_dtor(v1);
}

static void sub_0207F4AC(PartyMenuApplication *application, const UnkStruct_020F1DF8 *param1)
{
    u8 v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0207EF14(application, v0) == 1) {
            sub_0207F250(application, v0, param1[v0].unk_00, param1[v0].unk_02, 0);
            sub_0208232C(application, v0);
            sub_02082CEC(application, v0, param1[v0].unk_04, param1[v0].unk_06, v1);
            sub_02082FAC(application, v0, param1[v0].unk_08, param1[v0].unk_0A);
            sub_02083040(application, v0, application->partyMembers[v0].unk_0C);
            sub_020830A0(application, v0, param1[v0].unk_04, param1[v0].unk_06);
            sub_02083104(application, v0);
            sub_020830D4(application, v0);
            sub_02083014(application, v0, application->partyMembers[v0].unk_0E_0);
            UpdateWindowLayout(application, v0, 0);
        } else {
            sub_0207F884(application, v0, param1[v0].unk_00, param1[v0].unk_02);
        }
    }

    NARC_dtor(v1);
}

static void sub_0207F5A0(PartyMenuApplication *application, const UnkStruct_020F1DF8 *param1)
{
    u8 v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0207EF14(application, v0) == 1) {
            sub_0207F250(application, v0, param1[v0].unk_00, param1[v0].unk_02, 0);
            sub_020823C4(application, v0);
            sub_02082CEC(application, v0, param1[v0].unk_04, param1[v0].unk_06, v1);
            sub_02082FAC(application, v0, param1[v0].unk_08, param1[v0].unk_0A);
            sub_02083040(application, v0, application->partyMembers[v0].unk_0C);
            sub_020830A0(application, v0, param1[v0].unk_04, param1[v0].unk_06);
            sub_02083104(application, v0);
            sub_020830D4(application, v0);
            sub_02083014(application, v0, application->partyMembers[v0].unk_0E_0);
            UpdateWindowLayout(application, v0, 0);
        } else {
            sub_0207F884(application, v0, param1[v0].unk_00, param1[v0].unk_02);
        }
    }

    NARC_dtor(v1);
}

static void sub_0207F694(PartyMenuApplication *application, const UnkStruct_020F1DF8 *param1)
{
    u8 v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0207EF14(application, v0) == 1) {
            sub_0207F250(application, v0, param1[v0].unk_00, param1[v0].unk_02, 0);
            sub_0208245C(application, v0);
            sub_02082CEC(application, v0, param1[v0].unk_04, param1[v0].unk_06, v1);
            sub_02082FAC(application, v0, param1[v0].unk_08, param1[v0].unk_0A);
            sub_02083040(application, v0, application->partyMembers[v0].unk_0C);
            sub_020830A0(application, v0, param1[v0].unk_04, param1[v0].unk_06);
            sub_02083104(application, v0);
            sub_020830D4(application, v0);
            sub_02083014(application, v0, application->partyMembers[v0].unk_0E_0);
            UpdateWindowLayout(application, v0, 0);
        } else {
            sub_0207F884(application, v0, param1[v0].unk_00, param1[v0].unk_02);
        }
    }

    NARC_dtor(v1);
}

static void sub_0207F788(PartyMenuApplication *application, const UnkStruct_020F1DF8 *param1)
{
    u8 v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0207EF14(application, v0) == 1) {
            sub_0207F250(application, v0, param1[v0].unk_00, param1[v0].unk_02, 0);
            sub_020824C0(application, v0);
            sub_02082508(application, v0);
            sub_02082CEC(application, v0, param1[v0].unk_04, param1[v0].unk_06, v1);
            sub_02082FAC(application, v0, param1[v0].unk_08, param1[v0].unk_0A);
            sub_02083040(application, v0, application->partyMembers[v0].unk_0C);
            sub_020830A0(application, v0, param1[v0].unk_04, param1[v0].unk_06);
            sub_02083104(application, v0);
            sub_020830D4(application, v0);
            sub_02083014(application, v0, application->partyMembers[v0].unk_0E_0);
            UpdateWindowLayout(application, v0, 0);
        } else {
            sub_0207F884(application, v0, param1[v0].unk_00, param1[v0].unk_02);
        }
    }

    NARC_dtor(v1);
}

static void sub_0207F884(PartyMenuApplication *application, u8 param1, s16 param2, s16 param3)
{
    Bg_CopyToTilemapRect(application->bgConfig, 2, param2, param3, 16, 6, (const void *)application->unk_3E4, 0, 0, 16, 6);
    Bg_ChangeTilemapRectPalette(application->bgConfig, 2, param2, param3, 16, 6, 1);
    sub_02083014(application, param1, 7);
    sub_02083040(application, param1, 0);
    sub_02083104(application, param1);
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

        if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, 0) == 0) {
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
    if ((application->partyMenu->unk_21 == 2) && ((param1 & 1) != 0)) {
        return 1;
    }

    return 0;
}

static void SetupMenuCursor(PartyMenuApplication *application)
{
    u8 x, y;
    GridMenuCursor_CheckNavigation(application->cursorPosTable, &x, &y, NULL, NULL, application->currPartySlot, GRID_MENU_CURSOR_POSITION_DIRECTION_NONE);
    Sprite_SetAnim(application->sprites[6], sub_020805D0(application->partyMenu->unk_21, application->currPartySlot));
    Sprite_SetPositionXY(application->sprites[6], x, y);
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
            Sprite_SetDrawFlag(application->sprites[6], FALSE);
        } else {
            Sprite_SetAnim(application->sprites[6], sub_020805D0(application->partyMenu->unk_21, v0));
            Sprite_SetDrawFlag(application->sprites[6], TRUE);
            Sprite_SetPositionXY(application->sprites[6], v2, v3);
        }

        {
            u8 v4 = application->currPartySlot;
            application->currPartySlot = v0;

            InitSelectedSlot(application, v4, 0);
            InitSelectedSlot(application, application->currPartySlot, 1);
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (v4 < 6) {
                UpdateWindowLayout(application, v4, 0);
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

        InitSelectedSlot(application, v3, 0);
        InitSelectedSlot(application, application->currPartySlot, 1);

        if (v3 < 6) {
            UpdateWindowLayout(application, v3, 0);
        }

        GridMenuCursor_CheckNavigation(application->cursorPosTable, &v1, &v2, NULL, NULL, application->currPartySlot, GRID_MENU_CURSOR_POSITION_DIRECTION_NONE);
        Sprite_SetAnim(application->sprites[6], sub_020805D0(application->partyMenu->unk_21, application->currPartySlot));
        Sprite_SetDrawFlag(application->sprites[6], TRUE);
        Sprite_SetPositionXY(application->sprites[6], v1, v2);

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
        Sprite_SetDrawFlag(application->sprites[6], FALSE);
    } else {
        u8 v0, v1;

        GridMenuCursor_CheckNavigation(application->cursorPosTable, &v0, &v1, NULL, NULL, application->currPartySlot, GRID_MENU_CURSOR_POSITION_DIRECTION_NONE);
        Sprite_SetAnim(application->sprites[6], sub_020805D0(application->partyMenu->unk_21, partySlot));
        Sprite_SetDrawFlag(application->sprites[6], TRUE);
        Sprite_SetPositionXY(application->sprites[6], v0, v1);
    }

    {
        u8 v2 = application->currPartySlot;
        application->currPartySlot = partySlot;

        InitSelectedSlot(application, v2, 0);
        InitSelectedSlot(application, application->currPartySlot, 1);

        if (v2 < 6) {
            UpdateWindowLayout(application, v2, 0);
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
        sub_020832E4(application, v0, v1);
    }
        UpdateWindowLayout(application, application->unk_B0D, 2);
        Bg_ScheduleTilemapTransfer(application->bgConfig, 4);
        application->unk_B0C++;
        break;
    case 2:
        UpdateWindowLayout(application, application->unk_B0D, 1);
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
            if (application->partyMembers[application->currPartySlot].unk_10 == 0) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                return 0;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                return 5;
            }
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_BALL_SEAL) {
            if (application->partyMembers[application->currPartySlot].unk_10 == 0) {
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
            if (application->partyMembers[application->currPartySlot].unk_10 != 0) {
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

    sub_02081CF4(application, v0, v1);
    Heap_FreeExplicit(HEAP_ID_PARTY_MENU, v0);
    sub_02081E08(application);
    sub_020826F4(application, 0xffffffff, 1);
    Sprite_SetExplicitPalette2(application->sprites[6], 1);
}

static u8 GetContextMenuEntriesForPartyMon(PartyMenuApplication *application, u8 *menuEntriesBuffer)
{
    Pokemon *pokemon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    u16 move;
    u8 fieldMoveIndex = 0, i, count = 0, fieldEffect;

    menuEntriesBuffer[count] = 1;
    count++;

    if (FieldSystem_IsInBattleTowerSalon(application->partyMenu->fieldSystem) == FALSE) {
        if (application->partyMembers[application->currPartySlot].unk_10 == 0) {
            for (i = 0; i < 4; i++) {
                move = (u16)Pokemon_GetValue(pokemon, MON_DATA_MOVE1 + i, NULL);

                if (move == 0) {
                    break;
                }

                fieldEffect = GetElementIndex(move);

                if (fieldEffect != 0xff) {
                    menuEntriesBuffer[count] = fieldEffect;
                    count++;
                    sub_02081CAC(application, move, fieldMoveIndex);
                    fieldMoveIndex++;
                }
            }

            menuEntriesBuffer[count] = 0;
            count++;

            if (Item_IsMail(application->partyMembers[application->currPartySlot].unk_0C) == TRUE) {
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
    if (application->partyMembers[application->currPartySlot].unk_10 == 0) {
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
    if (application->partyMembers[application->currPartySlot].unk_0E_15 == 1) {
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
    switch (sub_02080354(application, application->currPartySlot)) {
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
    switch (sub_02080404(application, application->currPartySlot)) {
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
    switch (sub_02080488(application, application->currPartySlot)) {
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
    if (application->partyMembers[application->currPartySlot].unk_10 == 1) {
        param1[0] = 1;
        param1[1] = 15;
        param1[2] = 9;
        return 3;
    }

    param1[0] = 1;
    param1[1] = 9;

    return 2;
}

u8 sub_02080354(PartyMenuApplication *application, u8 partySlot)
{
    u8 v0;

    if (application->partyMenu->battleRegulation != NULL) {
        Pokemon *v1 = Party_GetPokemonBySlotIndex(application->partyMenu->party, partySlot);

        if (sub_0207A2D0(application->partyMenu->battleRegulation, v1, application->heightWeight) == 0) {
            return 0;
        }
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER) {
        if (sub_02078804(application->partyMembers[partySlot].unk_04) == 1) {
            return 0;
        }
    }

    for (v0 = 0; v0 < application->partyMenu->unk_32_4; v0++) {
        if (application->partyMenu->unk_2C[v0] == partySlot + 1) {
            return 2;
        }
    }

    if ((application->partyMembers[partySlot].unk_10 == 1) || (application->partyMembers[partySlot].level > application->partyMenu->unk_33)) {
        return 0;
    }

    return 1;
}

u8 sub_02080404(PartyMenuApplication *application, u8 partySlot)
{
    u8 v0;

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        if (sub_02078804(application->partyMembers[partySlot].unk_04) == 1) {
            return 0;
        }
    }

    for (v0 = 0; v0 < application->partyMenu->unk_32_4; v0++) {
        if (application->partyMenu->unk_2C[v0] == partySlot + 1) {
            return 2;
        }
    }

    if ((application->partyMembers[partySlot].unk_10 == 1) || (application->partyMembers[partySlot].level < application->partyMenu->unk_33)) {
        return 0;
    }

    return 1;
}

u8 sub_02080488(PartyMenuApplication *application, u8 partySlot)
{
    u8 v0;

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE) {
        if (sub_02078804(application->partyMembers[partySlot].unk_04) == 1) {
            return 0;
        }
    }

    for (v0 = 0; v0 < application->partyMenu->unk_32_4; v0++) {
        if (application->partyMenu->unk_2C[v0] == partySlot + 1) {
            return 2;
        }
    }

    if (application->partyMembers[partySlot].unk_10 == 1) {
        return 0;
    }

    return 1;
}

static void InitSelectedSlot(PartyMenuApplication *application, u8 slot, u8 selected)
{
    if (slot == 6) {
        u8 anim = Sprite_GetActiveAnim(application->sprites[8]);
        if (selected == FALSE) {
            anim = (anim & 2);
        } else {
            anim = (anim & 2) + 1;
        }

        Sprite_SetAnim(application->sprites[8], anim);
        return;
    }

    if (slot == 7) {
        u8 anim = Sprite_GetActiveAnim(application->sprites[9]);
        if (selected == FALSE) {
            anim = (anim & 2);
        } else {
            anim = (anim & 2) + 1;
        }

        Sprite_SetAnim(application->sprites[9], anim);
        return;
    }

    if (selected == FALSE) {
        application->partyMembers[slot].spriteXDelta -= 2;
        application->partyMembers[slot].spriteYDelta -= 2;

        Sprite_SetAnim(application->sprites[slot], 0);
    } else {
        application->partyMembers[slot].spriteXDelta += 2;
        application->partyMembers[slot].spriteYDelta += 2;

        Sprite_SetAnim(application->sprites[slot], 1);
    }

    PartyMenu_UpdateSlotPalette(application, slot);
}

u8 sub_020805D0(u8 application, u8 param1)
{
    if ((param1 == 0) || ((application != 0) && (param1 == 1))) {
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

    for (v0 = 0; v0 < application->partyMenu->unk_32_0; v0++) {
        if (application->partyMenu->unk_2C[v0] == 0) {
            switch (application->partyMenu->unk_32_4) {
            case 2:
                sub_02082708(application, 107, 1);
                break;
            case 3:
                sub_02082708(application, 119, 1);
                break;
            case 4:
                sub_02082708(application, 120, 1);
                break;
            case 5:
                sub_02082708(application, 121, 1);
                break;
            case 6:
                sub_02082708(application, 122, 1);
                break;
            default:
                sub_02082708(application, 29, 1);
                break;
            }

            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        }
    }

    if (application->partyMenu->battleRegulation != NULL) {
        switch (sub_0207A3AC(application->partyMenu->battleRegulation, application->partyMenu->party, application->heightWeight, application->partyMenu->unk_2C)) {
        case 0:
            break;

        case 1: {
            Strbuf *v1;
            int v2;

            v1 = MessageLoader_GetNewStrbuf(application->messageLoader, 184);
            v2 = sub_02026074(application->partyMenu->battleRegulation, 3);

            StringTemplate_SetNumber(application->template, 0, v2, 3, 0, 1);
            StringTemplate_Format(application->template, application->tmpString, v1);
            Strbuf_Free(v1);
        }
            sub_02082708(application, 0xffffffff, 1);
            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        case 2:
            sub_02082708(application, 182, 1);
            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        case 3:
            sub_02082708(application, 183, 1);
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
            sub_02082708(application, 182, 1);
            application->unk_B0E = 23;
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
            return 24;
        case 2:
            sub_02082708(application, 183, 1);
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
            sub_02082708(application, 201, 1);
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
            sub_02082708(application, 182, 1);
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
        if (application->partyMenu->unk_2C[v0] == 0) {
            break;
        }

        for (v1 = v0 + 1; v1 < 6; v1++) {
            if (application->partyMenu->unk_2C[v1] == 0) {
                break;
            }

            if (application->partyMembers[application->partyMenu->unk_2C[v0] - 1].unk_04 == application->partyMembers[application->partyMenu->unk_2C[v1] - 1].unk_04) {
                return 1;
            }

            if ((application->partyMembers[application->partyMenu->unk_2C[v0] - 1].unk_0C != 0) && (application->partyMembers[application->partyMenu->unk_2C[v0] - 1].unk_0C == application->partyMembers[application->partyMenu->unk_2C[v1] - 1].unk_0C)) {
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
        if (application->partyMenu->unk_2C[v0] == 0) {
            break;
        }

        for (v1 = v0 + 1; v1 < 6; v1++) {
            if (application->partyMenu->unk_2C[v1] == 0) {
                break;
            }

            if (application->partyMembers[application->partyMenu->unk_2C[v0] - 1].unk_04 != application->partyMembers[application->partyMenu->unk_2C[v1] - 1].unk_04) {
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
        if (application->partyMenu->unk_2C[v0] == 0) {
            break;
        }

        for (v1 = v0 + 1; v1 < 6; v1++) {
            if (application->partyMenu->unk_2C[v1] == 0) {
                break;
            }

            if (application->partyMembers[application->partyMenu->unk_2C[v0] - 1].unk_04 == application->partyMembers[application->partyMenu->unk_2C[v1] - 1].unk_04) {
                return 1;
            }
        }
    }

    return 0;
}

static const u8 Unk_020F1BB8[6][2] = {
    { 0x1, 0x3 },
    { 0x1A, 0x3 },
    { 0x1, 0xA },
    { 0x1A, 0xA },
    { 0x1, 0x11 },
    { 0x1A, 0x11 }
};

static const TouchScreenRect Unk_020F1C94[] = {
    { 0x18, 0x3F, 0x8, 0x2F },
    { 0x18, 0x3F, 0xD0, 0xF7 },
    { 0x50, 0x77, 0x8, 0x2F },
    { 0x50, 0x77, 0xD0, 0xF7 },
    { 0x88, 0xAF, 0x8, 0x2F },
    { 0x88, 0xAF, 0xD0, 0xF7 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static void UpdateWindowLayout(PartyMenuApplication *application, u8 param1, u8 param2)
{
    u16 *v0;
    u16 v1;
    u8 v2, v3;
    u8 v4, v5;

    v0 = (u16 *)Bg_GetTilemapBuffer(application->bgConfig, 4);
    v1 = 5 + (1 << 12) + 5 * 5 * param2;
    v2 = Unk_020F1BB8[param1][0];
    v3 = Unk_020F1BB8[param1][1];

    for (v4 = 0; v4 < 5; v4++) {
        for (v5 = 0; v5 < 5; v5++) {
            v0[(v3 + v4) * 32 + v2 + v5] = v4 * 5 + v5 + v1;
        }
    }
}

static void CalculateWindowPosition(u8 application, s16 *param1, s16 *param2)
{
    *param1 = Unk_020F1BB8[application][0] * 8 + ((5 * 8) >> 1);
    *param2 = Unk_020F1BB8[application][1] * 8 + ((5 * 8) >> 1);
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
    u32 v0 = Menu_ProcessInput(application->unk_700);

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        Window_EraseMessageBox(&application->windows[33], 1);
        sub_0208337C(application);

        if ((application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM) || (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER) || (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE) || (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL)) {
            PartyMenu_PrintShortMessage(application, 34, 1);
        } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) {
            PartyMenu_PrintShortMessage(application, 197, 1);
        } else {
            PartyMenu_PrintShortMessage(application, 29, 1);
        }

        Sprite_SetExplicitPalette2(application->sprites[6], 0);
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
                    Sprite_SetExplicitPalette2(application->sprites[6], 1);

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
                    Sprite_SetExplicitPalette2(application->sprites[6], 1);

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
            Sprite_SetExplicitPalette2(application->sprites[6], 0);
            PartyMenu_PrintShortMessage(application, 36, 1);
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
            sub_02082708(application, 0xffffffff, 1);

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
            Sprite_SetExplicitPalette2(application->sprites[6], 0);
            sub_02083B88(application);
            return 1;
        }
        break;
    }

    return 30;
}

static u8 CheckPokemonCondition(PartyMenuApplication *application)
{
    if (application->partyMembers[application->currPartySlot].unk_10 != 0) {
        return 2;
    }

    if ((application->currPartySlot == application->switchTargetSlot) || (application->partyMembers[application->currPartySlot].curHP == 0) || (application->partyMembers[application->currPartySlot].curHP == application->partyMembers[application->currPartySlot].maxHP)) {
        Sprite_SetExplicitPalette2(application->sprites[6], 1);
        sub_02082708(application, 131, 1);

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

    sub_02082098(application, slot);
    Window_FillTilemap(&application->windows[3 + slot * 5], 0);
    sub_02082058(application, slot);
    sub_02082104(application, slot);

    if ((application->monStats[0] == application->monStats[2]) || (application->partyMembers[slot].curHP == application->partyMembers[slot].maxHP)) {
        Pokemon *mon;
        u32 v1;

        mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);
        v1 = application->partyMembers[slot].curHP;
        Pokemon_SetValue(mon, MON_DATA_CURRENT_HP, &v1);
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
            if (application->partyMembers[application->currPartySlot].unk_10 == 0) {
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
        if (application->partyMembers[application->currPartySlot].unk_10 != 0) {
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
            sub_0206D90C(application->partyMenu->broadcast, v2, application->partyMenu->usedItemID);
        }

        sub_020852B8(application);
    } else {
        sub_02082708(application, 105, 1);
        application->currPartySlot = 7;
        application->unk_B00 = sub_02085348;
    }

    Heap_Free(v0);
    return 5;
}

static u8 CheckItemUsageValidity(PartyMenuApplication *application)
{
    if (application->partyMembers[application->currPartySlot].unk_0C == 0) {
        return 0;
    } else if (Item_IsMail(application->partyMembers[application->currPartySlot].unk_0C) == 1) {
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
            MessageLoader_GetStrbuf(application->messageLoader, 203, application->tmpFormat);
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
            StringTemplate_SetItemNameWithArticle(application->template, 1, application->partyMenu->usedItemID);
            StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
            v2 = 11;
        } else if (fieldSystem != NULL) {
            if (fieldSystem->location->mapId == MAP_HEADER_UNION_ROOM) {
                MessageLoader_GetStrbuf(application->messageLoader, 204, application->tmpFormat);
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

            MessageLoader_GetStrbuf(application->messageLoader, 118, application->tmpFormat);
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
            StringTemplate_SetItemName(application->template, 1, application->partyMenu->usedItemID);
            StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
            break;
        case 1:
            MessageLoader_GetStrbuf(application->messageLoader, 78, application->tmpFormat);
            StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
            StringTemplate_SetItemNameWithArticle(application->template, 1, application->partyMembers[application->currPartySlot].unk_0C);
            StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
            v2 = 9;
            break;
        case 2:
            MessageLoader_GetStrbuf(application->messageLoader, 77, application->tmpString);
            v2 = 11;
            break;
        }
    }

    Window_DrawMessageBoxWithScrollCursor(v1, 1, 1 + 9, 15);
    Window_FillTilemap(v1, 15);
    sub_0208274C(application);

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

    application->partyMembers[application->currPartySlot].unk_0C = application->partyMenu->usedItemID;
    sub_02083040(application, application->currPartySlot, application->partyMembers[application->currPartySlot].unk_0C);

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
    application->partyMembers[application->currPartySlot].unk_0C = (u16)param3;
    sub_02083040(application, application->currPartySlot, application->partyMembers[application->currPartySlot].unk_0C);
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
        sub_020827EC(application);
        return 10;
    }

    return 9;
}

static int ProcessPokemonItemSwap(PartyMenuApplication *application)
{
    int v0, v1;

    switch (Menu_ProcessInputAndHandleExit(application->unk_700, 12)) {
    case 0: {
        Pokemon *v2;
        Window *v3;
        u32 v4;
        u32 v5;

        v2 = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        v3 = &application->windows[34];
        v4 = application->partyMenu->usedItemID;
        v5 = application->partyMembers[application->currPartySlot].unk_0C;
        v0 = UpdatePokemonWithItem(application, v2, &v1);

        if (Bag_TryAddItem(application->partyMenu->bag, (u16)v5, 1, HEAP_ID_PARTY_MENU) == FALSE) {
            SwapPokemonItem(application, v2, v4, v5);
            MessageLoader_GetStrbuf(application->messageLoader, 83, application->tmpString);
            v0 = 11;
        } else {
            if (Item_IsMail(application->partyMenu->usedItemID) == 1) {
                Bag_TryRemoveItem(application->partyMenu->bag, (u16)v5, 1, HEAP_ID_PARTY_MENU);
                SwapPokemonItem(application, v2, v4, v5);
                application->partyMenu->menuSelectionResult = 6;
                return 32;
            }

            MessageLoader_GetStrbuf(application->messageLoader, 84, application->tmpFormat);
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
        sub_0208274C(application);
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
        PartyMenu_PrintShortMessage(application, 29, 1);
        Sprite_SetExplicitPalette2(application->sprites[6], 0);
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
    item = application->partyMembers[application->currPartySlot].unk_0C;
    v4 = UpdatePokemonWithItem(application, v0, &v5);

    if ((item == ITEM_GRISEOUS_ORB) && (v4 == 11) && (v5 == 0)) {
        v4 = 12;
    }

    if (item == ITEM_NONE) {
        MessageLoader_GetStrbuf(application->messageLoader, 118, application->tmpFormat);
        StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_SetItemName(application->template, 1, application->partyMenu->usedItemID);
        StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
    } else {
        Bag_TryAddItem(application->partyMenu->bag, (u16)item, 1, HEAP_ID_PARTY_MENU);
        MessageLoader_GetStrbuf(application->messageLoader, 84, application->tmpFormat);
        StringTemplate_SetItemName(application->template, 1, item);
        StringTemplate_SetItemName(application->template, 2, v2);
        StringTemplate_Format(application->template, application->tmpString, application->tmpFormat);
    }

    Window_DrawMessageBoxWithScrollCursor(v1, 1, 1 + 9, 15);
    Window_FillTilemap(v1, 15);
    sub_0208274C(application);

    if (application->partyMenu->mode == PARTY_MENU_MODE_GIVE_MAIL_DONE) {
        application->partyMenu->mode = PARTY_MENU_MODE_GIVE_ITEM_DONE;
    }

    return v4;
}

static int CheckForItemApplication(PartyMenuApplication *application)
{
    if (application->partyMembers[application->currPartySlot].unk_12 == 0) {
        application->partyMenu->menuSelectionResult = 0;
        return 32;
    }

    Sprite_SetExplicitPalette2(application->sprites[6], 1);
    sub_02082708(application, 195, 1);
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
